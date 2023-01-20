// ----------------------------------------------------------------------------
// main.cpp
//
//  Created on: 21 Jan 2021
//      Author: Kiwon Um
//        Mail: kiwon.um@telecom-paris.fr
//
// Description: IMA904/IG3DA - Practical - Eulerian Smoke Simulation
//   (DO NOT distribute!)
//
// Copyright 2021-2023 Kiwon Um
//
// The copyright to the computer program(s) herein is the property of Kiwon Um,
// Telecom Paris, France. The program(s) may be used and/or copied only with
// the written permission of Kiwon Um or in accordance with the terms and
// conditions stipulated in the agreement/contract under which the program(s)
// have been supplied.
// ----------------------------------------------------------------------------

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>

#include <iostream>
#include <sstream>
#include <iomanip>
#include <vector>
#include <cmath>

// window parameters
GLFWwindow *gWindow = nullptr;
int gWindowWidth = 1024;
int gWindowHeight = 768;

// timer
float gAppTimer = 0.0;
float gAppTimerLastClockTime;
bool gAppTimerStoppedP = true;

typedef float tReal;
typedef long int tUint;

const int kViewScale = 10;

inline tReal square(const tReal a) { return a*a; }
inline tReal cube(const tReal a) { return a*a*a; }
inline tReal clamp(const tReal v, const tReal vmin, const tReal vmax) {
  if(v<vmin) return vmin;
  if(v>vmax) return vmax;
  return v;
}

// 2D Grid
template<typename T>
class Grid2 {
public:
  enum { D = 2 };

  explicit Grid2(const int size_x=0, const int size_y=0)
    : _data(size_x*size_y), _sizeX(size_x), _sizeY(size_y) {
  }

  void init(const int size_x, const int size_y) {
    _data.assign(size_x*size_y, 0);
    _sizeX = size_x;
    _sizeY = size_y;
  }
  void fill(const T &v) { _data.assign(size(), v); }
  void swap(Grid2 &new_grid) {
    _data.swap(new_grid._data);
    _sizeX = new_grid._sizeX;
    _sizeY = new_grid._sizeY;
  }

  T sampleAt(const tReal x, const tReal y) const {
    // TODO:
    const int i0 = clamp(static_cast<int>(x), 0, resX()-1);
    const int j0 = clamp(static_cast<int>(y), 0, resY()-1);
    std::cout<<x<<', '<<y<<std::endl;
    return (*this)(i0, j0);
  }

  const T& operator()(const int i, const int j) const {
    return _data[indexTo1D(i, j)];
  }
  T& operator()(const int i, const int j) {
    return const_cast<T &>(static_cast<const Grid2 &>(*this)(i, j));
  }

  tUint indexTo1D(const int i, const int j) const { return j*_sizeX + i; }
  tUint size() const { return _sizeX*_sizeY; }
  int resX() const { return _sizeX; }
  int resY() const { return _sizeY; }

private:
  std::vector<T> _data;
  int _sizeX, _sizeY;
};
typedef Grid2<tReal> Grid2f;
typedef Grid2<int>   Grid2i;

class SmokeSolver {
public:
  explicit SmokeSolver(
    const tReal dt=0.01, const glm::vec2 g=glm::vec2(0.0, -9.8), const tReal buoy=0.2)
    : _dt(dt), _g(g), _buoy(buoy) {
  }

  // assume a grid with the size of res_x*res_y; a smoke mass is at f_cen with
  // the size of f_size
  void initScene(
    const int res_x, const int res_y,
    const glm::vec2 &src_cen, const glm::vec2 &src_size) {
    _resX = res_x;
    _resY = res_y;

    _c.init(res_x, res_y);      // cell type
    _u.init(res_x, res_y);      // velocity u
    _v.init(res_x, res_y);      // velocity v
    _fx.init(res_x, res_y);     // force in x
    _fy.init(res_x, res_y);     // force in y
    _p.init(res_x, res_y);      // pressure
    _d.init(res_x, res_y);      // density

    _srcCen = src_cen;
    _srcSize = src_size;

    // cell types: 0=open boundary; 1=fluid
    _c.fill(1);
    for(int j=0; j<res_y; ++j) {
      for(int i=0; i<res_x; ++i) {
        if(i==0) _c(i, j) = 0;
        if(i==res_x-1) _c(i, j) = 0;
        if(j==0) _c(i, j) = 0;
        if(j==res_y-1) _c(i, j) = 0;
      }
    }

    addSource(_d, _srcCen, _srcSize);
  }

