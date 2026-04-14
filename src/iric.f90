module iric
  implicit none

  integer, parameter:: IRIC_MODE_READ = 0
  integer, parameter:: IRIC_MODE_WRITE = 1
  integer, parameter:: IRIC_MODE_MODIFY = 2

  integer, parameter:: IRIC_GEO_UNKNOWN = 0
  integer, parameter:: IRIC_GEO_POLYGON = 1
  integer, parameter:: IRIC_GEO_RIVERSURVEY = 2
  integer, parameter:: IRIC_GEO_POINTMAP = 3
  integer, parameter:: IRIC_GEO_POLYLINE = 4

  integer, parameter:: IRIC_OPTION_UNKNOWN = 0
  integer, parameter:: IRIC_OPTION_CANCEL = 1
  integer, parameter:: IRIC_OPTION_DIVIDESOLUTIONS = 2
  integer, parameter:: IRIC_OPTION_STDSOLUTION = 3

  integer, parameter:: IRIC_CANCELED = 1

  interface cg_iric_read_bc_indices_withgridid
    module procedure cg_iric_read_bc_indices_withgridid_1d
    module procedure cg_iric_read_bc_indices_withgridid_2d
    module procedure cg_iric_read_bc_indices_withgridid_3d
  end interface

  interface cg_iric_read_bc_functional_withgridid
    module procedure cg_iric_read_bc_functional_withgridid_1d
    module procedure cg_iric_read_bc_functional_withgridid_2d
    module procedure cg_iric_read_bc_functional_withgridid_3d
  end interface

  interface cg_iric_read_bc_functionalwithname_withgridid
    module procedure cg_iric_read_bc_functionalwithname_withgridid_1d
    module procedure cg_iric_read_bc_functionalwithname_withgridid_2d
    module procedure cg_iric_read_bc_functionalwithname_withgridid_3d
  end interface

  interface cg_iric_read_bc_functional_realsingle_withgridid
    module procedure cg_iric_read_bc_functional_realsingle_withgridid_1d
    module procedure cg_iric_read_bc_functional_realsingle_withgridid_2d
    module procedure cg_iric_read_bc_functional_realsingle_withgridid_3d
  end interface

  interface cg_iric_read_bc_functionalwithname_realsingle_withgridid
    module procedure cg_iric_read_bc_functionalwithname_realsingle_withgridid_1d
    module procedure cg_iric_read_bc_functionalwithname_realsingle_withgridid_2d
    module procedure cg_iric_read_bc_functionalwithname_realsingle_withgridid_3d
  end interface

  interface cg_iric_write_bc_indices_withgridid
    module procedure cg_iric_write_bc_indices_withgridid_1d
    module procedure cg_iric_write_bc_indices_withgridid_2d
    module procedure cg_iric_write_bc_indices_withgridid_3d
  end interface

  interface cg_iric_write_bc_indices2_withgridid
    module procedure cg_iric_write_bc_indices2_withgridid_1d
    module procedure cg_iric_write_bc_indices2_withgridid_2d
    module procedure cg_iric_write_bc_indices2_withgridid_3d
  end interface

  interface cg_iric_write_bc_functional_withgridid
    module procedure cg_iric_write_bc_functional_withgridid_1d
    module procedure cg_iric_write_bc_functional_withgridid_2d
    module procedure cg_iric_write_bc_functional_withgridid_3d
  end interface

  interface cg_iric_write_bc_functionalwithname_withgridid
    module procedure cg_iric_write_bc_functionalwithname_withgridid_1d
    module procedure cg_iric_write_bc_functionalwithname_withgridid_2d
    module procedure cg_iric_write_bc_functionalwithname_withgridid_3d
  end interface

  interface cg_iric_read_functional
    module procedure cg_iric_read_functional_1d
    module procedure cg_iric_read_functional_2d
    module procedure cg_iric_read_functional_3d
  end interface

  interface cg_iric_read_functionalwithname
    module procedure cg_iric_read_functionalwithname_1d
    module procedure cg_iric_read_functionalwithname_2d
    module procedure cg_iric_read_functionalwithname_3d
  end interface

  interface cg_iric_read_functional_realsingle
    module procedure cg_iric_read_functional_realsingle_1d
    module procedure cg_iric_read_functional_realsingle_2d
    module procedure cg_iric_read_functional_realsingle_3d
  end interface

  interface cg_iric_read_functionalwithname_realsingle
    module procedure cg_iric_read_functionalwithname_realsingle_1d
    module procedure cg_iric_read_functionalwithname_realsingle_2d
    module procedure cg_iric_read_functionalwithname_realsingle_3d
  end interface

  interface cg_iric_write_functional
    module procedure cg_iric_write_functional_1d
    module procedure cg_iric_write_functional_2d
    module procedure cg_iric_write_functional_3d
  end interface

  interface cg_iric_write_functionalwithname
    module procedure cg_iric_write_functionalwithname_1d
    module procedure cg_iric_write_functionalwithname_2d
    module procedure cg_iric_write_functionalwithname_3d
  end interface

  interface cg_iric_read_grid_complex_node_withgridid
    module procedure cg_iric_read_grid_complex_node_withgridid_1d
    module procedure cg_iric_read_grid_complex_node_withgridid_2d
    module procedure cg_iric_read_grid_complex_node_withgridid_3d
  end interface

  interface cg_iric_read_grid_complex_cell_withgridid
    module procedure cg_iric_read_grid_complex_cell_withgridid_1d
    module procedure cg_iric_read_grid_complex_cell_withgridid_2d
    module procedure cg_iric_read_grid_complex_cell_withgridid_3d
  end interface

  interface cg_iric_read_grid_complex_iface_withgridid
    module procedure cg_iric_read_grid_complex_iface_withgridid_1d
    module procedure cg_iric_read_grid_complex_iface_withgridid_2d
    module procedure cg_iric_read_grid_complex_iface_withgridid_3d
  end interface

  interface cg_iric_read_grid_complex_jface_withgridid
    module procedure cg_iric_read_grid_complex_jface_withgridid_1d
    module procedure cg_iric_read_grid_complex_jface_withgridid_2d
    module procedure cg_iric_read_grid_complex_jface_withgridid_3d
  end interface

  interface cg_iric_write_grid_complex_node_withgridid
    module procedure cg_iric_write_grid_complex_node_withgridid_1d
    module procedure cg_iric_write_grid_complex_node_withgridid_2d
    module procedure cg_iric_write_grid_complex_node_withgridid_3d
  end interface

  interface cg_iric_write_grid_complex_cell_withgridid
    module procedure cg_iric_write_grid_complex_cell_withgridid_1d
    module procedure cg_iric_write_grid_complex_cell_withgridid_2d
    module procedure cg_iric_write_grid_complex_cell_withgridid_3d
  end interface

  interface cg_iric_write_grid_complex_iface_withgridid
    module procedure cg_iric_write_grid_complex_iface_withgridid_1d
    module procedure cg_iric_write_grid_complex_iface_withgridid_2d
    module procedure cg_iric_write_grid_complex_iface_withgridid_3d
  end interface

  interface cg_iric_write_grid_complex_jface_withgridid
    module procedure cg_iric_write_grid_complex_jface_withgridid_1d
    module procedure cg_iric_write_grid_complex_jface_withgridid_2d
    module procedure cg_iric_write_grid_complex_jface_withgridid_3d
  end interface

  interface cg_iric_read_grid2d_coords_withgridid
    module procedure cg_iric_read_grid2d_coords_withgridid_1d
    module procedure cg_iric_read_grid2d_coords_withgridid_2d
  end interface

  interface cg_iric_read_grid3d_coords_withgridid
    module procedure cg_iric_read_grid3d_coords_withgridid_1d
    module procedure cg_iric_read_grid3d_coords_withgridid_3d
  end interface

  interface cg_iric_read_grid_real_node_withgridid
    module procedure cg_iric_read_grid_real_node_withgridid_1d
    module procedure cg_iric_read_grid_real_node_withgridid_2d
    module procedure cg_iric_read_grid_real_node_withgridid_3d
  end interface

  interface cg_iric_read_grid_integer_node_withgridid
    module procedure cg_iric_read_grid_integer_node_withgridid_1d
    module procedure cg_iric_read_grid_integer_node_withgridid_2d
    module procedure cg_iric_read_grid_integer_node_withgridid_3d
  end interface

  interface cg_iric_read_grid_real_cell_withgridid
    module procedure cg_iric_read_grid_real_cell_withgridid_1d
    module procedure cg_iric_read_grid_real_cell_withgridid_2d
    module procedure cg_iric_read_grid_real_cell_withgridid_3d
  end interface

  interface cg_iric_read_grid_integer_cell_withgridid
    module procedure cg_iric_read_grid_integer_cell_withgridid_1d
    module procedure cg_iric_read_grid_integer_cell_withgridid_2d
    module procedure cg_iric_read_grid_integer_cell_withgridid_3d
  end interface

  interface cg_iric_read_grid_real_iface_withgridid
    module procedure cg_iric_read_grid_real_iface_withgridid_1d
    module procedure cg_iric_read_grid_real_iface_withgridid_2d
    module procedure cg_iric_read_grid_real_iface_withgridid_3d
  end interface

  interface cg_iric_read_grid_integer_iface_withgridid
    module procedure cg_iric_read_grid_integer_iface_withgridid_1d
    module procedure cg_iric_read_grid_integer_iface_withgridid_2d
    module procedure cg_iric_read_grid_integer_iface_withgridid_3d
  end interface

  interface cg_iric_read_grid_real_jface_withgridid
    module procedure cg_iric_read_grid_real_jface_withgridid_1d
    module procedure cg_iric_read_grid_real_jface_withgridid_2d
    module procedure cg_iric_read_grid_real_jface_withgridid_3d
  end interface

  interface cg_iric_read_grid_integer_jface_withgridid
    module procedure cg_iric_read_grid_integer_jface_withgridid_1d
    module procedure cg_iric_read_grid_integer_jface_withgridid_2d
    module procedure cg_iric_read_grid_integer_jface_withgridid_3d
  end interface

  interface cg_iric_read_grid_functional_integer_node_withgridid
    module procedure cg_iric_read_grid_functional_integer_node_withgridid_1d
    module procedure cg_iric_read_grid_functional_integer_node_withgridid_2d
    module procedure cg_iric_read_grid_functional_integer_node_withgridid_3d
  end interface

  interface cg_iric_read_grid_functional_real_node_withgridid
    module procedure cg_iric_read_grid_functional_real_node_withgridid_1d
    module procedure cg_iric_read_grid_functional_real_node_withgridid_2d
    module procedure cg_iric_read_grid_functional_real_node_withgridid_3d
  end interface

  interface cg_iric_read_grid_functional_integer_cell_withgridid
    module procedure cg_iric_read_grid_functional_integer_cell_withgridid_1d
    module procedure cg_iric_read_grid_functional_integer_cell_withgridid_2d
    module procedure cg_iric_read_grid_functional_integer_cell_withgridid_3d
  end interface

  interface cg_iric_read_grid_functional_real_cell_withgridid
    module procedure cg_iric_read_grid_functional_real_cell_withgridid_1d
    module procedure cg_iric_read_grid_functional_real_cell_withgridid_2d
    module procedure cg_iric_read_grid_functional_real_cell_withgridid_3d
  end interface

  interface cg_iric_read_grid_functional_integer_iface_withgridid
    module procedure cg_iric_read_grid_functional_integer_iface_withgridid_1d
    module procedure cg_iric_read_grid_functional_integer_iface_withgridid_2d
    module procedure cg_iric_read_grid_functional_integer_iface_withgridid_3d
  end interface

  interface cg_iric_read_grid_functional_real_iface_withgridid
    module procedure cg_iric_read_grid_functional_real_iface_withgridid_1d
    module procedure cg_iric_read_grid_functional_real_iface_withgridid_2d
    module procedure cg_iric_read_grid_functional_real_iface_withgridid_3d
  end interface

  interface cg_iric_read_grid_functional_integer_jface_withgridid
    module procedure cg_iric_read_grid_functional_integer_jface_withgridid_1d
    module procedure cg_iric_read_grid_functional_integer_jface_withgridid_2d
    module procedure cg_iric_read_grid_functional_integer_jface_withgridid_3d
  end interface

  interface cg_iric_read_grid_functional_real_jface_withgridid
    module procedure cg_iric_read_grid_functional_real_jface_withgridid_1d
    module procedure cg_iric_read_grid_functional_real_jface_withgridid_2d
    module procedure cg_iric_read_grid_functional_real_jface_withgridid_3d
  end interface

  interface cg_iric_write_grid2d_coords_withgridid
    module procedure cg_iric_write_grid2d_coords_withgridid_1d
    module procedure cg_iric_write_grid2d_coords_withgridid_2d
  end interface

  interface cg_iric_write_grid3d_coords_withgridid
    module procedure cg_iric_write_grid3d_coords_withgridid_1d
    module procedure cg_iric_write_grid3d_coords_withgridid_3d
  end interface

  interface cg_iric_write_namedgrid2d_coords_withgridid
    module procedure cg_iric_write_namedgrid2d_coords_withgridid_1d
    module procedure cg_iric_write_namedgrid2d_coords_withgridid_2d
  end interface

  interface cg_iric_write_namedgrid3d_coords_withgridid
    module procedure cg_iric_write_namedgrid3d_coords_withgridid_1d
    module procedure cg_iric_write_namedgrid3d_coords_withgridid_3d
  end interface

  interface cg_iric_write_grid_real_node_withgridid
    module procedure cg_iric_write_grid_real_node_withgridid_1d
    module procedure cg_iric_write_grid_real_node_withgridid_2d
    module procedure cg_iric_write_grid_real_node_withgridid_3d
  end interface

  interface cg_iric_write_grid_integer_node_withgridid
    module procedure cg_iric_write_grid_integer_node_withgridid_1d
    module procedure cg_iric_write_grid_integer_node_withgridid_2d
    module procedure cg_iric_write_grid_integer_node_withgridid_3d
  end interface

  interface cg_iric_write_grid_real_cell_withgridid
    module procedure cg_iric_write_grid_real_cell_withgridid_1d
    module procedure cg_iric_write_grid_real_cell_withgridid_2d
    module procedure cg_iric_write_grid_real_cell_withgridid_3d
  end interface

  interface cg_iric_write_grid_integer_cell_withgridid
    module procedure cg_iric_write_grid_integer_cell_withgridid_1d
    module procedure cg_iric_write_grid_integer_cell_withgridid_2d
    module procedure cg_iric_write_grid_integer_cell_withgridid_3d
  end interface

  interface cg_iric_write_grid_real_iface_withgridid
    module procedure cg_iric_write_grid_real_iface_withgridid_1d
    module procedure cg_iric_write_grid_real_iface_withgridid_2d
    module procedure cg_iric_write_grid_real_iface_withgridid_3d
  end interface

  interface cg_iric_write_grid_integer_iface_withgridid
    module procedure cg_iric_write_grid_integer_iface_withgridid_1d
    module procedure cg_iric_write_grid_integer_iface_withgridid_2d
    module procedure cg_iric_write_grid_integer_iface_withgridid_3d
  end interface

  interface cg_iric_write_grid_real_jface_withgridid
    module procedure cg_iric_write_grid_real_jface_withgridid_1d
    module procedure cg_iric_write_grid_real_jface_withgridid_2d
    module procedure cg_iric_write_grid_real_jface_withgridid_3d
  end interface

  interface cg_iric_write_grid_integer_jface_withgridid
    module procedure cg_iric_write_grid_integer_jface_withgridid_1d
    module procedure cg_iric_write_grid_integer_jface_withgridid_2d
    module procedure cg_iric_write_grid_integer_jface_withgridid_3d
  end interface

  interface cg_iric_read_complex_functional
    module procedure cg_iric_read_complex_functional_1d
    module procedure cg_iric_read_complex_functional_2d
    module procedure cg_iric_read_complex_functional_3d
  end interface

  interface cg_iric_read_complex_functionalwithname
    module procedure cg_iric_read_complex_functionalwithname_1d
    module procedure cg_iric_read_complex_functionalwithname_2d
    module procedure cg_iric_read_complex_functionalwithname_3d
  end interface

  interface cg_iric_read_complex_functional_realsingle
    module procedure cg_iric_read_complex_functional_realsingle_1d
    module procedure cg_iric_read_complex_functional_realsingle_2d
    module procedure cg_iric_read_complex_functional_realsingle_3d
  end interface

  interface cg_iric_read_complex_functionalwithname_realsingle
    module procedure cg_iric_read_complex_functionalwithname_realsingle_1d
    module procedure cg_iric_read_complex_functionalwithname_realsingle_2d
    module procedure cg_iric_read_complex_functionalwithname_realsingle_3d
  end interface

  interface cg_iric_write_complex_functional
    module procedure cg_iric_write_complex_functional_1d
    module procedure cg_iric_write_complex_functional_2d
    module procedure cg_iric_write_complex_functional_3d
  end interface

  interface cg_iric_write_complex_functionalwithname
    module procedure cg_iric_write_complex_functionalwithname_1d
    module procedure cg_iric_write_complex_functionalwithname_2d
    module procedure cg_iric_write_complex_functionalwithname_3d
  end interface

  interface cg_iric_read_bc_indices
    module procedure cg_iric_read_bc_indices_1d
    module procedure cg_iric_read_bc_indices_2d
    module procedure cg_iric_read_bc_indices_3d
  end interface

  interface cg_iric_read_bc_functional
    module procedure cg_iric_read_bc_functional_1d
    module procedure cg_iric_read_bc_functional_2d
    module procedure cg_iric_read_bc_functional_3d
  end interface

  interface cg_iric_read_bc_functionalwithname
    module procedure cg_iric_read_bc_functionalwithname_1d
    module procedure cg_iric_read_bc_functionalwithname_2d
    module procedure cg_iric_read_bc_functionalwithname_3d
  end interface

  interface cg_iric_read_bc_functional_realsingle
    module procedure cg_iric_read_bc_functional_realsingle_1d
    module procedure cg_iric_read_bc_functional_realsingle_2d
    module procedure cg_iric_read_bc_functional_realsingle_3d
  end interface

  interface cg_iric_read_bc_functionalwithname_realsingle
    module procedure cg_iric_read_bc_functionalwithname_realsingle_1d
    module procedure cg_iric_read_bc_functionalwithname_realsingle_2d
    module procedure cg_iric_read_bc_functionalwithname_realsingle_3d
  end interface

  interface cg_iric_write_bc_indices
    module procedure cg_iric_write_bc_indices_1d
    module procedure cg_iric_write_bc_indices_2d
    module procedure cg_iric_write_bc_indices_3d
  end interface

  interface cg_iric_write_bc_indices2
    module procedure cg_iric_write_bc_indices2_1d
    module procedure cg_iric_write_bc_indices2_2d
    module procedure cg_iric_write_bc_indices2_3d
  end interface

  interface cg_iric_write_bc_functional
    module procedure cg_iric_write_bc_functional_1d
    module procedure cg_iric_write_bc_functional_2d
    module procedure cg_iric_write_bc_functional_3d
  end interface

  interface cg_iric_write_bc_functionalwithname
    module procedure cg_iric_write_bc_functionalwithname_1d
    module procedure cg_iric_write_bc_functionalwithname_2d
    module procedure cg_iric_write_bc_functionalwithname_3d
  end interface

  interface cg_iric_read_grid_complex_node
    module procedure cg_iric_read_grid_complex_node_1d
    module procedure cg_iric_read_grid_complex_node_2d
    module procedure cg_iric_read_grid_complex_node_3d
  end interface

  interface cg_iric_read_grid_complex_cell
    module procedure cg_iric_read_grid_complex_cell_1d
    module procedure cg_iric_read_grid_complex_cell_2d
    module procedure cg_iric_read_grid_complex_cell_3d
  end interface

  interface cg_iric_read_grid_complex_iface
    module procedure cg_iric_read_grid_complex_iface_1d
    module procedure cg_iric_read_grid_complex_iface_2d
    module procedure cg_iric_read_grid_complex_iface_3d
  end interface

  interface cg_iric_read_grid_complex_jface
    module procedure cg_iric_read_grid_complex_jface_1d
    module procedure cg_iric_read_grid_complex_jface_2d
    module procedure cg_iric_read_grid_complex_jface_3d
  end interface

  interface cg_iric_write_grid_complex_node
    module procedure cg_iric_write_grid_complex_node_1d
    module procedure cg_iric_write_grid_complex_node_2d
    module procedure cg_iric_write_grid_complex_node_3d
  end interface

  interface cg_iric_write_grid_complex_cell
    module procedure cg_iric_write_grid_complex_cell_1d
    module procedure cg_iric_write_grid_complex_cell_2d
    module procedure cg_iric_write_grid_complex_cell_3d
  end interface

  interface cg_iric_write_grid_complex_iface
    module procedure cg_iric_write_grid_complex_iface_1d
    module procedure cg_iric_write_grid_complex_iface_2d
    module procedure cg_iric_write_grid_complex_iface_3d
  end interface

  interface cg_iric_write_grid_complex_jface
    module procedure cg_iric_write_grid_complex_jface_1d
    module procedure cg_iric_write_grid_complex_jface_2d
    module procedure cg_iric_write_grid_complex_jface_3d
  end interface

  interface cg_iric_read_grid2d_coords
    module procedure cg_iric_read_grid2d_coords_1d
    module procedure cg_iric_read_grid2d_coords_2d
  end interface

  interface cg_iric_read_grid3d_coords
    module procedure cg_iric_read_grid3d_coords_1d
    module procedure cg_iric_read_grid3d_coords_3d
  end interface

  interface cg_iric_read_grid_real_node
    module procedure cg_iric_read_grid_real_node_1d
    module procedure cg_iric_read_grid_real_node_2d
    module procedure cg_iric_read_grid_real_node_3d
  end interface

  interface cg_iric_read_grid_integer_node
    module procedure cg_iric_read_grid_integer_node_1d
    module procedure cg_iric_read_grid_integer_node_2d
    module procedure cg_iric_read_grid_integer_node_3d
  end interface

  interface cg_iric_read_grid_real_cell
    module procedure cg_iric_read_grid_real_cell_1d
    module procedure cg_iric_read_grid_real_cell_2d
    module procedure cg_iric_read_grid_real_cell_3d
  end interface

  interface cg_iric_read_grid_integer_cell
    module procedure cg_iric_read_grid_integer_cell_1d
    module procedure cg_iric_read_grid_integer_cell_2d
    module procedure cg_iric_read_grid_integer_cell_3d
  end interface

  interface cg_iric_read_grid_real_iface
    module procedure cg_iric_read_grid_real_iface_1d
    module procedure cg_iric_read_grid_real_iface_2d
    module procedure cg_iric_read_grid_real_iface_3d
  end interface

  interface cg_iric_read_grid_integer_iface
    module procedure cg_iric_read_grid_integer_iface_1d
    module procedure cg_iric_read_grid_integer_iface_2d
    module procedure cg_iric_read_grid_integer_iface_3d
  end interface

  interface cg_iric_read_grid_real_jface
    module procedure cg_iric_read_grid_real_jface_1d
    module procedure cg_iric_read_grid_real_jface_2d
    module procedure cg_iric_read_grid_real_jface_3d
  end interface

  interface cg_iric_read_grid_integer_jface
    module procedure cg_iric_read_grid_integer_jface_1d
    module procedure cg_iric_read_grid_integer_jface_2d
    module procedure cg_iric_read_grid_integer_jface_3d
  end interface

  interface cg_iric_read_grid_functional_integer_node
    module procedure cg_iric_read_grid_functional_integer_node_1d
    module procedure cg_iric_read_grid_functional_integer_node_2d
    module procedure cg_iric_read_grid_functional_integer_node_3d
  end interface

  interface cg_iric_read_grid_functional_real_node
    module procedure cg_iric_read_grid_functional_real_node_1d
    module procedure cg_iric_read_grid_functional_real_node_2d
    module procedure cg_iric_read_grid_functional_real_node_3d
  end interface

  interface cg_iric_read_grid_functional_integer_cell
    module procedure cg_iric_read_grid_functional_integer_cell_1d
    module procedure cg_iric_read_grid_functional_integer_cell_2d
    module procedure cg_iric_read_grid_functional_integer_cell_3d
  end interface

  interface cg_iric_read_grid_functional_real_cell
    module procedure cg_iric_read_grid_functional_real_cell_1d
    module procedure cg_iric_read_grid_functional_real_cell_2d
    module procedure cg_iric_read_grid_functional_real_cell_3d
  end interface

  interface cg_iric_read_grid_functional_integer_iface
    module procedure cg_iric_read_grid_functional_integer_iface_1d
    module procedure cg_iric_read_grid_functional_integer_iface_2d
    module procedure cg_iric_read_grid_functional_integer_iface_3d
  end interface

  interface cg_iric_read_grid_functional_real_iface
    module procedure cg_iric_read_grid_functional_real_iface_1d
    module procedure cg_iric_read_grid_functional_real_iface_2d
    module procedure cg_iric_read_grid_functional_real_iface_3d
  end interface

  interface cg_iric_read_grid_functional_integer_jface
    module procedure cg_iric_read_grid_functional_integer_jface_1d
    module procedure cg_iric_read_grid_functional_integer_jface_2d
    module procedure cg_iric_read_grid_functional_integer_jface_3d
  end interface

  interface cg_iric_read_grid_functional_real_jface
    module procedure cg_iric_read_grid_functional_real_jface_1d
    module procedure cg_iric_read_grid_functional_real_jface_2d
    module procedure cg_iric_read_grid_functional_real_jface_3d
  end interface

  interface cg_iric_write_grid2d_coords
    module procedure cg_iric_write_grid2d_coords_1d
    module procedure cg_iric_write_grid2d_coords_2d
  end interface

  interface cg_iric_write_grid3d_coords
    module procedure cg_iric_write_grid3d_coords_1d
    module procedure cg_iric_write_grid3d_coords_3d
  end interface

  interface cg_iric_write_namedgrid2d_coords
    module procedure cg_iric_write_namedgrid2d_coords_1d
    module procedure cg_iric_write_namedgrid2d_coords_2d
  end interface

  interface cg_iric_write_namedgrid3d_coords
    module procedure cg_iric_write_namedgrid3d_coords_1d
    module procedure cg_iric_write_namedgrid3d_coords_3d
  end interface

  interface cg_iric_write_grid_real_node
    module procedure cg_iric_write_grid_real_node_1d
    module procedure cg_iric_write_grid_real_node_2d
    module procedure cg_iric_write_grid_real_node_3d
  end interface

  interface cg_iric_write_grid_integer_node
    module procedure cg_iric_write_grid_integer_node_1d
    module procedure cg_iric_write_grid_integer_node_2d
    module procedure cg_iric_write_grid_integer_node_3d
  end interface

  interface cg_iric_write_grid_real_cell
    module procedure cg_iric_write_grid_real_cell_1d
    module procedure cg_iric_write_grid_real_cell_2d
    module procedure cg_iric_write_grid_real_cell_3d
  end interface

  interface cg_iric_write_grid_integer_cell
    module procedure cg_iric_write_grid_integer_cell_1d
    module procedure cg_iric_write_grid_integer_cell_2d
    module procedure cg_iric_write_grid_integer_cell_3d
  end interface

  interface cg_iric_write_grid_real_iface
    module procedure cg_iric_write_grid_real_iface_1d
    module procedure cg_iric_write_grid_real_iface_2d
    module procedure cg_iric_write_grid_real_iface_3d
  end interface

  interface cg_iric_write_grid_integer_iface
    module procedure cg_iric_write_grid_integer_iface_1d
    module procedure cg_iric_write_grid_integer_iface_2d
    module procedure cg_iric_write_grid_integer_iface_3d
  end interface

  interface cg_iric_write_grid_real_jface
    module procedure cg_iric_write_grid_real_jface_1d
    module procedure cg_iric_write_grid_real_jface_2d
    module procedure cg_iric_write_grid_real_jface_3d
  end interface

  interface cg_iric_write_grid_integer_jface
    module procedure cg_iric_write_grid_integer_jface_1d
    module procedure cg_iric_write_grid_integer_jface_2d
    module procedure cg_iric_write_grid_integer_jface_3d
  end interface

  interface cg_iric_read_sol_cell_integer
    module procedure cg_iric_read_sol_cell_integer_1d
    module procedure cg_iric_read_sol_cell_integer_2d
    module procedure cg_iric_read_sol_cell_integer_3d
  end interface

  interface cg_iric_read_sol_cell_real
    module procedure cg_iric_read_sol_cell_real_1d
    module procedure cg_iric_read_sol_cell_real_2d
    module procedure cg_iric_read_sol_cell_real_3d
  end interface

  interface cg_iric_write_sol_cell_integer
    module procedure cg_iric_write_sol_cell_integer_1d
    module procedure cg_iric_write_sol_cell_integer_2d
    module procedure cg_iric_write_sol_cell_integer_3d
  end interface

  interface cg_iric_write_sol_cell_real
    module procedure cg_iric_write_sol_cell_real_1d
    module procedure cg_iric_write_sol_cell_real_2d
    module procedure cg_iric_write_sol_cell_real_3d
  end interface

  interface cg_iric_read_sol_grid2d_coords
    module procedure cg_iric_read_sol_grid2d_coords_1d
    module procedure cg_iric_read_sol_grid2d_coords_2d
  end interface

  interface cg_iric_read_sol_grid3d_coords
    module procedure cg_iric_read_sol_grid3d_coords_1d
    module procedure cg_iric_read_sol_grid3d_coords_3d
  end interface

  interface cg_iric_write_sol_grid2d_coords
    module procedure cg_iric_write_sol_grid2d_coords_1d
    module procedure cg_iric_write_sol_grid2d_coords_2d
  end interface

  interface cg_iric_write_sol_grid3d_coords
    module procedure cg_iric_write_sol_grid3d_coords_1d
    module procedure cg_iric_write_sol_grid3d_coords_3d
  end interface

  interface cg_iric_read_sol_iface_integer
    module procedure cg_iric_read_sol_iface_integer_1d
    module procedure cg_iric_read_sol_iface_integer_2d
    module procedure cg_iric_read_sol_iface_integer_3d
  end interface

  interface cg_iric_read_sol_iface_real
    module procedure cg_iric_read_sol_iface_real_1d
    module procedure cg_iric_read_sol_iface_real_2d
    module procedure cg_iric_read_sol_iface_real_3d
  end interface

  interface cg_iric_write_sol_iface_integer
    module procedure cg_iric_write_sol_iface_integer_1d
    module procedure cg_iric_write_sol_iface_integer_2d
    module procedure cg_iric_write_sol_iface_integer_3d
  end interface

  interface cg_iric_write_sol_iface_real
    module procedure cg_iric_write_sol_iface_real_1d
    module procedure cg_iric_write_sol_iface_real_2d
    module procedure cg_iric_write_sol_iface_real_3d
  end interface

  interface cg_iric_read_sol_jface_integer
    module procedure cg_iric_read_sol_jface_integer_1d
    module procedure cg_iric_read_sol_jface_integer_2d
    module procedure cg_iric_read_sol_jface_integer_3d
  end interface

  interface cg_iric_read_sol_jface_real
    module procedure cg_iric_read_sol_jface_real_1d
    module procedure cg_iric_read_sol_jface_real_2d
    module procedure cg_iric_read_sol_jface_real_3d
  end interface

  interface cg_iric_write_sol_jface_integer
    module procedure cg_iric_write_sol_jface_integer_1d
    module procedure cg_iric_write_sol_jface_integer_2d
    module procedure cg_iric_write_sol_jface_integer_3d
  end interface

  interface cg_iric_write_sol_jface_real
    module procedure cg_iric_write_sol_jface_real_1d
    module procedure cg_iric_write_sol_jface_real_2d
    module procedure cg_iric_write_sol_jface_real_3d
  end interface

  interface cg_iric_read_sol_kface_integer
    module procedure cg_iric_read_sol_kface_integer_1d
    module procedure cg_iric_read_sol_kface_integer_2d
    module procedure cg_iric_read_sol_kface_integer_3d
  end interface

  interface cg_iric_read_sol_kface_real
    module procedure cg_iric_read_sol_kface_real_1d
    module procedure cg_iric_read_sol_kface_real_2d
    module procedure cg_iric_read_sol_kface_real_3d
  end interface

  interface cg_iric_write_sol_kface_integer
    module procedure cg_iric_write_sol_kface_integer_1d
    module procedure cg_iric_write_sol_kface_integer_2d
    module procedure cg_iric_write_sol_kface_integer_3d
  end interface

  interface cg_iric_write_sol_kface_real
    module procedure cg_iric_write_sol_kface_real_1d
    module procedure cg_iric_write_sol_kface_real_2d
    module procedure cg_iric_write_sol_kface_real_3d
  end interface

  interface cg_iric_read_sol_node_integer
    module procedure cg_iric_read_sol_node_integer_1d
    module procedure cg_iric_read_sol_node_integer_2d
    module procedure cg_iric_read_sol_node_integer_3d
  end interface

  interface cg_iric_read_sol_node_real
    module procedure cg_iric_read_sol_node_real_1d
    module procedure cg_iric_read_sol_node_real_2d
    module procedure cg_iric_read_sol_node_real_3d
  end interface

  interface cg_iric_write_sol_node_integer
    module procedure cg_iric_write_sol_node_integer_1d
    module procedure cg_iric_write_sol_node_integer_2d
    module procedure cg_iric_write_sol_node_integer_3d
  end interface

  interface cg_iric_write_sol_node_real
    module procedure cg_iric_write_sol_node_real_1d
    module procedure cg_iric_write_sol_node_real_2d
    module procedure cg_iric_write_sol_node_real_3d
  end interface

  interface cg_iric_read_sol_cell_integer_withgridid
    module procedure cg_iric_read_sol_cell_integer_withgridid_1d
    module procedure cg_iric_read_sol_cell_integer_withgridid_2d
    module procedure cg_iric_read_sol_cell_integer_withgridid_3d
  end interface

  interface cg_iric_read_sol_cell_real_withgridid
    module procedure cg_iric_read_sol_cell_real_withgridid_1d
    module procedure cg_iric_read_sol_cell_real_withgridid_2d
    module procedure cg_iric_read_sol_cell_real_withgridid_3d
  end interface

  interface cg_iric_write_sol_cell_integer_withgridid
    module procedure cg_iric_write_sol_cell_integer_withgridid_1d
    module procedure cg_iric_write_sol_cell_integer_withgridid_2d
    module procedure cg_iric_write_sol_cell_integer_withgridid_3d
  end interface

  interface cg_iric_write_sol_cell_real_withgridid
    module procedure cg_iric_write_sol_cell_real_withgridid_1d
    module procedure cg_iric_write_sol_cell_real_withgridid_2d
    module procedure cg_iric_write_sol_cell_real_withgridid_3d
  end interface

  interface cg_iric_read_sol_grid2d_coords_withgridid
    module procedure cg_iric_read_sol_grid2d_coords_withgridid_1d
    module procedure cg_iric_read_sol_grid2d_coords_withgridid_2d
  end interface

  interface cg_iric_read_sol_grid3d_coords_withgridid
    module procedure cg_iric_read_sol_grid3d_coords_withgridid_1d
    module procedure cg_iric_read_sol_grid3d_coords_withgridid_3d
  end interface

  interface cg_iric_write_sol_grid2d_coords_withgridid
    module procedure cg_iric_write_sol_grid2d_coords_withgridid_1d
    module procedure cg_iric_write_sol_grid2d_coords_withgridid_2d
  end interface

  interface cg_iric_write_sol_grid3d_coords_withgridid
    module procedure cg_iric_write_sol_grid3d_coords_withgridid_1d
    module procedure cg_iric_write_sol_grid3d_coords_withgridid_3d
  end interface

  interface cg_iric_read_sol_iface_integer_withgridid
    module procedure cg_iric_read_sol_iface_integer_withgridid_1d
    module procedure cg_iric_read_sol_iface_integer_withgridid_2d
    module procedure cg_iric_read_sol_iface_integer_withgridid_3d
  end interface

  interface cg_iric_read_sol_iface_real_withgridid
    module procedure cg_iric_read_sol_iface_real_withgridid_1d
    module procedure cg_iric_read_sol_iface_real_withgridid_2d
    module procedure cg_iric_read_sol_iface_real_withgridid_3d
  end interface

  interface cg_iric_write_sol_iface_integer_withgridid
    module procedure cg_iric_write_sol_iface_integer_withgridid_1d
    module procedure cg_iric_write_sol_iface_integer_withgridid_2d
    module procedure cg_iric_write_sol_iface_integer_withgridid_3d
  end interface

  interface cg_iric_write_sol_iface_real_withgridid
    module procedure cg_iric_write_sol_iface_real_withgridid_1d
    module procedure cg_iric_write_sol_iface_real_withgridid_2d
    module procedure cg_iric_write_sol_iface_real_withgridid_3d
  end interface

  interface cg_iric_read_sol_jface_integer_withgridid
    module procedure cg_iric_read_sol_jface_integer_withgridid_1d
    module procedure cg_iric_read_sol_jface_integer_withgridid_2d
    module procedure cg_iric_read_sol_jface_integer_withgridid_3d
  end interface

  interface cg_iric_read_sol_jface_real_withgridid
    module procedure cg_iric_read_sol_jface_real_withgridid_1d
    module procedure cg_iric_read_sol_jface_real_withgridid_2d
    module procedure cg_iric_read_sol_jface_real_withgridid_3d
  end interface

  interface cg_iric_write_sol_jface_integer_withgridid
    module procedure cg_iric_write_sol_jface_integer_withgridid_1d
    module procedure cg_iric_write_sol_jface_integer_withgridid_2d
    module procedure cg_iric_write_sol_jface_integer_withgridid_3d
  end interface

  interface cg_iric_write_sol_jface_real_withgridid
    module procedure cg_iric_write_sol_jface_real_withgridid_1d
    module procedure cg_iric_write_sol_jface_real_withgridid_2d
    module procedure cg_iric_write_sol_jface_real_withgridid_3d
  end interface

  interface cg_iric_read_sol_kface_integer_withgridid
    module procedure cg_iric_read_sol_kface_integer_withgridid_1d
    module procedure cg_iric_read_sol_kface_integer_withgridid_2d
    module procedure cg_iric_read_sol_kface_integer_withgridid_3d
  end interface

  interface cg_iric_read_sol_kface_real_withgridid
    module procedure cg_iric_read_sol_kface_real_withgridid_1d
    module procedure cg_iric_read_sol_kface_real_withgridid_2d
    module procedure cg_iric_read_sol_kface_real_withgridid_3d
  end interface

  interface cg_iric_write_sol_kface_integer_withgridid
    module procedure cg_iric_write_sol_kface_integer_withgridid_1d
    module procedure cg_iric_write_sol_kface_integer_withgridid_2d
    module procedure cg_iric_write_sol_kface_integer_withgridid_3d
  end interface

  interface cg_iric_write_sol_kface_real_withgridid
    module procedure cg_iric_write_sol_kface_real_withgridid_1d
    module procedure cg_iric_write_sol_kface_real_withgridid_2d
    module procedure cg_iric_write_sol_kface_real_withgridid_3d
  end interface

  interface cg_iric_read_sol_node_integer_withgridid
    module procedure cg_iric_read_sol_node_integer_withgridid_1d
    module procedure cg_iric_read_sol_node_integer_withgridid_2d
    module procedure cg_iric_read_sol_node_integer_withgridid_3d
  end interface

  interface cg_iric_read_sol_node_real_withgridid
    module procedure cg_iric_read_sol_node_real_withgridid_1d
    module procedure cg_iric_read_sol_node_real_withgridid_2d
    module procedure cg_iric_read_sol_node_real_withgridid_3d
  end interface

  interface cg_iric_write_sol_node_integer_withgridid
    module procedure cg_iric_write_sol_node_integer_withgridid_1d
    module procedure cg_iric_write_sol_node_integer_withgridid_2d
    module procedure cg_iric_write_sol_node_integer_withgridid_3d
  end interface

  interface cg_iric_write_sol_node_real_withgridid
    module procedure cg_iric_write_sol_node_real_withgridid_1d
    module procedure cg_iric_write_sol_node_real_withgridid_2d
    module procedure cg_iric_write_sol_node_real_withgridid_3d
  end interface


