#include <iostream>
#include <GL/glew.h>
#include <GL/freeglut.h>

GLuint vao_id;
GLint program_id;

void test_opengl_error() {
    GLenum err = glGetError();
    switch (err) {
      case GL_NO_ERROR: return;
      case GL_INVALID_ENUM:
                       std::cerr << "GL_INVALID_ENUM\n";
		       break;
      case GL_INVALID_VALUE:
                       std::cerr << "GL_INVALID_VALUE\n";
		       break;
      case GL_INVALID_OPERATION:
                       std::cerr << "GL_INVALID_OPERATION\n";
		       break;
      case GL_INVALID_FRAMEBUFFER_OPERATION:
                       std::cerr << "GL_INVALID_FRAMEBUFFER_OPERATION\n";
		       break;
      case GL_OUT_OF_MEMORY:
                       std::cerr << "GL_OUT_OF_MEMORY\n";
		       break;
      case GL_STACK_UNDERFLOW:
                       std::cerr << "GL_STACK_UNDERFLOW\n";
		       break;
      case GL_STACK_OVERFLOW:
                       std::cerr << "GL_STACK_OVERFLOW\n";
		       break;
      default:
                       std::cerr << "UNKONWN ERROR\n";
		       break;
    }

  }

void display() {
  glPolygonMode(GL_FRONT_AND_BACK,GL_LINE);
  glUseProgram(program_id);
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  glBindVertexArray(vao_id);
  glDrawArrays(GL_PATCHES, 0, 4);
  glBindVertexArray(0);
  glFinish();
  glutSwapBuffers();
  test_opengl_error();
}

void initGlut(int &argc, char *argv[]) {
  //glewExperimental = GL_TRUE;
  glutInit(&argc, argv);
  glutInitContextVersion(4,5);
  glutInitContextProfile(GLUT_CORE_PROFILE | GLUT_DEBUG);
  glutInitDisplayMode(GLUT_RGBA|GLUT_DOUBLE|GLUT_DEPTH);
  glutInitWindowSize(512,512);
  glutInitWindowPosition ( 100, 100 );
  glutCreateWindow("Test");
  glutDisplayFunc(display);
}

void initGlew() {
  if (glewInit()) {
    std::cerr << " Error while initializing glew";
  }
}

void initGL() {
  glDisable(GL_DEPTH_TEST);
  glDisable(GL_CULL_FACE);
  glViewport(0,0,512,512);
  glClearColor(1.0,0,0,1.0);
  test_opengl_error();
}

bool compile_shader(const char **shader_src, GLenum shader_type, GLuint &shader_id) {
  GLint compile_status = GL_TRUE;
  shader_id = glCreateShader(shader_type);
  if (shader_id == 0) return false;
  glShaderSource(shader_id, 1, shader_src, 0);
  glCompileShader(shader_id);
  glGetShaderiv(shader_id, GL_COMPILE_STATUS, &compile_status);
  if(compile_status != GL_TRUE) {
    GLint log_size;
    glGetShaderiv(shader_id, GL_INFO_LOG_LENGTH, &log_size);
    char *shader_log = (char*)std::malloc(log_size+1); /* +1 pour le caractere de fin de chaine '\0' */
    if(shader_log == 0) {
      return false;
    }
    glGetShaderInfoLog(shader_id, log_size, &log_size, shader_log);
    std::cerr << "In file" << shader_src<< "\n" << shader_log << std::endl;
    return false;
  }
  return true;
}