  void addSource(Grid2f &d, const glm::vec2 &src_cen, const glm::vec2 &src_size) const {
    // smoke mass (NOTE: centered grid)
    for(int j=0; j<resY(); ++j) {
      for(int i=0; i<resX(); ++i) {
        if(i>(src_cen.x-0.5 - src_size.x) &&
           i<(src_cen.x-0.5 + src_size.x) &&
           j>(src_cen.y-0.5 - src_size.y) &&
           j<(src_cen.y-0.5 + src_size.y)) // if inside of the given box
          d(i, j) = 1.0;                   // fill it up with smoke density
      }
    }
  }

  void advectCentered(
    Grid2f &f, const Grid2f &u, const Grid2f &v, const tReal dt) const {
    // TODO:
  }

  void advectStaggered(
    Grid2f &fu, Grid2f &fv,
    const Grid2f &u, const Grid2f &v, const tReal dt) const {
    // TODO:
  }

  void calculateBuoyancy(
    Grid2f &fx, Grid2f &fy,
    const Grid2f &d, const glm::vec2 &g, const tReal coef) const {
    // TODO:
  }

  void updateVelocityWithForce(
    Grid2f &u, Grid2f &v,
    const Grid2f &fx, const Grid2f &fy, const tReal dt) const {
    // TODO:
  }

  void solvePressure(
    Grid2f &p, const Grid2f &u, const Grid2f &v, const tReal dt) const {
    // TODO:
  }

  void updateVelocityWithPressure(
    Grid2f &u, Grid2f &v, const Grid2f &p, const tReal dt) const {
    // TODO:
  }

  void update() {
    std::cout << '.' << std::flush;
    addSource(_d, _srcCen, _srcSize);

    // TODO:
  }

  const Grid2i &cells() const { return _c; }
  const Grid2f &density() const { return _d; }
  const Grid2f &velocity_u() const { return _u; }
  const Grid2f &velocity_v() const { return _v; }

  tReal timestep() const { return _dt; }

  int resX() const { return _resX; }
  int resY() const { return _resY; }
  tUint gridSize() const { return _resX*_resY; }

private:
  int _resX, _resY;             // grid resolution

  glm::vec2  _srcCen, _srcSize; // smoke source (a box)

  Grid2i _c;                    // cell type
  Grid2f _u, _v;                // velocity u and v
  Grid2f _fx, _fy;              // force in x and y
  Grid2f _p, _d;                // pressure and smoke marker density

  // simulation
  tReal _dt;                    // time step

  glm::vec2  _g;                // gravity
  tReal _buoy;                  // buoyancy factor
};

SmokeSolver gSolver;
bool gPause = true;
bool gSaveFile = false;
bool gShowGrid = true;
bool gShowVel = true;
int gSavedCnt = 0;

void printHelp()
{
  std::cout <<
    "> Help:" << std::endl <<
    "    Keyboard commands:" << std::endl <<
    "    * H: print this help" << std::endl <<
    "    * P: toggle simulation" << std::endl <<
    "    * G: toggle grid rendering" << std::endl <<
    "    * V: toggle velocity rendering" << std::endl <<
    "    * S: save current frame into a file" << std::endl <<
    "    * Q: quit the program" << std::endl;
}

// Executed each time the window is resized. Adjust the aspect ratio and the rendering viewport to the current window.
void windowSizeCallback(GLFWwindow *window, int width, int height)
{
  gWindowWidth = width;
  gWindowHeight = height;
  glViewport(0, 0, static_cast<GLint>(width), static_cast<GLint>(height));
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  glOrtho(0.0, 1.0, 0.0, 1.0, 0.0, 1.0);
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();
}