contains


  ! from iriclib_bc.h

  subroutine cg_iric_read_bc_count_withgridid(fid, gid, type, num)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(out):: num

    call cg_iric_read_bc_count_withgridid_f2c &
      (fid, gid, type, num)

  end subroutine

  subroutine cg_iric_read_bc_indicessize_withgridid(fid, gid, type, num, size, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(out):: size
    integer, intent(out):: ier

    call cg_iric_read_bc_indicessize_withgridid_f2c &
      (fid, gid, type, num, size, ier)

  end subroutine

  subroutine cg_iric_read_bc_indices_withgridid_1d(fid, gid, type, num, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, dimension(:), intent(out):: idx_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_indices_withgridid_f2c &
      (fid, gid, type, num, idx_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_indices_withgridid_2d(fid, gid, type, num, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, dimension(:,:), intent(out):: idx_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_indices_withgridid_f2c &
      (fid, gid, type, num, idx_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_indices_withgridid_3d(fid, gid, type, num, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, dimension(:,:,:), intent(out):: idx_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_indices_withgridid_f2c &
      (fid, gid, type, num, idx_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_integer_withgridid(fid, gid, type, num, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_bc_integer_withgridid_f2c &
      (fid, gid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_bc_real_withgridid(fid, gid, type, num, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_bc_real_withgridid_f2c &
      (fid, gid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_bc_realsingle_withgridid(fid, gid, type, num, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_bc_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_bc_stringlen_withgridid(fid, gid, type, num, name, length, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_bc_stringlen_withgridid_f2c &
      (fid, gid, type, num, name, length, ier)

  end subroutine

  subroutine cg_iric_read_bc_string_withgridid(fid, gid, type, num, name, strvalue, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_bc_string_withgridid_f2c &
      (fid, gid, type, num, name, strvalue, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalsize_withgridid(fid, gid, type, num, name, size, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: size
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalsize_withgridid_f2c &
      (fid, gid, type, num, name, size, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_withgridid_1d(fid, gid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_withgridid_f2c &
      (fid, gid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_withgridid_2d(fid, gid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: x_arr
    double precision, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_withgridid_f2c &
      (fid, gid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_withgridid_3d(fid, gid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_withgridid_f2c &
      (fid, gid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_withgridid_4d(fid, gid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_withgridid_f2c &
      (fid, gid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_withgridid_1d(fid, gid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_withgridid_f2c &
      (fid, gid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_withgridid_2d(fid, gid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_withgridid_f2c &
      (fid, gid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_withgridid_3d(fid, gid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_withgridid_f2c &
      (fid, gid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_withgridid_4d(fid, gid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_withgridid_f2c &
      (fid, gid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_realsingle_withgridid_1d(fid, gid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:), intent(out):: x_arr
    real, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_realsingle_withgridid_2d(fid, gid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:), intent(out):: x_arr
    real, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_realsingle_withgridid_3d(fid, gid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:,:), intent(out):: x_arr
    real, dimension(:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_realsingle_withgridid_4d(fid, gid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:,:,:), intent(out):: x_arr
    real, dimension(:,:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_realsingle_withgridid_1d(fid, gid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_realsingle_withgridid_2d(fid, gid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_realsingle_withgridid_3d(fid, gid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_realsingle_withgridid_4d(fid, gid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_realsingle_withgridid_f2c &
      (fid, gid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_stringlen_withgridid(fid, gid, type, num, name, paramname, length, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_stringlen_withgridid_f2c &
      (fid, gid, type, num, name, paramname, length, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_string_withgridid(fid, gid, type, num, name, paramname, strvalue, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_string_withgridid_f2c &
      (fid, gid, type, num, name, paramname, strvalue, ier)

  end subroutine

  subroutine cg_iric_clear_bc_withgridid(fid, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: ier

    call cg_iric_clear_bc_withgridid_f2c &
      (fid, gid, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices_withgridid_1d(fid, gid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices_withgridid_f2c &
      (fid, gid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices_withgridid_2d(fid, gid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:,:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices_withgridid_f2c &
      (fid, gid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices_withgridid_3d(fid, gid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:,:,:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices_withgridid_f2c &
      (fid, gid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices2_withgridid_1d(fid, gid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices2_withgridid_f2c &
      (fid, gid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices2_withgridid_2d(fid, gid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:,:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices2_withgridid_f2c &
      (fid, gid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices2_withgridid_3d(fid, gid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:,:,:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices2_withgridid_f2c &
      (fid, gid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_integer_withgridid(fid, gid, type, num, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_bc_integer_withgridid_f2c &
      (fid, gid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_bc_real_withgridid(fid, gid, type, num, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_bc_real_withgridid_f2c &
      (fid, gid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_bc_string_withgridid(fid, gid, type, num, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_bc_string_withgridid_f2c &
      (fid, gid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_bc_functional_withgridid_1d(fid, gid, type, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functional_withgridid_f2c &
      (fid, gid, type, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functional_withgridid_2d(fid, gid, type, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functional_withgridid_f2c &
      (fid, gid, type, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functional_withgridid_3d(fid, gid, type, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functional_withgridid_f2c &
      (fid, gid, type, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functional_withgridid_4d(fid, gid, type, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functional_withgridid_f2c &
      (fid, gid, type, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_withgridid_1d(fid, gid, type, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_withgridid_f2c &
      (fid, gid, type, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_withgridid_2d(fid, gid, type, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_withgridid_f2c &
      (fid, gid, type, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_withgridid_3d(fid, gid, type, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_withgridid_f2c &
      (fid, gid, type, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_withgridid_4d(fid, gid, type, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_withgridid_f2c &
      (fid, gid, type, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_string_withgridid(fid, gid, type, num, name, paramname, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_string_withgridid_f2c &
      (fid, gid, type, num, name, paramname, value, ier)

  end subroutine



  ! from iriclib_cc.h

  subroutine cg_iric_read_integer(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_integer_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_read_real(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_real_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_read_realsingle(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    real, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_realsingle_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_read_stringlen(fid, name, length, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_stringlen_f2c &
      (fid, name, length, ier)

  end subroutine

  subroutine cg_iric_read_string(fid, name, strvalue, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_string_f2c &
      (fid, name, strvalue, ier)

  end subroutine

  subroutine cg_iric_read_functionalsize(fid, name, size, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(out):: size
    integer, intent(out):: ier

    call cg_iric_read_functionalsize_f2c &
      (fid, name, size, ier)

  end subroutine

  subroutine cg_iric_read_functional_1d(fid, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_functional_f2c &
      (fid, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_functional_2d(fid, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: x_arr
    double precision, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_functional_f2c &
      (fid, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_functional_3d(fid, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_functional_f2c &
      (fid, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_functional_4d(fid, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_functional_f2c &
      (fid, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_1d(fid, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_f2c &
      (fid, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_2d(fid, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_f2c &
      (fid, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_3d(fid, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_f2c &
      (fid, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_4d(fid, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_f2c &
      (fid, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_functional_realsingle_1d(fid, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    real, dimension(:), intent(out):: x_arr
    real, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_functional_realsingle_f2c &
      (fid, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_functional_realsingle_2d(fid, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    real, dimension(:,:), intent(out):: x_arr
    real, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_functional_realsingle_f2c &
      (fid, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_functional_realsingle_3d(fid, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    real, dimension(:,:,:), intent(out):: x_arr
    real, dimension(:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_functional_realsingle_f2c &
      (fid, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_functional_realsingle_4d(fid, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    real, dimension(:,:,:,:), intent(out):: x_arr
    real, dimension(:,:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_functional_realsingle_f2c &
      (fid, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_realsingle_1d(fid, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_realsingle_f2c &
      (fid, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_realsingle_2d(fid, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_realsingle_f2c &
      (fid, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_realsingle_3d(fid, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_realsingle_f2c &
      (fid, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_realsingle_4d(fid, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_realsingle_f2c &
      (fid, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_string(fid, name, paramname, strvalue, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_string_f2c &
      (fid, name, paramname, strvalue, ier)

  end subroutine

  subroutine cg_iric_read_functionalwithname_stringlen(fid, name, paramname, length, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_functionalwithname_stringlen_f2c &
      (fid, name, paramname, length, ier)

  end subroutine

  subroutine cg_iric_write_integer(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_integer_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_real(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_real_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_string(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_string_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_functional_1d(fid, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_functional_f2c &
      (fid, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_functional_2d(fid, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_functional_f2c &
      (fid, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_functional_3d(fid, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_functional_f2c &
      (fid, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_functional_4d(fid, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_functional_f2c &
      (fid, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_functionalwithname_1d(fid, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_functionalwithname_f2c &
      (fid, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_functionalwithname_2d(fid, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_functionalwithname_f2c &
      (fid, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_functionalwithname_3d(fid, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_functionalwithname_f2c &
      (fid, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_functionalwithname_4d(fid, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_functionalwithname_f2c &
      (fid, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_functionalwithname_string(fid, name, paramname, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_functionalwithname_string_f2c &
      (fid, name, paramname, value, ier)

  end subroutine



  ! from iriclib_complex.h

  subroutine cg_iric_read_grid_complex_node_withgridid_1d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_node_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_node_withgridid_2d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_node_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_node_withgridid_3d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_node_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_cell_withgridid_1d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_cell_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_cell_withgridid_2d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_cell_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_cell_withgridid_3d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_cell_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_iface_withgridid_1d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_iface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_iface_withgridid_2d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_iface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_iface_withgridid_3d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_iface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_jface_withgridid_1d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_jface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_jface_withgridid_2d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_jface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_jface_withgridid_3d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_jface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_node_withgridid_1d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_node_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_node_withgridid_2d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_node_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_node_withgridid_3d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_node_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_cell_withgridid_1d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_cell_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_cell_withgridid_2d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_cell_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_cell_withgridid_3d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_cell_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_iface_withgridid_1d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_iface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_iface_withgridid_2d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_iface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_iface_withgridid_3d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_iface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_jface_withgridid_1d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_jface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_jface_withgridid_2d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_jface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_jface_withgridid_3d(fid, gid, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_jface_withgridid_f2c &
      (fid, gid, groupname, v_arr, ier)

  end subroutine



  ! from iriclib_geo.h

  subroutine iric_geo_polygon_open(filename, geo_handle, ier)
    character(*), intent(in):: filename
    integer, intent(out):: geo_handle
    integer, intent(out):: ier

    call iric_geo_polygon_open_f2c &
      (filename, geo_handle, ier)

  end subroutine

  subroutine iric_geo_polygon_read_integervalue(geo_handle, value, ier)
    integer, intent(in):: geo_handle
    integer, intent(out):: value
    integer, intent(out):: ier

    call iric_geo_polygon_read_integervalue_f2c &
      (geo_handle, value, ier)

  end subroutine

  subroutine iric_geo_polygon_read_realvalue(geo_handle, value, ier)
    integer, intent(in):: geo_handle
    double precision, intent(out):: value
    integer, intent(out):: ier

    call iric_geo_polygon_read_realvalue_f2c &
      (geo_handle, value, ier)

  end subroutine

  subroutine iric_geo_polygon_read_pointcount(geo_handle, count, ier)
    integer, intent(in):: geo_handle
    integer, intent(out):: count
    integer, intent(out):: ier

    call iric_geo_polygon_read_pointcount_f2c &
      (geo_handle, count, ier)

  end subroutine

  subroutine iric_geo_polygon_read_points(geo_handle, x_arr, y_arr, ier)
    integer, intent(in):: geo_handle
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call iric_geo_polygon_read_points_f2c &
      (geo_handle, x_arr, y_arr, ier)

  end subroutine

  subroutine iric_geo_polygon_read_holecount(geo_handle, count, ier)
    integer, intent(in):: geo_handle
    integer, intent(out):: count
    integer, intent(out):: ier

    call iric_geo_polygon_read_holecount_f2c &
      (geo_handle, count, ier)

  end subroutine

  subroutine iric_geo_polygon_read_holepointcount(geo_handle, holeid, count, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: holeid
    integer, intent(out):: count
    integer, intent(out):: ier

    call iric_geo_polygon_read_holepointcount_f2c &
      (geo_handle, holeid, count, ier)

  end subroutine

  subroutine iric_geo_polygon_read_holepoints(geo_handle, holeid, x_arr, y_arr, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: holeid
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call iric_geo_polygon_read_holepoints_f2c &
      (geo_handle, holeid, x_arr, y_arr, ier)

  end subroutine

  subroutine iric_geo_polygon_close(geo_handle, ier)
    integer, intent(in):: geo_handle
    integer, intent(out):: ier

    call iric_geo_polygon_close_f2c &
      (geo_handle, ier)

  end subroutine

  subroutine iric_geo_riversurvey_open(filename, geo_handle, ier)
    character(*), intent(in):: filename
    integer, intent(out):: geo_handle
    integer, intent(out):: ier

    call iric_geo_riversurvey_open_f2c &
      (filename, geo_handle, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_count(geo_handle, count, ier)
    integer, intent(in):: geo_handle
    integer, intent(out):: count
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_count_f2c &
      (geo_handle, count, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_position(geo_handle, csid, x, y, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    double precision, intent(out):: x
    double precision, intent(out):: y
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_position_f2c &
      (geo_handle, csid, x, y, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_direction(geo_handle, csid, dirx, diry, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    double precision, intent(out):: dirx
    double precision, intent(out):: diry
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_direction_f2c &
      (geo_handle, csid, dirx, diry, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_name(geo_handle, csid, strvalue, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_name_f2c &
      (geo_handle, csid, strvalue, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_realname(geo_handle, csid, name, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    double precision, intent(out):: name
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_realname_f2c &
      (geo_handle, csid, name, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_leftshift(geo_handle, csid, shift, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    double precision, intent(out):: shift
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_leftshift_f2c &
      (geo_handle, csid, shift, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_altitudecount(geo_handle, csid, count, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    integer, intent(out):: count
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_altitudecount_f2c &
      (geo_handle, csid, count, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_altitudes(geo_handle, csid, position_arr, height_arr, active_arr, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    double precision, dimension(:), intent(out):: position_arr
    double precision, dimension(:), intent(out):: height_arr
    integer, dimension(:), intent(out):: active_arr
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_altitudes_f2c &
      (geo_handle, csid, position_arr, height_arr, active_arr, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_fixedpointl(geo_handle, csid, set, dirx, diry, index, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    integer, intent(out):: set
    double precision, intent(out):: dirx
    double precision, intent(out):: diry
    integer, intent(out):: index
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_fixedpointl_f2c &
      (geo_handle, csid, set, dirx, diry, index, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_fixedpointr(geo_handle, csid, set, dirx, diry, index, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    integer, intent(out):: set
    double precision, intent(out):: dirx
    double precision, intent(out):: diry
    integer, intent(out):: index
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_fixedpointr_f2c &
      (geo_handle, csid, set, dirx, diry, index, ier)

  end subroutine

  subroutine iric_geo_riversurvey_read_watersurfaceelevation(geo_handle, csid, set, value, ier)
    integer, intent(in):: geo_handle
    integer, intent(in):: csid
    integer, intent(out):: set
    double precision, intent(out):: value
    integer, intent(out):: ier

    call iric_geo_riversurvey_read_watersurfaceelevation_f2c &
      (geo_handle, csid, set, value, ier)

  end subroutine

  subroutine iric_geo_riversurvey_close(geo_handle, ier)
    integer, intent(in):: geo_handle
    integer, intent(out):: ier

    call iric_geo_riversurvey_close_f2c &
      (geo_handle, ier)

  end subroutine



  ! from iriclib_geoutil.h

  subroutine cg_iric_read_geo_count(fid, name, count, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_geo_count_f2c &
      (fid, name, count, ier)

  end subroutine

  subroutine cg_iric_read_geo_filename(fid, name, geoid, strvalue, type, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: geoid
    character(*), intent(out):: strvalue
    integer, intent(out):: type
    integer, intent(out):: ier

    call cg_iric_read_geo_filename_f2c &
      (fid, name, geoid, strvalue, type, ier)

  end subroutine



  ! from iriclib_grid.h

  subroutine cg_iric_read_grid2d_str_size_withgridid(fid, gid, isize, jsize, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: isize
    integer, intent(out):: jsize
    integer, intent(out):: ier

    call cg_iric_read_grid2d_str_size_withgridid_f2c &
      (fid, gid, isize, jsize, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_coords_withgridid_1d(fid, gid, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_grid2d_coords_withgridid_f2c &
      (fid, gid, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_coords_withgridid_2d(fid, gid, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, dimension(:,:), intent(out):: x_arr
    double precision, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_grid2d_coords_withgridid_f2c &
      (fid, gid, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid3d_str_size_withgridid(fid, gid, isize, jsize, ksize, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: isize
    integer, intent(out):: jsize
    integer, intent(out):: ksize
    integer, intent(out):: ier

    call cg_iric_read_grid3d_str_size_withgridid_f2c &
      (fid, gid, isize, jsize, ksize, ier)

  end subroutine

  subroutine cg_iric_read_grid3d_coords_withgridid_1d(fid, gid, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_grid3d_coords_withgridid_f2c &
      (fid, gid, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid3d_coords_withgridid_3d(fid, gid, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, dimension(:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:), intent(out):: y_arr
    double precision, dimension(:,:,:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_grid3d_coords_withgridid_f2c &
      (fid, gid, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_celltype_withgridid(fid, gid, type, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: type
    integer, intent(out):: ier

    call cg_iric_read_grid_celltype_withgridid_f2c &
      (fid, gid, type, ier)

  end subroutine

  subroutine cg_iric_read_grid_triangleelementssize_withgridid(fid, gid, tsize, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: tsize
    integer, intent(out):: ier

    call cg_iric_read_grid_triangleelementssize_withgridid_f2c &
      (fid, gid, tsize, ier)

  end subroutine

  subroutine cg_iric_read_grid_triangleelements_withgridid(fid, gid, id_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, dimension(:), intent(out):: id_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_triangleelements_withgridid_f2c &
      (fid, gid, id_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_lineelementssize_withgridid(fid, gid, tsize, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: tsize
    integer, intent(out):: ier

    call cg_iric_read_grid_lineelementssize_withgridid_f2c &
      (fid, gid, tsize, ier)

  end subroutine

  subroutine cg_iric_read_grid_lineelements_withgridid(fid, gid, id_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, dimension(:), intent(out):: id_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_lineelements_withgridid_f2c &
      (fid, gid, id_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_nodecount_withgridid(fid, gid, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_nodecount_withgridid_f2c &
      (fid, gid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_cellcount_withgridid(fid, gid, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_cellcount_withgridid_f2c &
      (fid, gid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_ifacecount_withgridid(fid, gid, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_ifacecount_withgridid_f2c &
      (fid, gid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_jfacecount_withgridid(fid, gid, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_jfacecount_withgridid_f2c &
      (fid, gid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_kfacecount_withgridid(fid, gid, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_kfacecount_withgridid_f2c &
      (fid, gid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_node_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_node_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_node_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_node_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_node_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_node_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_cell_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_cell_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_cell_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_cell_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_cell_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_cell_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_iface_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_iface_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_iface_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_iface_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_iface_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_iface_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_jface_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_jface_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_jface_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_jface_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_jface_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_jface_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaldimensionsize_withgridid(fid, gid, name, dimname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    character(*), intent(in):: dimname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaldimensionsize_withgridid_f2c &
      (fid, gid, name, dimname, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaldimension_integer_withgridid(fid, gid, name, dimname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    character(*), intent(in):: dimname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaldimension_integer_withgridid_f2c &
      (fid, gid, name, dimname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaldimension_real_withgridid(fid, gid, name, dimname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    character(*), intent(in):: dimname
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaldimension_real_withgridid_f2c &
      (fid, gid, name, dimname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaltimesize_withgridid(fid, gid, name, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaltimesize_withgridid_f2c &
      (fid, gid, name, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaltime_withgridid(fid, gid, name, time_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: time_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaltime_withgridid_f2c &
      (fid, gid, name, time_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_node_withgridid_1d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_node_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_node_withgridid_2d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_node_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_node_withgridid_3d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_node_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_node_withgridid_1d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_node_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_node_withgridid_2d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_node_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_node_withgridid_3d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_node_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_cell_withgridid_1d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_cell_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_cell_withgridid_2d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_cell_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_cell_withgridid_3d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_cell_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_cell_withgridid_1d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_cell_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_cell_withgridid_2d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_cell_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_cell_withgridid_3d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_cell_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_iface_withgridid_1d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_iface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_iface_withgridid_2d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_iface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_iface_withgridid_3d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_iface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_iface_withgridid_1d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_iface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_iface_withgridid_2d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_iface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_iface_withgridid_3d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_iface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_jface_withgridid_1d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_jface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_jface_withgridid_2d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_jface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_jface_withgridid_3d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_jface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_jface_withgridid_1d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_jface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_jface_withgridid_2d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_jface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_jface_withgridid_3d(fid, gid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_jface_withgridid_f2c &
      (fid, gid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid1d_coords_withgridid(fid, isize, x_arr, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    double precision, dimension(:), intent(in):: x_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_grid1d_coords_withgridid_f2c &
      (fid, isize, x_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_grid2d_coords_withgridid_1d(fid, isize, jsize, x_arr, y_arr, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    integer, intent(in):: jsize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_grid2d_coords_withgridid_f2c &
      (fid, isize, jsize, x_arr, y_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_grid2d_coords_withgridid_2d(fid, isize, jsize, x_arr, y_arr, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    integer, intent(in):: jsize
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_grid2d_coords_withgridid_f2c &
      (fid, isize, jsize, x_arr, y_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_grid3d_coords_withgridid_1d(fid, isize, jsize, ksize, x_arr, y_arr, z_arr, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    integer, intent(in):: jsize
    integer, intent(in):: ksize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_grid3d_coords_withgridid_f2c &
      (fid, isize, jsize, ksize, x_arr, y_arr, z_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_grid3d_coords_withgridid_3d(fid, isize, jsize, ksize, x_arr, y_arr, z_arr, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    integer, intent(in):: jsize
    integer, intent(in):: ksize
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    double precision, dimension(:,:,:), intent(in):: z_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_grid3d_coords_withgridid_f2c &
      (fid, isize, jsize, ksize, x_arr, y_arr, z_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid1d_coords_withgridid(fid, name, isize, x_arr, gid, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    double precision, dimension(:), intent(in):: x_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_namedgrid1d_coords_withgridid_f2c &
      (fid, name, isize, x_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid2d_coords_withgridid_1d(fid, name, isize, jsize, x_arr, y_arr, gid, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    integer, intent(in):: jsize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_namedgrid2d_coords_withgridid_f2c &
      (fid, name, isize, jsize, x_arr, y_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid2d_coords_withgridid_2d(fid, name, isize, jsize, x_arr, y_arr, gid, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    integer, intent(in):: jsize
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_namedgrid2d_coords_withgridid_f2c &
      (fid, name, isize, jsize, x_arr, y_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid3d_coords_withgridid_1d(fid, name, isize, jsize, ksize, x_arr, y_arr, z_arr, gid, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    integer, intent(in):: jsize
    integer, intent(in):: ksize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_namedgrid3d_coords_withgridid_f2c &
      (fid, name, isize, jsize, ksize, x_arr, y_arr, z_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid3d_coords_withgridid_3d(fid, name, isize, jsize, ksize, x_arr, y_arr, z_arr, gid, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    integer, intent(in):: jsize
    integer, intent(in):: ksize
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    double precision, dimension(:,:,:), intent(in):: z_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_namedgrid3d_coords_withgridid_f2c &
      (fid, name, isize, jsize, ksize, x_arr, y_arr, z_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_grid2d_unst_triangles_withgridid(fid, psize, x_arr, y_arr, csize, idx_arr, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_grid2d_unst_triangles_withgridid_f2c &
      (fid, psize, x_arr, y_arr, csize, idx_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_grid2d_unst_lines_withgridid(fid, psize, x_arr, y_arr, csize, idx_arr, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_grid2d_unst_lines_withgridid_f2c &
      (fid, psize, x_arr, y_arr, csize, idx_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_grid3d_unst_lines_withgridid(fid, psize, x_arr, y_arr, z_arr, csize, idx_arr, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_grid3d_unst_lines_withgridid_f2c &
      (fid, psize, x_arr, y_arr, z_arr, csize, idx_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid2d_unst_triangles_withgridid(fid, name, psize, x_arr, y_arr, csize, idx_arr, gid, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_namedgrid2d_unst_triangles_withgridid_f2c &
      (fid, name, psize, x_arr, y_arr, csize, idx_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid2d_unst_lines_withgridid(fid, name, psize, x_arr, y_arr, csize, idx_arr, gid, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_namedgrid2d_unst_lines_withgridid_f2c &
      (fid, name, psize, x_arr, y_arr, csize, idx_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid3d_unst_lines_withgridid(fid, name, psize, x_arr, y_arr, z_arr, csize, idx_arr, gid, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: gid
    integer, intent(out):: ier

    call cg_iric_write_namedgrid3d_unst_lines_withgridid_f2c &
      (fid, name, psize, x_arr, y_arr, z_arr, csize, idx_arr, gid, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_node_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_node_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_node_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_node_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_node_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_node_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_node_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_cell_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_cell_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_cell_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_cell_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_cell_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_cell_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_cell_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_iface_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_iface_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_iface_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_iface_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_iface_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_iface_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_iface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_jface_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_jface_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_jface_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_jface_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_jface_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_jface_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_jface_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_copy_grid_withgridid(fid_from, fid_to, gid, ier)
    integer, intent(in):: fid_from
    integer, intent(in):: fid_to
    integer, intent(in):: gid
    integer, intent(out):: ier

    call cg_iric_copy_grid_withgridid_f2c &
      (fid_from, fid_to, gid, ier)

  end subroutine



  ! from iriclib_grid_solverlib.h

  subroutine cg_iric_read_grid2d_open_withgridid(fid, gid, grid_handle, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: grid_handle
    integer, intent(out):: ier

    call cg_iric_read_grid2d_open_withgridid_f2c &
      (fid, gid, grid_handle, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid2d_open_withgridid(fid, gid, step, grid_handle, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    integer, intent(out):: grid_handle
    integer, intent(out):: ier

    call cg_iric_read_sol_grid2d_open_withgridid_f2c &
      (fid, gid, step, grid_handle, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_close(grid_handle, ier)
    integer, intent(in):: grid_handle
    integer, intent(out):: ier

    call cg_iric_read_grid2d_close_f2c &
      (grid_handle, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_cellarea(grid_handle, cellId, area, ier)
    integer, intent(in):: grid_handle
    integer, intent(in):: cellId
    double precision, intent(out):: area
    integer, intent(out):: ier

    call cg_iric_read_grid2d_cellarea_f2c &
      (grid_handle, cellId, area, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_findcell(grid_handle, x, y, cellId, ier)
    integer, intent(in):: grid_handle
    double precision, intent(in):: x
    double precision, intent(in):: y
    integer, intent(out):: cellId
    integer, intent(out):: ier

    call cg_iric_read_grid2d_findcell_f2c &
      (grid_handle, x, y, cellId, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_cellnodecount(grid_handle, cellId, count, ier)
    integer, intent(in):: grid_handle
    integer, intent(in):: cellId
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid2d_cellnodecount_f2c &
      (grid_handle, cellId, count, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_interpolate(grid_handle, x, y, ok, count, nodeids_arr, weights_arr, ier)
    integer, intent(in):: grid_handle
    double precision, intent(in):: x
    double precision, intent(in):: y
    integer, intent(out):: ok
    integer, intent(out):: count
    integer, dimension(:), intent(out):: nodeids_arr
    double precision, dimension(:), intent(out):: weights_arr
    integer, intent(out):: ier

    call cg_iric_read_grid2d_interpolate_f2c &
      (grid_handle, x, y, ok, count, nodeids_arr, weights_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_interpolatewithcell(grid_handle, x, y, cellId, nodeids_arr, weights_arr, ier)
    integer, intent(in):: grid_handle
    double precision, intent(in):: x
    double precision, intent(in):: y
    integer, intent(in):: cellId
    integer, dimension(:), intent(out):: nodeids_arr
    double precision, dimension(:), intent(out):: weights_arr
    integer, intent(out):: ier

    call cg_iric_read_grid2d_interpolatewithcell_f2c &
      (grid_handle, x, y, cellId, nodeids_arr, weights_arr, ier)

  end subroutine



  ! from iriclib_gui_coorp.h

  subroutine iric_check_cancel(ier)
    integer, intent(out):: ier

    call iric_check_cancel_f2c &
      (ier)

  end subroutine

  subroutine cg_iric_check_update(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_check_update_f2c &
      (fid, ier)

  end subroutine



  ! from iriclib_init.h

  subroutine cg_iric_open(filename, mode, fid, ier)
    character(*), intent(in):: filename
    integer, intent(in):: mode
    integer, intent(out):: fid
    integer, intent(out):: ier

    call cg_iric_open_f2c &
      (filename, mode, fid, ier)

  end subroutine

  subroutine cg_iric_close(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_close_f2c &
      (fid, ier)

  end subroutine

  subroutine iric_initoption(option, ier)
    integer, intent(in):: option
    integer, intent(out):: ier

    call iric_initoption_f2c &
      (option, ier)

  end subroutine



  ! from iriclib_not_withbaseid.h

  subroutine cg_iric_read_complex_count(fid, groupname, num, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(out):: num
    integer, intent(out):: ier

    call cg_iric_read_complex_count_f2c &
      (fid, groupname, num, ier)

  end subroutine

  subroutine cg_iric_read_complex_integer(fid, groupname, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_complex_integer_f2c &
      (fid, groupname, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_complex_real(fid, groupname, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_complex_real_f2c &
      (fid, groupname, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_complex_realsingle(fid, groupname, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    real, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_complex_realsingle_f2c &
      (fid, groupname, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_complex_stringlen(fid, groupname, num, name, length, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_complex_stringlen_f2c &
      (fid, groupname, num, name, length, ier)

  end subroutine

  subroutine cg_iric_read_complex_string(fid, groupname, num, name, strvalue, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_complex_string_f2c &
      (fid, groupname, num, name, strvalue, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalsize(fid, groupname, num, name, size, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: size
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalsize_f2c &
      (fid, groupname, num, name, size, ier)

  end subroutine

  subroutine cg_iric_read_complex_functional_1d(fid, groupname, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functional_f2c &
      (fid, groupname, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functional_2d(fid, groupname, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: x_arr
    double precision, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functional_f2c &
      (fid, groupname, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functional_3d(fid, groupname, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functional_f2c &
      (fid, groupname, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functional_4d(fid, groupname, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functional_f2c &
      (fid, groupname, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_1d(fid, groupname, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_f2c &
      (fid, groupname, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_2d(fid, groupname, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_f2c &
      (fid, groupname, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_3d(fid, groupname, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_f2c &
      (fid, groupname, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_4d(fid, groupname, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_f2c &
      (fid, groupname, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functional_realsingle_1d(fid, groupname, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:), intent(out):: x_arr
    real, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functional_realsingle_f2c &
      (fid, groupname, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functional_realsingle_2d(fid, groupname, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:), intent(out):: x_arr
    real, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functional_realsingle_f2c &
      (fid, groupname, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functional_realsingle_3d(fid, groupname, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:,:), intent(out):: x_arr
    real, dimension(:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functional_realsingle_f2c &
      (fid, groupname, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functional_realsingle_4d(fid, groupname, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:,:,:), intent(out):: x_arr
    real, dimension(:,:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functional_realsingle_f2c &
      (fid, groupname, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_realsingle_1d(fid, groupname, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_realsingle_f2c &
      (fid, groupname, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_realsingle_2d(fid, groupname, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_realsingle_f2c &
      (fid, groupname, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_realsingle_3d(fid, groupname, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_realsingle_f2c &
      (fid, groupname, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_realsingle_4d(fid, groupname, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_realsingle_f2c &
      (fid, groupname, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_stringlen(fid, groupname, num, name, paramname, length, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_stringlen_f2c &
      (fid, groupname, num, name, paramname, length, ier)

  end subroutine

  subroutine cg_iric_read_complex_functionalwithname_string(fid, groupname, num, name, paramname, strvalue, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_complex_functionalwithname_string_f2c &
      (fid, groupname, num, name, paramname, strvalue, ier)

  end subroutine

  subroutine cg_iric_clear_complex(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_clear_complex_f2c &
      (fid, ier)

  end subroutine

  subroutine cg_iric_write_complex_integer(fid, groupname, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_complex_integer_f2c &
      (fid, groupname, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_complex_real(fid, groupname, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_complex_real_f2c &
      (fid, groupname, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_complex_string(fid, groupname, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_complex_string_f2c &
      (fid, groupname, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_complex_functional_1d(fid, groupname, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_complex_functional_f2c &
      (fid, groupname, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_complex_functional_2d(fid, groupname, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_complex_functional_f2c &
      (fid, groupname, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_complex_functional_3d(fid, groupname, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_complex_functional_f2c &
      (fid, groupname, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_complex_functional_4d(fid, groupname, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_complex_functional_f2c &
      (fid, groupname, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_complex_functionalwithname_1d(fid, groupname, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_complex_functionalwithname_f2c &
      (fid, groupname, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_complex_functionalwithname_2d(fid, groupname, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_complex_functionalwithname_f2c &
      (fid, groupname, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_complex_functionalwithname_3d(fid, groupname, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_complex_functionalwithname_f2c &
      (fid, groupname, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_complex_functionalwithname_4d(fid, groupname, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_complex_functionalwithname_f2c &
      (fid, groupname, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_complex_functionalwithname_string(fid, groupname, num, name, paramname, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_complex_functionalwithname_string_f2c &
      (fid, groupname, num, name, paramname, value, ier)

  end subroutine



  ! from iriclib_not_withgridid.h

  subroutine cg_iric_read_bc_count(fid, type, num)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(out):: num

    call cg_iric_read_bc_count_f2c &
      (fid, type, num)

  end subroutine

  subroutine cg_iric_read_bc_indicessize(fid, type, num, size, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(out):: size
    integer, intent(out):: ier

    call cg_iric_read_bc_indicessize_f2c &
      (fid, type, num, size, ier)

  end subroutine

  subroutine cg_iric_read_bc_indices_1d(fid, type, num, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, dimension(:), intent(out):: idx_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_indices_f2c &
      (fid, type, num, idx_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_indices_2d(fid, type, num, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, dimension(:,:), intent(out):: idx_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_indices_f2c &
      (fid, type, num, idx_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_indices_3d(fid, type, num, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, dimension(:,:,:), intent(out):: idx_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_indices_f2c &
      (fid, type, num, idx_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_integer(fid, type, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_bc_integer_f2c &
      (fid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_bc_real(fid, type, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_bc_real_f2c &
      (fid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_bc_realsingle(fid, type, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_bc_realsingle_f2c &
      (fid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_read_bc_stringlen(fid, type, num, name, length, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_bc_stringlen_f2c &
      (fid, type, num, name, length, ier)

  end subroutine

  subroutine cg_iric_read_bc_string(fid, type, num, name, strvalue, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_bc_string_f2c &
      (fid, type, num, name, strvalue, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalsize(fid, type, num, name, size, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(out):: size
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalsize_f2c &
      (fid, type, num, name, size, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_1d(fid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_f2c &
      (fid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_2d(fid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: x_arr
    double precision, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_f2c &
      (fid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_3d(fid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_f2c &
      (fid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_4d(fid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, dimension(:,:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_f2c &
      (fid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_1d(fid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_f2c &
      (fid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_2d(fid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_f2c &
      (fid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_3d(fid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_f2c &
      (fid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_4d(fid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    double precision, dimension(:,:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_f2c &
      (fid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_realsingle_1d(fid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:), intent(out):: x_arr
    real, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_realsingle_f2c &
      (fid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_realsingle_2d(fid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:), intent(out):: x_arr
    real, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_realsingle_f2c &
      (fid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_realsingle_3d(fid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:,:), intent(out):: x_arr
    real, dimension(:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_realsingle_f2c &
      (fid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functional_realsingle_4d(fid, type, num, name, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    real, dimension(:,:,:,:), intent(out):: x_arr
    real, dimension(:,:,:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functional_realsingle_f2c &
      (fid, type, num, name, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_realsingle_1d(fid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_realsingle_f2c &
      (fid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_realsingle_2d(fid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_realsingle_f2c &
      (fid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_realsingle_3d(fid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_realsingle_f2c &
      (fid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_realsingle_4d(fid, type, num, name, paramname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    real, dimension(:,:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_realsingle_f2c &
      (fid, type, num, name, paramname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_stringlen(fid, type, num, name, paramname, length, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_stringlen_f2c &
      (fid, type, num, name, paramname, length, ier)

  end subroutine

  subroutine cg_iric_read_bc_functionalwithname_string(fid, type, num, name, paramname, strvalue, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_bc_functionalwithname_string_f2c &
      (fid, type, num, name, paramname, strvalue, ier)

  end subroutine

  subroutine cg_iric_clear_bc(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_clear_bc_f2c &
      (fid, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices_1d(fid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices_f2c &
      (fid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices_2d(fid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:,:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices_f2c &
      (fid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices_3d(fid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:,:,:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices_f2c &
      (fid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices2_1d(fid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices2_f2c &
      (fid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices2_2d(fid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:,:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices2_f2c &
      (fid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_indices2_3d(fid, type, num, length, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    integer, intent(in):: length
    integer, dimension(:,:,:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_indices2_f2c &
      (fid, type, num, length, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_integer(fid, type, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_bc_integer_f2c &
      (fid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_bc_real(fid, type, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_bc_real_f2c &
      (fid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_bc_string(fid, type, num, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_bc_string_f2c &
      (fid, type, num, name, value, ier)

  end subroutine

  subroutine cg_iric_write_bc_functional_1d(fid, type, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functional_f2c &
      (fid, type, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functional_2d(fid, type, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functional_f2c &
      (fid, type, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functional_3d(fid, type, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functional_f2c &
      (fid, type, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functional_4d(fid, type, num, name, length, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    integer, intent(in):: length
    double precision, dimension(:,:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functional_f2c &
      (fid, type, num, name, length, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_1d(fid, type, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_f2c &
      (fid, type, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_2d(fid, type, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_f2c &
      (fid, type, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_3d(fid, type, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_f2c &
      (fid, type, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_4d(fid, type, num, name, paramname, length, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    integer, intent(in):: length
    double precision, dimension(:,:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_f2c &
      (fid, type, num, name, paramname, length, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_bc_functionalwithname_string(fid, type, num, name, paramname, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: type
    integer, intent(in):: num
    character(*), intent(in):: name
    character(*), intent(in):: paramname
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_bc_functionalwithname_string_f2c &
      (fid, type, num, name, paramname, value, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_node_1d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_node_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_node_2d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_node_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_node_3d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_node_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_cell_1d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_cell_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_cell_2d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_cell_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_cell_3d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_cell_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_iface_1d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_iface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_iface_2d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_iface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_iface_3d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_iface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_jface_1d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_jface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_jface_2d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_jface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_complex_jface_3d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_complex_jface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_node_1d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_node_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_node_2d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_node_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_node_3d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_node_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_cell_1d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_cell_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_cell_2d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_cell_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_cell_3d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_cell_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_iface_1d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_iface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_iface_2d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_iface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_iface_3d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_iface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_jface_1d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_jface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_jface_2d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_jface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_complex_jface_3d(fid, groupname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_complex_jface_f2c &
      (fid, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_str_size(fid, isize, jsize, ier)
    integer, intent(in):: fid
    integer, intent(out):: isize
    integer, intent(out):: jsize
    integer, intent(out):: ier

    call cg_iric_read_grid2d_str_size_f2c &
      (fid, isize, jsize, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_coords_1d(fid, x_arr, y_arr, ier)
    integer, intent(in):: fid
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_grid2d_coords_f2c &
      (fid, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_coords_2d(fid, x_arr, y_arr, ier)
    integer, intent(in):: fid
    double precision, dimension(:,:), intent(out):: x_arr
    double precision, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_grid2d_coords_f2c &
      (fid, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid3d_str_size(fid, isize, jsize, ksize, ier)
    integer, intent(in):: fid
    integer, intent(out):: isize
    integer, intent(out):: jsize
    integer, intent(out):: ksize
    integer, intent(out):: ier

    call cg_iric_read_grid3d_str_size_f2c &
      (fid, isize, jsize, ksize, ier)

  end subroutine

  subroutine cg_iric_read_grid3d_coords_1d(fid, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_grid3d_coords_f2c &
      (fid, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid3d_coords_3d(fid, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    double precision, dimension(:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:), intent(out):: y_arr
    double precision, dimension(:,:,:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_grid3d_coords_f2c &
      (fid, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_celltype(fid, type, ier)
    integer, intent(in):: fid
    integer, intent(out):: type
    integer, intent(out):: ier

    call cg_iric_read_grid_celltype_f2c &
      (fid, type, ier)

  end subroutine

  subroutine cg_iric_read_grid_triangleelementssize(fid, tsize, ier)
    integer, intent(in):: fid
    integer, intent(out):: tsize
    integer, intent(out):: ier

    call cg_iric_read_grid_triangleelementssize_f2c &
      (fid, tsize, ier)

  end subroutine

  subroutine cg_iric_read_grid_triangleelements(fid, id_arr, ier)
    integer, intent(in):: fid
    integer, dimension(:), intent(out):: id_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_triangleelements_f2c &
      (fid, id_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_lineelementssize(fid, tsize, ier)
    integer, intent(in):: fid
    integer, intent(out):: tsize
    integer, intent(out):: ier

    call cg_iric_read_grid_lineelementssize_f2c &
      (fid, tsize, ier)

  end subroutine

  subroutine cg_iric_read_grid_lineelements(fid, id_arr, ier)
    integer, intent(in):: fid
    integer, dimension(:), intent(out):: id_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_lineelements_f2c &
      (fid, id_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_nodecount(fid, count, ier)
    integer, intent(in):: fid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_nodecount_f2c &
      (fid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_cellcount(fid, count, ier)
    integer, intent(in):: fid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_cellcount_f2c &
      (fid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_ifacecount(fid, count, ier)
    integer, intent(in):: fid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_ifacecount_f2c &
      (fid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_jfacecount(fid, count, ier)
    integer, intent(in):: fid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_jfacecount_f2c &
      (fid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_kfacecount(fid, count, ier)
    integer, intent(in):: fid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_kfacecount_f2c &
      (fid, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_node_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_node_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_node_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_node_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_node_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_node_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_cell_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_cell_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_cell_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_cell_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_cell_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_cell_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_iface_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_iface_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_iface_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_iface_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_iface_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_iface_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_jface_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_jface_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_real_jface_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_real_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_jface_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_jface_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_integer_jface_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_integer_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaldimensionsize(fid, name, dimname, count, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: dimname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaldimensionsize_f2c &
      (fid, name, dimname, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaldimension_integer(fid, name, dimname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: dimname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaldimension_integer_f2c &
      (fid, name, dimname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaldimension_real(fid, name, dimname, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: dimname
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaldimension_real_f2c &
      (fid, name, dimname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaltimesize(fid, name, count, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaltimesize_f2c &
      (fid, name, count, ier)

  end subroutine

  subroutine cg_iric_read_grid_functionaltime(fid, name, time_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: time_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functionaltime_f2c &
      (fid, name, time_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_node_1d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_node_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_node_2d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_node_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_node_3d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_node_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_node_1d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_node_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_node_2d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_node_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_node_3d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_node_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_cell_1d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_cell_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_cell_2d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_cell_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_cell_3d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_cell_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_cell_1d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_cell_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_cell_2d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_cell_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_cell_3d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_cell_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_iface_1d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_iface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_iface_2d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_iface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_iface_3d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_iface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_iface_1d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_iface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_iface_2d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_iface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_iface_3d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_iface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_jface_1d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_jface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_jface_2d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_jface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_integer_jface_3d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_integer_jface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_jface_1d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_jface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_jface_2d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_jface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_grid_functional_real_jface_3d(fid, name, dimid, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: dimid
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_grid_functional_real_jface_f2c &
      (fid, name, dimid, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid1d_coords(fid, isize, x_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    double precision, dimension(:), intent(in):: x_arr
    integer, intent(out):: ier

    call cg_iric_write_grid1d_coords_f2c &
      (fid, isize, x_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid2d_coords_1d(fid, isize, jsize, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    integer, intent(in):: jsize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_grid2d_coords_f2c &
      (fid, isize, jsize, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid2d_coords_2d(fid, isize, jsize, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    integer, intent(in):: jsize
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_grid2d_coords_f2c &
      (fid, isize, jsize, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid3d_coords_1d(fid, isize, jsize, ksize, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    integer, intent(in):: jsize
    integer, intent(in):: ksize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_grid3d_coords_f2c &
      (fid, isize, jsize, ksize, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid3d_coords_3d(fid, isize, jsize, ksize, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: isize
    integer, intent(in):: jsize
    integer, intent(in):: ksize
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    double precision, dimension(:,:,:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_grid3d_coords_f2c &
      (fid, isize, jsize, ksize, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid1d_coords(fid, name, isize, x_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    double precision, dimension(:), intent(in):: x_arr
    integer, intent(out):: ier

    call cg_iric_write_namedgrid1d_coords_f2c &
      (fid, name, isize, x_arr, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid2d_coords_1d(fid, name, isize, jsize, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    integer, intent(in):: jsize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_namedgrid2d_coords_f2c &
      (fid, name, isize, jsize, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid2d_coords_2d(fid, name, isize, jsize, x_arr, y_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    integer, intent(in):: jsize
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_namedgrid2d_coords_f2c &
      (fid, name, isize, jsize, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid3d_coords_1d(fid, name, isize, jsize, ksize, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    integer, intent(in):: jsize
    integer, intent(in):: ksize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_namedgrid3d_coords_f2c &
      (fid, name, isize, jsize, ksize, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid3d_coords_3d(fid, name, isize, jsize, ksize, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: isize
    integer, intent(in):: jsize
    integer, intent(in):: ksize
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    double precision, dimension(:,:,:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_namedgrid3d_coords_f2c &
      (fid, name, isize, jsize, ksize, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid2d_unst_triangles(fid, psize, x_arr, y_arr, csize, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_grid2d_unst_triangles_f2c &
      (fid, psize, x_arr, y_arr, csize, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid2d_unst_lines(fid, psize, x_arr, y_arr, csize, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_grid2d_unst_lines_f2c &
      (fid, psize, x_arr, y_arr, csize, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid3d_unst_lines(fid, psize, x_arr, y_arr, z_arr, csize, idx_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_grid3d_unst_lines_f2c &
      (fid, psize, x_arr, y_arr, z_arr, csize, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid2d_unst_triangles(fid, name, psize, x_arr, y_arr, csize, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_namedgrid2d_unst_triangles_f2c &
      (fid, name, psize, x_arr, y_arr, csize, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid2d_unst_lines(fid, name, psize, x_arr, y_arr, csize, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_namedgrid2d_unst_lines_f2c &
      (fid, name, psize, x_arr, y_arr, csize, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_namedgrid3d_unst_lines(fid, name, psize, x_arr, y_arr, z_arr, csize, idx_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: psize
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(in):: csize
    integer, dimension(:), intent(in):: idx_arr
    integer, intent(out):: ier

    call cg_iric_write_namedgrid3d_unst_lines_f2c &
      (fid, name, psize, x_arr, y_arr, z_arr, csize, idx_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_node_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_node_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_node_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_node_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_node_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_node_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_node_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_cell_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_cell_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_cell_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_cell_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_cell_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_cell_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_cell_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_iface_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_iface_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_iface_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_iface_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_iface_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_iface_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_iface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_jface_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_jface_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_real_jface_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_real_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_jface_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_jface_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_grid_integer_jface_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_grid_integer_jface_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_copy_grid(fid_from, fid_to, ier)
    integer, intent(in):: fid_from
    integer, intent(in):: fid_to
    integer, intent(out):: ier

    call cg_iric_copy_grid_f2c &
      (fid_from, fid_to, ier)

  end subroutine

  subroutine cg_iric_read_grid2d_open(fid, grid_handle, ier)
    integer, intent(in):: fid
    integer, intent(out):: grid_handle
    integer, intent(out):: ier

    call cg_iric_read_grid2d_open_f2c &
      (fid, grid_handle, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid2d_open(fid, step, grid_handle, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    integer, intent(out):: grid_handle
    integer, intent(out):: ier

    call cg_iric_read_sol_grid2d_open_f2c &
      (fid, step, grid_handle, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_integer_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_integer_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_integer_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_real_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_real_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_real_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_integer_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_integer_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_integer_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_real_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_real_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_real_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid2d_coords_1d(fid, step, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_grid2d_coords_f2c &
      (fid, step, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid2d_coords_2d(fid, step, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    double precision, dimension(:,:), intent(out):: x_arr
    double precision, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_grid2d_coords_f2c &
      (fid, step, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid3d_coords_1d(fid, step, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_grid3d_coords_f2c &
      (fid, step, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid3d_coords_3d(fid, step, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    double precision, dimension(:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:), intent(out):: y_arr
    double precision, dimension(:,:,:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_grid3d_coords_f2c &
      (fid, step, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_grid2d_coords_1d(fid, x_arr, y_arr, ier)
    integer, intent(in):: fid
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_grid2d_coords_f2c &
      (fid, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_grid2d_coords_2d(fid, x_arr, y_arr, ier)
    integer, intent(in):: fid
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_grid2d_coords_f2c &
      (fid, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_grid3d_coords_1d(fid, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_grid3d_coords_f2c &
      (fid, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_grid3d_coords_3d(fid, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    double precision, dimension(:,:,:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_grid3d_coords_f2c &
      (fid, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_integer_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_integer_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_integer_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_real_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_real_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_real_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_integer_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_integer_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_integer_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_real_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_real_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_real_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_integer_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_integer_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_integer_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_real_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_real_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_real_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_integer_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_integer_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_integer_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_real_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_real_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_real_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_integer_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_integer_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_integer_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_real_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_real_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_real_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_integer_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_integer_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_integer_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_real_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_real_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_real_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_integer_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_integer_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_integer_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_real_1d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_real_2d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_real_3d(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_integer_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_integer_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_integer_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_real_1d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_real_2d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_real_3d(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_count(fid, step, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_count_f2c &
      (fid, step, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_pos2d(fid, step, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_pos2d_f2c &
      (fid, step, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_pos3d(fid, step, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_pos3d_f2c &
      (fid, step, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_real(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_real_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_integer(fid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_integer_f2c &
      (fid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particle_pos2d(fid, count, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: count
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_particle_pos2d_f2c &
      (fid, count, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particle_pos3d(fid, count, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: count
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_particle_pos3d_f2c &
      (fid, count, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particle_real(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_particle_real_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particle_integer(fid, name, v_arr, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_particle_integer_f2c &
      (fid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_count(fid, step, groupname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_count_f2c &
      (fid, step, groupname, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_pos2d(fid, step, groupname, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_pos2d_f2c &
      (fid, step, groupname, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_pos3d(fid, step, groupname, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_pos3d_f2c &
      (fid, step, groupname, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_real(fid, step, groupname, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_real_f2c &
      (fid, step, groupname, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_integer(fid, step, groupname, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_integer_f2c &
      (fid, step, groupname, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_groupbegin(fid, groupname, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_groupbegin_f2c &
      (fid, groupname, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_groupend(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_groupend_f2c &
      (fid, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_pos2d(fid, x, y, ier)
    integer, intent(in):: fid
    double precision, intent(in):: x
    double precision, intent(in):: y
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_pos2d_f2c &
      (fid, x, y, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_pos3d(fid, x, y, z, ier)
    integer, intent(in):: fid
    double precision, intent(in):: x
    double precision, intent(in):: y
    double precision, intent(in):: z
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_pos3d_f2c &
      (fid, x, y, z, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_integer(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_integer_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_real(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_real_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroupimage_count(fid, step, groupname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroupimage_count_f2c &
      (fid, step, groupname, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroupimage_pos2d(fid, step, groupname, x_arr, y_arr, size_arr, angle_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: size_arr
    double precision, dimension(:), intent(out):: angle_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroupimage_pos2d_f2c &
      (fid, step, groupname, x_arr, y_arr, size_arr, angle_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroupimage_groupbegin(fid, groupname, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroupimage_groupbegin_f2c &
      (fid, groupname, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroupimage_groupend(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroupimage_groupend_f2c &
      (fid, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroupimage_pos2d(fid, x, y, size, angle, ier)
    integer, intent(in):: fid
    double precision, intent(in):: x
    double precision, intent(in):: y
    double precision, intent(in):: size
    double precision, intent(in):: angle
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroupimage_pos2d_f2c &
      (fid, x, y, size, angle, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_datacount(fid, step, groupname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_datacount_f2c &
      (fid, step, groupname, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_coordinatecount(fid, step, groupname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_coordinatecount_f2c &
      (fid, step, groupname, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_pos2d(fid, step, groupname, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_pos2d_f2c &
      (fid, step, groupname, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_type(fid, step, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_type_f2c &
      (fid, step, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_real(fid, step, groupname, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_real_f2c &
      (fid, step, groupname, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_integer(fid, step, groupname, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_integer_f2c &
      (fid, step, groupname, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_groupbegin(fid, groupname, ier)
    integer, intent(in):: fid
    character(*), intent(in):: groupname
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_groupbegin_f2c &
      (fid, groupname, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_groupend(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_groupend_f2c &
      (fid, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_polygon(fid, numPoints, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: numPoints
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_polygon_f2c &
      (fid, numPoints, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_polyline(fid, numPoints, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: numPoints
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_polyline_f2c &
      (fid, numPoints, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_integer(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_integer_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_real(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_real_f2c &
      (fid, name, value, ier)

  end subroutine



  ! from iriclib_solution.h

  subroutine cg_iric_read_sol_count(fid, count, ier)
    integer, intent(in):: fid
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_count_f2c &
      (fid, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_time(fid, step, time, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    double precision, intent(out):: time
    integer, intent(out):: ier

    call cg_iric_read_sol_time_f2c &
      (fid, step, time, ier)

  end subroutine

  subroutine cg_iric_read_sol_iteration(fid, step, iteration, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    integer, intent(out):: iteration
    integer, intent(out):: ier

    call cg_iric_read_sol_iteration_f2c &
      (fid, step, iteration, ier)

  end subroutine

  subroutine cg_iric_read_sol_baseiterative_integer(fid, step, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_sol_baseiterative_integer_f2c &
      (fid, step, name, value, ier)

  end subroutine

  subroutine cg_iric_read_sol_baseiterative_real(fid, step, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, intent(out):: value
    integer, intent(out):: ier

    call cg_iric_read_sol_baseiterative_real_f2c &
      (fid, step, name, value, ier)

  end subroutine

  subroutine cg_iric_read_sol_baseiterative_stringlen(fid, step, name, length, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, intent(out):: length
    integer, intent(out):: ier

    call cg_iric_read_sol_baseiterative_stringlen_f2c &
      (fid, step, name, length, ier)

  end subroutine

  subroutine cg_iric_read_sol_baseiterative_string(fid, step, name, strvalue, ier)
    integer, intent(in):: fid
    integer, intent(in):: step
    character(*), intent(in):: name
    character(*), intent(out):: strvalue
    integer, intent(out):: ier

    call cg_iric_read_sol_baseiterative_string_f2c &
      (fid, step, name, strvalue, ier)

  end subroutine

  subroutine cg_iric_write_sol_start(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_write_sol_start_f2c &
      (fid, ier)

  end subroutine

  subroutine cg_iric_write_sol_end(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_write_sol_end_f2c &
      (fid, ier)

  end subroutine

  subroutine cg_iric_write_sol_time(fid, time, ier)
    integer, intent(in):: fid
    double precision, intent(in):: time
    integer, intent(out):: ier

    call cg_iric_write_sol_time_f2c &
      (fid, time, ier)

  end subroutine

  subroutine cg_iric_write_sol_iteration(fid, iteration, ier)
    integer, intent(in):: fid
    integer, intent(in):: iteration
    integer, intent(out):: ier

    call cg_iric_write_sol_iteration_f2c &
      (fid, iteration, ier)

  end subroutine

  subroutine cg_iric_write_sol_baseiterative_integer(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_baseiterative_integer_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_sol_baseiterative_real(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_baseiterative_real_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_sol_baseiterative_string(fid, name, value, ier)
    integer, intent(in):: fid
    character(*), intent(in):: name
    character(*), intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_baseiterative_string_f2c &
      (fid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_errorcode(fid, errorcode, ier)
    integer, intent(in):: fid
    integer, intent(in):: errorcode
    integer, intent(out):: ier

    call cg_iric_write_errorcode_f2c &
      (fid, errorcode, ier)

  end subroutine

  subroutine cg_iric_clear_sol(fid, ier)
    integer, intent(in):: fid
    integer, intent(out):: ier

    call cg_iric_clear_sol_f2c &
      (fid, ier)

  end subroutine



  ! from iriclib_sol_cell.h

  subroutine cg_iric_read_sol_cell_integer_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_integer_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_integer_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_real_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_real_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_cell_real_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_cell_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_integer_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_integer_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_integer_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_real_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_real_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_cell_real_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_cell_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine



  ! from iriclib_sol_gridcoord.h

  subroutine cg_iric_read_sol_grid2d_coords_withgridid_1d(fid, gid, step, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_grid2d_coords_withgridid_f2c &
      (fid, gid, step, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid2d_coords_withgridid_2d(fid, gid, step, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    double precision, dimension(:,:), intent(out):: x_arr
    double precision, dimension(:,:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_grid2d_coords_withgridid_f2c &
      (fid, gid, step, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid3d_coords_withgridid_1d(fid, gid, step, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_grid3d_coords_withgridid_f2c &
      (fid, gid, step, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_grid3d_coords_withgridid_3d(fid, gid, step, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    double precision, dimension(:,:,:), intent(out):: x_arr
    double precision, dimension(:,:,:), intent(out):: y_arr
    double precision, dimension(:,:,:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_grid3d_coords_withgridid_f2c &
      (fid, gid, step, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_grid2d_coords_withgridid_1d(fid, gid, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_grid2d_coords_withgridid_f2c &
      (fid, gid, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_grid2d_coords_withgridid_2d(fid, gid, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, dimension(:,:), intent(in):: x_arr
    double precision, dimension(:,:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_grid2d_coords_withgridid_f2c &
      (fid, gid, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_grid3d_coords_withgridid_1d(fid, gid, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_grid3d_coords_withgridid_f2c &
      (fid, gid, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_grid3d_coords_withgridid_3d(fid, gid, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, dimension(:,:,:), intent(in):: x_arr
    double precision, dimension(:,:,:), intent(in):: y_arr
    double precision, dimension(:,:,:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_grid3d_coords_withgridid_f2c &
      (fid, gid, x_arr, y_arr, z_arr, ier)

  end subroutine



  ! from iriclib_sol_iface.h

  subroutine cg_iric_read_sol_iface_integer_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_integer_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_integer_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_real_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_real_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_iface_real_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_iface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_integer_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_integer_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_integer_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_real_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_real_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_iface_real_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_iface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine



  ! from iriclib_sol_jface.h

  subroutine cg_iric_read_sol_jface_integer_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_integer_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_integer_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_real_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_real_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_jface_real_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_jface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_integer_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_integer_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_integer_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_real_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_real_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_jface_real_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_jface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine



  ! from iriclib_sol_kface.h

  subroutine cg_iric_read_sol_kface_integer_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_integer_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_integer_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_real_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_real_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_kface_real_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_kface_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_integer_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_integer_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_integer_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_real_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_real_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_kface_real_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_kface_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine



  ! from iriclib_sol_node.h

  subroutine cg_iric_read_sol_node_integer_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_integer_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_integer_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_real_withgridid_1d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_real_withgridid_2d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_node_real_withgridid_3d(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_node_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_integer_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_integer_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_integer_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_real_withgridid_1d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_real_withgridid_2d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_node_real_withgridid_3d(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:,:,:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_node_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine



  ! from iriclib_sol_particle.h

  subroutine cg_iric_read_sol_particle_count_withgridid(fid, gid, step, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_count_withgridid_f2c &
      (fid, gid, step, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_pos2d_withgridid(fid, gid, step, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_pos2d_withgridid_f2c &
      (fid, gid, step, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_pos3d_withgridid(fid, gid, step, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_pos3d_withgridid_f2c &
      (fid, gid, step, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_real_withgridid(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_real_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particle_integer_withgridid(fid, gid, step, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particle_integer_withgridid_f2c &
      (fid, gid, step, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particle_pos2d_withgridid(fid, gid, count, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: count
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_particle_pos2d_withgridid_f2c &
      (fid, gid, count, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particle_pos3d_withgridid(fid, gid, count, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: count
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    double precision, dimension(:), intent(in):: z_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_particle_pos3d_withgridid_f2c &
      (fid, gid, count, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particle_real_withgridid(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_particle_real_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particle_integer_withgridid(fid, gid, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, dimension(:), intent(in):: v_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_particle_integer_withgridid_f2c &
      (fid, gid, name, v_arr, ier)

  end subroutine



  ! from iriclib_sol_particlegroup.h

  subroutine cg_iric_read_sol_particlegroup_count_withgridid(fid, gid, step, groupname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_count_withgridid_f2c &
      (fid, gid, step, groupname, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_pos2d_withgridid(fid, gid, step, groupname, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_pos2d_withgridid_f2c &
      (fid, gid, step, groupname, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_pos3d_withgridid(fid, gid, step, groupname, x_arr, y_arr, z_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: z_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_pos3d_withgridid_f2c &
      (fid, gid, step, groupname, x_arr, y_arr, z_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_real_withgridid(fid, gid, step, groupname, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_real_withgridid_f2c &
      (fid, gid, step, groupname, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroup_integer_withgridid(fid, gid, step, groupname, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroup_integer_withgridid_f2c &
      (fid, gid, step, groupname, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_groupbegin_withgridid(fid, gid, groupname, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_groupbegin_withgridid_f2c &
      (fid, gid, groupname, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_groupend_withgridid(fid, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_groupend_withgridid_f2c &
      (fid, gid, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_pos2d_withgridid(fid, gid, x, y, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, intent(in):: x
    double precision, intent(in):: y
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_pos2d_withgridid_f2c &
      (fid, gid, x, y, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_pos3d_withgridid(fid, gid, x, y, z, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, intent(in):: x
    double precision, intent(in):: y
    double precision, intent(in):: z
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_pos3d_withgridid_f2c &
      (fid, gid, x, y, z, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_integer_withgridid(fid, gid, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_integer_withgridid_f2c &
      (fid, gid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroup_real_withgridid(fid, gid, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroup_real_withgridid_f2c &
      (fid, gid, name, value, ier)

  end subroutine



  ! from iriclib_sol_particlegroupimage.h

  subroutine cg_iric_read_sol_particlegroupimage_count_withgridid(fid, gid, step, groupname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroupimage_count_withgridid_f2c &
      (fid, gid, step, groupname, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_particlegroupimage_pos2d_withgridid(fid, gid, step, groupname, x_arr, y_arr, size_arr, angle_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    double precision, dimension(:), intent(out):: size_arr
    double precision, dimension(:), intent(out):: angle_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_particlegroupimage_pos2d_withgridid_f2c &
      (fid, gid, step, groupname, x_arr, y_arr, size_arr, angle_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroupimage_groupbegin_withgridid(fid, gid, groupname, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroupimage_groupbegin_withgridid_f2c &
      (fid, gid, groupname, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroupimage_groupend_withgridid(fid, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroupimage_groupend_withgridid_f2c &
      (fid, gid, ier)

  end subroutine

  subroutine cg_iric_write_sol_particlegroupimage_pos2d_withgridid(fid, gid, x, y, size, angle, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    double precision, intent(in):: x
    double precision, intent(in):: y
    double precision, intent(in):: size
    double precision, intent(in):: angle
    integer, intent(out):: ier

    call cg_iric_write_sol_particlegroupimage_pos2d_withgridid_f2c &
      (fid, gid, x, y, size, angle, ier)

  end subroutine



  ! from iriclib_sol_polydata.h

  subroutine cg_iric_read_sol_polydata_datacount_withgridid(fid, gid, step, groupname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_datacount_withgridid_f2c &
      (fid, gid, step, groupname, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_coordinatecount_withgridid(fid, gid, step, groupname, count, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, intent(out):: count
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_coordinatecount_withgridid_f2c &
      (fid, gid, step, groupname, count, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_pos2d_withgridid(fid, gid, step, groupname, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    double precision, dimension(:), intent(out):: x_arr
    double precision, dimension(:), intent(out):: y_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_pos2d_withgridid_f2c &
      (fid, gid, step, groupname, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_type_withgridid(fid, gid, step, groupname, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_type_withgridid_f2c &
      (fid, gid, step, groupname, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_real_withgridid(fid, gid, step, groupname, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    character(*), intent(in):: name
    double precision, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_real_withgridid_f2c &
      (fid, gid, step, groupname, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_read_sol_polydata_integer_withgridid(fid, gid, step, groupname, name, v_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: step
    character(*), intent(in):: groupname
    character(*), intent(in):: name
    integer, dimension(:), intent(out):: v_arr
    integer, intent(out):: ier

    call cg_iric_read_sol_polydata_integer_withgridid_f2c &
      (fid, gid, step, groupname, name, v_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_groupbegin_withgridid(fid, gid, groupname, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: groupname
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_groupbegin_withgridid_f2c &
      (fid, gid, groupname, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_groupend_withgridid(fid, gid, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_groupend_withgridid_f2c &
      (fid, gid, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_polygon_withgridid(fid, gid, numPoints, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: numPoints
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_polygon_withgridid_f2c &
      (fid, gid, numPoints, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_polyline_withgridid(fid, gid, numPoints, x_arr, y_arr, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    integer, intent(in):: numPoints
    double precision, dimension(:), intent(in):: x_arr
    double precision, dimension(:), intent(in):: y_arr
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_polyline_withgridid_f2c &
      (fid, gid, numPoints, x_arr, y_arr, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_integer_withgridid(fid, gid, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    integer, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_integer_withgridid_f2c &
      (fid, gid, name, value, ier)

  end subroutine

  subroutine cg_iric_write_sol_polydata_real_withgridid(fid, gid, name, value, ier)
    integer, intent(in):: fid
    integer, intent(in):: gid
    character(*), intent(in):: name
    double precision, intent(in):: value
    integer, intent(out):: ier

    call cg_iric_write_sol_polydata_real_withgridid_f2c &
      (fid, gid, name, value, ier)

  end subroutine


end module
