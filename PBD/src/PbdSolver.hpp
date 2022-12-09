// ----------------------------------------------------------------------------
// PbdSolver.hpp
//
//  Created on: 07 Jul 2021
//      Author: Kiwon Um
//        Mail: kiwon.um@telecom-paris.fr
//
// Description: Position Based Dynamics Solver (Do not distribute!)
//
// Copyright 2021-2022 Kiwon Um
//
// The copyright to the computer program(s) herein is the property of Kiwon Um,
// Telecom Paris, France. The program(s) may be used and/or copied only with
// the written permission of Kiwon Um or in accordance with the terms and
// conditions stipulated in the agreement/contract under which the program(s)
// have been supplied.
// ----------------------------------------------------------------------------

#ifndef _PBDSOLVER_HPP_
#define _PBDSOLVER_HPP_

#include <cmath>
#include <set>
#include <map>
#include <glm/glm.hpp>
#include <memory>
#include <utility>
#include <random>
#include <chrono>

#include "glm/fwd.hpp"
#include "glm/geometric.hpp"
#include "typedefs.hpp"
#include "Mesh.h"

struct Constraint {
  virtual void project(std::vector<glm::vec3> &x, const std::vector<tReal> &w) const = 0;
};

struct ConstraintAttach : public Constraint {
  explicit ConstraintAttach(const tUint i, const glm::vec3 &p) :
    _i(i), _p(p) {}

  virtual void project(std::vector<glm::vec3> &x, const std::vector<tReal> &w) const
  { x[_i] = _p; }

  tUint _i;                     // vertex id
  glm::vec3 _p;                 // fixed position
};

struct ConstraintStretch : public Constraint {
  explicit ConstraintStretch(
    const tUint i, const tUint j, const tReal d, const tReal k) :
    _i(i), _j(j), _d(d), _k(k) {}

  virtual void project(std::vector<glm::vec3> &x, const std::vector<tReal> &w) const
  {
    // TODO: update/project x according to this constraint
  }

  tUint _i, _j;                 // indices of two vertices
  tReal _d;                     // initial length
  tReal _k;                     // stiffness
};

struct ConstraintBend : public Constraint {
  explicit ConstraintBend(
    const tUint i1, const tUint i2, const tUint i3, const tUint i4,
    const tReal phi, const tReal k) :
    _i1(i1), _i2(i2), _i3(i3), _i4(i4), _phi(phi), _k(k) {}

  virtual void project(std::vector<glm::vec3> &x, const std::vector<tReal> &w) const
  {
    // TODO: update/project x according to this constraint
  }

  tUint _i1, _i2, _i3, _i4; // indices of vertices forming two adjacent triangles
  tReal _phi;               // initial angle
  tReal _k;                 // stiffness
};


class PbdSolver {
public:
  explicit PbdSolver(
    const tUint num_solve=20,
    const tReal k_stretch=1.0f, const tReal k_bend=1.0f, const tReal k_damp=0.99f,
    const glm::vec3 &gravity=glm::vec3(0.f, -9.8f, 0.f)) :
    _g(gravity), _step(0), _sim_t(0.0f),
    _Ns(num_solve), _kStretch(k_stretch), _kBend(k_bend), _kDamp(k_damp) {}
  virtual ~PbdSolver() {}

  void initSim(const Mesh &mesh)
  {
    _step = 0;
    _sim_t = 0.0f;

    _x = mesh.vertexPositions();
    _idx = mesh.triangleIndices();
    _tex = mesh.vertexTexCoords();

    // TODO: initialize physical variables _v, _f, _w
    _v = 0;
    _f = 2*_g;
    _w = 1/2;

    // TODO: create constraints

    // TODO: attachments

    // TODO: edge-triangle information

    // TODO: stretch

    // TODO: bend
  }

  void updateMesh(Mesh &mesh)
  {
    mesh.vertexPositions() = _x;
    mesh.recomputePerVertexNormals();
  }

  void step(const tReal dt)
  {
    std::cout << "t=" << _sim_t << " (dt=" << dt << ")" << std::endl;

    // TODO: main solver routine

    ++_step;
    _sim_t += dt;
  }

private:
  std::vector<glm::vec3> _x;    // position
  std::vector<glm::vec3> _v;    // velocity
  std::vector<glm::vec3> _f;    // force
  std::vector<glm::uvec3> _idx; // indices
  std::vector<glm::vec2> _tex;  // texture coordinates
  std::vector<tReal> _w;        // mass inverse

  std::vector< std::shared_ptr<Constraint> > _constraints; // constraints

  // simulation parameters
  glm::vec3 _g;                 // gravity
  tUint _step;                  // step count
  tReal _sim_t;                 // simulation time

  // PBD solver parameters
  tUint _Ns;                       // solver iterations
  tReal _kStretch, _kBend, _kDamp; // stiffness coefficients
};

#endif  /* _PBDSOLVER_HPP_ */