// Executed each time a key is entered.
void keyCallback(GLFWwindow *window, int key, int scancode, int action, int mods)
{
  if(action == GLFW_PRESS && key == GLFW_KEY_H) {
    printHelp();
  } else if(action == GLFW_PRESS && key == GLFW_KEY_S) {
    gSaveFile = !gSaveFile;
  } else if(action == GLFW_PRESS && key == GLFW_KEY_G) {
    gShowGrid = !gShowGrid;
  } else if(action == GLFW_PRESS && key == GLFW_KEY_V) {
    gShowVel = !gShowVel;
  } else if(action == GLFW_PRESS && key == GLFW_KEY_P) {
    gAppTimerStoppedP = !gAppTimerStoppedP;
    if(!gAppTimerStoppedP)
      gAppTimerLastClockTime = static_cast<float>(glfwGetTime());
  } else if(action == GLFW_PRESS && key == GLFW_KEY_W) {
    GLint mode[2];
    glGetIntegerv(GL_POLYGON_MODE, mode);
    glPolygonMode(GL_FRONT_AND_BACK, mode[1] == GL_FILL ? GL_LINE : GL_FILL);
  } else if(action == GLFW_PRESS && key == GLFW_KEY_Q) {
    glfwSetWindowShouldClose(window, true);
  }
}

void initGLFW()
{
  // Initialize GLFW, the library responsible for window management
  if(!glfwInit()) {
    std::cerr << "ERROR: Failed to init GLFW" << std::endl;
    std::exit(EXIT_FAILURE);
  }

  // Before creating the window, set some option flags
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 1);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
  // glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // only if requesting 3.0 or above
  // glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_ANY_PROFILE); // for OpenGL below 3.2
  glfwWindowHint(GLFW_RESIZABLE, GL_TRUE);

  // Create the window
  gWindowWidth = gSolver.resX()*kViewScale;
  gWindowHeight = gSolver.resY()*kViewScale;
  gWindow = glfwCreateWindow(
    gSolver.resX()*kViewScale, gSolver.resY()*kViewScale,
    "IMA904/IG3DA - Practical - Smoke", nullptr, nullptr);
  if(!gWindow) {
    std::cerr << "ERROR: Failed to open window" << std::endl;
    glfwTerminate();
    std::exit(EXIT_FAILURE);
  }

  // Load the OpenGL context in the GLFW window
  glfwMakeContextCurrent(gWindow);

  // not mandatory for all, but MacOS X
  glfwGetFramebufferSize(gWindow, &gWindowWidth, &gWindowHeight);

  // Connect the callbacks for interactive control
  glfwSetWindowSizeCallback(gWindow, windowSizeCallback);
  glfwSetKeyCallback(gWindow, keyCallback);

  std::cout << "Window created: " <<
    gWindowWidth << ", " << gWindowHeight << std::endl;
}

void clear();

void exitOnCriticalError(const std::string &message)
{
  std::cerr << "> [Critical error]" << message << std::endl;
  std::cerr << "> [Clearing resources]" << std::endl;
  clear();
  std::cerr << "> [Exit]" << std::endl;
  std::exit(EXIT_FAILURE);
}

void initOpenGL()
{
  // Load extensions for modern OpenGL
  if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    exitOnCriticalError("[Failed to initialize OpenGL context]");

  glDisable(GL_CULL_FACE);
  glDisable(GL_LIGHTING);
  glDisable(GL_DEPTH_TEST);

  glViewport(0, 0, static_cast<GLint>(gWindowWidth), static_cast<GLint>(gWindowHeight));
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  glOrtho(0.0, 1.0, 0.0, 1.0, 0.0, 1.0);
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();
}

void init()
{
  gSolver.initScene(32, 64, glm::vec2(16, 7), glm::vec2(3, 3));

  initGLFW();                   // Windowing system
  initOpenGL();
}

void clear()
{
  glfwDestroyWindow(gWindow);
  glfwTerminate();
}