bool initShaders() {
  GLint link_result = GL_TRUE;

  GLuint vertex_shader_id;
  GLuint tess_ctrl_shader_id;
  GLuint tess_eval_shader_id;
  GLuint fragment_shader_id;

  program_id = glCreateProgram();

  if (program_id == 0) return false;

  const char *src_vertex_shader[] =  {"#version 450\nlayout(location = 1) in vec3 vPos;\nvoid main() {\ngl_Position = vec4(vPos, 1.0);\n}"};
  const char *src_tes_ctrl_shader[] =  {"#version 450\nlayout(vertices=4) out;\nvoid main() {\ngl_TessLevelOuter[0] = 4;\ngl_TessLevelOuter[1] = 4;\ngl_TessLevelOuter[2] = 4;\ngl_TessLevelOuter[3] = 4;\ngl_TessLevelInner[0] = 4;\ngl_TessLevelInner[1] = 4;\ngl_out[gl_InvocationID].gl_Position=gl_in[gl_InvocationID].gl_Position;\n}"};
  const char *src_tes_eval_shader[] =  {"#version 450\nlayout(quads,equal_spacing,ccw) in;\nout vec4 ccolor;\nvoid main() {\nvec4 p1=mix(gl_in[0].gl_Position,gl_in[1].gl_Position,gl_TessCoord.x);\nvec4 p2=mix(gl_in[3].gl_Position,gl_in[2].gl_Position,gl_TessCoord.x);\nvec4 p=mix(p1,p2,gl_TessCoord.y);\ngl_Position=p;\nccolor = vec4(p.x, p.y, p.z, 1.0);\n}\n"};
  const char *src_fragment_shader[] = {"#version 450\nin  vec4 ccolor;\nout vec4 color;\nvoid main()\n{\ncolor = ccolor;\n}"};

  if (!compile_shader(src_vertex_shader, GL_VERTEX_SHADER, vertex_shader_id))
    return false;
  if (!compile_shader(src_tes_ctrl_shader, GL_TESS_CONTROL_SHADER, tess_ctrl_shader_id))
    return false;
  if (!compile_shader(src_tes_eval_shader, GL_TESS_EVALUATION_SHADER, tess_eval_shader_id))
    return false;
  if (!compile_shader(src_fragment_shader, GL_FRAGMENT_SHADER, fragment_shader_id))
    return false;

  glAttachShader(program_id, vertex_shader_id);
  glAttachShader(program_id, tess_ctrl_shader_id);
  glAttachShader(program_id, tess_eval_shader_id);
  glAttachShader(program_id, fragment_shader_id);

  glLinkProgram(program_id);
  if (link_result != GL_TRUE) {
    GLint log_size;
    glGetProgramiv(program_id, GL_INFO_LOG_LENGTH, &log_size);
    char *program_log = (char*)std::malloc(log_size+1); /* +1 pour le caractere de fin de chaine '\0' */
    if(program_log == 0) {
      glDeleteProgram(program_id);
      program_id = 0;
      return false;
    }
    glGetProgramInfoLog(program_id, log_size, &log_size, program_log);
    std::cerr << program_log << std::endl;
    glDeleteProgram(program_id);
    return false;
  }
  return true;
}

void initData() {
  //GLfloat vertex_list[] = {-1, -1, 0.0, 1, -1, 0.0, -1, 1, 0.0};
  GLfloat vertex_list[] = {
    -0.8, -0.8, 1.0,
    -0.8,  0.8, 1.0,
     0.8,  0.8, 1.0,
     0.8, -0.8, 1.0};
  GLuint vbo_id;
  glGenVertexArrays(1,&vao_id);
  glBindVertexArray(vao_id);
  glGenBuffers(1,&vbo_id);
  glBindBuffer(GL_ARRAY_BUFFER,vbo_id);
  glBufferData(GL_ARRAY_BUFFER, 4*3*sizeof(GLfloat), vertex_list , GL_STATIC_DRAW);
  glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 0, 0);
  glEnableVertexAttribArray(1);
  glBindVertexArray(0);
  test_opengl_error();
  glPatchParameteri(GL_PATCH_VERTICES, 4);
}

int main(int argc, char *argv[]) {
  std::cerr << "Glut init\n";
  initGlut(argc, argv);
  std::cerr << "Glut init Ok\n";
  std::cerr << "Glew init\n";
  initGlew();
  std::cerr << "Glew init Ok\n";
  std::cerr << "GL init\n";
  initGL();
  std::cerr << "GL init Ok\n";
  std::cerr << "GL init shaders\n";
  initShaders();
  std::cerr << "GL init shaders Ok\n";
  std::cerr << "GL init data\n";
  initData();
  std::cerr << "GL init data Ok\n";
  std::cerr << "Start\n";
  glutMainLoop();
  return 0;
}
