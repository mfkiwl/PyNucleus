

Welcome to PyNucleus!
=====================================

PyNucleus is a finite element code that specifically targets nonlocal operators of the form

.. math::

   \int_{\mathbb{R}^d} [u(x)-u(y)] \gamma(x, y) dy

for nonlocal kernels :math:`\gamma` with finite or infinite horizon and of integrable or fractional type.
Specific examples of such operators include the integral and regional fractional Laplacians, their truncated and tempered variants, and operators arising from peridynamics.

The package aims to provide efficient discretization and assembly routines with :math:`O(N \log N)` quasi-optimal complexity.
The resulting sets of equations can be solved using optimal linear solvers.
The code is fully NumPy/SciPy compatible, allowing easy integration into application codes.


Features
========

* Simplical meshes in 1D, 2D, 3D

* Finite Elements:

  * continuous P1, P2, P3 spaces,
  * discontinuous P0 space

* Assembly of local operators

* Nonlocal kernels:

  * Finite and infinite horizon
  * Singularities: fractional, peridynamic, constant kernel
  * spatially variable kernels: variable fractional order and variable coefficients

* Nonlocal assembly (1D and 2D) into dense, sparse and hierarchical matrices

* Solvers/preconditioners:

  * LU,
  * Cholesky,
  * incomplete LU & Cholesky,
  * Jacobi,
  * CG,
  * BiCGStab,
  * GMRES,
  * geometric multigrid

* Distributed computing using MPI

* Computationally expensive parts of the code are compiled via Cython.

* Partitioning using METIS / ParMETIS


Documentation
=============

The documentation is available `here <https://sandialabs.github.io/PyNucleus/index.html>`_.

To generate the Sphinx documentation locally, run

.. code-block:: shell

   make docs

and open ``docs/build/index.html`` in your browser.




Prerequisites
=============

In order to install PyNucleus, you will need

* Python 3,
* MPI,
* METIS,
* ParMETIS,
* SuiteSparse,
* make (optional, only for editable installs).

On Debian, Ubuntu etc, the required dependecies can be installed with

.. code-block:: shell

   sudo apt-get install python3 mpi-default-bin mpi-default-dev libmetis-dev libparmetis-dev libsuitesparse-dev

Installation
============

PyNucleus is installed via

.. code-block:: shell

   python3 -m pip install .

or via

.. code-block:: shell

   make

If you want to easily modify the source code without re-installing the package every time, and editable install is available as

.. code-block:: shell

   make dev

PyNucleus depends on other Python packages that will be installed automatically:

* NumPy
* SciPy
* Matplotlib
* Cython
* mpi4py
* tabulate
* PyYAML
* H5py
* modepy
* meshpy
* scikit-sparse


Docker container
================

A Docker container that contains all the required dependecies can be built as well:

.. code-block:: shell

   ./build-docker.sh

Once the build is done, it can be launched as

.. code-block:: shell

   ./run-docker-linux.sh

or

.. code-block:: shell

   ./run-docker-mac.sh


Funding
=======

PyNucleus' development is funded through the MATNIP project (PI: Marta D'Elia) of the LDRD program at Sandia National Laboratories.

.. image:: data/matnip.png
   :height: 100px

*The MATNIP project develops for the first time a rigorous nonlocal interface theory based on physical principles that is consistent with the classical theory of partial differential equations when the nonlocality vanishes and is mathematically well-posed.
This will improve the predictive capability of nonlocal models and increase their usability at Sandia and, more in general, in the computational-science and engineering community.
Furthermore, this theory will provide the groundwork for the development of nonlocal solvers, reducing the burden of prohibitively expensive computations.*