// The main rendering call
void render()
{
  const tReal over_w = 1e0/static_cast<tReal>(gWindowWidth);
  const tReal over_h = 1e0/static_cast<tReal>(gWindowHeight);

  glClearColor(0.1f, 0.1f, 0.1f, 1);
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  // render everyhing in the range of [0, 1] per axis

  // density field
  const Grid2f &dens = gSolver.density();
  glBegin(GL_POINTS);
  for(int j=0; j<gWindowHeight; ++j) {
    for(int i=0; i<gWindowWidth; ++i) {
      const tReal px = static_cast<tReal>(i)*over_w; // [0, 1]
      const tReal py = static_cast<tReal>(j)*over_h; // [0, 1]
      const tReal d = dens.sampleAt(px*gSolver.resX()-0.5, py*gSolver.resY()-0.5);
      glColor3f(d, d, d);
      glVertex2f(px, py);
    }
  }
  glEnd();

  // grid guides
  if(gShowGrid) {
    glBegin(GL_LINES);
    for(int i=1; i<gSolver.resX(); ++i) {
      glColor3f(0.3, 0.3, 0.3);
      glVertex2f(static_cast<tReal>(i)/gSolver.resX(), 0.0);
      glColor3f(0.3, 0.3, 0.3);
      glVertex2f(static_cast<tReal>(i)/gSolver.resX(), 1.0);
    }
    for(int j=1; j<gSolver.resY(); ++j) {
      glColor3f(0.3, 0.3, 0.3);
      glVertex2f(0.0, static_cast<tReal>(j)/gSolver.resY());
      glColor3f(0.3, 0.3, 0.3);
      glVertex2f(1.0, static_cast<tReal>(j)/gSolver.resY());
    }
    glEnd();
  }

  // velocity
  if(gShowVel) {
    const Grid2f &vel_u = gSolver.velocity_u();
    const Grid2f &vel_v = gSolver.velocity_v();
    const tReal dt = gSolver.timestep();
    glBegin(GL_LINES);
    for(int j=0; j<gSolver.resY(); ++j) {
      for(int i=0; i<gSolver.resX(); ++i) {
        const tReal px = (static_cast<tReal>(i)+0.5)/gSolver.resX();
        const tReal py = (static_cast<tReal>(j)+0.5)/gSolver.resY();
        const tReal dx = 0.5*(vel_u(i,j)+vel_u((i<gSolver.resX()-1)?i+1:i,j))*dt;
        const tReal dy = 0.5*(vel_v(i,j)+vel_v(i, (j<gSolver.resY()-1)?j+1:j))*dt;
        glColor3d(0, 0, 0);
        glVertex2d(px, py);
        glColor3d(0.4, 0.4, 8.0);
        glVertex2d(px+dx, py+dy);
      }
    }
    glEnd();
  }

  if(gSaveFile) {
    std::stringstream fpath;
    fpath << "s" << std::setw(4) << std::setfill('0') << gSavedCnt++ << ".tga";

    std::cout << "Saving file " << fpath.str() << " ... " << std::flush;
    const short int w = gWindowWidth;
    const short int h = gWindowHeight;
    std::vector<int> buf(w*h*3, 0);
    glReadPixels(0, 0, w, h, GL_BGR, GL_UNSIGNED_BYTE, &(buf[0]));

    FILE *out = fopen(fpath.str().c_str(), "wb");
    short TGAhead[] = {0, 2, 0, 0, 0, 0, w, h, 24};
    fwrite(&TGAhead, sizeof(TGAhead), 1, out);
    fwrite(&(buf[0]), 3*w*h, 1, out);
    fclose(out);
    gSaveFile = false;

    std::cout << "Done" << std::endl;
  }
}

// Update any accessible variable based on the current time
void update(const float currentTime)
{
  if(!gAppTimerStoppedP) {
    // Animate any entity of the program here
    const float dt = currentTime - gAppTimerLastClockTime;
    gAppTimerLastClockTime = currentTime;
    gAppTimer += dt;
    // <---- Update here what needs to be animated over time ---->

    // solve 10 steps
    for(int i=0; i<10; ++i) gSolver.update();
  }
}

int main(int argc, char **argv)
{
  init();
  while(!glfwWindowShouldClose(gWindow)) {
    update(static_cast<float>(glfwGetTime()));
    render();
    glfwSwapBuffers(gWindow);
    glfwPollEvents();
  }
  clear();
  std::cout << " > Quit" << std::endl;
  return EXIT_SUCCESS;
}
