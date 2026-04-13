!----------------------------------------------------------------------------------------------------
! Define variables
! test
!----------------------------------------------------------------------------------------------------
module common_hh
	implicit none

	integer,parameter :: strMax = 250
	integer :: im, jm, mm, nm_cell
	integer nx, ny, nym, nobst, jt1, jt2, jrep, j_qbqs, lmax, j_qbs	&
		,j_bedload, j_collaps, j_qsu, j_qb_vec, j_zb, j_vege, j_qbup, edition	&
		, j_sf, j_mix_dis, j_mix_dis_dep
	real(8) :: time
	real(8) :: dxi, det, g, hmin, hmin2, tsc,	chl, width, skp
	real(8) :: r_dxi, r_det
	real(8) :: topi,dt, diam, spec, ster, tuk
	real(8) :: a_snu, b_snu
	real(8) :: mu_s, mu_k
	real(8) :: cse, csm
	character(len = strMax) :: condFile
end module common_hh

module flag_op
	implicit none

	integer :: jop_vort, jop_fr, jop_zmin, jop_zave, jop_have
	integer :: jop_fb, jop_sh, jop_qb, jop_sc, jop_md, jop_dz
end module flag_op
!--------------------------------------------------
module common_cmuv
	implicit none
		! yu: xiï˚å¸ó¨ë¨ÅAyvn:etaï˚å¸ó¨ë¨
	real(8),dimension(:,:),allocatable :: yu, yun, yv, yvn, wu, wv
end module common_cmuv

!--------------------------------------------------
module common_cmc
	implicit none
		! yc: ïÇóVçªîZìxÅAycb: íÍñ ÇÃîZìx
	real(8),dimension(:,:),allocatable :: yc, ycn, ycb
end module common_cmc

!--------------------------------------------------
module common_cmuvp
	implicit none
		! up, vp: ÉZÉãíÜâõÇÃó¨ë¨(àÍî ç¿ïW)ÅAux, uyÅFÉZÉãíÜâõÇÃÉfÉJÉãÉgó¨ë¨
	real(8),dimension(:,:),allocatable :: up, vp, ux, uy
end module common_cmuvp

!--------------------------------------------------
module common_cmhq
	implicit none
		! h: êÖà ÅAhs: êÖê[
	real(8),dimension(:,:),allocatable :: h, hn, hs, whs
	real(8),dimension(:),allocatable :: qc, qc_t, qc_t2
end module common_cmhq

!--------------------------------------------------
module common_cmgrd
	implicit none
		! gux, guy, gvx, gvy: CIPÇ…égÇ§ó¨ë¨å˘îz(du_xi/dxi, du_xi/det)
	real(8),dimension(:,:),allocatable :: gux, guy, gvx, gvy, gcx, gcy
end module common_cmgrd

!--------------------------------------------------
module common_cmxy
	implicit none
	real(8),dimension(:,:),allocatable :: x, y, z, eta, ds, dn
	real(8),dimension(:,:),allocatable :: sj,xi_x,xi_y,et_x, et_y, xi_r, et_r, xi_r_up, et_r_vp
	real(8),dimension(:,:),allocatable :: z0
		! zb: äiéqì_ÇÃå≈íËè∞çÇÇ≥ÅAeta_zb: ÉZÉãíÜâõÇÃzb
	real(8),dimension(:,:),allocatable :: zb_g, zb, eta_zb
end module common_cmxy

!--------------------------------------------------
module common_cmxiet
	implicit none
		! up, vpÇÕuÇ∆vÇÃíËã`ì_ÇÃíl
	real(8),dimension(:,:),allocatable :: xi_x_up,xi_y_up
	real(8),dimension(:,:),allocatable :: et_x_up,et_y_up,xi_x_vp, xi_y_vp, et_x_vp, et_y_vp
end module common_cmxiet

!--------------------------------------------------
module common_cmtst
	implicit none
		! vti: êÖê[ïΩãœó¨ë¨ÇÃê‚ëŒíl
	real(8),dimension(:,:),allocatable :: vti, tausta, qsu, usta
end module common_cmtst

!--------------------------------------------------
module common_cmuxy
	implicit none
		! uxx, uyy: ÉfÉJÉãÉgç¿ïWÇÃó¨ë¨(äiéqì_)ÅAqbxx, qbyy: ÉfÉJÉãÉgç¿ïWÇÃë|ó¨çªó (äiéqì_)
	real(8),dimension(:,:),allocatable :: uxx, uyy, qbxx, qbyy
end module common_cmuxy

!--------------------------------------------------
module common_cmave
	implicit none
		! eave: â°ífñ ÇÃïΩãœïWçÇ
	real(8),dimension(:)  ,allocatable :: eave, chb, emin, emax
	real(8),dimension(:,:),allocatable :: eta0
	real(8),dimension(:,:),allocatable :: b_elv(:,:)
end module common_cmave

!--------------------------------------------------
module common_cmsr
	implicit none
		! sr: ó¨ê¸ÇÃã»ó¶
	real(8),dimension(:,:),allocatable :: sr, cos_t, sin_t 
end module common_cmsr

!--------------------------------------------------
module common_cmqb
	implicit none
		! qb_xi, qb_et: àÍî ç¿ïWÇÃë|ó¨çªó 
		! kc: ë|ó¨çªà⁄ìÆÇ…ëŒÇ∑ÇÈå˘îzï‚ê≥ÇÃåWêî
	real(8),dimension(:,:),allocatable :: qb_xi,qb_et
	real(8),dimension(:,:),allocatable :: kc, btheta_x, btheta_y, cos_bed, sin_bed
	real(8),dimension(:,:),allocatable :: theta_x, theta_y, qbxc, qbyc
		! dzds, dzdn : éÂó¨Ç∆â°ífï˚å¸ÇÃå˘îz
	real(8),dimension(:,:),allocatable :: dzds, dzdn, ubnvb
end module common_cmqb

!--------------------------------------------------
module common_cmet
	implicit none
		! eta_t: etaï˚å¸ÇÃäiéqÇÃà⁄ìÆë¨ìx
	real(8),dimension(:,:),allocatable :: eta_t
end module common_cmet

!--------------------------------------------------
module common_cmsui
	implicit none
	integer,dimension(:,:),allocatable :: ijobst, ijo_in, ij_frg, ij_ero
	integer,dimension(:,:),allocatable :: ijobst_u, ijobst_v
end module common_cmsui

!--------------------------------------------------
module common_cmsn
	implicit none
	real(8),dimension(:,:),allocatable :: snmm, sn_up, sn_vp
end module common_cmsn

!--------------------------------------------------
module common_cmxxyy
	implicit none
	real(8),dimension(:,:),allocatable :: xi_x0,xi_y0,et_x0,et_y0,sj0
end module common_cmxxyy

!--------------------------------------------------
module common_qhyd
	implicit none
	real(8),dimension(:),allocatable :: t_hyd, q_ups, h_ups, h_dse
end module common_qhyd

!--------------------------------------------------
module common_cmke
	implicit none
		! yk: óêÇÍÉGÉlÉãÉMÅ[ÅAep: éUàÌó¶
	real(8),dimension(:,:),allocatable :: yk,ykn, yep,yepn, gkx, gky, gex, gey
end module common_cmke

!--------------------------------------------------
module common_cmkep
	implicit none
		! k-eÉÇÉfÉãÇÃê∂ê¨çÄÇ»Ç«
	real(8),dimension(:,:),allocatable :: ph, pkv, pev, strain
end module common_cmkep

!--------------------------------------------------
module common_cmcf
	implicit none
		! cf: âÕè∞íÔçRåWêîÅAre: ÉåÉCÉmÉãÉYêîÅAvege_el: êAê∂ÇÃçÇÇ≥
	real(8),dimension(:,:),allocatable :: cf, re, cd_veg, vege_el, vege_h
end module common_cmcf

!--------------------------------------------------
module common_cmyp
	implicit none
	real(8),dimension(:,:),allocatable :: y_dis, y_plus
end module common_cmyp

!--------------------------------------------------
module common_cmsnu
	implicit none
		! snu: âQìÆîSê´åWêî(ÉZÉãíÜâõ)ÅAsnu_x:snuÇÃäiéqì_ÇÃíl 
	real(8),dimension(:,:),allocatable :: snu,snu_x,snu0,snu0_x, snuk,snuk_x
end module common_cmsnu

!--------------------------------------------------
module common_cmchunk
	implicit none
		! âÕä›êZêHånÇÃÉpÉâÉÅÅ[É^(2014/3/19éûì_Ç≈égÇ¡ÇƒÇ»Ç¢)
	real(8),dimension(:,:),allocatable :: a_chunk, sk_chunk
	real(8) :: t_chunk, d_chunk,  h_chunk
end module common_cmchunk

!--------------------------------------------------
module common_cmab
	implicit none
		! â^ìÆï˚íˆéÆíÜÇÃç¿ïWïœä∑Ç≈èoÇƒÇ≠ÇÈçÄÇÃåWêî
	real(8),dimension(:,:,:),allocatable :: alpha, beta
end module common_cmab

!--------------------------------------------------
module common_cmdnx
	implicit none
		! dnx, dsy: äiéqíÜâõä‘ÇÃãóó£(j, i)
	real(8),dimension(:,:),allocatable :: dnx, dsy
end module common_cmdnx

!--------------------------------------------------
module common_cmquv
	implicit none
	real(8),dimension(:,:),allocatable :: qu, qv
end module common_cmquv

!--------------------------------------------------
module common_cmqxe
	implicit none
		! q_xi, q_et: xiÇ∆etï˚å¸ÇÃàÍî ç¿ïWÇÃó¨ó 
	real(8),dimension(:,:),allocatable :: q_xi, q_et
end module common_cmqxe

!--------------------------------------------------
module common_cmdex
	implicit none
		! dex: 1ÉXÉeÉbÉvÇÃâÕè∞ïœìÆó 
	real(8),dimension(:,:),allocatable :: dex
end module common_cmdex

module common_output
	implicit none
	real(8),dimension(:),allocatable :: z_min_main, z_min_tri, z_min_tri2		&
										, z_ave_main, z_ave_tri, z_ave_tri2		&
										, h_ave_main, h_ave_tri, h_ave_tri2
	real(8),dimension(:,:),allocatable :: z_min, z_ave, h_ave
	real(8),dimension(:,:),allocatable :: fr_c
	real(8),dimension(:,:),allocatable :: hsxx, voltex, c_g, dmn, fr_g, us_g, ts_g, phi_g
	real(8),dimension(:,:,:),allocatable :: cc_m

end module common_output

!--------------------------------------------------
module mix
	implicit none
		! nk: ó±åaäKëwÇÃêî(1Å`)
	integer :: j_mix, nk, nm
		! nb: äeÉZÉãÇÃëÕêœëwÇÃêî
	integer,dimension(:,:),allocatable :: nb, flg_mix
		! e_d: ëÕêœëwå˙ÅAe_thick: à⁄ìÆëwå˙ÅAe_m: åä∑ëwå˙
	real(8) :: e_d, e_thick, e_m
		! ddk: äeó±åaÉTÉCÉYÅAtsci: é’ï¡å¯â Ççló∂ÇµÇ»Ç¢Ç∆Ç´ÇÃñ≥éüå≥å¿äEë|ó¨óÕ
	real(8),dimension(:),allocatable :: ddist_mm, rdsgi, uci, tsci0, ddk, sum_f, wfk
	real(8),dimension(:,:),allocatable :: pdist_m_100, pmk0
	real(8),dimension(:,:),allocatable :: pdist_d_100, pdk0
		! e_t: ëJà⁄ëwå˙ÅAdm_t: ëJà⁄ëwÇÃíÜâõó±åaÅAdm_m: åä∑ëwÇÃíÜâõó±åaÅAtscm: íÜâõó±åaÇ…ëŒÇ∑ÇÈå¿äEñ≥éüå≥ë|ó¨óÕ
	real(8),dimension(:,:),allocatable :: eta_base, e_t, dm_t, dm_m, dmxx, tscm
		! p_m, p_t, p_d: åä∑ëwÅAëJà⁄ëwÅAëÕêœëwÇÃäeó±åaÇÃë∂ç›ó¶
	real(8),dimension(:,:,:),allocatable :: dex_mix, qb_xi_mix, qb_et_mix, p_m, p_t, dm_d
	real(8),dimension(:,:,:),allocatable :: qbxkc, qbykc
		! tsk: äeó±åaÇÃñ≥éüå≥ë|ó¨óÕÅAtsck: äeó±åaÇÃñ≥éüå≥å¿äEë|ó¨óÕ
	real(8),dimension(:,:,:),allocatable :: tsk, tsck, usck
	real(8),dimension(:,:,:,:),allocatable :: p_d

	real(8),dimension(:,:,:),allocatable :: yck,ycbk
	real(8),dimension(:,:,:),allocatable :: qsuk

end module mix

!--------------------------------------------------
module common_qhyd_t
	implicit none
	real(8),dimension(:),allocatable :: q_ups_t, h_ups_t
end module common_qhyd_t

!--------------------------------------------------
module common_cmconf1
	implicit none
	integer :: j_conf,j_m1,j_m2,j_t1,j_t2,i_t1,i_t2,jxd,js1,js2
end module common_cmconf1

!--------------------------------------------------
module common_cmave_t
	implicit none
	real(8),dimension(:), allocatable :: eave_t, chb_t, emin_t, emax_t
end module common_cmave_t

!--------------------------------------------------
module common_cmave_t2
	implicit none
	real(8),dimension(:), allocatable :: eave_t2, chb_t2, emin_t2, emax_t2
end module common_cmave_t2

module fixed_bed
	implicit none
	real(8),dimension(:,:),allocatable :: phi, emb

end module fixed_bed

module supplying_sediment
	implicit none
	real(8), dimension(:,:), allocatable :: c_se

end module 

module secondary_flow
	implicit none
	real(8), parameter :: c_turb = 0.41d0/6.d0
	real(8), dimension(:,:), allocatable :: an, vort, us_bed, un_bed

end module secondary_flow

!----------------------------------------------------------------------------------------------------
!
!----------------------------------------------------------------------------------------------------
module alloc_var_m

	use common_cmuv
	use common_cmc
	use common_cmuvp
	use common_cmhq
	use common_cmgrd
	use common_cmxy
	use common_cmxiet
	use common_cmtst
	use common_cmuxy
	use common_cmave
	use common_cmsr
	use common_cmqb
	use common_cmet
	use common_cmsui
	use common_cmsn
	use common_cmxxyy
	use common_cmke
	use common_cmkep
	use common_cmcf
	use common_cmyp
	use common_cmsnu
	use common_cmchunk
	use common_cmab
	use common_cmdnx
	use common_cmquv
	use common_cmqxe
	use common_cmdex
	use common_qhyd
	use mix
	use common_qhyd_t
	use common_cmave_t
	use common_cmave_t2
	use common_output
	use fixed_bed
	use supplying_sediment
	use secondary_flow

contains
	!-----------------------------------------------------------------------
	subroutine alloc_var1(im, jm)
		implicit none
		integer,intent(in) :: im, jm
		integer :: i,j
		i = im
		j = jm

		allocate( yu(0:i,0:j), yun(0:i,0:j), yv(0:i,0:j), yvn(0:i,0:j), wu(0:i,0:j), wv(0:i,0:j) )
		allocate( yc(0:i,0:j), ycn(0:i,0:j), ycb(0:i,0:j), c_g(0:i,0:j) )
		allocate( up(0:i,0:j), vp(0:i,0:j),	ux(0:i,0:j), uy(0:i,0:j) )
		allocate( h(0:i,0:j), hn(0:i,0:j), hs(0:i,0:j), whs(0:i,0:j) )
		allocate(qc(0:i), qc_t(0:i), qc_t2(0:j) )		!h101019 +qc_t,qc_t2
		allocate( gux(0:i,0:j), guy(0:i,0:j), gvx(0:i,0:j), gvy(0:i,0:j), gcx(0:i,0:j), gcy(0:i,0:j) )
		allocate( x(0:i,0:j), y(0:i,0:j), z(0:i,0:j), eta(0:i,0:j) &
			,     ds(0:i,0:j),     dn(0:i,0:j),     sj(0:i,0:j), xi_x(0:i,0:j) &
			,   xi_y(0:i,0:j),   et_x(0:i,0:j),   et_y(0:i,0:j), xi_r(0:i,0:j) &
			,   et_r(0:i,0:j),xi_r_up(0:i,0:j),et_r_vp(0:i,0:j),   z0(0:i,0:j) &
			, dmn(0:i,0:j), phi_g(0:i,0:j) )
		allocate( zb(0:i,0:j), eta_zb(0:i,0:j), zb_g(0:i,0:j) )
		allocate( xi_x_up(0:i,0:j), xi_y_up(0:i,0:j), et_x_up(0:i,0:j) &
			, et_y_up(0:i,0:j), xi_x_vp(0:i,0:j), xi_y_vp(0:i,0:j) &
			, et_x_vp(0:i,0:j), et_y_vp(0:i,0:j) )
		allocate(vti(0:i,0:j),tausta(0:i,0:j),qsu(0:i,0:j),usta(0:i,0:j))
		allocate( uxx(0:i,0:j), uyy(0:i,0:j), voltex(0:i,0:j), qbxx(0:i,0:j), qbyy(0:i,0:j) )
		allocate( eave(0:i), chb(0:i), emin(0:i), emax(0:i) )
		allocate( eta0(0:i,0:j), b_elv(2,0:i) )
		allocate( sr(0:i,0:j), cos_t(0:i,0:j), sin_t(0:i,0:j) )
		allocate( qb_xi(0:i,0:j), qb_et(0:i,0:j), theta_x(0:i,0:j), theta_y(0:i,0:j) )
		allocate( qbxc(0:i,0:j), qbyc(0:i,0:j) )
		allocate( dzds(0:i,0:j), dzdn(0:i,0:j), ubnvb(0:i,0:j) )
		allocate( kc(0:i,0:j), btheta_x(0:i,0:j), btheta_y(0:i,0:j), cos_bed(0:i,0:j), sin_bed(0:i,0:j) )
		allocate( eta_t(0:i,0:j) )
		allocate( ijobst(0:i,0:j), ijo_in(0:i,0:j), ij_frg(0:i,0:j), ij_ero(0:i,0:j) )
		allocate( ijobst_u(0:i,0:j), ijobst_v(0:i,0:j) )
		allocate( snmm(0:i,0:j), sn_up(0:i,0:j), sn_vp(0:i,0:j) )
		allocate( xi_x0(0:i,0:j), xi_y0(0:i,0:j),et_x0(0:i,0:j), et_y0(0:i,0:j),	 sj0(0:i,0:j), hsxx(0:i,0:j) )
		allocate( yk(0:i,0:j),ykn(0:i,0:j), yep(0:i,0:j),yepn(0:i,0:j), gkx(0:i,0:j), gky(0:i,0:j), gex(0:i,0:j),gey(0:i,0:j) )
		allocate( ph(0:i,0:j),pkv(0:i,0:j),pev(0:i,0:j),strain(0:i,0:j) )
		allocate( cf(0:i,0:j), re(0:i,0:j), cd_veg(0:i,0:j), vege_el(0:i,0:j), vege_h(0:i,0:j) )
		allocate( y_dis(0:i,0:j), y_plus(0:i,0:j) )
		allocate( snu(0:i,0:j), snu_x(0:i,0:j),	snu0(0:i,0:j), snu0_x(0:i,0:j),	snuk(0:i,0:j),snuk_x(0:i,0:j) )
		allocate( a_chunk(2,0:i), sk_chunk(2,0:i) )
		allocate( alpha(6,0:i,0:j), beta(4,0:i,0:j) )
		allocate( dnx(0:i,0:j), dsy(0:i,0:j) )
		allocate( qu(0:i,0:j), qv(0:i,0:j) )	!h101019 +qv
		allocate( q_xi(0:i,0:j), q_et(0:i,0:j) )
		allocate( dex(0:i,0:j) )
		allocate( eave_t(0:i), chb_t(0:i), emin_t(0:i), emax_t(0:i) )
		allocate( eave_t2(0:j), chb_t2(0:j), emin_t2(0:j), emax_t2(0:j) )
    allocate( fr_c(0:i,0:j), us_g(0:i,0:j), ts_g(0:i,0:j), fr_g(0:i,0:j) )
		allocate( phi(0:i,0:j), emb(0:i,0:j) )
		allocate( z_min_main(0:i), z_ave_main(0:i), h_ave_main(0:i) )
		allocate( z_min_tri(0:i), z_ave_tri(0:i), h_ave_tri(0:i) )
		allocate( z_min_tri2(0:j), z_ave_tri2(0:j), h_ave_tri2(0:j) )
		allocate( z_min(0:i,0:j), z_ave(0:i,0:j), h_ave(0:i,0:j) )
		allocate( c_se(0:i,0:j) )
		allocate( an(0:i,0:j), vort(0:i,0:j) )
		allocate( us_bed(0:i,0:j), un_bed(0:i,0:j) )
	end subroutine alloc_var1

!-----------------------------------------------------------------------
	subroutine alloc_var2(m)
		implicit none
		integer,intent(in) :: m

		allocate( t_hyd(0:m), q_ups(0:m), h_ups(0:m), h_dse(0:m) )
		allocate( q_ups_t(0:m), h_ups_t(0:m) )

	end subroutine alloc_var2

!
!-----------------------------------------------------------------------
	subroutine alloc_var_mix(im, jm, m, n, n_cell)
		implicit none
		integer,intent(in) :: im, jm, m, n, n_cell

		allocate( ddist_mm(0:m), rdsgi(m),&
			uci(m), tsci0(m), ddk(m), sum_f(m), wfk(m) )

		allocate( pdist_m_100(0:m,0:n_cell), pmk0(m,0:n_cell) )

		allocate( pdist_d_100(0:m,0:n_cell), pdk0(m,0:n_cell) )

		allocate( nb(0:im,0:jm), flg_mix(0:im,0:jm), eta_base(0:im,0:jm), e_t(0:im,0:jm) &
				, dm_t(0:im,0:jm), dm_m(0:im,0:jm), dmxx(0:im,0:jm) &
				, tscm(0:im,0:jm) )
		allocate( dex_mix(0:im,0:jm,m), qb_xi_mix(0:im,0:jm,m) &
				, qb_et_mix(0:im,0:jm,m), p_m(0:im,0:jm,m), qbxkc(0:im,0:jm,m), qbykc(0:im,0:jm,m) &
				, p_t(0:im,0:jm,m), tsk(0:im,0:jm,m), tsck(0:im,0:jm,m), usck(0:im,0:jm,m) )
		allocate( p_d(0:im,0:jm,0:n,m), dm_d(0:im,0:jm,0:n) )

	allocate( yck(0:im,0:jm,m), ycbk(0:im,0:jm,m), qsuk(0:im,0:jm,m) )

	end subroutine alloc_var_mix

end module alloc_var_m

!----------------------------------------------------------------------------------------------------
! initialize module
!----------------------------------------------------------------------------------------------------
module initial_0_m

	use common_hh
	use common_cmuv
	use common_cmc
	use common_cmuvp
	use common_cmhq
	use common_cmgrd
	use common_cmxy
	use common_cmxiet
	use common_cmtst
	use common_cmuxy
	use common_cmave
	use common_cmsr
	use common_cmqb
	use common_cmet
	use common_cmsui
	use common_cmsn
	use common_cmxxyy
	use common_cmke
	use common_cmkep
	use common_cmcf
	use common_cmyp
	use common_cmsnu
	use common_cmchunk
	use common_cmab
	use common_cmdnx
	use common_cmquv
	use common_cmqxe
	use common_cmdex
	use common_qhyd
	use mix
	use common_qhyd_t
	use common_cmconf1
	use common_cmave_t
	use common_cmave_t2
	use common_output
	use fixed_bed
	use secondary_flow

contains

	subroutine initial_01
		implicit none

		yu=0.d0; yun=0.d0; yv=0.d0; yvn=0.d0; wu = 0.d0; wv = 0.d0;
		yc=0.d0; ycn=0.d0; ycb=0.d0; c_g = 0.d0
		up=0.d0; vp=0.d0; ux=0.d0; uy=0.d0
		h=0.d0; hn=0.d0; hs=0.d0; whs=0.d0
		qc=0.d0
		gux=0.d0; guy=0.d0; gvx=0.d0; gvy=0.d0; gcx=0.d0; gcy=0.d0
		x=0.d0; y=0.d0; z=0.d0; eta=0.d0; ds=0.d0; dn=0.d0
		sj=0.d0; xi_x=0.d0; xi_y=0.d0; et_x=0.d0; et_y=0.d0
		xi_r=0.d0; et_r=0.d0; xi_r_up=0.d0; et_r_vp=0.d0; z0=0.d0
		xi_x_up=0.d0; xi_y_up=0.d0; et_x_up=0.d0; et_y_up=0.d0
		xi_x_vp=0.d0; xi_y_vp=0.d0; et_x_vp=0.d0; et_y_vp=0.d0
		vti=0.d0; tausta=0.d0; qsu=0.d0; usta=0.d0
		uxx=0.d0; uyy=0.d0; voltex=0.d0; qbxx = 0.d0; qbyy = 0.d0;
		eave=0.d0; chb=0.d0; emin=0.d0; emax=0.d0
		eave_t=0.d0; chb_t=0.d0; emin_t=0.d0; emax_t=0.d0		!h101019 conf
		eave_t2=0.d0; chb_t2=0.d0; emin_t2=0.d0; emax_t2=0.d0	!h101019 conf
		eta0=0.d0
		b_elv(:,:)=0.d0
		sr=0.d0; cos_t=0.d0
		qb_xi=0.d0; qb_et=0.d0
		eta_t=0.d0
		ijobst=0; ijo_in=0; ij_frg=0; ij_ero=0; ijobst_u = 0; ijobst_v = 0
		snmm=0.d0; sn_up=0.d0; sn_vp=0.d0
		xi_x0=0.d0; xi_y0=0.d0; et_x0=0.d0; et_y0=0.d0; sj0=0.d0; hsxx=0.d0
		yk=0.d0; ykn=0.d0; yep=0.d0; yepn=0.d0; gkx=0.d0; gky=0.d0; gex=0.d0; gey=0.d0
		ph=0.d0; pkv=0.d0; pev=0.d0; strain=0.d0
		cf=0.d0; re=0.d0; cd_veg=0.d0
		y_dis=0.d0; y_plus=0.d0
		snu=0.d0; snu_x=0.d0; snu0=0.d0; snu0_x=0.d0; snuk=0.d0; snuk_x=0.d0
		a_chunk=0.d0; sk_chunk=0.d0
		t_chunk=0.d0; d_chunk=0.d0;	h_chunk=0.d0
		alpha=0.d0; beta=0.d0
		dnx=0.d0
		qu=0.d0; qv=0.d0		!h101019 +qv
		q_xi=0.d0; q_et=0.d0
		dex=0.d0; phi=0.d0
		an = 0.d0; vort = 0.d0
	end subroutine initial_01
	!
	subroutine initial_02
		implicit none

		t_hyd=0.d0; q_ups=0.d0; h_ups=0.d0; h_dse=0.d0
		q_ups_t=0.d0; h_ups_t=0.d0		!h101019 conf
	end subroutine initial_02
	!
	subroutine initial_mix
		implicit none

		nb=0; eta_base=0.d0; e_t=0.d0; dm_t=0.d0; dm_m=0.d0; dmxx=0.d0
		tscm=0.d0; dex_mix=0.d0; qb_xi_mix=0.d0; qb_et_mix=0.d0;
		p_m=0.d0;	p_t=0.d0;	p_d=0.d0;	dm_d=0.d0

	yck = 0.d0;

	end subroutine initial_mix
	!
end module     initial_0_m

!----------------------------------------------------------------------------------------------------

module avgeo_m

	use common_hh
	use common_cmxy
	use common_cmave
	use common_cmsui
	use common_cmave_t
	use common_cmave_t2
	use common_cmconf1

	real(8), parameter :: etmax = 9999.d0
	real(8),dimension(:),allocatable :: sch, ss_x
	real(8),dimension(:),allocatable :: sch_t, ss_x_t
	real(8),dimension(:),allocatable :: sch_t2, ss_x_t2
	real(8),dimension(:,:),allocatable :: deav

contains

	subroutine alloc_avgeo_temp_variables
		implicit none

		allocate( sch(0:im), ss_x(0:im) )
		allocate( sch_t(0:im), ss_x_t(0:im) )
		allocate( sch_t2(0:jm), ss_x_t2(0:jm) )
		allocate( deav(0:im,0:jm) )
		
		sch = 0.d0;		ss_x = 0.d0
		sch_t = 0.d0;	ss_x_t = 0.d0
		sch_t2 = 0.d0;	ss_x_t2 = 0.d0
		deav = 0.d0

	end subroutine alloc_avgeo_temp_variables
	
	subroutine avgeo(slope,bheight)
		use mix
		implicit none

		integer :: i, j

		real(8) :: slope, bheight, eett, sxy, sx, sy, sxx, syy, sm, aa, bb, dnx &
			, de_max, de_min, ee00
		integer :: net, nnp, mv
!
		do i = 1, nx
			do j = 1, ny
				net = 0
				eett = 0.d0
				if( z(i  ,j  ) < etmax ) then
					net  = net  + 1
					eett = eett + z(i  ,j  )
				end if
				if( z(i-1,j  ) < etmax ) then
					net  = net  + 1
					eett = eett + z(i-1,j  )
				end if
				if( z(i  ,j-1) < etmax ) then
					net  = net  + 1
					eett = eett + z(i  ,j-1)
				end if
				if( z(i-1,j-1) < etmax ) then
					net  = net  + 1
					eett = eett + z(i-1,j-1)
				end if
				if( net > 0 ) then
					eta( i,j) = eett / dble(net)
				else
					eta( i,j) = etmax
				end if
				eta0(i,j) = eta(i,j)
			end do
			b_elv(1,i) = eta0(i, 1) + bheight
			b_elv(2,i) = eta0(i,ny) + bheight
		end do

		do i=1,nx
			eave(i) =     0.d0
			emin(i) =  9999.d0
			emax(i) = -9999.d0
			nnp = 0
			do j = 1, ny
				if( ijo_in(i,j) /= 1 ) then
					nnp     = nnp + 1
					eave(i) =     eave(i)+eta(i,j)
					emin(i) = min(emin(i),eta(i,j))
					emax(i) = max(emax(i),eta(i,j))
				end if
			end do
			eave(i) = eave(i) / dble(nnp)
		end do

		sch(0) = 0.d0
		mv = 0
		do i = 0, nx
			if(i .gt. 0) sch(i) = sch(i-1)+dsqrt((x(i,nym)-x(i-1,nym))**2+(y(i,nym)-y(i-1,nym))**2)
			mv = 1
		end do
		do i=1,nx
			ss_x(i) = ( sch(i) + sch(i-1) ) * 0.5d0
		end do
		chl = ss_x(nx) - ss_x(1)

		sxy = 0.d0
		sx  = 0.d0
		sy  = 0.d0
		sxx = 0.d0
		syy = 0.d0
		do i = 1, nx
			 sx  = sx  + ss_x(i)
			 sy  = sy  + eave(i)
			 sxx = sxx + ss_x(i)**2
			 sxy = sxy + ss_x(i) * eave(i)
		end do
		sm = dble(nx)
		aa = (sm*sxy- sx*sy) / (sm*sxx-sx**2)
		bb = (sxx*sy-sxy*sx) / (sm*sxx-sx**2)
		slope = - aa

		width = 0.
		do i = 0, nx
			chb(i) = 0.d0
			do j = 1, ny
				if( ijobst(i,j) * ijobst(i,j-1) == 0 ) then
					dnx = dsqrt( (x(i,j)-x(i,j-1))**2 + (y(i,j)-y(i,j-1) )**2 )
					chb(i) = chb(i) + dnx
				end if
			end do
			width = width + chb(i)
		end do
		width = width / dble(nx+1)

	end subroutine avgeo

	!----------
	subroutine avgeo_t(slope,slope_t,bheight)
		use mix
		implicit none

		integer :: i,j

		real(8) :: slope, slope_t, bheight, eett, chl_t, sxy, sx, sy, sxx, syy, sm &
			, aa, bb, dnx, width_t, dny
		integer :: net, nnp, jss1, jss2, nnym, nnxm

		do i=1,nx
			do j=1,ny
				net=0
				eett=0.d0
				if(z(i,j).lt.etmax) then
					net=net+1
					eett=eett+z(i,j)
				end if
				if(z(i-1,j).lt.etmax) then
					net=net+1
					eett=eett+z(i-1,j)
				end if
				if(z(i,j-1).lt.etmax) then
					net=net+1
					eett=eett+z(i,j-1)
				end if
				if(z(i-1,j-1).lt.etmax) then
					net=net+1
					eett=eett+z(i-1,j-1)
				end if
				if(net.gt.0) then
					eta(i,j)=eett/dble(net)
				else
					eta(i,j)=etmax
				end if
				eta0(i,j)=eta(i,j)
			end do
			b_elv(1,i)=eta0(i,1)+bheight
			b_elv(2,i)=eta0(i,ny)+bheight
		end do
		!
		!  --- eave,emin,emax --(Main Channel) -----
		!
		do i=1,nx
			eave(i)=0.d0
			emin(i)=9999.d0
			emax(i)=-9999.d0
			nnp=0
			if(i.lt.i_t1.or.j_conf.ge.2) then
				jss1=j_m1+1
				jss2=j_m2
			else
				jss1=1
				jss2=ny
			end if
			do j=jss1,jss2
				if(ijo_in(i,j).ne.1) then
					nnp=nnp+1
					eave(i)=eave(i)+eta(i,j)
					emin(i)=min(emin(i),eta(i,j))
					emax(i)=max(emax(i),eta(i,j))
				end if
			end do
			eave(i)=eave(i)/dble(nnp)
		end do
		!c
		!c  --- eave,emin,emax --(Tributary Channel) -----
		!c
		if(j_conf.eq.1) then
			do i=1,i_t2
				eave_t(i)=0.d0
				emin_t(i)=9999.d0
				emax_t(i)=-9999.d0
				nnp=0
				do j=j_t1+1,j_t2
					if(ijo_in(i,j).ne.1) then
						nnp=nnp+1
						eave_t(i)=eave_t(i)+eta(i,j)
						emin_t(i)=min(emin_t(i),eta(i,j))
						emax_t(i)=max(emax_t(i),eta(i,j))
					end if
				end do
				eave_t(i)=eave_t(i)/dble(nnp)
			end do

		else if(j_conf.ge.2) then
			do j=j_t1+js1,j_t2+js2,jxd
				eave_t2(j)=0.d0
				emin_t2(j)=9999.d0
				emax_t2(j)=-9999.d0
				nnp=0
				do i=i_t1+1,i_t2
					if(ijo_in(i,j).ne.1) then
						nnp=nnp+1
						eave_t2(j)=eave_t2(j)+eta(i,j)
						emin_t2(j)=min(emin_t2(j),eta(i,j))
						emax_t2(j)=max(emax_t2(j),eta(i,j))
					end if
				end do
				eave_t2(j)=eave_t2(j)/dble(nnp)
			end do
		end if
		!c
		!c ----- Channel Length (Main Channel) -----
		!c
		sch(0)=0.d0
		do i=0,nx
			if(i.lt.i_t1.or.j_conf.ge.2) then
				nnym=(j_m2+j_m1)/2
			else
				nnym=(1+ny)/2
			end if
			if(i.gt.0) then
				sch(i)=sch(i-1)+dsqrt((x(i,nnym)-x(i-1,nnym))**2+(y(i,nnym)-y(i-1,nnym))**2)
			end if
		end do
		do i=1,nx
			ss_x(i)=(sch(i)+sch(i-1))*.5d0
		end do
		chl=ss_x(nx)-ss_x(1)
		!
		!c ----- Channel Length (Triburary) -----
		!
		if(j_conf.eq.1) then
			sch_t(0)=0.d0
			do i=0,nx
				nnym=(j_t2+j_t1)/2
				if(i.gt.0) then
					sch_t(i)=sch_t(i-1)+dsqrt((x(i,nnym)-x(i-1,nnym))**2+(y(i,nnym)-y(i-1,nnym))**2)
				end if
			end do
			do i=1,nx
				ss_x_t(i)=(sch_t(i)+sch_t(i-1))*.5
			end do
			chl_t=ss_x_t(nx)-ss_x_t(1)
			!
		else if(j_conf.ge.2) then
			sch_t2(0)=0.d0
			do j=j_t1,j_t2,jxd
				nnxm=(i_t2+i_t1)/2
				if(j*jxd.gt.j_t1*jxd) then
					sch_t2(j)=sch_t2(j-jxd) +dsqrt((x(nnxm,j)-x(nnxm,j-jxd))**2+(y(nnxm,j)-y(nnxm,j-jxd))**2)
				end if
			end do
			do j=j_t1+js1,j_t2+js2,jxd
				ss_x_t2(j)=(sch_t2(j)+sch_t2(j-jxd))*.5d0
			end do
			chl_t=ss_x_t2(j_t2+js2)-ss_x_t2(j_t1+js1)
		end if
		!
		!c ------ Slope of Main Channel ------
		!
		sxy=0.d0
		sx=0.d0
		sy=0.d0
		sxx=0.d0
		syy=0.d0
		do i=1,nx
			sx=sx+ss_x(i)
			sy=sy+eave(i)
			sxx=sxx+ss_x(i)**2
			sxy=sxy+ss_x(i)*eave(i)
		end do
		sm=dble(nx)
		aa=(sm*sxy-sx*sy)/(sm*sxx-sx**2)
		bb=(sxx*sy-sxy*sx)/(sm*sxx-sx**2)
		slope=-aa
		!
		!c ------ Slope of Tributary -----
		!
		if(j_conf.eq.1) then
			sxy=0.d0
			sx=0.d0
			sy=0.d0
			sxx=0.d0
			syy=0.d0
			do i=1,i_t1
				sx=sx+ss_x_t(i)
				sy=sy+eave_t(i)
				sxx=sxx+ss_x_t(i)**2
				sxy=sxy+ss_x_t(i)*eave_t(i)
			end do
			sm=dble(i_t1)
			aa=(sm*sxy-sx*sy)/(sm*sxx-sx**2)
			bb=(sxx*sy-sxy*sx)/(sm*sxx-sx**2)
			slope_t=-aa
			!
		else if(j_conf.ge.2) then
			sxy=0.d0
			sx=0.d0
			sy=0.d0
			sxx=0.d0
			syy=0.d0
			do j=j_t1+js1,j_t2+js2,jxd
				sx=sx+ss_x_t2(j)
				sy=sy+eave_t2(j)
				sxx=sxx+ss_x_t2(j)**2
				sxy=sxy+ss_x_t2(j)*eave_t2(j)
			end do
			sm=dble((j_t2-j_t1)*jxd)
			aa=(sm*sxy-sx*sy)/(sm*sxx-sx**2)
			bb=(sxx*sy-sxy*sx)/(sm*sxx-sx**2)
			slope_t=aa
		end if
		!
		!c ----- Width of Main Channel -----
		!
		width=0.d0
		do i=0,nx
			chb(i)=0.d0
			if(i.lt.i_t1.or.j_conf.ge.2) then
				jss1=j_m1+1
				jss2=j_m2
			else
				jss1=1
				jss2=ny
			end if
			do j=jss1,jss2
				if(ijobst(i,j)*ijobst(i,j-1).eq.0) then
					dnx=dsqrt((x(i,j)-x(i,j-1))**2+(y(i,j)-y(i,j-1))**2)
					chb(i)=chb(i)+dnx
				end if
			end do
			width=width+chb(i)
		end do
		width=width/dble(nx+1)
		!
		!c ----- Width of Tributary ------
		!
		if(j_conf.eq.1) then
			width_t=0.d0
			do i=0,i_t1
				chb_t(i)=0.d0
				do j=j_t1+1,j_t2
					if(ijobst(i,j)*ijobst(i,j-1).eq.0) then
						dnx=dsqrt((x(i,j)-x(i,j-1))**2+(y(i,j)-y(i,j-1))**2)
						chb_t(i)=chb_t(i)+dnx
					end if
				end do
				width_t=width_t+chb_t(i)
			end do
			width_t=width_t/dble(i_t1+1)
			!
		else if(j_conf.ge.2) then
			width_t=0.d0
			do j=j_t1,j_t2,jxd
				chb_t2(j)=0.d0
				do i=i_t1+1,i_t2
					if(ijobst(i,j)*ijobst(i-1,j).eq.0) then
						dny=dsqrt((x(i,j)-x(i-1,j))**2+(y(i,j)-y(i-1,j))**2)
						chb_t2(j)=chb_t2(j)+dny
					end if
				end do
				width_t=width_t+chb_t2(j)
			end do
			width_t=width_t/dble((j_t2-j_t1)*jxd+1)
		end if
		!
	end subroutine avgeo_t
end module avgeo_m

!----------------------------------------------------------------------------------------------------
module gcoefs_m

	use common_hh
	use common_cmxy
	use common_cmxiet
	use common_cmab
	use common_cmsr
	use common_cmdnx
	use common_cmxxyy

	real(8),dimension(:,:),allocatable :: x_xi, x_et, y_xi, y_et
	real(8),dimension(:,:),allocatable :: btmp

contains

	subroutine alloc_gcoefs_temp_variables
		implicit none

		allocate( x_xi(im,jm), x_et(im,jm), y_xi(im,jm), y_et(im,jm) )
		allocate( btmp(0:im,0:jm) )

		x_xi = 0.d0;	x_et = 0.d0
		y_xi = 0.d0;	y_et = 0.d0
		btmp = 0.d0

	end subroutine alloc_gcoefs_temp_variables

	subroutine gcoefs(iout)
		implicit none
		
		integer :: i,j

		real(8), parameter :: pi = 3.141592d0

		real(8), parameter :: ds00 = 0.001d0
		real(8), parameter :: dn00 = 0.001d0

		real(8) :: dx, dy, theta, x1, y1, x2, y2, x3, y3, x4, y4 &
			, dx1, dy1, dx2, dy2, ds1, ds2, ds12 &
			, x_xi0, y_xi0, x_et0, y_et0 &
			, x_xixi, y_xixi, x_xiet, y_xiet, x_etet, y_etet
		integer :: iout, m, l

		dx=0.d0;	dy=0.d0;	theta=0.d0
		!
		do i=1,nx
			do j=0,ny
				ds(i,j) = dsqrt( (x(i,j)-x(i-1,j))**2 + (y(i,j)-y(i-1,j))**2 )
				ds(i,j) = max(ds(i,j),ds00)
				xi_r(i,j) = dxi / ds(i,j)
			end do
		end do
		!
		do i = 1, nx-1
			do j = 1, ny
				xi_r_up(i,j)=(xi_r(i,j)+xi_r(i,j-1)+xi_r(i+1,j)+xi_r(i+1,j-1))*.25d0
			end do
		end do
		do j = 1, ny
			xi_r_up( 0,j) = ( xi_r( 1,j) + xi_r( 1,j-1) ) * 0.5d0
			xi_r_up(nx,j) = ( xi_r(nx,j) + xi_r(nx,j-1) ) * 0.5d0
		end do

		!
		do j=1,ny
			do i=1,nx-1
				dsy(i,j)=(ds(i,j)+ds(i+1,j)+ds(i,j-1)+ds(i+1,j-1))*0.25d0
			end do
			dsy(0,j)=dsy(1,j)*0.5d0
			dsy(nx,j)=dsy(nx-1,j)*0.5d0
		end do

		!
		do i=0,nx
			do j=1,ny
				dn(  i,j) = dsqrt((x(i,j)-x(i,j-1))**2+(y(i,j)-y(i,j-1))**2)
				dn(  i,j) = max(dn(i,j),dn00)
				et_r(i,j) = det / dn(i,j)
			end do
		end do
		!
		do i=1,nx
			do j=1,ny-1
				et_r_vp(i,j)=(et_r(i,j)+et_r(i-1,j)+et_r(i,j+1)+et_r(i-1,j+1))*.25d0
			end do
			et_r_vp(i, 0)=(et_r(i, 1)+et_r(i-1, 1))*.5d0
			et_r_vp(i,ny)=(et_r(i,ny)+et_r(i-1,ny))*.5d0
		end do
		!
		do i=1,nx
			do j=1,ny-1
				dnx(i, j) = ( dn(i,j)+dn(i,j+1)+dn(i-1,j)+dn(i-1,j+1) ) * 0.25d0
			end do
			dnx(i, 0) = dnx(i,   1) * 0.5d0
			dnx(i,ny) = dnx(i,ny-1) * 0.5d0
		end do
		!
		do i=1,nx
			do j=1,ny
				x_xi(i,j) = (x(i,j)+x(i,j-1)-x(i-1,j)-x(i-1,j-1))/(2.d0*dxi)
				x_et(i,j) = (x(i,j)+x(i-1,j)-x(i,j-1)-x(i-1,j-1))/(2.d0*det)
				y_xi(i,j) = (y(i,j)+y(i,j-1)-y(i-1,j)-y(i-1,j-1))/(2.d0*dxi)
				y_et(i,j) = (y(i,j)+y(i-1,j)-y(i,j-1)-y(i-1,j-1))/(2.d0*det)
				sj(i,j) = 1.d0 / ( x_xi(i,j)*y_et(i,j) - x_et(i,j)*y_xi(i,j) )
				xi_x(i,j)=   sj(i,j) * y_et(i,j)
				xi_y(i,j)= - sj(i,j) * x_et(i,j)
				et_x(i,j)= - sj(i,j) * y_xi(i,j)
				et_y(i,j)=   sj(i,j) * x_xi(i,j)
			end do
		end do
		!
		if(jrep == 1) then
			do j = 1, ny
				sj(   0,j)=sj(nx-3,j)
				sj(nx+1,j)=sj(   4,j)
				xi_x(   0,j)=xi_x(nx-3,j)
				xi_x(nx+1,j)=xi_x(   4,j)
				xi_y(   0,j)=xi_y(nx-3,j)
				xi_y(nx+1,j)=xi_y(   4,j)
				et_x(   0,j)=et_x(nx-3,j)
				et_x(nx+1,j)=et_x(   4,j)
				et_y(   0,j)=et_y(nx-3,j)
				et_y(nx+1,j)=et_y(   4,j)
			end do
		else
			do j = 1, ny
				sj(   0,j)=sj( 1,j)
				sj(nx+1,j)=sj(nx,j)
				xi_x(   0,j)=xi_x( 1,j)
				xi_x(nx+1,j)=xi_x(nx,j)
				xi_y(   0,j)=xi_y( 1,j)
				xi_y(nx+1,j)=xi_y(nx,j)
				et_x(   0,j)=et_x( 1,j)
				et_x(nx+1,j)=et_x(nx,j)
				et_y(   0,j)=et_y( 1,j)
				et_y(nx+1,j)=et_y(nx,j)
			end do
		end if
		do i = 0, nx+1
			sj(i,   0)=sj(i, 1)
			sj(i,ny+1)=sj(i,ny)
			xi_x(i,   0)=xi_x(i, 1)
			xi_x(i,ny+1)=xi_x(i,ny)
			xi_y(i,   0)=xi_y(i, 1)
			xi_y(i,ny+1)=xi_y(i,ny)
			et_x(i,   0)=et_x(i, 1)
			et_x(i,ny+1)=et_x(i,ny)
			et_y(i,   0)=et_y(i, 1)
			et_y(i,ny+1)=et_y(i,ny)
		end do
		!
		do i=0,nx
			do j=0,ny
				if(i == 0) then
					x_xi0 = (x(i+1,j)-x(i,j))/dxi
					y_xi0 = (y(i+1,j)-y(i,j))/dxi
				else if(i == nx) then
					x_xi0 = (x(i,j)-x(i-1,j))/dxi
					y_xi0 = (y(i,j)-y(i-1,j))/dxi
				else
					x_xi0 = (x(i+1,j)-x(i-1,j))/(2.d0*dxi)
					y_xi0 = (y(i+1,j)-y(i-1,j))/(2.d0*dxi)
				end if
				if(j == 0) then
					x_et0 = (x(i,j+1)-x(i,j))/det
					y_et0 = (y(i,j+1)-y(i,j))/det
				else if(j == ny) then
					x_et0 = (x(i,j)-x(i,j-1))/det
					y_et0 = (y(i,j)-y(i,j-1))/det
				else
					x_et0 = (x(i,j+1)-x(i,j-1))/(2.d0*det)
					y_et0 = (y(i,j+1)-y(i,j-1))/(2.d0*det)
				end if
				sj0(i,j)=1.d0 / ( x_xi0*y_et0 - x_et0*y_xi0 )
				xi_x0(i,j) =  sj0(i,j)*y_et0
				xi_y0(i,j) = -sj0(i,j)*x_et0
				et_x0(i,j) = -sj0(i,j)*y_xi0
				et_y0(i,j) =  sj0(i,j)*x_xi0
			end do
		end do
		!
		! ---- coefs at u grid point ------
		do i=1,nx-1
			do j=1,ny
				xi_x_up(i,j) = (xi_x(i,j)+xi_x(i+1,j))*.5d0
				et_x_up(i,j) = (et_x(i,j)+et_x(i+1,j))*.5d0
				xi_y_up(i,j) = (xi_y(i,j)+xi_y(i+1,j))*.5d0
				et_y_up(i,j) = (et_y(i,j)+et_y(i+1,j))*.5d0
				beta(1,i,j)=xi_x_up(i,j)**2+xi_y_up(i,j)**2
				beta(2,i,j)=xi_x_up(i,j)*et_x_up(i,j)+xi_y_up(i,j)*et_y_up(i,j)
				x_xixi=(x_xi(i+1,j)-x_xi(i,j))/dxi
				y_xixi=(y_xi(i+1,j)-y_xi(i,j))/dxi
				x_xiet=(x_et(i+1,j)-x_et(i,j))/dxi
				y_xiet=(y_et(i+1,j)-y_et(i,j))/dxi
				if(j == 1) then
					x_etet=(x_et(i+1,j+1)+x_et(i,j+1)-x_et(i+1,j)-x_et(i,j))/(2.d0*det)
					y_etet=(y_et(i+1,j+1)+y_et(i,j+1)-y_et(i+1,j)-y_et(i,j))/(2.d0*det)
				else if(j == ny) then
					x_etet=(x_et(i+1,j)+x_et(i,j)-x_et(i+1,j-1)-x_et(i,j-1))/(2.d0*det)
					y_etet=(y_et(i+1,j)+y_et(i,j)-y_et(i+1,j-1)-y_et(i,j-1))/(2.d0*det)
				else
					x_etet=(x_et(i+1,j+1)+x_et(i,j+1)-x_et(i+1,j-1)-x_et(i,j-1))/(4.d0*det)
					y_etet=(y_et(i+1,j+1)+y_et(i,j+1)-y_et(i+1,j-1)-y_et(i,j-1))/(4.d0*det)
				end if
				alpha(1,i,j)=		xi_x_up(i,j)*x_xixi+xi_y_up(i,j)*y_xixi
				alpha(2,i,j)=2.d0*(xi_x_up(i,j)*x_xiet+xi_y_up(i,j)*y_xiet)
				alpha(3,i,j)=		xi_x_up(i,j)*x_etet+xi_y_up(i,j)*y_etet
			end do
		end do

		!
		!c ---- coefs at v grid point ------
		!
		do i = 2, nx-1
			do j = 1, ny-1
				xi_x_vp(i,j) = ( xi_x(i,j) + xi_x(i,j+1) ) * 0.5d0
				et_x_vp(i,j) = ( et_x(i,j) + et_x(i,j+1) ) * 0.5d0
				xi_y_vp(i,j) = ( xi_y(i,j) + xi_y(i,j+1) ) * 0.5d0
				et_y_vp(i,j) = ( et_y(i,j) + et_y(i,j+1) ) * 0.5d0
				beta(3,i,j)=et_x_vp(i,j)*xi_x_vp(i,j)+et_y_vp(i,j)*xi_y_vp(i,j)
				beta(4,i,j)=et_y_vp(i,j)**2+et_x_vp(i,j)**2
				x_xixi = ( x_xi(i+1,j+1) + x_xi(i+1,j)- x_xi(i-1,j+1) - x_xi(i-1,j) ) / (4.d0*dxi)
				y_xixi = ( y_xi(i+1,j+1) + y_xi(i+1,j)- y_xi(i-1,j+1) - y_xi(i-1,j) ) / (4.d0*dxi)
				!e090211d  x_xiet = ( x_et(i  ,j+1) - x_et(i  ,j) ) / det
				!e090211d  y_xiet = ( y_et(i  ,j+1) - y_et(i  ,j) ) / det
				x_xiet = ( x_xi(i  ,j+1) - x_xi(i  ,j) ) / det      !e090211d
				y_xiet = ( y_xi(i  ,j+1) - y_xi(i  ,j) ) / det      !e090211d
				x_etet = ( x_et(i  ,j+1) - x_et(i  ,j) ) / det
				y_etet = ( y_et(i  ,j+1) - y_et(i  ,j) ) / det
				alpha(4,i,j) =      et_x_vp(i,j)*x_xixi+et_y_vp(i,j)*y_xixi
				alpha(5,i,j) = 2.d0*( et_x_vp(i,j)*x_xiet+et_y_vp(i,j)*y_xiet )
				alpha(6,i,j) =      et_x_vp(i,j)*x_etet+et_y_vp(i,j)*y_etet
			end do
		end do

		!
		!c ------------------ cos(theta) ---- defined at cell-center ---
		!
		do i = 1, nx
			do j = 1, ny
				!       x1 = ( x(i,j) +x(i,j-1) +x(i-1,j) +x(i-1,j-1) )*0.25   !e090211c
				!       y1 = ( y(i,j) +y(i,j-1) +y(i-1,j) +y(i-1,j-1) )*0.25   !e090211c
				x1 = ( x(i-1,j  ) + x(i-1,j-1) ) * 0.5d0                 !e090211c
				y1 = ( y(i-1,j  ) + y(i-1,j-1) ) * 0.5d0                 !e090211c
				x2 = ( x(i  ,j  ) + x(i  ,j-1) ) * 0.5d0
				y2 = ( y(i  ,j  ) + y(i  ,j-1) ) * 0.5d0
				x3 = ( x(i  ,j  ) + x(i-1,j  ) ) * 0.5d0
				y3 = ( y(i  ,j  ) + y(i-1,j  ) ) * 0.5d0
				x4 = ( x(i  ,j-1) + x(i-1,j-1) ) * 0.5d0                 !e090211c
				y4 = ( y(i  ,j-1) + y(i-1,j-1) ) * 0.5d0                 !e090211c
				dx1=x2 - x1
				dy1=y2 - y1
				!       dx2=x3 - x1                                            !e090211c
				!       dy2=y3 - y1                                            !e090211c
				dx2=x3 - x4                                            !e090211c
				dy2=y3 - y4                                            !e090211c
				ds1=dsqrt((x2-x1)**2+(y2-y1)**2)
				!       ds2=dsqrt((x3-x1)**2+(y3-y1)**2)                        !e090211c
				ds2=dsqrt((x3-x4)**2+(y3-y4)**2)                        !e090211c
				ds12=ds1*ds2
				cos_t(i,j)=(dx1*dx2+dy1*dy2)/ds12
			end do
		end do
		!
		!c ------------------ sin(theta) ---- defined at u-position -----
		!
		do i=1,nx-1
			do j=1,ny
				x1=(x(i,j)+x(i,j-1)+x(i-1,j)+x(i-1,j-1))*.25d0
				x2=(x(i,j)+x(i,j-1)+x(i+1,j)+x(i+1,j-1))*.25d0
				y1=(y(i,j)+y(i,j-1)+y(i-1,j)+y(i-1,j-1))*.25d0
				y2=(y(i,j)+y(i,j-1)+y(i+1,j)+y(i+1,j-1))*.25d0
				x3=x(i,j-1)
				x4=x(i,j)
				y3=y(i,j-1)
				y4=y(i,j)
				dx1=x2-x1
				dy1=y2-y1
				dx2=x4-x3
				dy2=y4-y3
				ds1=dsqrt((x2-x1)**2+(y2-y1)**2)
				ds2=dsqrt((x4-x3)**2+(y4-y3)**2)
				ds12=ds1*ds2
				sin_t(i,j)=(dx1*dy2-dx2*dy1)/ds12
			end do
		end do
		!
	end subroutine gcoefs
end module gcoefs_m

!----------------------------------------------------------------------------------------------------
module bound_m

	use common_hh
	use common_cmsui
	use common_cmconf1	!h101019 conf
contains

	subroutine bound_u(u)
		implicit none

		integer :: i,j
		real(8),intent(inout) :: u(0:im,0:jm)
!
		if(jrep == 0) then
!$omp do private(j)
			do j=1, ny
				u(nx,j) = u(nx-1,j)
				if(u(nx,j) < 0.d0) u(nx,j) = 0.d0
			end do
		else
!$omp do private(j)
			do j=1,ny
				u(   0,j) = u(nx-3,j)
				u(   1,j) = u(nx-2,j)
				u(nx-1,j) = u(   2,j)
				u(nx  ,j) = u(   3,j)
			end do
		end if
		!
!$omp do private(i,j)
		do j=1,ny
			do i=0,nx
				u(i,j) = u(i,j)*ijobst_u(i,j)
			end do
		end do
	end subroutine bound_u
	!
	!--------------------------------------------------------------------
	subroutine bound_v(v)                              ! B.C. for v
		implicit none

		integer :: i,j
		real(8),intent(inout) :: v(0:im,0:jm)
		!
		if(jrep == 0) then
!$omp do private(j)
			do j=1, ny-1
				v(nx,j) = v(nx-1,j)
			end do
		else
!$omp do private(j)
			do j=1, ny-1
				v(   0,j) = v(nx-3,j)
				v(   1,j) = v(nx-2,j)
				v(nx-1,j) = v(   2,j)
				v(nx  ,j) = v(   3,j)
			end do
		end if
		!

		if( j_conf<=1 ) then
!$omp do private(i)
			do i=1,nx
				v(i, 0) = 0.d0
			v(i,ny) = 0.d0
		end do
	else if( j_conf==2 ) then
!$omp do private(i)
		do i=1,nx
			v(i,0) = 0.d0
			if( i<=i_t1 .or. i>i_t2 ) then
				v(i,ny) = 0.d0
			end if
		end do
	else if( j_conf==3 ) then
!$omp do private(i)
		do i=1,nx
			v(i,ny) = 0.d0
			if( i<=i_t1 .or. i>i_t2 ) then
				v(i,0) = 0.d0
			end if
		end do
	end if

!$omp do private(i,j)
		do j=0,ny
			do i=1,nx
				v(i,j) = v(i,j)*ijobst_v(i,j)
			end do
		end do

	end subroutine bound_v
	!
	!--------------------------------------------------------------------
	subroutine bound_c(c)
		implicit none

		integer :: i,j
		real(8),intent(inout) :: c(0:im,0:jm)

		if (jrep == 1) then
!$omp do private(i,j)
			do j = 1, ny
				do i = 0, 1
					c(i,j) = c(i+nx-3,j)
				end do
				do i=nx-1, nx+1
					c(i,j) = c(i-nx+3,j)
				end do
			end do
		end if

		if( j_conf<2 ) then
!$omp do private(i)
			do i=0,nx+1
				c(i,   0) = 0.d0
				c(i,ny+1) = 0.d0
			end do
		else
!$omp do private(i)
			do i=0,nx+1
				if( i<i_t1+1 .or. i>i_t2 ) then
					c(i,j_t2+js1) = 0.d0
				end if
			end do
		end if

		!
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				c(i,j) = c(i,j)*(1-ijo_in(i,j))
			end do
		end do

	end subroutine bound_c
	!
	!--------------------------------------------------------------------
	subroutine bound_ke(yk,yep)
		implicit none
		
		integer :: i,j
		real(8),intent(inout) :: yk(0:im,0:jm),yep(0:im,0:jm)
		!
		if (jrep == 1) then
!$omp do private(i,j)
			do j=1,ny
				do i=0,1
					yk(i,j)=yk(i+nx-3,j)
					yep(i,j)=yep(i+nx-3,j)
				end do
				do i=nx-1,nx+1
					yk(i,j)=yk(i-nx+3,j)
					yep(i,j)=yep(i-nx+3,j)
				end do
			end do
		end if

!$omp do private(i)
		do i=0,nx+1
			yk(i,   0)=0.d0
			yk(i,ny+1)=0.d0
			yep(i,   0)=0.d0
			yep(i,ny+1)=0.d0
		end do
		!
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				if(ijo_in(i,j) == 1) then
					yk(i,j)=0.d0
					yep(i,j)=0.d0
				end if
			end do
		end do
	end subroutine bound_ke
	!
	!--------------------------------------------------------------------
	subroutine bound_phke(strain,ph,pkv,pev)
		implicit none

		integer :: i,j
		real(8),intent(inout) :: strain(0:im,0:jm),ph(0:im,0:jm),pkv(0:im,0:jm),pev(0:im,0:jm)
		!
		if (jrep == 1) then
!$omp do private(i,j)
			do j=1,ny
				do i=0,1
					strain(i,j)=strain(i+nx-3,j)
					ph(i,j)=ph(i+nx-3,j)
					pkv(i,j)=pkv(i+nx-3,j)
					pev(i,j)=pev(i+nx-3,j)
				end do
				do i=nx-1,nx+1
					strain(i,j)=strain(i-nx+3,j)
					ph(i,j)=ph(i-nx+3,j)
					pkv(i,j)=pkv(i-nx+3,j)
					pev(i,j)=pev(i-nx+3,j)
				end do
			end do
		end if
		return
	end subroutine bound_phke
	!
	!------------------------------------------------------
	subroutine bound_h(h,hs,eta)
		implicit none

		integer :: i,j
		real(8),intent(inout) :: h(  0:im,0:jm),hs(0:im,0:jm)
		real(8),intent(in)    :: eta(0:im,0:jm)
		!
		if(jrep == 1) then
!$omp do private(i,j)
			do j=1, ny
				do i=0 , 1
					hs(i,j)=hs(i+nx-3,j)
					h( i,j)=hs(i,j) + eta(i,j)
				end do
				do i = nx-1, nx+1
					hs(i,j) = hs(i-nx+3,j)
					h( i,j) = hs(i,j) + eta(i,j)
				end do
			end do
		end if

!$omp do private(i)
		do i = 0, nx+1
			h(i,   0) = h(i, 1)
			h(i,ny+1) = h(i,ny)
		end do
		!
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				if(ijo_in(i,j) == 1) hs(i,j) = hmin
			end do
		end do			!h101019 conf?

	end subroutine bound_h

	subroutine boundi_scalar( ff )
		implicit none
		
		integer :: i, j
		real(8), dimension(0:im,0:jm), intent(inout) :: ff
		
		if( jrep==1 ) then
!$omp do private(i,j)
			do j=1,ny
				do i=0, 1
					ff(i,j) = ff(i+nx-3,j)
				end do
				do i=nx-1, nx+1
					ff(i,j) = ff(i-nx+3,j)
				end do
			end do
		else
!$omp do private(j)
			do j=1,ny
				ff(   0,j) = ff( 1,j)
				ff(nx+1,j) = ff(nx,j)
			end do
		end if
		
	end subroutine boundi_scalar

	subroutine boundj_scalar( ff )
		implicit none
		
		integer :: i, j
		real(8), dimension(0:im,0:jm), intent(inout) :: ff
		
!$omp do private(i)
		do i=1,nx
			ff(i,   0) = 0.d0
			ff(i,ny+1) = 0.d0
		end do

		if( j_conf>=2 ) then
!$omp do private(i)
			do i=i_t1+1,i_t2
				if( ijo_in(i,j_t2+js2)==0 ) then
					ff(i,j_t2+js1) = ff(i,j_t2+js2)
				end if
			end do
		end if
		
	end subroutine boundj_scalar

	subroutine bound_up( ff )
		implicit none

		integer :: i, j
		real(8), dimension(0:im,0:jm), intent(inout) :: ff

		if( jrep==0 ) then
!$omp do private(j)
			do j=1,ny
				ff( 0,j) = ff(   1,j)
				ff(nx,j) = ff(nx-1,j)
			end do
		else
!$omp do private(j)
			do j=1,ny
				ff(   0,j) = ff(nx-3,j)
				ff(   1,j) = ff(nx-2,j)
				ff(nx-1,j) = ff(   2,j)
				ff(nx  ,j) = ff(   3,j)
			end do
		end if

	end subroutine bound_up

end module bound_m

!----------------------------------------------------------------------------------------------------
!
!----------------------------------------------------------------------------------------------------
module initl_m
  
  use common_hh
  use common_cmuv
  use common_cmhq
  use common_cmgrd
  use common_cmxy
  use common_cmtst
  use common_cmc
  use common_cmquv
  use common_cmqxe
  use common_cmsui
  use common_cmsn
  use common_cmet
  use common_cmsnu
  use common_cmave
  use common_cmke
  use common_cmdnx
  use common_cmkep
  use common_cmsr
  use bound_m
  use common_cmave_t		!h101019 conf
  use common_cmave_t2		!h101019 conf
  use common_cmconf1		!h101019 conf

  real(8),dimension(:),allocatable :: h_a, s_center, a_a, al_a, sie
  real(8),dimension(:),allocatable :: h_a_t,s_center_t,a_a_t,al_a_t,sie_t
  real(8),dimension(:),allocatable :: h_a_t2,s_center_t2,a_a_t2,al_a_t2,sie_t2
  real(8),dimension(:,:),allocatable :: uti

contains

  subroutine alloc_initl_temp_variables
    implicit none
    
    allocate( h_a(0:im), s_center(0:im) )
    allocate( a_a(0:im), al_a(0:im), sie(0:im) )
    allocate( h_a_t(0:im), s_center_t(0:im) )
    allocate( a_a_t(0:im), al_a_t(0:im), sie_t(0:im) )
    allocate( h_a_t2(0:jm), s_center_t2(0:jm) )
    allocate( a_a_t2(0:jm), al_a_t2(0:jm), sie_t2(0:jm) )
    allocate( uti(0:im,0:jm) )
    
    h_a=0.d0; uti=0.d0; s_center=0.d0; a_a=0.d0; al_a=0.d0; sie=0.d0
    h_a_t=0.d0;  s_center_t=0.d0;  a_a_t=0.d0;  al_a_t=0.d0;  sie_t=0.d0
    h_a_t2=0.d0; s_center_t2=0.d0; a_a_t2=0.d0; al_a_t2=0.d0; sie_t2=0.d0
  
  end subroutine alloc_initl_temp_variables
  
  subroutine initl(qp,qp_t,hnx,us0,snu_0,ye00,yk00,h0 &
       ,i_flow,slope,slope_t,h_slope,h_slope_t,x_bk &
       ,h_slope_1,h_slope_2,h_slope_12t)		!h101019 conf
    
    implicit none
    integer :: i,j

    real(8) :: qp, qp_t, hnx, us0, snu_0, ye00, yk00, h0 &
         , slope, slope_t, h_slope, h_slope_t, x_bk, h_slope_1, h_slope_2, h_slope_12t &
         , qp_ttl, xfdse, dxf, hup, hdw, hwt, qd
    real(8) :: qpp, hs00, u_hp, bs, qu00, hmin01, b1, b2, dx, h_a1, dy, hsup, hsvp, qdiff
    integer :: i_flow, nym_m, nym_t, nxm_t, nc, jss1, jss2

    !
    qp_ttl=qp+qp_t
    !
    ! ------ center line length ------
    !
    if(j_conf.eq.0) then		!h101019
       s_center(0)=0.d0
       do i=1,nx
          s_center(i) = s_center(i-1) + ds(i,nym)
       end do
    else
       nym_m=(j_m1+j_m2)/2
       nym_t=(j_t1+j_t2)/2
       nxm_t=(i_t1+i_t2)/2
       s_center(0)=0.d0
       s_center_t(0)=0.d0
       s_center_t2(j_t1)=0.d0
       s_center_t2(j_t2)=0.d0
       do i=1,i_t2
          s_center(i)=s_center(i-1)+ds(i,nym_m)
          s_center_t(i)=s_center_t(i-1)+ds(i,nym_t)
       end do
       do j=j_t1+jxd,j_t2,jxd
          s_center_t2(j)=s_center_t2(j-jxd)+dn(nxm_t,j)
       end do
       do i=i_t2+1,nx
          s_center(i)=s_center(i-1)+ds(i,nym)
       end do
    end if
    !
    h_a(nx)=hnx
    !
    ! ------ constant slope or lien ------
    !  Main channel
    if(i_flow <= 1) then
       xfdse = ds(nx,nym) * 0.5d0
       do i = nx-1, 1, -1
          if(j_conf.eq.0) then		!h101019
             dxf  = ( ds(i+1,nym) + ds(i,nym) ) * 0.5d0
          else 
             if(i.le.i_t2) then
                dxf = ( ds(i+1,nym_m)+ds(i,nym_m))* 0.5d0
             else
                dxf = ( ds(i+1,nym) + ds(i,nym))  * 0.5d0
             end if
          end if
          xfdse = xfdse + dxf
          if(i_flow == 0) then
             h_a(i) = h_a(i+1) + h_slope * dxf
          else if(xfdse <= x_bk) then
             h_a(i) = xfdse * h_slope_1 + hnx
          else
             h_a(i) = (xfdse-x_bk)*h_slope_2 + x_bk*h_slope_1 + hnx
          end if
       end do
       !
       !  Tributary			!h101019 conf
       if(j_conf.eq.1) then
          h_a_t(i_t1)=h_a(i_t1)
          do i=i_t1-1,1,-1
             dxf=(ds(i+1,nym_t)+ds(i,nym_t))*0.5d0
             if(i_flow.eq.0) then
                h_a_t(i)=h_a_t(i+1)+h_slope_t*dxf
             else
                h_a_t(i)=h_a_t(i+1)+h_slope_12t*dxf
             end if
          end do
          !
       else if(j_conf.ge.2) then
          h_a_t2(j_t1+js1)=h_a(nxm_t)
          do j=j_t1+js1+jxd,j_t2+js2,jxd
             dxf=(dn(nxm_t,j-jxd)+dn(nxm_t,j))*0.5d0
             if(i_flow.eq.0) then
                h_a_t2(j)=h_a_t2(j-jxd)+h_slope_t*dxf
             else
                h_a_t2(j)=h_a_t2(j-jxd)+h_slope_12t*dxf
             end if
          end do
       end if
       !
       ! ------ uniform flow ------
       !  Main channel
    else if(i_flow == 2) then
       do i = 1, nx-1
          nc  = 0
          hup = emax(i) + 5.d0 * h0
          hdw = emin(i)
201       hwt = ( hup + hdw ) * 0.5d0
          h_a(i) = hwt
          nc = nc + 1
          qd = 0.d0
          a_a(i) = 0.d0
          !
          if(j_conf.eq.0) then		!h101019 conf
             jss1=1
             jss2=ny
             qpp=qp
          else if(j_conf.eq.1) then
             jss1=1
             if(i.lt.i_t2) then
                jss2=j_m2
                qpp=qp
             else
                jss2=ny
                qpp=qp_ttl
             end if
          else if(j_conf.ge.2) then
             jss1=j_m1+1
             if(i.lt.i_t2) then
                jss2=j_m2
                qpp=qp
             else
                jss2=j_m2
                qpp=qp_ttl
             end if
          end if
          do j=jss1,jss2
             !         do j = 1, ny
             hs00 = hwt - eta(i,j)
             if(hs00 > hmin .and. ijo_in(i,j)==0 ) then
                u_hp=1.d0 / snmm(i,j) * hs00**(2.d0/3.d0) * dsqrt(slope)
                bs   = ( dn(i,j) + dn(i-1,j) ) * 0.5d0
                qu00 = hs00*u_hp * bs
                qd   = qd + qu00
                a_a(i) = a_a(i) + hs00 * bs
             end if
          end do
          if(dabs((qd-qpp)/qpp) < 1e-3) goto 101		!h101019 conf
          if(nc > 500) then
             write(*,*) "Uniform Flow Calculation didn't Converge(main)"
             stop
          end if
          if(qd > qpp) then
             hup = hwt
          else
             hdw = hwt
          end if
          goto 201
101       continue
       end do
       !
       !  Tributary			!h101019 conf
       if(j_conf.eq.1) then
          do i=1,i_t1
             nc=0
             hup=emax_t(i)+5.d0*h0
             hdw=emin_t(i)
321          hwt=(hup+hdw)*.5d0
             h_a_t(i)=hwt
             nc=nc+1
             qd=0.d0
             a_a_t(i)=0.d0
             do j=j_t1+1,j_t2
                hs00=hwt-eta(i,j)
                if(hs00.gt.hmin .and. ijo_in(i,j)==0 ) then
                   u_hp=1.d0/snmm(i,j) &
                        *hs00**(2.d0/3.d0)*dsqrt(slope_t)
                   bs=(dn(i,j)+dn(i-1,j))*.5
                   qu00=hs00*u_hp*bs
                   qd=qd+qu00
                   a_a_t(i)=a_a_t(i)+hs00*bs
                end if
             end do
             if(dabs((qd-qp_t)/qp_t).lt.1e-3) goto 331
             if(nc.gt.500) then
                write(*,*) "uniform flow calculation didn't converge(tri)"
                stop
             end if
             if(qd.gt.qp_t) then
                hup=hwt
             else
                hdw=hwt
             end if
             goto 321
331          continue
          end do
          !
       else if(j_conf.ge.2) then
          do j=j_t1+js1,j_t2+js2,jxd
             nc=0
             hup=emax_t2(j)+5.d0*h0
             hdw=emin_t2(j)
322          hwt=(hup+hdw)*.5d0
             h_a_t2(j)=hwt
             nc=nc+1
             qd=0.d0
             a_a_t2(j)=0.d0
             do i=i_t1+1,i_t2
                hs00=hwt-eta(i,j)
                if(hs00.gt.hmin .and. ijo_in(i,j)==0 ) then
                   u_hp=1.d0/snmm(i,j)*hs00**(2.d0/3.d0)*dsqrt(slope_t)
                   bs=(ds(i,j)+ds(i,j-1))*.5d0
                   qu00=hs00*u_hp*bs
                   qd=qd+qu00
                   a_a_t2(i)=a_a_t2(i)+hs00*bs
                end if
             end do
             if(dabs((qd-qp_t)/qp_t).lt.1e-3) goto 332
             if(nc.gt.500) then
                write(*,*) "uniform flow calculation didn't converge(tri)"
                stop
             end if
             if(qd.gt.qp_t) then
                hup=hwt
             else
                hdw=hwt
             end if
             goto 322
332          continue
          end do
       end if
       !
       ! ------ non uniform flow ------
       ! Main channel
    else if( i_flow == 3 ) then
       hmin01 = hmin * 0.01d0
       do i = nx, 1, -1
          a_a(i) = 0.d0
          b1 = 0.d0
          b2 = 0.d0
          !
          if(j_conf.eq.0) then		!h101019 conf
             jss1=1
             jss2=ny
             qpp=qp
          else if(j_conf.eq.1) then
             jss1=1
             if(i.lt.i_t2) then
                jss2=j_m2
                qpp=qp
             else
                jss2=ny
                qpp=qp_ttl
             end if
          else if(j_conf.ge.2) then
             jss1=j_m1+1
             if(i.lt.i_t2) then
                jss2=j_m2
                qpp=qp
             else
                jss2=j_m2
                qpp=qp_ttl
             end if
          end if
          do j=jss1,jss2
             !        do j = 1, ny
             hs(i,j) = h_a(i) - eta(i,j)
             if( hs(i,j) > 0.d0 ) then
                bs = ( dn(i,j) + dn(i-1,j) ) * 0.5d0
                a_a(i) = a_a(i) + hs(i,j) * bs
                b1 = b1 + bs * hs(i,j)**3 / snmm(i,j)**3
                b2 = b2 + bs * hs(i,j)**(5.d0/3.d0) / snmm(i,j)
             end if
          end do
          al_a(i) = b1    / b2**3
          sie( i) = qpp**2 / b2**2	!h101019 conf
          !
          if(i > 1) then
             h_a(i-1) = h_a(i)
             nc = 0
301          continue
             a_a(i-1) = 0.d0
             b1 = 0.d0
             b2 = 0.d0
             !
             if(j_conf.eq.0) then		!h101019 conf
                jss1=1
                jss2=ny
                qpp=qp
             else if(j_conf.eq.1) then
                jss1=1
                if(i.lt.i_t2) then
                   jss2=j_m2
                   qpp=qp
                else
                   jss2=ny
                   qpp=qp_ttl
                end if
             else if(j_conf.ge.2) then	!h101104 debug eq > ge
                jss1=j_m1+1
                if(i.lt.i_t2) then
                   jss2=j_m2
                   qpp=qp
                else
                   jss2=j_m2
                   qpp=qp_ttl
                end if
             end if
             do j=jss1,jss2
                !         do j = 1, ny
                hs(i-1,j) = h_a(i-1) - eta(i-1,j)
                if(hs(i-1,j) > 0.d0) then
                   bs = ( dn(i-1,j) + dn(i-2,j) ) * 0.5d0
                   a_a(i-1) = a_a(i-1) + hs(i-1,j) * bs
                   b1 = b1 + bs * hs(i-1,j)**3       / snmm(i-1,j)**3
                   b2 = b2 + bs * hs(i-1,j)**(5.d0/3.d0) / snmm(i-1,j)
                end if
             end do
             al_a(i-1) = b1    / b2**3
             sie( i-1) = qpp**2 / b2**2		!h101019 conf
             dx = ( ds(i,nym) + ds(i-1,nym) ) * 0.5d0
             h_a1 = h_a(i)+qpp**2/(2.*g)*(al_a(i)-al_a(i-1)) &
                  + dx * 0.5d0 * ( sie(i)+sie(i-1) )	!h101019 conf
             if(dabs(h_a1-h_a(i-1)) < hmin01) goto 300
             nc = nc + 1
             if(nc > 500) then
                write(*,*) "Non-uniform Flow Calculation didn't Converge(main)"
                stop
             end if
             h_a(i-1) = h_a1
             goto 301
300          continue
          end if
       end do
       !
       !  Tributary			!h101019 conf
       if(j_conf.eq.1) then
          h_a_t(i_t1)=h_a(i_t1)
          do i=i_t1,1,-1
             a_a_t(i)=0.d0
             b1=0.d0
             b2=0.d0
             do j=j_t1+1,j_t2
                hs(i,j)=h_a_t(i)-eta(i,j)
                if(hs(i,j).gt.0.) then
                   bs=(dn(i,j)+dn(i-1,j))*.5d0
                   a_a_t(i)=a_a_t(i)+hs(i,j)*bs
                   b1=b1+bs*hs(i,j)**3/snmm(i,j)**3
                   b2=b2+bs*hs(i,j)**(5.d0/3.d0)/snmm(i,j)
                end if
             end do
             al_a_t(i)=b1/b2**3
             sie_t(i)=qp_t**2/b2**2
             !
             if(i.gt.1) then
                h_a_t(i-1)=h_a_t(i)
                nc=0
371             continue
                a_a_t(i-1)=0.d0
                b1=0.d0
                b2=0.d0
                do j=j_t1+1,j_t2
                   hs(i-1,j)=h_a_t(i-1)-eta(i-1,j)
                   if(hs(i-1,j).gt.0.) then
                      bs=(dn(i-1,j)+dn(i-2,j))*.5d0
                      a_a_t(i-1)=a_a_t(i-1)+hs(i-1,j)*bs
                      b1=b1+bs*hs(i-1,j)**3/snmm(i-1,j)**3
                      b2=b2+bs*hs(i-1,j)**(5.d0/3.d0)/snmm(i-1,j)
                   end if
                end do
                al_a_t(i-1)=b1/b2**3
                sie_t(i-1)=qp_t**2/b2**2
                dx=(ds(i,nym_t)+ds(i-1,nym_t))*.5d0
                h_a1=h_a_t(i)+qp_t**2/(2.*g)*(al_a_t(i)-al_a_t(i-1)) &
                     + dx*.5d0*(sie_t(i)+sie_t(i-1))
                if(dabs(h_a1-h_a_t(i-1)).lt.hmin01) goto 372
                nc=nc+1
                if(nc.gt.500) then
                   write(*,*)"Non-uniform Flow Calculation didn't Converge(tri)"
                   stop
                end if
                h_a_t(i-1)=h_a1
                goto 371
372             continue
             end if
          end do
          !
       else if(j_conf.ge.2) then
          h_a_t2(j_t1+js1)=h_a(nxm_t)
          do j=j_t1+js1,j_t2+js2,jxd
             a_a_t2(j)=0.d0
             b1=0.d0
             b2=0.d0
             do i=i_t1+1,i_t2
                hs(i,j)=h_a_t2(j)-eta(i,j)
                if(hs(i,j).gt.0.) then
                   bs=(ds(i,j)+ds(i,j-1))*.5d0
                   a_a_t2(j)=a_a_t2(j)+hs(i,j)*bs
                   b1=b1+bs*hs(i,j)**3/snmm(i,j)**3
                   b2=b2+bs*hs(i,j)**(5.d0/3.d0)/snmm(i,j)
                end if
             end do
             al_a_t2(j)=b1/b2**3
             sie_t2(j)=qp_t**2/b2**2
             !
             if(j*jxd.lt.(j_t2+js2)*jxd) then	!h101104 debug +js2
                h_a_t2(j+jxd)=h_a_t2(j)
                nc=0
381             continue
                a_a_t2(j+jxd)=0.d0
                b1=0.d0
                b2=0.d0
                do i=i_t1+1,i_t2
                   hs(i,j+jxd)=h_a_t2(j+jxd)-eta(i,j+jxd)
                   if(hs(i,j+jxd).gt.0.) then
                      bs=(ds(i,j)+ds(i,j-1))*.5d0
                      a_a_t2(j+jxd)=a_a_t2(j+jxd)+hs(i,j+jxd)*bs
                      b1=b1+bs*hs(i,j+jxd)**3/snmm(i,j+jxd)**3
                      b2=b2+bs*hs(i,j+jxd)**(5.d0/3.d0)/snmm(i,j+jxd)
                   end if
                end do
                al_a_t2(j+jxd)=b1/b2**3
                sie_t2(j+jxd)=qp_t**2/b2**2
                dy=(dn(nxm_t,j)+dn(nxm_t,j+jxd))*.5d0
                h_a1=h_a_t2(j)+qp_t**2/(2.*g)*(al_a_t2(j)-al_a_t2(j+jxd)) &
                     + dx*.5d0*(sie_t2(j)+sie_t2(j+jxd))
                if(dabs(h_a1-h_a_t2(j+jxd)).lt.hmin01) goto 382
                nc=nc+1
                if(nc.gt.500) then
                   write(*,*)"Non-uniform Flow Calculation didn't Converge(tri)"
                   stop
                end if
                h_a_t2(j+jxd)=h_a1
                goto 381
382             continue
             end if
          end do
       end if
    end if
    !
    ! ------ h_a -> hs(i,j) ------
    !  Main channel
    do i=1,nx
       do j=1,ny
          hs(i,j) = h_a(i) - eta(i,j)
          if(hs(i,j) <= hmin) hs(i,j)=hmin
          h( i,j) = eta(i,j) + hs(i,j)
          hn(i,j) = h(  i,j)
       end do
    end do
    !
    !  Tributary			!h101019 conf
    if(j_conf.eq.1) then
       do i=1,i_t1
          do j=j_t1,j_t2
             hs(i,j)=h_a_t(i)-eta(i,j)
             if(hs(i,j).le.hmin) hs(i,j)=hmin
             h(i,j)=eta(i,j)+hs(i,j)
             hn(i,j)=h(i,j)
          end do
       end do
       !
    else if(j_conf.ge.2) then
       do i=i_t1+1,i_t2
          do j=j_t1+js1,j_t2+js2,jxd
             hs(i,j)=h_a_t2(j)-eta(i,j)
             if(hs(i,j).le.hmin) hs(i,j)=hmin
             h(i,j)=eta(i,j)+hs(i,j)
             hn(i,j)=h(i,j)
          end do
       end do
    end if
    !
    ! ------ initial Q , v ------
    !  Main channel
    do i = 1, nx-1
       qc(i) = 0.d0
       !
       if(j_conf.eq.0) then		!h101019 conf
          jss1=1
          jss2=ny
       else if(j_conf.eq.1) then
          jss1=1
          if(i.le.i_t1) then
             jss2=j_m2
          else
             jss2=ny
          end if
       else if(j_conf.ge.2) then
          jss1=j_m1+1
          jss2=j_m2
       end if
       do j=jss1,jss2
          !       do j = 1, ny
          hsup = ( hs(i,j) + hs(i+1,j) ) * 0.5d0
          uti(i,j) = hsup**(2.d0/3.d0) * dsqrt(slope) / sn_up(i,j)
          if(i_flow.eq.3) then
             uti(i,j) = hsup**(2.d0/3.d0) * dsqrt(sie(i)) / sn_up(i,j)	!h101019 debug
          end if
          yu( i,j) = uti(i,j) * xi_r_up(i,j)
          if((hs(i  ,j) <= hmin.and.yu(i,j) > 0.).or. &
               (hs(i+1,j) <= hmin.and.yu(i,j) < 0.) ) then
             uti(i,j) = 0.d0
             yu( i,j) = 0.d0
          end if
          if( ijobst(i,j) == 1.and.ijobst(i,j-1) == 1 ) then
             uti(i,j) = 0.d0
             yu( i,j) = 0.d0
          end if
          q_xi(i,j)=yu(i,j)*(hs(i,j)+hs(i+1,j)) / (sj(i,j)+sj(i+1,j))
          qu(  i,j)=yu(i,j)/xi_r_up(i,j)*(hs(i,j) + hs(i+1,j)) &
               *.5d0*dn(i,j)*sin_t(i,j)
          qc(i)    =qc(i) + qu(i,j)
       end do
    end do
    !
    !  Tributary			!h101019 conf
    if(j_conf.eq.1) then
       do i=1,i_t1-1			!h101104 debug -1
          qc_t(i)=0.d0
          do j=j_t1,j_t2
             hsup=(hs(i,j)+hs(i+1,j))*.5d0
             uti(i,j)=hsup**(2./3.)*dsqrt(slope_t)/sn_up(i,j)
             if(i_flow.eq.3) then
                uti(i,j)=hsup**(2./3.)*dsqrt(sie_t(i))/sn_up(i,j)
             end if
             yu(i,j)=uti(i,j)*xi_r_up(i,j)
             if((hs(i,j).le.hmin.and.yu(i,j).gt.0.).or. &
                  (hs(i+1,j).le.hmin.and.yu(i,j).lt.0.)) then
                uti(i,j)=0.d0
                yu(i,j)=0.d0
             end if
             if(ijobst(i,j).eq.1.and.ijobst(i,j-1).eq.1) then
                uti(i,j)=0.d0
                yu(i,j)=0.d0
             end if
             q_xi(i,j)=yu(i,j)*(hs(i,j)+hs(i+1,j))/(sj(i,j)+sj(i+1,j))
             qu(i,j)=yu(i,j)/xi_r_up(i,j)*(hs(i,j)+hs(i+1,j))*.5d0 &
                  *dn(i,j)*sin_t(i,j)
             qc_t(i)=qc_t(i)+qu(i,j)
          end do
       end do
       !
    else if(j_conf.ge.2) then
       do j=j_t1+jxd,j_t2-jxd,jxd		!h101104 debug +-jxd
          qc_t2(j)=0.
          do i=i_t1+1,i_t2
             hsvp=(hs(i,j)+hs(i,j+1))*.5d0
             vti(i,j)=hsvp**(2.d0/3.d0)*dsqrt(slope_t)/sn_vp(i,j)
             if(i_flow.eq.3) then
                vti(i,j)=hsvp**(2.d0/3.d0)*dsqrt(sie_t2(j))/sn_vp(i,j)
             end if
             yv(i,j)=-vti(i,j)*et_r_vp(i,j)*jxd
             if((hs(i,j).le.hmin.and.yv(i,j)*jxd.gt.0.).or. &
                  (hs(i,j+1).le.hmin.and.yv(i,j)*jxd.lt.0.)) then
                vti(i,j)=0.d0
                yv(i,j)=0.d0
             end if
             if(ijobst(i,j).eq.1.and.ijobst(i-1,j).eq.1) then
                vti(i,j)=0.d0
                yv(i,j)=0.d0
             end if
             q_et(i,j)=yv(i,j)*(hs(i,j)+hs(i,j+1))/(sj(i,j)+sj(i,j+1))
             qv(i,j)=yv(i,j)/et_r_vp(i,j)*(hs(i,j)+hs(i,j+1))*.5d0*ds(i,j)
             qc_t2(j)=qc_t2(j)+qv(i,j)
          end do
       end do
    end if
    !
    ! ------ è·äQï®ÉZÉãÇÃï‚ê≥ ------
    !  Main channel
    do i = 1, nx-1
       if(j_conf.eq.0) then		!h101104 conf
          jss1=1
          jss2=ny
          qpp=qp
       else if(j_conf.eq.1) then
          jss1=1
          if(i.lt.i_t2) then
             jss2=j_m2
             qpp=qp
          else
             jss2=ny
             qpp=qp_ttl
          end if
       else if(j_conf.ge.2) then
          jss1=j_m1+1
          if(i.lt.i_t2) then
             jss2=j_m2
             qpp=qp
          else
             jss2=j_m2
             qpp=qp_ttl
          end if
       end if
       !
       if( qpp == 0. ) then
          qc(i) = 0.d0
          do j=jss1,jss2
             !        do j = 1, ny		!h101104 conf
             yu(  i,j) = 0.d0
             uti( i,j) = 0.d0
             qu(  i,j) = 0.d0
             q_xi(i,j) = 0.d0
          end do
       else
          qdiff = qc(i) / qpp
          qc(i) = 0.d0
          do j=jss1,jss2
             !        do j = 1, ny		!h101104 conf
             yu(i,j) = yu(i,j) / qdiff
             if(hs(i  ,j) <= hmin.and.yun(i,j) > 0.) yu(i,j)=0.d0
             if(hs(i+1,j) <= hmin.and.yun(i,j) < 0.) yu(i,j)=0.d0
             if(ijobst(i,j) == 1.and.ijobst(i,j-1) == 1) then
                uti(i,j) = 0.d0
                yu( i,j) = 0.d0
             end if
             q_xi(i,j)=yu(i,j)*(hs(i,j)+hs(i+1,j))/(sj(i,j)+sj(i+1,j))
             qu(  i,j)=yu(i,j)/xi_r_up(i,j)*(hs(i,j)+hs(i+1,j))*.5d0 &
                  *dn(i,j)*sin_t(i,j)
             qc(i)    =qc(i) + qu(i,j)
          end do
       end if
    end do
    !
    !  Tributary channel
    if(j_conf.eq.1) then
       do i=1,i_t1-1			!h101104 debug -1
          if( qp_t == 0.d0 ) then
             qc_t(i) = 0.d0
             do j=j_t1,j_t2
                yu(  i,j) = 0.d0
                uti( i,j) = 0.d0
                qu(  i,j) = 0.d0
                q_xi(i,j) = 0.d0
             end do
          else
             qdiff = qc_t(i) / qp_t
             qc_t(i) = 0.d0
             do j=j_t1,j_t2
                yu(i,j) = yu(i,j) / qdiff
                if(hs(i  ,j) <= hmin.and.yun(i,j) > 0.d0) yu(i,j)=0.d0
                if(hs(i+1,j) <= hmin.and.yun(i,j) < 0.d0) yu(i,j)=0.d0
                if(ijobst(i,j) == 1.and.ijobst(i,j-1) == 1) then
                   uti(i,j) = 0.d0
                   yu( i,j) = 0.d0
                end if
                q_xi(i,j)=yu(i,j)*(hs(i,j)+hs(i+1,j))/(sj(i,j)+sj(i+1,j))
                qu(  i,j)=yu(i,j)/xi_r_up(i,j)*(hs(i,j)+hs(i+1,j))*.5d0*dn(i,j)*sin_t(i,j)
                qc_t(i)  =qc_t(i) + qu(i,j)
             end do
          end if
       end do
       !
    else if(j_conf.ge.2) then
       do j=j_t1+jxd,j_t2-jxd,jxd		!h101104 debug +-jxd
          if( qp_t == 0.d0 ) then
             qc_t2(j) = 0.d0
             do i=i_t1+1,i_t2
                yv(  i,j) = 0.d0
                vti( i,j) = 0.d0
                qv(  i,j) = 0.d0
                q_et(i,j) = 0.d0
             end do
          else
             qdiff = dabs(qc_t2(j) / qp_t)
             qc_t2(j) = 0.d0
             do i=i_t1+1,i_t2
                yv(i,j) = yv(i,j) / qdiff
                if(hs(i,j  ) <= hmin.and.yvn(i,j)*jxd > 0.d0) yv(i,j)=0.d0
                if(hs(i,j+1) <= hmin.and.yvn(i,j)*jxd < 0.d0) yv(i,j)=0.d0
                if(ijobst(i,j) == 1.and.ijobst(i-1,j) == 1) then
                   vti(i,j) = 0.d0
                   yv( i,j) = 0.d0
                end if
                q_et(i,j)=yv(i,j)*(hs(i,j)+hs(i,j+1))/(sj(i,j)+sj(i,j+1))
                qv(  i,j)=yv(i,j)/et_r_vp(i,j)*(hs(i,j)+hs(i,j+1))*.5d0*ds(i,j)
                qc_t2(j) =qc_t2(j) + qv(i,j)
             end do
          end if
       end do
    end if
    
    !
    qc(0)  = qp
    qc_t(0)  = qp_t		!h101019 conf
    qc_t2(j_t2)  = qp_t	!h101019 conf
    qc(nx) = qc(nx-1)
    qc_t(i_t1)  = qp_t		!h101104 conf
    qc_t2(j_t1) = qp_t		!h101104 conf
    do j = 1, ny
       qu(   0,j) = qu(     1,j)
       q_xi( 0,j) = q_xi(   1,j)
       uti(  0,j) = uti(    1,j)
       yu(   0,j) = yu(     1,j)
       qu(  nx,j) = qu(  nx-1,j)
       q_xi(nx,j) = q_xi(nx-1,j)
       yu(  nx,j) = yu(  nx-1,j)
       uti( nx,j) = uti( nx-1,j)
       hs(   0,j) = hs(     1,j)
       h(    0,j) = h(      1,j)
       hn(   0,j) = hn(     1,j)
    end do
    if(j_conf == 1) then		!h101104 conf
       do j = j_t1, j_t2
          qu(  i_t1,j) = qu(  i_t1-1,j)		!h101104 conf1â∫ó¨í[
          q_xi(i_t1,j) = q_xi(i_t1-1,j)
          yu(  i_t1,j) = yu(  i_t1-1,j)
          uti( i_t1,j) = uti( i_t1-1,j)
       end do
    else if(j_conf >= 2) then
       qu(  j_t1,j) = qu(  j_t1+jxd,j)		!h101104 conf23â∫ó¨í[
       q_xi(j_t1,j) = q_xi(j_t1+jxd,j)
       yu(  j_t1,j) = yu(  j_t1+jxd,j)
       uti( j_t1,j) = uti( j_t1+jxd,j)
       qu(  j_t2,j) = qu(  j_t2-jxd,j)		!h101104 conf23è„ó¨í[
       q_xi(j_t2,j) = q_xi(j_t2-jxd,j)
       yu(  j_t2,j) = yu(  j_t2-jxd,j)
       uti( j_t2,j) = uti( j_t2-jxd,j)
       hs(  j_t2,j) = hs(  j_t2-jxd,j)
       h(   j_t2,j) = h(   j_t2-jxd,j)
       hn(  j_t2,j) = hn(  j_t2-jxd,j)
    end if				!h101104 conf
    !
    do i = 0, nx
       do j = 1, ny
          yun( i,j) = yu(i,j)
          yvn( i,j) = yv(i,j)
          usta(i,j) = us0
       end do
    end do
    !
    do i=1, nx
       do j=1, ny
          snu(i,j) = snu_0
       end do
    end do
    do i=0, nx
       do j=1, ny-1
          snu_x(i,j) = snu_0
       end do
    end do

    eta_t  = 0.d0
    yc     = 0.d0
    ycn    = 0.d0
    ph     = 0.d0
    pkv    = 0.d0
    pev    = 0.d0
    strain = 0.d0
    !
    do i = 1, nx
       do j = 1, ny
          yk( i,j) = yk00 
          yep( i,j) = ye00
          ykn(i,j) = yk00
          yepn(i,j) = ye00
       end do
    end do
    call bound_ke(yk ,yep )
    call bound_ke(ykn,yepn)

  end subroutine initl
end module     initl_m

!----------------------------------------------------------------------------------------------------
module uvpcal_m
	use common_hh
  contains
  !-----------------------------------------------------------------------
	subroutine uvpcal(u,v,up,vp,hs)
		implicit none
    
		integer :: i,j

		real(8),dimension(0:im,0:jm),intent(in)    :: u, v, hs
		real(8),dimension(0:im,0:jm),intent(inout) :: up, vp

!$omp do private(i,j)
		do j = 1, ny
			do i = 1, nx
				if( hs(i,j)<=hmin ) then
					up(i,j) = 0.d0
					vp(i,j) = 0.d0
				else
					up(i,j) = ( u(i-1,j) + u(i,j) ) * 0.5d0
					vp(i,j) = ( v(i,j-1) + v(i,j) ) * 0.5d0
				end if
			end do
		end do

	end subroutine uvpcal
end module     uvpcal_m

!----------------------------------------------------------------------------------------------------
!
!----------------------------------------------------------------------------------------------------
module uxuycal_m
  
	use common_hh
	use common_cmxy
  contains
  !----------------------------------------------
	subroutine uxuycal(up,vp,ux,uy)
		implicit none
    
		integer :: i,j
		real(8),dimension(0:im,0:jm),intent(in)    ::  up, vp
		real(8),dimension(0:im,0:jm),intent(inout) ::  ux, uy

!$omp do private(i,j)
		do j = 1, ny
			do i = 1, nx
				ux(i,j) = (  et_y(i,j)*up(i,j)-xi_y(i,j)*vp(i,j) ) / sj(i,j)
				uy(i,j) = ( -et_x(i,j)*up(i,j)+xi_x(i,j)*vp(i,j) ) / sj(i,j)
			end do
		end do

	end subroutine uxuycal
end module     uxuycal_m

!----------------------------------------------------------------------------------------------------
module voltexcal_m
  
	use common_hh
	use common_cmxy
  
	real(8),dimension(:,:),allocatable :: dudy, dvdx

  contains

	subroutine alloc_voltexcal_temp_variables
		implicit none
    
		allocate( dudy(0:im,0:jm), dvdx(0:im,0:jm) )
    
		dudy = 0.d0;	dvdx = 0.d0
  
	end subroutine alloc_voltexcal_temp_variables

	subroutine voltexcal(u,v,vol)
		implicit none

		integer :: i,j

		real(8),dimension(0:im,0:jm),intent(in)    :: u, v
		real(8),dimension(0:im,0:jm),intent(inout) :: vol
    !
!$omp do private(i,j)
		do j=1, ny-1
			do i=1, nx-1
				dudy(i,j) = (-u(i,j)+u(i,j+1))*r_det &
							*(et_r(i,j)+et_r(i,j+1))/(xi_r_up(i,j)+xi_r_up(i,j+1))
			end do
		end do

!$omp do private(i)
		do i=1,nx-1
			dudy(i, 0) = dudy(i,   1)
			dudy(i,ny) = dudy(i,ny-1)
		end do
    !
!$omp do private(i,j)
		do j=0,ny
			do i=1,nx-1
				dvdx(i,j) = (-v(i,j)+v(i+1,j))*r_det &
								*(xi_r(i,j)+xi_r(i+1,j)) / (et_r_vp(i,j)+et_r_vp(i+1,j) )
			end do
		end do
    !   
!$omp do private(i,j)
		do j=0,ny
			do i=1,nx-1
				vol(i,j) = dvdx(i,j) - dudy(i,j)
			end do
		end do
    !
    
		if( jrep==0 ) then
!$omp do private(j)
			do j=0,ny
				vol( 0,j) = vol(   1,j)
				vol(nx,j) = vol(nx-1,j)
			end do
		else
!$omp do private(i,j)
			do j=0,ny
				do i=0, 1
					vol(i,j) = vol(i+nx-3,j)
				end do
				do i=nx-1, nx
					vol(i,j) = vol(i-nx+3,j)
				end do
			end do
		end if
    !
	end subroutine voltexcal
end module     voltexcal_m

!----------------------------------------------------------------------------------------------------
module uxxyycal_m
  
  use common_hh
  use common_cmxxyy
  use common_cmconf1

  real(8),dimension(:,:),allocatable :: u_grid, v_grid

contains

  subroutine alloc_uxxyycal_temp_variables
    implicit none

    allocate( u_grid(0:im,0:jm), v_grid(0:im,0:jm) )
    
    u_grid = 0.d0;	v_grid = 0.d0

  end subroutine alloc_uxxyycal_temp_variables

  subroutine uxxyycal(u,v,ux,uy)
    implicit none

    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(in)    :: u , v
    real(8),dimension(0:im,0:jm),intent(inout) :: ux, uy

    !
!$omp do private(i)
    do i = 0, nx
      u_grid(i,0) = u(i,1)
      v_grid(i,0) = 0.d0
      if( j_conf==3 ) then
         if( i>=i_t1.and.i<=i_t2 ) v_grid(i,0) = (v(i,0)+v(i+1,0))*0.5d0
      end if
      
      u_grid(i,ny) = u(i,ny)
      v_grid(i,ny) = 0.d0
      if( j_conf==2 ) then
         if( i>=i_t1.and.i<=i_t2 ) v_grid(i,ny) = (v(i,ny)+v(i+1,ny))*0.5d0
      end if
    end do

!$omp do private(i,j)
    do j=1,ny-1
    	do i=0,nx
             u_grid(i,j) = ( u(i,j) + u(i,j+1) ) * 0.5d0
             v_grid(i,j) = ( v(i,j) + v(i+1,j) ) * 0.5d0
        end do
    end do
    !
!$omp do private(i,j)
    do j = 0, ny
       do i = 0, nx
          ux(i,j) = ( et_y0(i,j)*u_grid(i,j)-xi_y0(i,j)*v_grid(i,j)) / sj0(i,j)
          uy(i,j) = (-et_x0(i,j)*u_grid(i,j)+xi_x0(i,j)*v_grid(i,j)) / sj0(i,j)
       end do
    end do
    
  end subroutine uxxyycal
end module     uxxyycal_m

!----------------------------------------------------------------------------------------------------
module hsxxcal_m
  
  use common_hh
contains

  subroutine hsxxcal(eta,z,hs,hsxx)
    implicit none
    
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(in)    :: eta, hs
    real(8),dimension(0:im,0:jm),intent(inout) :: z  , hsxx
    !
			!	óÃàÊÇÃäpÇÃèÍçá

		hsxx( 0, 0) = hs( 1, 1)
		hsxx(nx, 0) = hs(nx, 1)
		hsxx( 0,ny) = hs( 1,ny)
		hsxx(nx,ny) = hs(nx,ny)

		z( 0, 0) = eta( 1, 1)
		z(nx, 0) = eta(nx, 1)
		z( 0,ny) = eta( 1,ny)
		z(nx,ny) = eta(nx,ny)

			!	óÃàÊÇÃï”ÇÃèÍçá

!$omp do private(i)
		do i=1,nx-1
			hsxx(i, 0) = (hs(i, 1)+hs(i+1, 1))*0.5d0
			hsxx(i,ny) = (hs(i,ny)+hs(i+1,ny))*0.5d0
			z(i, 0) = (eta(i, 1)+eta(i+1, 1))*0.5d0
			z(i,ny) = (eta(i,ny)+eta(i+1,ny))*0.5d0
		end do

!$omp do private(j)
		do j=1,ny-1
			hsxx( 0,j) = (hs( 1,j)+hs( 1,j+1))*0.5d0
			hsxx(nx,j) = (hs(nx,j)+hs(nx,j+1))*0.5d0
			z( 0,j) = (eta( 1,j)+eta( 1,j+1))*0.5d0
			z(nx,j) = (eta(nx,j)+eta(nx,j+1))*0.5d0
		end do

			!	óÃàÊì‡ïîÇÃèÍçá

!$omp do private(i,j)
		do j=1,ny-1
			do i=1,nx-1
				hsxx(i,j) = (hs(i,j)+hs(i+1,j)+hs(i,j+1)+hs(i+1,j+1))*.25d0
				z(i,j) = (eta(i,j)+eta(i+1,j)+eta(i,j+1)+eta(i+1,j+1))*.25d0
			end do
		end do

  end subroutine hsxxcal
end module     hsxxcal_m

module func_fixed_bed
	use common_hh
	use fixed_bed
	use common_cmxy
	use common_cmtst
	use common_cmsui
	use common_cmave
	use mix
  
  contains

	subroutine phical
		implicit none
		integer :: i, j

	! --- calculate the thickness of movable bed --- !
		
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				emb(i,j) = eta(i,j)-eta_zb(i,j)
				phi(i,j) = emb(i,j)/e_m
				if( phi(i,j)>=1.d0 ) phi(i,j) = 1.d0
			end do
		end do

	! --- boundary condition for bank erosion --- !

!$omp do private(i)
		do i=1,nx
			phi(i, 0) = 1.d0
			phi(i,ny+1) = 1.d0
		end do
	
	end subroutine phical

end module func_fixed_bed

!----------------------------------------------------------------------------------------------------
module taustacal_m
  
  use common_hh
  use common_cmtst
  use common_cmhq
  use common_cmuvp
  use common_cmcf
  use common_cmsn
  use mix
contains
  
  subroutine taustacal_uni(snu00)
    implicit none

    integer :: i,j
    real(8), intent(in) :: snu00
    
!$omp do private(i,j)
    do j = 1, ny
       do i = 1, nx
          vti(i,j) = dsqrt( ux(i,j)**2 + uy(i,j)**2 )
          if( dabs( vti(i,j) ) < 1e-8 .or. hs(i,j) < hmin ) then
             tausta(i,j) = 0.d0
             usta(  i,j) = 0.d0
          else
             cf(i,j) = g * snmm(i,j)**2 / hs(i,j)**(1.d0/3.d0)
             usta(i,j) = cf(i,j)**0.5d0*vti(i,j)
             tausta(i,j) = usta(i,j)**2.d0/(spec*g*diam)
             re(i,j) = vti(i,j) * hs(i,j) / snu00
          end if
       end do
    end do

  end subroutine taustacal_uni
  
  subroutine taustacal_mix(snu00)
    implicit none

    integer :: i, j, k
    real(8) :: snu00, us_2, xi_ega
    
!$omp do private(i,j)
    do j = 1, ny
       do i = 1, nx
          vti(i,j)=dsqrt( ux(i,j)**2 + uy(i,j)**2 )
          if( dabs( vti(i,j) ) < 1e-8 .or. hs(i,j) < hmin ) then
             tausta(i,j) = 0.d0
             usta(  i,j) = 0.d0
          else
             cf(i,j) = g * snmm(i,j)**2 / hs(i,j)**(1.d0/3.d0)
             usta(i,j) = cf(i,j)**0.5d0*vti(i,j)
             tausta(i,j) = usta(i,j)**2.d0/(spec*g*dm_m(i,j))
             re(i,j) = vti(i,j) * hs(i,j) / snu00
          end if
       end do
    end do

!$omp do private( i, j, k, xi_ega )
	do j=1,ny
		do k=1,nk
			do i=1,nx
				tsk(i,j,k) = usta(i,j)**2d0/(spec*g*ddk(k))
				xi_ega = (dlog10(23.d0)/dlog10(21.d0*ddk(k)/dm_m(i,j)+2.d0))**2d0
			!	if( ddk(k)/dm_m(i,j)<0.4d0 ) then
			!		xi_ega = 0.85d0*dm_m(i,j)/ddk(k)
			!	else
			!		xi_ega = (dlog(19.d0)/dlog(19.d0*ddk(k)/dm_m(i,j)))**2.d0
			!	end if
				tsck(i,j,k) = xi_ega*tscm(i,j)
				usck(i,j,k) = dsqrt(tsck(i,j,k)*spec*g*ddk(k))
			end do
		end do
	end do
!
  end subroutine taustacal_mix
  
end module     taustacal_m

!----------------------------------------------------------------------------------------------------
module hcal_v_m
  
	use common_hh
	use common_cmhq
	use common_cmxy
	use common_cmsui

	real(8), parameter :: hv_alpha = 0.5d0

  contains

	subroutine hcal_v(qp,qc_ave,hs_ave)
		implicit none
		integer :: i,j
    
		real(8) :: qp, qc_ave, hs_ave, dh

!$omp single
		if( qc_ave>0.d0 ) then
			dh = hs_ave * (qp/qc_ave-1.d0) * hv_alpha
!!$omp do
			do j=1,ny
				do i=1,nx
					if(ijo_in(i,j) == 0) then
						hn(i,j) = hn(i,j) + dh
						hs(i,j) = hn(i,j) - eta(i,j)
						if( hs(i,j) <= hmin ) hs(i,j) = hmin
					end if
				end do
			end do
		end if
!$omp end single

	end subroutine hcal_v
end module     hcal_v_m

!----------------------------------------------------------------------------------------------------
module hcal_m

	use common_hh
	use common_cmuv
	use common_cmhq
	use common_cmuvp
	use common_cmxy
	use common_cmab
	use common_cmquv
	use common_cmqxe
	use common_cmet
	use common_cmsui
	use common_cmsn
	use common_cmcf
	use common_cmsr
	use uvpcal_m
	use uxuycal_m
	use bound_m

  contains

	!---------------------------------------------------------
  
	subroutine hcal( errmax, err, lcount, alh, qc_ave, hs_ave )
		implicit none

		integer :: i,j,l

		integer :: lcount
		real(8) :: errmax, err, alh, qc_ave, hs_ave
		real(8) :: hs_up, v_up, ux_up, uy_up, vv_up, c_xi, c_veg, f_xi 				&
					, dhdxi, dhdet, p_xi, hs_vp, u_vp, ux_vp, uy_vp, vv_vp, c_et 	&
					, f_et, p_et, eta_t_x, div, hsta, serr, hcal_m 					&
					, c_xi_shear, c_et_shear, hl, hr, hd, hu, h_veg		&
					, hss, hsn, zs, zn, hse, hsw, ze, zw

    !---------------------------------------------------------
    
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				whs(i,j) = hs(i,j)
			end do
		end do
    
		do l=1,lmax
			call uvpcal( yun, yvn, up, vp, hs )
			call uxuycal( up, vp, ux, uy )

!$omp do private( i, j )
			do j=0,ny+1
				do i=0,nx+1
					wu(i,j) = yun(i,j)
					wv(i,j) = yvn(i,j)
				end do
			end do

!$omp do private( i, j, hs_up, v_up, ux_up, uy_up, vv_up, c_xi, c_xi_shear, c_veg, h_veg, f_xi, dhdxi, dhdet, p_xi, hr, hl,hss,hsn,zs,zn)
			do j=1, ny
				do i=1, nx-1
					hs_up = ( hs(i,j) + hs(i+1,j) ) * 0.5d0
					if( hs_up<=hmin ) then
						yun(i,j) = 0.d0
						q_xi(i,j) = 0.d0
!					else if( hs(i+1,j)<=hmin.and.hn(i+1,j)>=hn(i,j) ) then
!						yun(i,j) = 0.d0
!						q_xi(i,j) = 0.d0
!					else if(hs(i  ,j) <= hmin.and.hn(i  ,j) >= hn(i+1,j)) then
!						yun(i,j) = 0.d0
!						q_xi(i,j) = 0.d0
					else
						v_up  = ( wv(i,j)+wv(i,j-1)+wv(i+1,j)+wv(i+1,j-1))*.25d0
						ux_up = ( ux(i,j) + ux(i+1,j) ) * 0.5d0
						uy_up = ( uy(i,j) + uy(i+1,j) ) * 0.5d0
						vv_up = dsqrt( ux_up**2 + uy_up**2 )
						c_xi = -(alpha(1,i,j)*wu(i,j)**2 + alpha(2,i,j)*wu(i,j)*v_up+alpha(3,i,j)*v_up**2)

						c_xi_shear = g * sn_up(i,j)**2 / hs_up**1.33333d0
						c_veg = ( cd_veg(i,j) + cd_veg(i+1,j) ) * 0.5d0
						h_veg = ( vege_h(i,j)+vege_h(i+1,j) )*0.5d0
						h_veg = min( h_veg, hs_up )
												
						c_xi_shear = c_xi_shear + c_veg*h_veg/hs_up

						f_xi = - c_xi_shear * vv_up

						if( ijo_in(i,j) == 1.or.ijo_in(i+1,j) == 1 ) then
							dhdxi = 0.d0
						else if( ( eta(i,j) > eta(i+1,j).and. &
								hs(i  ,j) <= hmin2.and.hn(i+1,j) < eta(i  ,j) ).or. &
								( eta(i,j) < eta(i+1,j).and. &
								hs(i+1,j) <= hmin2.and.hn(i  ,j) < eta(i+1,j) ) ) then
							dhdxi = 0.d0
						else
   							dhdxi = ( -hn(i,j)+hn(i+1,j) )*r_dxi
						end if

!						if( j==1 ) then
!							hr = (hn(i+1,j)+hn(i,j))*0.5d0
!						else if( hs(i,j-1)<=hmin2 .and. hs(i+1,j-1)<=hmin2 ) then
!							hr = (hn(i+1,j)+hn(i,j))*0.5d0
!						else if( hs(i,j-1)<=hmin2 ) then
!							hr = hn(i+1,j-1)
!						else if( hs(i+1,j-1)<=hmin2 ) then
!							hr = hn(i,j-1)
!						else
!							hr = (hn(i,j-1)+hn(i+1,j-1))*0.5d0
!						end if

!						if( j==ny ) then
!							hl = (hn(i,j)+hn(i+1,j))*0.5d0
!						else if( hs(i,j+1)<=hmin2 .and. hs(i+1,j+1)<=hmin2 ) then
!							hl = (hn(i,j)+hn(i+1,j))*0.5d0
!						else if( hs(i,j+1)<=hmin2 ) then
!							hl = hn(i+1,j+1)
!						else if( hs(i+1,j+1)<=hmin2 ) then
!							hl = hn(i,j+1)
!						else
! 							hl = (hn(i,j+1)+hn(i+1,j+1))*0.5d0
!						end if

!						dhdet = (hl-hr)*r_det*0.5d0

						if( j==1 ) then
							hss = ( hs(i,j  )+hs(i+1,j  ) )*0.5d0
							hsn = ( hs(i,j+1)+hs(i+1,j+1) )*0.5d0
							zs  = ( eta(i,j  )+eta(i+1,j  ) )*0.5d0
							zn  = ( eta(i,j+1)+eta(i+1,j+1) )*0.5d0
						else if( j==ny ) then
							hss = ( hs(i,j-1)+hs(i+1,j-1) )*0.5d0
							hsn = ( hs(i,j  )+hs(i+1,j  ) )*0.5d0
							zs  = ( eta(i,j-1)+eta(i+1,j-1) )*0.5d0
							zn  = ( eta(i,j  )+eta(i+1,j  ) )*0.5d0
						else
							hss = ( hs(i,j-1)+hs(i+1,j-1) )*0.5d0
							hsn = ( hs(i,j+1)+hs(i+1,j+1) )*0.5d0
							zs  = ( eta(i,j-1)+eta(i+1,j-1) )*0.5d0
							zn  = ( eta(i,j+1)+eta(i+1,j+1) )*0.5d0
						end if

						if( ( zs>zn .and. hss<=hmin2 .and. zs>hsn+zn ) &
								.or.( zn>zs .and. hsn<=hmin2 .and. zn>hss+zs ) ) then
							dhdet = 0.d0
						else
							dhdet = ( (hsn + zn) - (hss + zs) )*r_det*0.5d0
						end if

						p_xi = - g * ( beta(1,i,j)*dhdxi + beta(2,i,j)*dhdet )

						yun(i,j) = (yu(i,j)+(c_xi+p_xi)*dt)/(1.d0-f_xi*dt)

!						if(hs(i  ,j) <= hmin.and.yun(i,j) > 0.d0) yun(i,j) = 0.d0
!						if(hs(i+1,j) <= hmin.and.yun(i,j) < 0.d0) yun(i,j) = 0.d0

						q_xi(i,j)=yun(i,j)*(hs(i,j)+hs(i+1,j)) / (sj(i,j)+sj(i+1,j))
					end if
				end do
			end do
       !

!$omp do private( i, j, hs_vp, u_vp, ux_vp, uy_vp, vv_vp, c_et, c_et_shear, c_veg, h_veg, f_et, dhdxi, dhdet, p_et, hu, hd, eta_t_x,hse,hsw,ze,zw)
			do j = 1, ny-1
				do i = 1, nx
					hs_vp = ( hs(i,j) + hs(i,j+1) ) * 0.5d0
					if(     hs_vp <= hmin) then
						yvn(i,j) = 0.d0
						q_et(i,j)=0.d0
!					else if(hs(i,j+1) <= hmin.and.hn(i,j+1) >= hn(i,j  )) then
!						yvn(i,j) = 0.d0
!						q_et(i,j)=0.d0
!					else if(hs(i,j  ) <= hmin.and.hn(i,j  ) >= hn(i,j+1)) then
!						yvn(i,j) = 0.d0
!						q_et(i,j)=0.d0
					else
						u_vp  = (wu(i-1,j)+wu(i,j)+wu(i-1,j+1)+wu(i,j+1))*0.25d0
						ux_vp = ( ux(i,j) + ux(i,j+1) ) * 0.5d0
						uy_vp = ( uy(i,j) + uy(i,j+1) ) * 0.5d0
						vv_vp = dsqrt( ux_vp**2 + uy_vp**2 )
						c_et = -(alpha(4,i,j)*u_vp**2 + alpha(5,i,j)*u_vp*wv(i,j)+alpha(6,i,j)*wv(i,j)**2)

						c_et_shear = g * sn_vp(i,j)**2 / hs_vp**1.33333d0
						c_veg = ( cd_veg(i,j) + cd_veg(i,j+1) ) * 0.5d0
						h_veg = ( vege_h(i,j)+vege_h(i,j+1) )*0.5d0
						h_veg = min( h_veg, hs_vp )
						c_et_shear = c_et_shear + c_veg*h_veg/hs_vp

						f_et = - c_et_shear * vv_vp

						if(ijo_in(i,j) == 1.or.ijo_in(i,j+1) == 1) then
							dhdet = 0.d0
						else if((eta(i,j) > eta(i,j+1).and. &
								hs(i,j  ) <= hmin2.and.hn(i,j+1) < eta(i,j  ) ).or. &
								(eta(i,j) < eta(i,j+1).and. &
								hs(i,j+1) <= hmin2.and.hn(i,j  ) < eta(i,j+1) ) ) then
							dhdet = 0.d0
						else
							dhdet = ( -hn(i,j)+hn(i,j+1) )*r_det
						end if

						if( i==1 ) then
							hsw = ( hs(i  ,j)+hs(i  ,j+1) )*0.5d0
							hse = ( hs(i+1,j)+hs(i+1,j+1) )*0.5d0
							zw = ( eta(i  ,j)+eta(i  ,j+1) )*0.5d0
							ze = ( eta(i+1,j)+eta(i+1,j+1) )*0.5d0
						else if( i==nx ) then
							hsw = ( hs(i-1,j)+hs(i-1,j+1) )*0.5d0
							hse = ( hs(i  ,j)+hs(i  ,j+1) )*0.5d0
							zw = ( eta(i-1,j)+eta(i-1,j+1) )*0.5d0
							ze = ( eta(i  ,j)+eta(i  ,j+1) )*0.5d0
						else
							hsw = ( hs(i-1,j)+hs(i-1,j+1) )*0.5d0
							hse = ( hs(i+1,j)+hs(i+1,j+1) )*0.5d0
							zw = ( eta(i-1,j)+eta(i-1,j+1) )*0.5d0
							ze = ( eta(i+1,j)+eta(i+1,j+1) )*0.5d0
						end if

						if(  ( zw>ze .and. hsw<=hmin2 .and. zw>hse+ze ) &
            				.or. ( ze>zw .and. hse<=hmin2 .and. ze>hsw+zw ) ) then
            			dhdxi = 0.d0
            		else
            			dhdxi = ( (hse+ze) - (hsw+zw) )*r_dxi*0.5d0
            		end if

!						if( i==1 ) then
!							hu = (hn(i,j)+hn(i,j+1))*0.5d0
!						else if( hs(i-1,j)<=hmin2 .and. hs(i-1,j+1)<=hmin2 ) then
!							hu = (hn(i,j)+hn(i,j+1))*0.5d0
!						else if( hs(i-1,j)<=hmin2 ) then
!							hu = hn(i-1,j+1)
!						else if( hs(i-1,j+1)<=hmin2 ) then
!							hu = hn(i-1,j)
!						else
!							hu = (hn(i-1,j+1)+hn(i-1,j))*0.5d0
!						end if

!						if( i==nx ) then
!							hd = (hn(i,j)+hn(i,j+1))*0.5d0
!						else if( hs(i+1,j)<=hmin2 .and. hs(i+1,j+1)<=hmin2 ) then
!							hd = (hn(i,j)+hn(i,j+1))*0.5d0
!						else if( hs(i+1,j)<=hmin2 ) then
!							hd = hn(i+1,j+1)
!						else if( hs(i+1,j+1)<=hmin2 ) then
!							hd = hn(i+1,j)
!						else
!							hd = (hn(i+1,j+1)+hn(i+1,j))*0.5d0
!						end if

!						dhdxi = (hd-hu)*r_dxi*0.5d0

						p_et = - g * ( beta(3,i,j) * dhdxi + beta(4,i,j) * dhdet )

						yvn(i,j) = (yv(i,j)+(c_et+p_et)*dt)/(1.d0-f_et*dt)

!						if(hs(i,j  ) <= hmin.and.yvn(i,j) > 0.d0) yvn(i,j) = 0.d0
!						if(hs(i,j+1) <= hmin.and.yvn(i,j) < 0.d0) yvn(i,j) = 0.d0

						eta_t_x   = ( eta_t(i-1,j) + eta_t(i,j) ) * 0.5d0
						q_et(i,j) = ( yvn(i,j)+eta_t_x )                     &
  									* ( hs( i,j)+hs(i,j+1))/(sj(i,j)+sj(i,j+1))
					end if
				end do
			end do
       !
			call bound_u( yun )
			call bound_u( q_xi )
			call bound_v( yvn )
			call bound_v( q_et )
       !
!$omp single
			err = 0.d0

!!$omp do reduction( +:err ) private( i, j, div, hsta, serr )
			do j = 1, ny
				do i = 1, nx-1
					if( ijo_in(i,j) == 1 ) goto 201
					div  = (-q_xi(i-1,j)+q_xi(i,j))*r_dxi+(-q_et(i,j-1)+q_et(i,j))*r_det
					hsta = h(i,j) - div * dt * sj(i,j)
					serr = dabs( hsta - hn(i,j) )
					if( hs(i,j) > hmin ) err = err + serr
					hn(i,j) = hsta * alh + hn(i,j) * (1.d0-alh)
					hs(i,j) = hn(i,j) - eta(i,j)
					if( hs(i,j) <= hmin ) then
						hs(i,j)  = hmin
						if(yun(i  ,j) > 0.d0) yun(i  ,j) = 0.d0
						if(yun(i-1,j) < 0.d0) yun(i-1,j) = 0.d0
						if(yvn(i,j  ) > 0.d0) yvn(i,j  ) = 0.d0
						if(yvn(i,j-1) < 0.d0) yvn(i,j-1) = 0.d0
						hn(i,j) = hs(i,j) + eta(i,j)
					end if
					201 continue
				end do
			end do
!$omp end single

			if( err < errmax ) exit

		end do

!$omp single
		lcount = l
    !
    ! ----- cal. of qc and q_ave ------
    !
		qc_ave = 0.d0
		hs_ave = 0.d0
!!$omp end single

!!$omp do reduction( +:qc_ave )
		do i=1,nx-1
			qc(i) = 0.d0
			do j=1,ny
				qu(i,j) = yun(i,j)/xi_r_up(i,j)*(hs(i,j)+hs(i+1,j))*0.5d0*dn(i,j)*sin_t(i,j)
				qc(i) = qc(i) + qu(i,j)
			end do
			qc_ave = qc_ave + qc(i)
		end do
!!$omp end single
    !
    ! ------ cal. of hs_ave ------
    !
!!$omp do reduction( +:hs_ave )
		do j=1,ny
			do i=1,nx
				hs_ave = hs_ave + hs(i,j)
			end do
		end do

!!$omp single
		qc_ave = qc_ave / dble(nx-1)
		hs_ave = hs_ave / dble(nx*ny)
!$omp end single

	end subroutine hcal
end module     hcal_m

!----------------------------------------------------------------------------------------------------
module diffusion_m
  
  use common_hh
  use common_cmuv
  use common_cmhq
  use common_cmxy
  use common_cmxiet
  use common_cmsnu
  use common_cmsui

  real(8),dimension(:,:),allocatable :: uvis_x, uvis_y, vvis_x, vvis_y
  
contains

  subroutine alloc_diffusion_temp_variables
    implicit none

    allocate( uvis_x(0:im,0:jm), uvis_y(0:im,0:jm) )
    allocate( vvis_x(0:im,0:jm), vvis_y(0:im,0:jm) )

    uvis_x = 0.d0; uvis_y=0.d0; vvis_x=0.d0; vvis_y=0.d0

  end subroutine alloc_diffusion_temp_variables
  ! -------------------------------------------------------
  subroutine diffusion(cw)
    implicit none

    integer :: i,j

	real(8),intent(in) :: cw
    real(8) :: hhx1, hhx2, uvis, vvis
  !
  ! ------- uvix_x(i=1,nx,j=1,ny) ------
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				uvis_x(i,j)=snu(i,j)*(xi_r(i,j-1)+xi_r(i,j))*.5d0*(-yun(i-1,j)+yun(i,j))*r_dxi
			end do
		end do

  ! ------- uvix_y(i=1,nx-1,j=0,ny) ------

!$omp do private( i, j, hhx1, hhx2 )
    do i=1,nx
       do j=1,ny-1
          hhx1 = ( hs(i,j  ) + hs(i+1,j  ) ) * 0.5d0
          hhx2 = ( hs(i,j+1) + hs(i+1,j+1) ) * 0.5d0
          if(hhx1 <= hmin.and.hhx2 <= hmin) then
             uvis_y(i,j) = 0.d0
          else
             uvis_y(i,j)=snu_x(i,j)*(-yun(i,j)+yun(i,j+1))*r_det*((et_r(i,j)+et_r(i,j+1))*.5d0)
          end if
       end do
       !
       do j=1,ny-1
          hhx1 = ( hs(i,j  ) + hs(i+1,j  ) ) * 0.5d0
          hhx2 = ( hs(i,j+1) + hs(i+1,j+1) ) * 0.5d0
          if( hhx1 <= hmin .or. &
               (ijobst(i,j)==1.and.ijobst(i,j+1)==0) ) then
             uvis_y(i,j) = cw * yun(i,j+1) * dabs(yun(i,j+1)) &
                  / ( xi_r(i,j+1) + xi_r(i+1,j+1) ) * 2.d0
          end if
          if(hhx2 <= hmin .or. &
               (ijobst(i,j)==1.and.ijobst(i,j-1)==0) ) then
             uvis_y(i,j) = - cw * yun(i,j) * dabs( yun(i,j) ) &
                  / ( xi_r(i,j-1) + xi_r(i+1,j-1) ) * 2.d0
          end if
       end do
    end do
       !
!$omp do private(i)
   do i=1,nx
       uvis_y(i,ny) = - cw * yun(i,ny) * dabs(yun(i,ny) ) &
            / ( xi_r(i,ny-1) + xi_r(i+1,ny-1) ) * 2.d0
       uvis_y(i, 0) =   cw * yun(i, 1) * dabs(yun(i, 1) ) &
            / ( xi_r(i,   1) + xi_r(i+1,   1) ) * 2.d0
    end do
  !
  !------- yun(i=1,nx-1 j=1,ny)------

!$omp do private( i, j, uvis )
		do j=1,ny
			do i=1,nx-1
				uvis = (-uvis_x(i,j)+uvis_x(i+1,j))*r_dxi*xi_r_up(i,j)	&
						+(-uvis_y(i,j-1)+uvis_y(i,j))*r_det*et_r(i,j)
				yun(i,j) = yun(i,j)+uvis*dt
			end do
		end do

  ! ------ vvis_x(i=1,nx-1 j=1,ny-1)

!$omp do private( i, j, hhx1, hhx2 )
    do j=1,ny-1
       do i=1,nx-1
          hhx1 = ( hs(i  ,j) + hs(i  ,j+1) ) * 0.5d0
          hhx2 = ( hs(i+1,j) + hs(i+1,j+1) ) * 0.5d0
          if( hhx1 <= hmin.and.hhx2 <= hmin ) then
             vvis_x(i,j) = 0.d0
          elseif( hhx1 <= hmin .or. &
               ( ijobst(i,j) == 1 .and. ijobst(i+1,j) == 0 ) ) then
             vvis_x(i,j) =   cw * yvn(i+1,j) * dabs(yvn(i+1,j) ) &
                  / ( et_r(i+1,j) + et_r(i+1,j+1) ) * 2.d0
          elseif( hhx2 <= hmin .or. &
               ( ijobst(i,j) == 1 .and. ijobst(i-1,j) == 0 ) ) then
             vvis_x(i,j) = - cw * yvn(i  ,j) * dabs(yvn(i  ,j) ) &
                  / ( et_r(i-1,j) + et_r(i-1,j+1) ) * 2.d0
          else
             vvis_x(i,j) = snu_x(i,j)*(-yvn(i,j)+yvn(i+1,j))*r_dxi*(xi_r(i,j)+xi_r(i+1,j))*.5d0
          endif
       end do
    end do
  !
  ! ------ vvis_y(i=2,nx-1 j=1,ny)

!$omp do private(i,j)
		do j=1,ny
			do i=2,nx-1
				vvis_y(i,j) = snu(i,j)*(-yvn(i,j-1)+yvn(i,j))*r_det*(et_r(i-1,j)+et_r(i,j))*.5d0
			end do
		end do
  !
  ! ------ yvn(i=2,nx-1 j=1,ny-1)

!$omp do private( i, j, vvis )
		do j=1,ny-1
			do i=2,nx-1
				vvis = (-vvis_x(i-1,j)+vvis_x(i,j))*r_dxi*xi_r(i,j)		&
					  	+(-vvis_y(i,j)+vvis_y(i,j+1))*r_det*et_r_vp(i,j)
				yvn(i,j) = yvn(i,j)+vvis*dt
			end do
		end do
  !
  ! ------ rep ------
    if(jrep == 1) then
!$omp do private(j)
       do j=1,ny
          yun(   0,j) = yun(nx-3,j)
          yun(   1,j) = yun(nx-2,j)
          yun(nx  ,j) = yun(   3,j)
          yun(nx-1,j) = yun(   2,j)
       end do

!!$omp do		! Ç®Ç©ÇµÇ¢
!$omp single
       do j=1,ny-1
          yvn(   1,j) = yvn(nx-2,j)
          yvn(   2,j) = yvn(nx-1,j)
          yvn(nx  ,j) = yvn(   3,j)
          yvn(nx-1,j) = yvn(   2,j)
       end do
!$omp end single
    end if

  end subroutine diffusion
end module     diffusion_m

!----------------------------------------------------------------------------------------------------
module diffusion_c_m
  
  use common_hh
  use common_cmxy
  use common_cmhq
  use common_cmsnu

  real(8),dimension(:,:),allocatable :: cvis_x, cvis_y

contains
  
  subroutine alloc_diffusion_c_temp_variables
    implicit none

    allocate( cvis_x(0:im,0:jm), cvis_y(0:im,0:jm) )

    cvis_x=0.d0; cvis_y=0.d0

  end subroutine alloc_diffusion_c_temp_variables

  ! -----------------------------------------------------------
  subroutine diffusion_c(c,sigma)
    implicit none
    integer :: i,j

    real(8) :: sigma, cvis

    real(8),dimension(0:im,0:jm),intent(inout) :: c

    !
    ! ------- cvix_x(i=2,nx,j=1,ny) ------
!$omp do private(j)
    do j=1,ny
    	cvis_x( 0,j) = 0.d0
    	cvis_x(nx,j) = 0.d0
    end do
    
!$omp do private(i,j)
    do j=1,ny
       do i=1,nx-1
          if(hs(i,j) <= hmin.or.hs(i+1,j) <= hmin) then
             cvis_x(i,j) = 0.d0
          else 
             cvis_x(i,j) = (snu(i,j)+snu(i+1,j))*.5d0/sigma*( -c(i,j)+c(i+1,j) )*r_dxi
          end if
       end do
    end do
    
  !
  ! ------- cvix_y(i=1,nx,j=2,ny) ------
!$omp do private(i)
    do i=1,nx
    	cvis_y(i, 0) = 0.d0
    	cvis_y(i,ny) = 0.d0
    end do
    
!$omp do private(i,j)
    do j=1,ny-1
       do i=1,nx
          if(hs(i,j) <= hmin.or.hs(i,j+1) <= hmin) then
             cvis_y(i,j) = 0.d0
          else
             cvis_y(i,j) = (snu(i,j)+snu(i,j+1))*.5d0/sigma*(-c(i,j)+c(i,j+1))*r_det
          end if
       end do
    end do
  !
  !------- cn(i=2,nx-1 j=2,ny-1)------
!$omp do private( i, j, cvis )
    do j=1,ny
       do i=2,nx-1
          if( hs(i,j) <= hmin ) then
             c(i,j) = 0.d0
          else
             cvis =   ( -cvis_x(i-1,j)+cvis_x(i,j) )*r_dxi 	&
                  * ( ( xi_r(i,j-1)+xi_r(i,j) ) * 0.5d0 )**2 	&
                  +   ( -cvis_y(i,j-1)+cvis_y(i,j) )*r_det 	&
                  * ( ( et_r(i-1,j)+et_r(i,j) ) * 0.5d0 )**2
             c(i,j) = c(i,j) + cvis * dt
          end if
       end do
    end do
  end subroutine diffusion_c
end module     diffusion_c_m

!----------------------------------------------------------------------------------------------------
!
!----------------------------------------------------------------------------------------------------
module gbound_m                                                   !j090219b
  
  use common_hh
contains
  ! -------------------------------------------------------------
  subroutine gbound(yn)
    implicit none
    integer :: j
    real(8),intent(inout) :: yn(0:im,0:jm)

!$omp do private(j)
    do j=1,ny
       yn(   0,j) = yn(nx-3,j)
       yn(   1,j) = yn(nx-2,j)
       yn(nx-1,j) = yn(   2,j)
       yn(nx  ,j) = yn(   3,j)
    end do

  end subroutine gbound
end module     gbound_m

!----------------------------------------------------------------------------------------------------
module newgrd_m
  
  use common_hh
  use gbound_m
  use common_cmsui
contains
  ! ---------------------------------------------------
  subroutine newgrd_u(yun,yu,gux,guy,ijobst)
    implicit none
    integer :: i,j
    integer,dimension(0:im,0:jm),intent(in)    :: ijobst
    real(8),dimension(0:im,0:jm),intent(in)    :: yu , yun
    real(8),dimension(0:im,0:jm),intent(inout) :: gux, guy
    !

!$omp do private(i,j)
		do j=1,ny
			do i=1,nx-1
				gux(i,j) = gux(i,j)+(-yun(i-1,j)+yun(i+1,j)+yu(i-1,j)-yu(i+1,j))*0.5d0*r_dxi
			end do
		end do

!$omp do private(i,j)
		do j=2,ny-1
			do i=1,nx-1
				guy(i,j) = (guy(i,j)+(-yun(i,j-1)+yun(i,j+1)	&
								+yu(i,j-1)-yu(i,j+1))*0.5d0*r_det)*ijobst_u(i,j)
			end do
		end do

    if(jrep == 1) then
       call gbound( gux )
       call gbound( guy )
    end if

  end subroutine newgrd_u
  !
  !--------------------------------------------------------------------
  subroutine newgrd_v(yvn,yv,gvx,gvy,ijobst)
    implicit none

    integer :: i,j
    
    integer,dimension(0:im,0:jm),intent(in)    :: ijobst
    real(8),dimension(0:im,0:jm),intent(in)    :: yv , yvn
    real(8),dimension(0:im,0:jm),intent(inout) :: gvx, gvy

!$omp do private(i,j)
		do j=1,ny-1
			do i=2,nx-1
					gvx(i,j) = (gvx(i,j)+(-yvn(i-1,j)+yvn(i+1,j)	&
									+yv(i-1,j)-yv(i+1,j))*0.5d0*r_dxi)*ijobst_v(i,j)
			end do
		end do

!$omp do private(i,j)
		do j=1,ny-1
			do i=1,nx
				gvy(i,j) = gvy(i,j)+(-yvn(i,j-1)+yvn(i,j+1)+yv(i,j-1)-yv(i,j+1))*0.5d0*r_det
			end do
		end do

    if(jrep == 1) then
       call gbound( gvx )
       call gbound( gvy )
    end if
  end subroutine newgrd_v
  !
  !--------------------------------------------------------------------
  subroutine newgrd_c(ycn,yc,gcx,gcy)
    implicit none

    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(in)    :: yc , ycn
    real(8),dimension(0:im,0:jm),intent(inout) :: gcx, gcy
    !
!$omp do private(i,j)
    do j=1,ny
       do i=2,nx-1
          gcx(i,j) = gcx(i,j) &
               +( (-ycn(i-1,j)+ycn(i+1,j))+(yc(i-1,j)-yc(i+1,j)) )*0.5d0*r_dxi
       end do
    end do

!$omp do private(i,j)
    do j=2,ny-1
       do i=1,nx
          gcy(i,j) = gcy(i,j) &
               +( (-ycn(i,j-1)+ycn(i,j+1))+(yc(i,j-1)-yc(i,j+1)) )*0.5d0*r_det
       end do
    end do

    if(jrep == 1) then
       call gbound( gcx )
       call gbound( gcy )
    end if

  end subroutine newgrd_c
end module     newgrd_m

module sus_profile
	implicit none

 contains

	subroutine alf_s(alfx,bet)
		implicit none
		real(8), intent(in)	:: bet
		real(8), intent(out)	:: alfx

		if( bet>20 ) then
			alfx = bet
		else
			alfx = bet/(1.d0-dexp(-bet))
		end if

	end subroutine alf_s

end module sus_profile

!--------------------------------------------------------------------------------
module upstream_c_m
  
  use common_hh
  use common_cmconf1	!h101019 conf
  use sus_profile
contains
  !--------------------------------------------------------------------
  subroutine upstream_c(c,cb,wf,qsu,usta)
    implicit none
    
    integer :: i,j
    real(8) :: wf, bet, alfx, alf

    real(8),dimension(0:im,0:jm),intent(inout) :: c  , cb
    real(8),dimension(0:im,0:jm),intent(in)    :: qsu, usta

!$omp do private( j, bet, alfx )
    do j = 1, ny
       if( usta(1,j)<=wf ) then
          c( 1,j) = 0.d0
          cb(1,j) = 0.d0
       else
          bet=15.d0 * wf / usta(1,j)
!          alfx=alf(bet)
          call alf_s(alfx,bet)
          c( 1,j)=qsu(1,j) / (wf*alfx)
          cb(1,j)=c(  1,j) * alfx
       end if
       c( 0,j)=c(  1,j)
       cb(0,j)=cb( 1,j)
    end do

    if(j_conf.ge.2) then
!$omp do private( i, bet, alfx )
       do i=i_t1+1,i_t2
          if( usta(i,j_t2+js2)<=wf ) then
             c(i,j_t2+js2) = 0.d0
             cb(i,j_t2+js2) = 0.d0
          else
             bet = 15.d0*wf/usta(i,j_t2+js2)
!             alfx = alf(bet)
				 call alf_s(alfx,bet)
             c(i,j_t2+js2) = qsu(i,j_t2+js2)/(wf*alfx)
             cb(i,j_t2+js2) = c(i,j_t2+js2)*alfx
          end if
          c(i,j_t2+js1) = c(i,j_t2+js2)
          cb(i,j_t2+js1) = cb(i,j_t2+js2)
       end do
    end if
  end subroutine upstream_c

  !--------------------------------------------------------------------
	subroutine upstream_c_mix( ck, cbk, wfk, qsuk, usta, nk )
		implicit none
    
		integer :: i, j, k
		real(8) :: bet, alfx, alf

		integer,intent(in) :: nk
		real(8),dimension(nk),intent(in) :: wfk
		real(8),dimension(0:im,0:jm),intent(in) :: usta
		real(8),dimension(0:im,0:jm,nk),intent(in)    :: qsuk
		real(8),dimension(0:im,0:jm,nk),intent(inout) :: ck, cbk

!$omp do private( j, k, bet, alfx )
		do j=1,ny
			do k=1,nk
				if( usta(1,j)<=wfk(k) ) then
					ck( 1,j,k) = 0.d0
					cbk(1,j,k) = 0.d0
				else
					bet = 15.d0*wfk(k)/usta(1,j)
!					alfx = alf(bet)
					call alf_s(alfx,bet)
					ck( 1,j,k) = qsuk(1,j,k)/(wfk(k)*alfx)
					cbk(1,j,k) = ck(  1,j,k)*alfx
				end if
				ck( 0,j,k) = ck ( 1,j,k)
				cbk(0,j,k) = cbk( 1,j,k)
			end do
		end do

    if( j_conf>=2 ) then
!$omp do private( i, k, bet, alfx )
       do i=i_t1+1,i_t2
          do k=1,nk
             if( usta(i,j_t2+js2)<=wfk(k) ) then
                ck(i,j_t2+js2,k) = 0.d0
                cbk(i,j_t2+js2,k) = 0.d0
             else
                bet = 15.d0*wfk(k)/usta(i,j_t2+js2)
!                alfx = alf(bet)
					call alf_s(alfx,bet)
                ck(i,j_t2+js2,k) = qsuk(i,j_t2+js2,k)/(wfk(k)*alfx)
                cbk(i,j_t2+js2,k) = ck(i,j_t2+js2,k)*alfx
             end if
             ck(i,j_t2+js1,k) = ck(i,j_t2+js2,k)
             cbk(i,j_t2+js1,k) = cbk(i,j_t2+js2,k)
          end do
       end do
    end if

	end subroutine upstream_c_mix

end module     upstream_c_m

!--------------------------------------------------------------------------------
module dcip2d_m
  
  use common_hh
  use common_cmuv
  use common_cmgrd
  use common_cmhq
  use common_cmet
  use common_cmc
  use common_cmuvp

  real(8) :: dx1, dx2, dx3, dy1, dy2, dy3
  real(8),dimension(:,:),allocatable :: fn, gxn, gyn, u, v

contains

  subroutine alloc_advection_temp_variables
    implicit none

    allocate( fn(0:im,0:jm), gxn(0:im,0:jm), gyn(0:im,0:jm) )
    allocate( u(0:im,0:jm), v(0:im,0:jm) )

    fn = 0.d0;	gxn = 0.d0;	gyn = 0.d0
    u = 0.d0;	v = 0.d0

    dx1 = dxi
    dx2 = dx1*dx1
    dx3 = dx1*dx2
    dy1 = det
    dy2 = dy1*dy1
    dy3 = dy1*dy2
    
  end subroutine alloc_advection_temp_variables
  ! ----------------------------------------------------------
  subroutine dcip2d_u( f, gx, gy )
    implicit none

    integer :: i,j

    real(8) :: et_x, xx, yy &
         , fis, fjs, a1, b1, c1, d1, e1, f1, g1, gxo, gyo, tmp, tmq
    integer :: isn, jsn, im1, jm1
    
    real(8),dimension(0:im,0:jm),intent(inout) :: f, gx, gy

    !
!$omp do private( i, j, et_x )
    do j=1,ny
       do i=1,nx-1
          u(i,j) = yu(i,j) 
          et_x   = ( eta_t(i,j) + eta_t(i,j-1) ) * 0.5d0
          v(i,j) = 0.25d0*(yv(i,j)+yv(i+1,j)+yv(i,j-1)+yv(i+1,j-1)) + et_x
       end do
    end do
    !
!$omp do private(j)
    do j=1,ny
       u( 0,j) = u(   1,j)
       v( 0,j) = v(   1,j)
       u(nx,j) = u(nx-1,j)
       v(nx,j) = v(nx-1,j)
    end do

!$omp do private(i)
    do i=0,nx
       u(i,   0) = u(i, 1)
       v(i,   0) = v(i, 1)
       u(i,ny+1) = u(i,ny)
       v(i,ny+1) = v(i,ny)
    end do
    !

!$omp do private( i, j, xx, yy, isn, jsn, fis, fjs, im1, jm1, a1, b1, c1, d1, e1, f1, g1, tmp, tmq )
    do j=1,ny
       do i=1,nx-1
          xx = - u(i,j)*dt
          yy = - v(i,j)*dt
          isn = dsign(1.d0,u(i,j))
          jsn = dsign(1.d0,v(i,j))
          fis = dble(isn)
          fjs = dble(jsn)
          im1 = i-isn
          jm1 = j-jsn
          a1 = ((gx(im1,j)+gx(i,j))*dx1*fis &
               -2.d0*(f(i,j)-f(im1,j)))/(dx3*fis)
          e1 = (3.d0*(f(im1,j)-f(i,j)) &
               +(gx(im1,j)+2.d0*gx(i,j))*dx1*fis)/dx2
          b1 = ((gy(i,jm1)+gy(i,j))*dy1*fjs &
               -2.d0*(f(i,j)-f(i,jm1)))/(dy3*fjs)
          f1 = (3.d0*(f(i,jm1)-f(i,j)) &
               +(gy(i,jm1)+2.d0*gy(i,j))*dy1*fjs)/dy2
          tmp = f(i,j)-f(i,jm1)-f(im1,j)+f(im1,jm1)
          tmq = gy(im1,j)-gy(i,j)
          d1 = (-tmp -tmq*dy1*fjs)/(dx1*dy2*fis)
          c1 = (-tmp-(gx(i,jm1)-gx(i,j))*dx1*fis)/(dx2*dy1*fjs)
          g1 = (-tmq+c1*dx2)/(dx1*fis)
          !--------------------------------------------
          fn(i,j) = ((a1*xx+c1*yy+e1)*xx+g1*yy+gx(i,j))*xx &
               		+((b1*yy+d1*xx+f1)*yy+gy(i,j))*yy+f(i,j)
          gxn(i,j) = (3.d0*a1*xx+2.d0*(c1*yy+e1))*xx+(d1*yy+g1)*yy+gx(i,j)
          gyn(i,j) = (3.d0*b1*yy+2.d0*(d1*xx+f1))*yy+(c1*xx+g1)*xx+gy(i,j)
       end do
    end do
    
!$omp do private( i, j, gxo, gyo )
		do j=1,ny
			do i=1,nx-1
				f(i,j) = fn(i,j)
				gxo = (-yu(i-1,j)+yu(i+1,j))*.5d0*r_dxi
				gyo = (-yu(i,j-1)+yu(i,j+1))*.5d0*r_det
				gx(i,j) = gxn(i,j)-(gxo*(-u(i-1,j)+u(i+1,j))+gyo*(-v(i-1,j)+v(i+1,j)))*0.5d0*dt*r_dxi
				gy(i,j) = gyn(i,j)-(gxo*(-u(i,j-1)+u(i,j+1))+gyo*(-v(i,j-1)+v(i,j+1)))*0.5d0*dt*r_det
			end do
		end do

  end subroutine dcip2d_u
  !
  ! ----------------------------------------------------------
  subroutine upwind2d_u( f, gx, gy )
    implicit none

    integer :: i,j

    real(8) :: et_x, u_dfdx, v_dfdy

    real(8),dimension(0:im,0:jm),intent(inout) :: f, gx, gy

    !
!$omp do private( i, j, et_x )
    do j=1,ny
       do i=1,nx-1
          u(i,j) = yu(i,j)
          et_x = (eta_t(i,j)+eta_t(i,j-1))*.5d0
          v(i,j) = 0.25d0*(yv(i,j-1)+yv(i+1,j-1)+yv(i,j)+yv(i+1,j))+et_x
       end do
    end do
    !
!$omp do private(j)
    do j =1,ny
       u(   0,j) = u( 1,j)
       v(   0,j) = v( 1,j)
       u(nx+1,j) = u(nx,j)
       v(nx+1,j) = v(nx,j)
    end do

!$omp do private(i)
    do i = 0,nx+1
       u(i,   0) =  u(i, 1)
       v(i,   0) = -v(i, 1)
       u(i,ny+1) =  u(i,ny)
       v(i,ny+1) = -v(i,ny)
    end do
    !
!$omp do private( i, j, u_dfdx, v_dfdy )
    do j=1,ny
       do i=1,nx-1
			u_dfdx = ((u(i,j)+dabs(u(i,j)))*(-f(i-1,j)+f(i,j))		&
						+(u(i,j)-dabs(u(i,j)))*(-f(i,j)+f(i+1,j)))*0.5d0*r_dxi
			v_dfdy = ((v(i,j)+dabs(v(i,j)))*(-f(i,j-1)+f(i,j))		&
						+(v(i,j)-dabs(v(i,j)))*(-f(i,j)+f(i,j+1)))*0.5d0*r_det
			fn(i,j) = f(i,j)-(u_dfdx+v_dfdy)*dt
       end do
    end do
    !
!$omp do private(i,j)
    do j=1,ny
       do i=1,nx-1
          f(i,j) = fn(i,j)
!          gx(i,j) = (fn(i+1,j)-fn(i-1,j))/(2.d0*dxi)
!          gy(i,j) = (fn(i,j+1)-fn(i,j-1))/(2.d0*det)
       end do
    end do

  end subroutine upwind2d_u
  !
  ! ----------------------------------------------------
  subroutine dcip2d_v( f, gx, gy )
    implicit none

    integer :: i,j

    real(8) :: et_x, xx, yy &
         , fis, fjs, a1, b1, c1, d1, e1, f1, g1, gxo, gyo, tmp, tmq
    integer :: isn, jsn, im1, jm1

    real(8),dimension(0:im,0:jm),intent(inout) :: f, gx, gy

    !
!$omp do private( i, j, et_x )
    do j=1,ny-1
       do i=1,nx
          u(i,j) = 0.25d0 * ( yu(i,j)+yu(i-1,j)+yu(i,j+1)+yu(i-1,j+1) )
          et_x   = ( eta_t(i-1,j)+eta_t(i,j) ) * 0.5d0
          v(i,j) = yv(i,j) + et_x
       end do
    end do
    !
!$omp do private(j)
    do j = 1, ny-1
       u(   0,j) = u( 1,j)
       v(   0,j) = v( 1,j)
       u(nx+1,j) = u(nx,j)
       v(nx+1,j) = v(nx,j)
    end do

!$omp do private(i)
    do i = 0, nx
       u(i,   0) = u(i, 1)
       v(i,   0) = 0.d0
       !        u(i,ny+1) = u(i,ny)
       !        v(i,ny+1) = 0.d0
       u(i,ny) = u(i,ny)
       v(i,ny) = 0.d0
    end do
    !

!$omp do private( i, j, xx, yy, isn, jsn, fis, fjs, im1, jm1, a1, b1, c1, d1, e1, f1, g1, tmp, tmq )
    do j=1,ny-1
       do i=1,nx
          xx = -u(i,j)*dt
          yy = -v(i,j)*dt
          isn = dsign(1.d0,u(i,j)) 
          jsn = dsign(1.d0,v(i,j)) 
          fis = dble(isn) 
          fjs = dble(jsn)
          im1 = i-isn            
          jm1 = j-jsn            
          a1 = ((gx(im1,j)+gx(i,j))*dx1*fis &
               	-2.d0*(f(i,j)-f(im1,j)))/(dx3*fis)
          e1 = (3.d0*(f(im1,j)-f(i,j)) &
               	+(gx(im1,j)+2.d0*gx(i,j))*dx1*fis)/dx2
          b1 = ((gy(i,jm1)+gy(i,j))*dy1*fjs &
               	-2.d0*(f(i,j)-f(i,jm1)))/(dy3*fjs)
          f1 = (3.d0*(f(i,jm1)-f(i,j)) &
               	+(gy(i,jm1)+2.d0*gy(i,j))*dy1*fjs)/dy2
          tmp = f(i,j)-f(i,jm1)-f(im1,j)+f(im1,jm1)
          tmq = gy(im1,j)-gy(i,j)
          d1 = (-tmp -tmq*dy1*fjs)/(dx1*dy2*fis)
          c1 = (-tmp-(gx(i,jm1)-gx(i,j))*dx1*fis)/(dx2*dy1*fjs)
          g1 = (-tmq+c1*dx2)/(dx1*fis)
          !--------------------------------------------
          fn(i,j) = ((a1*xx+c1*yy+e1)*xx+g1*yy+gx(i,j))*xx &
               		+((b1*yy+d1*xx+f1)*yy+gy(i,j))*yy+f(i,j)
          gxn(i,j) = (3.d0*a1*xx+2.d0*(c1*yy+e1))*xx+(d1*yy+g1)*yy+gx(i,j)
          gyn(i,j) = (3.d0*b1*yy+2.d0*(d1*xx+f1))*yy+(c1*xx+g1)*xx+gy(i,j)
       end do
    end do
    
!$omp do private( i, j, gxo, gyo )
		do j=1,ny-1
			do i=1,nx
				f(i,j) = fn(i,j)
				gxo = (-yv(i-1,j)+yv(i+1,j))*.5d0*r_dxi
				gyo = (-yv(i,j-1)+yv(i,j+1))*.5d0*r_det
				gx(i,j) = gxn(i,j)-(gxo*(-u(i-1,j)+u(i+1,j))			&
							+gyo*(-v(i-1,j)+v(i+1,j)))*0.5d0*dt*r_dxi
				gy(i,j) = gyn(i,j)-(gxo*(-u(i,j-1)+u(i,j+1))			&
							+gyo*(-v(i,j-1)+v(i,j+1)))*0.5d0*dt*r_det
			end do
		end do
    
  end subroutine dcip2d_v
  !
  ! ----------------------------------------------------------
  subroutine upwind2d_v(f,gx,gy)
    implicit none

    integer :: i,j
    real(8) :: et_x, u_dfdx, v_dfdy
    
    real(8),dimension(0:im,0:jm),intent(inout) :: f, gx, gy

    !
!$omp do private( i, j, et_x )
    do j = 1, ny-1
       do i = 1, nx
          u(i,j) = 0.25d0 * ( yu(i,j)+yu(i-1,j)+yu(i,j+1)+yu(i-1,j+1) )
          et_x   = ( eta_t(i-1,j)+eta_t(i,j) ) * 0.5d0
          v(i,j) = yv(i,j) + et_x
       end do
    end do
    !
!$omp do private(j)
    do j =1,ny-1
       u(   0,j)=u( 1,j)
       v(   0,j)=v( 1,j)
       u(nx+1,j)=u(nx,j)
       v(nx+1,j)=v(nx,j)
    end do

!$omp do private(i)
    do i = 0,nx
       u(i,   0)= u(i, 1)
       v(i,   0)= v(i, 1)
       u(i,ny+1)= u(i,ny)
       v(i,ny+1)= v(i,ny)
    end do
    !

!$omp do private(i,j,u_dfdx,v_dfdy)
    do j=1,ny-1
       do i=1,nx
			u_dfdx = ((u(i,j)+dabs(u(i,j)))*(-f(i-1,j)+f(i,j))		&
						+(u(i,j)-dabs(u(i,j)))*(-f(i,j)+f(i+1,j)))*0.5d0*r_dxi
			v_dfdy = ((v(i,j)+dabs(v(i,j)))*(-f(i,j-1)+f(i,j))		&
						+(v(i,j)-dabs(v(i,j)))*(-f(i,j)+f(i,j+1)))*0.5d0*r_det
			fn(i,j) = f(i,j)-(u_dfdx+v_dfdy)*dt
       end do
    end do
    !
!$omp do private(i,j)
    do j=1,ny-1
       do i=1,nx
          f( i,j) = fn(i,j)
!          gx(i,j) = (fn(i+1,j)-fn(i-1,j))/(2.d0*dxi)
!          gy(i,j) = (fn(i,j+1)-fn(i,j-1))/(2.d0*det)
       end do
    end do
  end subroutine upwind2d_v
  !
  ! ----------------------------------------------------------
  subroutine dcip2d_c(f,gx,gy)
    implicit none
    integer :: i,j

    real(8) :: et_x, xx, yy &
         , fis, fjs, a1, b1, c1, d1, e1, f1, g1, gxo, gyo, tmp, tmq
    integer :: isn, jsn, im1, jm1

    real(8),dimension(0:im,0:jm),intent(inout) :: f, gx, gy

    !
!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          u(i,j)=up(i,j)
          v(i,j)=vp(i,j)
       end do
    end do
    !
!$omp do private(j)
    do j =1,ny
       u(   0,j)=u( 1,j)
       v(   0,j)=v( 1,j)
       u(nx+1,j)=u(nx,j)
       v(nx+1,j)=v(nx,j)
    end do

!$omp do private(i)
    do i = 0,nx+1
       u(i,   0)= u(i, 1)
       v(i,   0)=-v(i, 1)
       u(i,ny+1)= u(i,ny)
       v(i,ny+1)=-v(i,ny)
    end do
    !
!$omp do private( i, j, xx, yy, isn, jsn, fis, fjs, im1, jm1, a1, b1, c1, d1, e1, f1, g1, tmp, tmq )
    do j=1,ny
       do i=1,nx
          xx= - u(i,j)*dt
          yy= - v(i,j)*dt
          isn = dsign(1.d0,u(i,j)) 
          jsn = dsign(1.d0,v(i,j)) 
          fis = dble(isn) 
          fjs = dble(jsn)
          im1 = i-isn            
          jm1 = j-jsn            
          a1 = ((gx(im1,j)+gx(i,j))*dx1*fis &
               -2.d0*(f(i,j)-f(im1,j)))/(dx3*fis)
          e1 = (3.d0*(f(im1,j)-f(i,j)) &
               +(gx(im1,j)+2.d0*gx(i,j))*dx1*fis)/dx2
          b1 = ((gy(i,jm1)+gy(i,j))*dy1*fjs &
               -2.d0*(f(i,j)-f(i,jm1)))/(dy3*fjs)
          f1 = (3.d0*(f(i,jm1)-f(i,j)) &
               +(gy(i,jm1)+2.d0*gy(i,j))*dy1*fjs)/dy2
          tmp = f(i,j)-f(i,jm1)-f(im1,j)+f(im1,jm1)
          tmq = gy(im1,j)-gy(i,j)
          d1 = (-tmp -tmq*dy1*fjs)/(dx1*dy2*fis)
          c1 = (-tmp-(gx(i,jm1)-gx(i,j))*dx1*fis)/(dx2*dy1*fjs)
          g1 = (-tmq+c1*dx2)/(dx1*fis)
        !--------------------------------------------
          fn(i,j) = ((a1*xx+c1*yy+e1)*xx+g1*yy+gx(i,j))*xx &
               			+((b1*yy+d1*xx+f1)*yy+gy(i,j))*yy+f(i,j)
          gxn(i,j) = (3.d0*a1*xx+2.d0*(c1*yy+e1))*xx+(d1*yy+g1)*yy+gx(i,j)
          gyn(i,j) = (3.d0*b1*yy+2.d0*(d1*xx+f1))*yy+(c1*xx+g1)*xx+gy(i,j)

       end do
    end do

!$omp do private( i, j, gxo, gyo )
    do  j=1,ny
       do  i=1,nx
          f(i,j) = fn(i,j)
          gxo = (-yc(i-1,j)+yc(i+1,j))*.5d0*r_dxi
          gyo = (-yc(i,j-1)+yc(i,j+1))*.5d0*r_det
          gx(i,j) = gxn(i,j)-(gxo*(-u(i-1,j)+u(i+1,j)) &
               				+gyo*(-v(i-1,j)+v(i+1,j)))*0.5d0*dt*r_dxi
          gy(i,j) = gyn(i,j)-(gxo*(-u(i,j-1)+u(i,j+1)) &
               				+gyo*(-v(i,j-1)+v(i,j+1)))*0.5d0*dt*r_det
       end do
    end do

  end subroutine dcip2d_c
  !
  ! ----------------------------------------------------------
  subroutine upwind2d_c(f,gx,gy)
    implicit none

    integer :: i,j
    real(8) :: u_dfdx, v_dfdy

    real(8),dimension(0:im,0:jm),intent(inout) :: f, gx, gy

    !
!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          u(i,j)=up(i,j)
          v(i,j)=vp(i,j)
       end do
    end do
    !
!$omp do private(j)
    do j =1,ny
       u(   0,j)=u( 1,j)
       v(   0,j)=v( 1,j)
       u(nx+1,j)=u(nx,j)
       v(nx+1,j)=v(nx,j)
    end do

!$omp do private(i)
    do i = 0,nx+1
       u(i,   0)= u(i, 1)
       v(i,   0)=-v(i, 1)
       u(i,ny+1)= u(i,ny)
       v(i,ny+1)=-v(i,ny)
    end do
    !
!$omp do private( i, j, u_dfdx, v_dfdy )
    do j=1,ny
       do i=1,nx
          u_dfdx=((u(i,j)+dabs(u(i,j)))*(-f(i-1,j)+f(i,j)) &
               + (u(i,j)-dabs(u(i,j)))*(-f(i,j)+f(i+1,j)))*r_dxi*0.5d0
          v_dfdy=((v(i,j)+dabs(v(i,j)))*(-f(i,j-1)+f(i,j)) &
               + (v(i,j)-dabs(v(i,j)))*(-f(i,j)+f(i,j+1)))*r_det*0.5d0
          fn(i,j)=f(i,j)-(u_dfdx+v_dfdy)*dt

       end do
    end do
    !
!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          f( i,j)=fn(i,j)
!          gx(i,j)=(fn(i+1,j)-fn(i-1,j))/(2.d0*dxi)
!          gy(i,j)=(fn(i,j+1)-fn(i,j-1))/(2.d0*det)
       end do
    end do
  end subroutine upwind2d_c
end module     dcip2d_m

!--------------------------------------------------------------------------------
module shift_m
  
  use common_hh
contains
  !-----------------------------------------------------------------------
  subroutine shift_u(yn,y)
    implicit none
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(in)    :: yn
    real(8),dimension(0:im,0:jm),intent(inout) :: y

!!$omp do
!    do j=1,ny
!       do i=0,nx
!          y(i,j) = yn(i,j)
!       end do
!    end do

!$omp do private(i,j)
    do j=0,ny+1
       do i=0,nx+1
          y(i,j) = yn(i,j)
       end do
    end do

  end subroutine shift_u
  !-----------------------------------------------------------------------
  subroutine shift_v(yn,y)
    implicit none
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(in)    :: yn
    real(8),dimension(0:im,0:jm),intent(inout) :: y

!!$omp do
!    do j=1,ny-1
!       do i=0,nx+1
!          y(i,j) = yn(i,j)
!       end do
!    end do

!$omp do private(i,j)
    do j=0,ny+1
       do i=0,nx+1
          y(i,j) = yn(i,j)
       end do
    end do

  end subroutine shift_v
  !-----------------------------------------------------------------------
  subroutine shift_c(yn,y)
    implicit none
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(in)    :: yn
    real(8),dimension(0:im,0:jm),intent(inout) :: y

!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          y(i,j) = yn(i,j)
       end do
    end do

  end subroutine shift_c
  !-----------------------------------------------------------------------
  subroutine shift_ke(yn,y)
    implicit none
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(in)    :: yn
    real(8),dimension(0:im,0:jm),intent(inout) :: y

!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          y(i,j) = yn(i,j)
       end do
    end do

  end subroutine shift_ke
  !-----------------------------------------------------------------------
  subroutine hshift(hn,h)
    implicit none
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(in)    :: hn
    real(8),dimension(0:im,0:jm),intent(inout) :: h

!$omp do private(i,j)
    do j=1,ny
       do i=1,nx-1
          h(i,j) = hn(i,j)
       end do
    end do

  end subroutine hshift
end module      shift_m

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
module dryck_m
  
  use common_hh
contains
  !------------------------------------------------------
  subroutine dryck_u(u,hs,gx,gy)
    implicit none
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(inout) :: u, gx, gy
    real(8),dimension(0:im,0:jm),intent(in)    :: hs

!$omp do private(i,j)
    do j=1,ny
       do i=1,nx-1
          if(     hs(i  ,j)<=hmin.and.hs(i+1,j)<=hmin ) then
             u( i,j) = 0.d0
             gx(i,j) = 0.d0
             gy(i,j) = 0.d0
          else if(hs(i  ,j)<=hmin.and.u(i,j) > 0.d0) then
             u( i,j) = 0.d0
             gx(i,j) = 0.d0
             gy(i,j) = 0.d0
          else if(hs(i+1,j)<=hmin.and.u(i,j) < 0.d0) then
             u( i,j) = 0.d0
             gx(i,j) = 0.d0
             gy(i,j) = 0.d0
          end if
       end do
    end do

  end subroutine dryck_u
  !
  !------------------------------------------------------
  subroutine dryck_v(v,hs,gx,gy)
    implicit none
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(inout) :: v, gx, gy
    real(8),dimension(0:im,0:jm),intent(in)    :: hs

!$omp do private(i,j)
    do j=1,ny-1
       do i=1,nx
          if(     hs(i,j  ) <= hmin.and.hs(i,j+1) <= hmin ) then
             v( i,j) = 0.d0
             gx(i,j) = 0.d0
             gy(i,j) = 0.d0
          else if(hs(i,j  ) <= hmin.and.v(i,j) > 0.d0) then
             v( i,j) = 0.d0
             gx(i,j) = 0.d0
             gy(i,j) = 0.d0
          else if(hs(i,j+1) <= hmin.and.v(i,j) < 0.d0) then
             v( i,j) = 0.d0
             gx(i,j) = 0.d0
             gy(i,j) = 0.d0
          end if
       end do
    end do

  end subroutine dryck_v
  !
  !------------------------------------------------------
  subroutine dryck_c(c,hs,gx,gy)
    implicit none
    integer :: i,j

    real(8),dimension(0:im,0:jm),intent(inout) :: c, gx, gy
    real(8),dimension(0:im,0:jm),intent(in)    :: hs
    
!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          if(hs(i,j) <= hmin.or.c(i,j) < 0.d0) then
             c( i,j) = 0.d0
             gx(i,j) = 0.d0
             gy(i,j) = 0.d0
          end if
       end do
    end do
  end subroutine dryck_c
end module     dryck_m

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
module ndr_m
  
  use common_hh
  use common_cmuv
  use common_cmsui
contains
  !-----------------------------------------------------------------------
  subroutine ndr(hs,h,eta,ndry) !count drycell, Noflux from dry-cell
    implicit none
    integer :: i,j

    integer :: ndry

    real(8),dimension(0:im,0:jm),intent(inout) :: hs, h
    real(8),dimension(0:im,0:jm),intent(in)    :: eta

    ndry = 0
!!$omp do reduction( +:ndry )
    do j=1, ny
       do i=1, nx
          if(ijo_in(i,j) /= 1 .and. hs(i,j) <= hmin ) then
             hs(i,j) = hmin
             h( i,j) = eta(i,j) + hs(i,j)
             ndry    = ndry + 1
             if(yun(i  ,j  ) > 0.d0) yun(i  ,j  )=0.d0
             if(yun(i-1,j  ) < 0.d0) yun(i-1,j  )=0.d0
             if(yvn(i  ,j  ) > 0.d0) yvn(i  ,j  )=0.d0
             if(yvn(i  ,j-1) < 0.d0) yvn(i  ,j-1)=0.d0
          end if
       end do
    end do
  end subroutine ndr
end module     ndr_m

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
module srcal_m
  
  use common_hh
  use common_cmxy
  use common_cmhq
  use common_cmtst
  use secondary_flow
contains
  ! --------------------------------------------------------
  subroutine srcal( ux, uy, up, sr, snst )
    implicit none
    integer :: i, j

    real(8) :: vv, vv3, duydxi, duxdxi, duydet, duxdet
    
    real(8), intent(in) :: snst
    real(8),dimension(0:im,0:jm),intent(in)    :: ux, uy, up
    real(8),dimension(0:im,0:jm),intent(inout) :: sr
    !
!$omp do private( i, j, vv, vv3, duydxi, duxdxi, duydet, duxdet )
    do j=1, ny
       do i=1, nx
          vv = dsqrt(ux(i,j)**2+uy(i,j)**2)
          if((vv > 1e-5).and.(up(i,j) > 0.d0))  then
             vv3 = vv**3
             if(i == 1) then
                duydxi = ( -uy(i  ,j) + uy(i+1,j) ) * r_dxi
                duxdxi = ( -ux(i  ,j) + ux(i+1,j) ) * r_dxi
             else if(i == nx) then
                duydxi = ( -uy(i-1,j) + uy(i  ,j) ) * r_dxi
                duxdxi = ( -ux(i-1,j) + ux(i  ,j) ) * r_dxi
             else
                duydxi = ( -uy(i-1,j) + uy(i+1,j) ) * 0.5d0 * r_dxi
                duxdxi = ( -ux(i-1,j) + ux(i+1,j) ) * 0.5d0 * r_dxi
             end if
             if(j == 1) then
                duydet = ( -uy(i,j  ) + uy(i,j+1) ) * r_det
                duxdet = ( -ux(i,j  ) + ux(i,j+1) ) * r_det
             else if(j == ny) then
                duydet = ( -uy(i,j-1) + uy(i,j  ) ) * r_det
                duxdet = ( -ux(i,j-1) + ux(i,j  ) ) * r_det
             else
                duydet = ( -uy(i,j-1) + uy(i,j+1) ) * 0.5d0 * r_det
                duxdet = ( -ux(i,j-1) + ux(i,j+1) ) * 0.5d0 * r_det
             end if
             sr(i,j) = 1.d0 / vv3* &
                  		( ux(i,j)*ux(i,j)*(xi_x(i,j)*duydxi+et_x(i,j)*duydet) 	&
                  		 +ux(i,j)*uy(i,j)*(xi_y(i,j)*duydxi+et_y(i,j)*duydet) 	&
                  		 -ux(i,j)*uy(i,j)*(xi_x(i,j)*duxdxi+et_x(i,j)*duxdet) 	&
                  		 -uy(i,j)*uy(i,j)*(xi_y(i,j)*duxdxi+et_y(i,j)*duxdet) )
          else
             sr(i,j) = 0.d0
          end if
       end do
    end do
    !
    if(jrep == 1) then
!$omp do private(j)
       do j = 1, ny
          sr(   0,j) = sr(nx-3,j)
          sr(   1,j) = sr(nx-2,j)
          sr(nx-1,j) = sr(   2,j)
          sr(nx  ,j) = sr(   3,j)
       end do
    end if

    if( j_sf==0 ) then
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				if( vti(i,j)<1e-8.or.hs(i,j)<hmin ) then
					us_bed(i,j) = 0.d0
					un_bed(i,j) = 0.d0
				else
					us_bed(i,j) = vti(i,j)
					un_bed(i,j) = vti(i,j)*snst*hs(i,j)*sr(i,j)
				end if
			end do
		end do
	 end if

  end subroutine srcal
end module     srcal_m

! -------------------------------------------------------------------------- !

module vorticity_eq_m
	use common_hh
	use bound_m
	implicit none
	
	integer, dimension(:,:), allocatable :: i_an
	real(8), dimension(:,:), allocatable :: us_surf, un_surf
	real(8), dimension(:,:), allocatable :: uxi_surf, uet_surf, uxi_bed, uet_bed
	real(8), dimension(:,:), allocatable :: uxi_surf_up, uxi_bed_up, uet_surf_vp, uet_bed_vp
	real(8), dimension(:,:), allocatable :: c_an, centrifugal, vorticity_source, diff_an
	real(8), dimension(:,:), allocatable :: uxisuns, uxibunb, uetsuns, uetbunb
	
  contains
  
	subroutine alloc_vorticity_eq_temp_variables
		implicit none
		
		allocate( i_an(0:im,0:jm) )
		allocate( us_surf(0:im,0:jm), un_surf(0:im,0:jm) )
		allocate( uxi_surf(0:im,0:jm), uet_surf(0:im,0:jm), uxi_bed(0:im,0:jm), uet_bed(0:im,0:jm) )
		allocate( uxi_surf_up(0:im,0:jm), uxi_bed_up(0:im,0:jm), uet_surf_vp(0:im,0:jm), uet_bed_vp(0:im,0:jm) )
		allocate( c_an(0:im,0:jm), centrifugal(0:im,0:jm), vorticity_source(0:im,0:jm), diff_an(0:im,0:jm) )
		allocate( uxisuns(0:im,0:jm), uxibunb(0:im,0:jm), uetsuns(0:im,0:jm), uetbunb(0:im,0:jm) )
	
	end subroutine alloc_vorticity_eq_temp_variables

	subroutine vorticity_eq
		use common_cmtst
		use common_cmuvp
		use common_cmxy
		use common_cmsr
		use common_cmhq
		use common_cmsui
		use common_cmconf1
		use secondary_flow
		implicit none
		integer :: i, j
		real(8) :: xi, xi1, xi20, full_an, coss, sins, xi_1, xi_2, et_1, et_2

		call boundi_scalar( an )
		call boundj_scalar( an )
		
!$omp do private( i, j, xi1, xi, xi20, coss, sins, xi_1, xi_2, et_1, et_2 )
		do j=1,ny
			do i=1,nx
			
				if( vti(i,j)<=1e-5 .or. ijo_in(i,j)==1 ) then
					coss = 0.d0
					sins = 0.d0
					
					c_an(i,j) = -10.d0
					i_an(i,j) = 0
					us_surf(i,j) = 0.d0
					us_bed(i,j) = 0.d0
					un_surf(i,j) = 0.d0
					un_bed(i,j) = 0.d0
					uxi_surf(i,j) = 0.d0
					uxi_bed(i,j) = 0.d0
					uet_surf(i,j) = 0.d0
					uet_bed(i,j) = 0.d0
					centrifugal(i,j) = 0.d0
					vorticity_source(i,j) = 0.d0
					diff_an(i,j) = 0.d0
				else
					coss = ux(i,j)/vti(i,j)
					sins = uy(i,j)/vti(i,j)
					
					i_an(i,j) = 1
					xi1 = c_turb*vti(i,j)/usta(i,j)
					xi = max(xi1-1.d0/3.d0,0.d0)
					c_an(i,j) = -(xi**2.d0/12.d0+xi*11.d0/360.d0+1.d0/504.d0)/(xi1*c_turb)**2.d0
					us_surf(i,j) = vti(i,j)*(xi+0.5d0)/xi1
					us_bed(i,j) = vti(i,j)*xi/xi1
					xi20 = -(xi**3.d0+xi**2.d0+0.4d0*xi+2.d0/35.d0)/xi1**3.d0
					un_surf(i,j) = -( 7.d0/180.d0*xi**2.d0+1.d0/56.d0*xi+1.d0/504.d0 )		&
										/(xi1*c_turb)**2.d0*an(i,j)
					un_bed(i,j) = ( 2.d0/45.d0*xi+4.d0/315.d0 )*xi/(xi1*c_turb)**2.d0*an(i,j)

					xi_1 =  coss*xi_x(i,j)+sins*xi_y(i,j)
					xi_2 = -sins*xi_x(i,j)+coss*xi_y(i,j)
					et_1 =  coss*et_x(i,j)+sins*et_y(i,j)
					et_2 = -sins*et_x(i,j)+coss*et_y(i,j)
					uxi_surf(i,j) = xi_1*us_surf(i,j)+xi_2*un_surf(i,j)
					uxi_bed(i,j)  = xi_1*us_bed (i,j)+xi_2*un_bed (i,j)
					uet_surf(i,j) = et_1*us_surf(i,j)+et_2*un_surf(i,j)
					uet_bed(i,j)  = et_1*us_bed (i,j)+et_2*un_bed (i,j)

					centrifugal(i,j) = sr(i,j)*(us_surf(i,j)**2.d0-us_bed(i,j)**2.d0)/sj(i,j)
					vorticity_source(i,j) = vti(i,j)*(xi*xi+7.d0/12.d0*xi+1.d0/12.d0)/(hs(i,j)*xi1*xi1*xi1)/sj(i,j)
!					diff_an(i,j) = c_an(i,j)*0.3d0*usta(i,j)*hs(i,j)*	&
!										( (an(i+1,j)-2.d0*an(i,j)+an(i-1,j))*r_dxi**2.d0+		&
!										  (an(i,j+1)-2.d0*an(i,j)+an(i,j-1))*r_det**2.d0 )
				end if
			
			end do
		end do

		call boundi_scalar( uxi_surf )
		call boundi_scalar( un_surf )
		call boundi_scalar( uxi_bed )
		call boundi_scalar( un_bed )

!$omp do private(i,j)
		do j=1,ny
			do i=0,nx
				uxi_surf_up(i,j) = ( uxi_surf(i,j)+ uxi_surf(i+1,j))*0.5d0*ijobst_u(i,j)
				uxi_bed_up (i,j) = (  uxi_bed(i,j)+  uxi_bed(i+1,j))*0.5d0*ijobst_u(i,j)
			end do
		end do
		
!$omp do private(i,j)
		do j=1,ny-1
			do i=1,nx
				uet_surf_vp (i,j) = ( uet_surf(i,j)+ uet_surf(i,j+1))*0.5d0*ijobst_v(i,j)
				uet_bed_vp  (i,j) = (  uet_bed(i,j)+  uet_bed(i,j+1))*0.5d0*ijobst_v(i,j)
			end do
		end do
		
!$omp do private(i)
		do i=1,nx
			uet_surf_vp(i, 0) = 0.d0
			uet_bed_vp (i, 0) = 0.d0
			uet_surf_vp(i,ny) = 0.d0
			uet_bed_vp (i,ny) = 0.d0
		end do

		if( j_conf>=2 ) then
!$omp do private(i)
			do i=i_t1+1,i_t2
				if( ijo_in(i,j_t2+js2)==0 ) then
					uet_surf_vp(i,j_t2) = uet_surf_vp(i,j_t2-jxd)
					uet_bed_vp (i,j_t2) = uet_bed_vp (i,j_t2-jxd)
				end if
			end do
		end if

!$omp do private(i,j)
		do j=1,ny
			do i=1,nx-1
				uxisuns(i,j) = ( (uxi_surf_up(i,j)+dabs(uxi_surf_up(i,j)))*un_surf(i  ,j)/sj(i  ,j)				&
									 +(uxi_surf_up(i,j)-dabs(uxi_surf_up(i,j)))*un_surf(i+1,j)/sj(i+1,j) )*0.5d0
				uxibunb(i,j) = ( (uxi_bed_up (i,j)+dabs(uxi_bed_up (i,j)))*un_bed (i  ,j)/sj(i  ,j)				&
									 +(uxi_bed_up (i,j)-dabs(uxi_bed_up (i,j)))*un_bed (i+1,j)/sj(i+1,j) )*0.5d0
			end do
		end do

		call bound_up( uxisuns )
		call bound_up( uxibunb )

!$omp do private(i,j)
		do j=1,ny-1
			do i=1,nx
				uetsuns(i,j) = ( (uet_surf_vp(i,j)+dabs(uet_surf_vp(i,j)))*un_surf(i,j  )/sj(i,j  )				&
									 +(uet_surf_vp(i,j)-dabs(uet_surf_vp(i,j)))*un_surf(i,j+1)/sj(i,j+1) )*0.5d0
				uetbunb(i,j) = ( (uet_bed_vp (i,j)+dabs(uet_bed_vp (i,j)))*un_bed (i,j  )/sj(i,j  )				&
									 +(uet_bed_vp (i,j)-dabs(uet_bed_vp (i,j)))*un_bed (i,j+1)/sj(i,j+1) )*0.5d0
			end do
		end do
		
!$omp do private(i)
		do i=1,nx
			uetsuns(i, 0) = 0.d0
			uetsuns(i,ny) = 0.d0
			uetbunb(i, 0) = 0.d0
			uetbunb(i,ny) = 0.d0
		end do

		if( j_conf>=2 ) then
!$omp do private(i)
			do i=i_t1+1,i_t2
				if( ijo_in(i,j_t2+js2)==0 ) then
					uetsuns(i,j_t2) = uetsuns(i,j_t2-jxd)
					uetbunb(i,j_t2) = uetbunb(i,j_t2-jxd)
				end if
			end do
		end if

!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				an(i,j) = ( vort(i,j)+(	&
								-(-uxisuns(i-1,j  )+uxisuns(i,j))*r_dxi		&
								+(-uxibunb(i-1,j  )+uxibunb(i,j))*r_dxi		&
								-(-uetsuns(i  ,j-1)+uetsuns(i,j))*r_det		&
								+(-uetbunb(i  ,j-1)+uetbunb(i,j))*r_det		&
								-centrifugal(i,j) )*dt )*i_an(i,j)/(c_an(i,j)/sj(i,j)-vorticity_source(i,j)*dt)
				vort(i,j) = an(i,j)*c_an(i,j)/sj(i,j)
			end do
		end do

	end subroutine vorticity_eq

end module vorticity_eq_m

!--------------------------------------------------------------------------------
module qbcal_w_m
  
  use common_hh
  use common_cmxy
  use common_cmxiet
  use common_cmave
  use common_cmsr
  use common_cmqb
  use common_cmtst
  use common_cmtst
  use common_cmconf1
  use common_cmsui
  use common_cmdex
  use common_cmdnx
  use fixed_bed
  use secondary_flow
  use supplying_sediment

  real(8), parameter :: beta_g = 1.d0
  real(8),dimension(:,:),allocatable :: ubxiti, ubetti, qbti

contains

  subroutine alloc_qbcal_temp_variables
    implicit none

    allocate( ubxiti(0:im,0:jm), ubetti(0:im,0:jm), qbti(0:im,0:jm) )

    ubxiti=0.d0; ubetti=0.d0; qbti=0.d0
    
  end subroutine alloc_qbcal_temp_variables
  ! ----------------------------------------------------------------------
  subroutine qbcal_w( ux, uy, hs, gamma, pi_bed, dsmt, tantc,j_bank &
       , i_erosion_start, i_erosion_end, bheight )
    implicit none
    integer :: i,j,ip1,im1,jp1,jm1

    real(8) :: gamma, dsmt, tantc, bheight, coss, sins 			&
         , vvup, ts0, ubup, qb, xr, er, dzdxi, cost, dzdet, uang, vvvp, ubvp 		&
         , bh0, bh_alpha, uxbed, uybed, vb, us_e, ts_e, pi_bed						&
         , d_sed1, d_sed2, beta_a													&
         , qbxi1, qbxi2, qbet1, qbet2												&
         , qbx_xi1, qby_xi1, qbx_et1, qby_et1, qbx_xi2, qby_xi2, qbx_et2, qby_et2	&
         , xi_x1, xi_y1, xi_x2, xi_y2, et_x1, et_y1, et_x2, et_y2					&
         , sj_xi1, sj_et1, sj_xi2, sj_et2, qbn
    integer :: j_bank, i_erosion_start, i_erosion_end, j1, j2

    real(8),dimension(0:im,0:jm),intent(in) :: ux, uy, hs

!$omp do private( i, j, coss, sins, dzdxi, dzdet, uxbed, uybed, vb )
    do j = 1, ny
       do i = 1, nx
          if( dabs(vti(i,j)) < 1e-8.or.hs(i,j) < hmin) then
            ubxiti(i,j) = 0.d0
            ubetti(i,j) = 0.d0
            qbti(  i,j) = 0.d0
            cos_bed(i,j) = 0.d0
            sin_bed(i,j) = 0.d0
            kc(i,j) = 1.d0
            btheta_y(i,j) = 0.d0
            btheta_x(i,j) = 0.d0
            dzds(i,j) = 0.d0
            dzdn(i,j) = 0.d0
            ubnvb(i,j) = 0.d0
          else
            coss = ux(i,j) / vti(i,j)
            sins = uy(i,j) / vti(i,j)
            ubxiti(i,j) = ( ( xi_x(i,j)*coss+xi_y(i,j)*sins)*us_bed(i,j) &
                  			+ ( - xi_x(i,j)*sins+xi_y(i,j)*coss)*un_bed(i,j) ) / &
                  				( xi_r(i,j) + xi_r(i,j-1) ) * 2.d0
            ubetti(i,j) = ( ( et_x(i,j)*coss+et_y(i,j)*sins)*us_bed(i,j) &
                  			+ ( - et_x(i,j)*sins+et_y(i,j)*coss)*un_bed(i,j) ) / &
                  				( et_r(i,j) + et_r(i-1,j) ) * 2.d0
                  				
            ubnvb(i,j) = un_bed(i,j)/us_bed(i,j)

            uxbed = coss*us_bed(i,j)-sins*un_bed(i,j)
            uybed = sins*us_bed(i,j)+coss*un_bed(i,j)
				vb = dsqrt( uxbed**2.d0+uybed**2.d0 ) 
	            
	!			if( ubxiti(i,j)>0.d0 ) then
	!				if( i==nx ) then
	!					dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi*xi_r_up(i-1,j)
	!				else
	!					dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi*xi_r_up(i,j)
	!				end if
	!			else
	!				if( i==1 ) then
	!					dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi*xi_r_up(i,j)
	!				else
	!					dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi*xi_r_up(i-1,j)
	!				end if
	!			end if
				
	!			if( ubetti(i,j)<0.d0 ) then
	!				if( j==1 ) then
	!					dzdet = (-eta(i,j)+eta(i,j+1))*r_det*et_r_vp(i,j)
	!				else
	!					dzdet = (-eta(i,j-1)+eta(i,j))*r_det*et_r_vp(i,j-1)
	!				end if
	!			else
	!				if( j==ny ) then
	!					dzdet = (-eta(i,j-1)+eta(i,j))*r_det*et_r_vp(i,j-1)
	!				else
	!					dzdet = (-eta(i,j)+eta(i,j+1))*r_det*et_r_vp(i,j)
	!				end if			
	!			end if

	!			theta_x(i,j) = datan(dzdxi)
	!			theta_y(i,j) = datan(dzdet)

				if( ubxiti(i,j)>0.d0 ) then
					if( i==nx ) then
						dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi
					else
						dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi
					end if
				else
					if( i==1 ) then
						dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi
					else
						dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi
					end if
				end if
				
				if( ubetti(i,j)<0.d0 ) then
					if( j==1 ) then
						dzdet = (-eta(i,j)+eta(i,j+1))*r_det
					else
						dzdet = (-eta(i,j-1)+eta(i,j))*r_det
					end if
				else
					if( j==ny ) then
						dzdet = (-eta(i,j-1)+eta(i,j))*r_det
					else
						dzdet = (-eta(i,j)+eta(i,j+1))*r_det
					end if			
				end if
							
				theta_x(i,j) = datan(xi_x(i,j)*dzdxi+et_x(i,j)*dzdet)
				theta_y(i,j) = datan(xi_y(i,j)*dzdxi+et_y(i,j)*dzdet)
				
				cos_bed(i,j) = uxbed / vb
	         sin_bed(i,j) = uybed / vb
	            
				kc(i,j) = Dmax1(1d0+1d0/mu_s*((1d0/spec+1d0)*cos_bed(i,j)*dtan(theta_x(i,j))	&
									+sin_bed(i,j)*dtan(theta_y(i,j))),0.5D0)
	    		
	    		btheta_y(i,j) = 1.d0/(1.d0+dtan(theta_x(i,j))**2.d0+dtan(theta_y(i,j))**2.d0)
	    		btheta_x(i,j) = btheta_y(i,j)+dcos(theta_x(i,j))**2.d0/spec
	    		
	    		dzds(i,j) = (xi_x(i,j)*coss+xi_y(i,j)*sins)*dzdxi		&
						   +(et_x(i,j)*coss+et_y(i,j)*sins)*dzdet
				dzdn(i,j) = (-xi_x(i,j)*sins+xi_y(i,j)*coss)*dzdxi		&
						   +(-et_x(i,j)*sins+et_y(i,j)*coss)*dzdet
					   
          end if
       end do
    end do

    !
    if( j_bedload==0 ) then
!$omp do private(i,j)
    	do j=1,ny
    		do i=1,nx
    			if( tausta(i,j)<=tsc ) then
    				qbti(i,j) = 0.d0
    			else
    				qbti(i,j) = 8.d0*(tausta(i,j)-tsc)**1.5d0*dsqrt( spec*g*diam**3 )*phi(i,j)*c_se(i,j)
    			end if
    		end do
    	end do
    else
!$omp do private(i,j,us_e,ts_e)
    	do j=1,ny
    		do i=1,nx
    			if( tausta(i,j)<=tsc*kc(i,j) ) then
    				qbti(i,j) = 0.d0
    			else
    				call us_avelog(us_e,vti(i,j),hs(i,j),diam*(1.d0+2.d0*tausta(i,j)))
    				ts_e = us_e**2.d0/(spec*g*diam)
    				qbti(i,j) = 17.d0 * ts_e**1.5 * ( 1.d0-kc(i,j)*tsc/tausta(i,j) ) &
                       * ( 1.d0-dsqrt(kc(i,j)*tsc/tausta(i,j)) ) * dsqrt( spec*g*diam**3 )*phi(i,j)*c_se(i,j)
    			end if
    		end do
    	end do
    end if

    if( j_qb_vec==0 ) then
    	!
    	! ------- qb_xi -------------------------
    	!
!$omp do private( i, j, vvup, ts0, ubup, qb, xr, er, dzdxi, cost, dzdet, uang )
	    do j=1, ny
	       do i=1, nx-1
!	          vvup  = ( vti(i,j)+vti(i+1,j) ) * 0.5d0 * beta_g
	          vvup  = ( us_bed(i,j)+us_bed(i+1,j) ) * 0.5d0
	          ts0   = ( tausta(i,j)+tausta(i+1,j) ) * 0.5d0
	          ubup  = ( ubxiti(i,j)+ubxiti(i+1,j) ) * 0.5d0
	          qb    = ( qbti(  i,j)+qbti(  i+1,j) ) * 0.5d0
	          xr    = xi_r_up(i,j)
	          er    = et_r(   i,j)
	          dzdxi = ( -eta(i,j)+eta(i+1,j) ) * r_dxi
	          cost  = ( cos_t(i+1,j) + cos_t(i,j) ) * 0.5d0
	          if( j == 1 ) then
	             dzdet = ( -(eta(i,j)+eta(i+1,j))+(eta(i,j+1)+eta(i+1,j+1)) ) * 0.5d0 *r_det
	             if(eta(i+1,j)>=b_elv(1,i+1).or.eta(i,j)>=b_elv(1,i)) dzdet = 0.d0
	          else if(j == ny) then
	             dzdet = ( -(eta(i,j-1)+eta(i+1,j-1))+(eta(i,j)+eta(i+1,j)) ) * 0.5d0 *r_det
	             if(eta(i+1,j)>=b_elv(2,i+1).or.eta(i,j)>=b_elv(2,i)) dzdet = 0.d0
	          else
	             dzdet = ( -(eta(i,j-1)+eta(i+1,j-1))+(eta(i,j+1)+eta(i+1,j+1)) ) * 0.25d0 *r_det
	          end if

	          if(ts0   < 1e-5 ) then
	             qb_xi(i,j) = 0.d0
	          else
	             if(vvup < 1e-5 ) then
	                uang = 0.d0
	             else
	                uang = ubup / vvup
	             end if
	             qb_xi(i,j) = xr * ( uang &
	                  - gamma / dsqrt(ts0) * ( xr*dzdxi + er*cost*dzdet ) )
	                  
	             if( phi(i,j)<1.d0 .or. phi(i+1,j)<1.d0 ) then
	                if( qb_xi(i,j)>0.d0 ) then
	                   qb = qbti(i,j)
	                else
	                   qb = qbti(i+1,j)
	                end if
	             end if
	             
	             qb_xi(i,j) = qb_xi(i,j)*qb
	                  
	             if(hs(i  ,j) <= hmin.and.qb_xi(i,j) > 0.d0) qb_xi(i,j)=0.d0
	             if(hs(i+1,j) <= hmin.and.qb_xi(i,j) < 0.d0) qb_xi(i,j)=0.d0
	          end if
	       end do
	    end do

    	if(jrep == 1) then
!$omp do private(j)
       		do j=1, ny
          		qb_xi(   0,j) = qb_xi(nx-3,j)
          		qb_xi(   1,j) = qb_xi(nx-2,j)
          		qb_xi(nx-1,j) = qb_xi(   2,j)
          		qb_xi(nx  ,j) = qb_xi(   3,j)
       		end do
    	else
!$omp do private(j)
       		do j=1, ny
          		qb_xi( 0,j) = qb_xi(   1,j)
          		qb_xi(nx,j) = qb_xi(nx-1,j)
       		end do
    	end if
	    !
	    ! ------- qb_et -------------------------
	    !
!$omp do private( i, j, j1, j2, xr, er, vvvp, ts0, ubvp, qb, dzdet, cost, dzdxi, bh0, bh_alpha, uang )
	    do i=2,nx-1
	       if(j_bank==0.or.i<=i_erosion_start.or.i>=nx-i_erosion_end) then
	          j1 =    1
	          j2 = ny-1
	          qb_et(i, 0) = 0.d0
	          qb_et(i,ny) = 0.d0
	       else
	          j1 =  0
	          j2 = ny
	       end if
	       !
	       do j = j1, j2
	          xr = xi_r(   i,j)
	          er = et_r_vp(i,j)
	          if( j == 0 ) then
!	             vvvp  = vti(i,j+1) * beta_g
	             vvvp  = us_bed(i,j+1)
	             ts0   = tausta(i,j+1)
	             ubvp  = ubetti(i,j+1)
	             qb    = qbti(  i,j+1)
	             dzdet = - tantc / er
	             cost  = cos_t( i,j+1)
	             dzdxi = ( -eta(i-1,j+1)+eta(i+1,j+1) ) * 0.5d0 * r_dxi
	             bh0   = b_elv(1,i) - eta(i,1)
	             if( bh0 < 0.d0      ) bh0 = 0.d0
	             if( bh0 > bheight ) bh0 = bheight
	             bh_alpha = bh0 / bheight
	          elseif( j == ny ) then
!	             vvvp  = vti(i,j) * beta_g
	             vvvp  = us_bed(i,j)
	             ts0   = tausta(i,j)
	             ubvp  = ubetti(i,j)
	             qb    = qbti(  i,j)
	             dzdet = tantc / er
	             cost  = cos_t( i,j)
	             dzdxi = ( -eta(i-1,j)+eta(i+1,j) ) * 0.5d0 * r_dxi
	             bh0   = b_elv(2,i) - eta(i,ny)
	             if( bh0 < 0.d0) bh0 = 0.d0
	             if( bh0 > bheight ) bh0 = bheight
	             bh_alpha = bh0 / bheight
	          else
!	             vvvp  = ( vti(   i,j  ) + vti(   i,j+1) ) * 0.5d0 * beta_g
	             vvvp  = ( us_bed(i,j) + us_bed(i,j+1) ) * 0.5d0 * beta_g
	             ts0   = ( tausta(i,j  ) + tausta(i,j+1) ) * 0.5d0
	             ubvp  = ( ubetti(i,j  ) + ubetti(i,j+1) ) * 0.5d0
	             qb    = ( qbti(  i,j  ) + qbti(  i,j+1) ) * 0.5d0
	             dzdet = ( eta(   i,j+1) - eta( i,j  ) ) * r_det
	             cost  = ( cos_t( i,j  ) + cos_t( i,j+1) ) * 0.5d0
	             dzdxi = ( -(eta(i-1,j)+eta(i-1,j+1))+(eta(i+1,j)+eta(i+1,j+1)) ) * 0.25d0 * r_dxi
	             bh_alpha = 1.d0
	          end if
	          if(( j ==  0.and.eta(i, 1) >= b_elv(1,i) ) .or. &
	               ( j == ny.and.eta(i,ny) >= b_elv(2,i) ) ) then
	             qb_et(i,j) = 0.d0
	          elseif( ts0 < 1e-5 ) then
	             qb_et(i,j) = 0.d0
	          else
	             if( vvvp < 1e-5 ) then
	                uang = 0.d0
	             else
	                uang = ubvp / vvvp
	             end if
	             qb_et(i,j) = er * ( uang &
	                  - gamma / dsqrt(ts0) * (er*dzdet+xr*cost*dzdxi)) * bh_alpha
	                  
	             if( phi(i,j)<1.d0 .or. phi(i,j+1)<1.d0 ) then
	                if( qb_et(i,j)>0.d0 ) then
	                   qb = qbti(i,j)
	                else
	                   qb = qbti(i,j+1)
	                end if
	             end if
	             
	             qb_et(i,j) = qb_et(i,j)*qb
	                  
	             if(j >  1.and.(hs(i,j  ) <= hmin.and.qb_et(i,j) > 0.d0) ) then
	                qb_et(i,j) = 0.d0
	             end if
	             if(j < ny.and.(hs(i,j+1) <= hmin.and.qb_et(i,j) < 0.d0) ) then
	                qb_et(i,j) = 0.d0
	             end if
	          end if
	       end do
	    end do

    	if( jrep == 1 ) then
!$omp do private(j)
       		do j = 0, ny
          		qb_et(   0,j) = qb_et(nx-3,j)
          		qb_et(   1,j) = qb_et(nx-2,j)
          		qb_et(nx-1,j) = qb_et(   2,j)
          		qb_et(nx  ,j) = qb_et(   3,j)
       		end do
    	else
!$omp do private(j)
       		do j = 0, ny
          		qb_et(   1,j) = qb_et(   2,j)
          		qb_et(nx  ,j) = qb_et(nx-1,j)
       		end do
    	end if
    !
    	if( j_conf>=2 ) then
!$omp do private(i)
       		do i=i_t1+1,i_t2
          		qb_et(i,j_t2)=qb_et(i,j_t2-jxd)
       		end do
    	end if

!$omp do private(i,j)
    	do j=1,ny
      	do i=1,nx
        		if( ijo_in(i,j)==1 ) then
         		qb_xi(i  ,j  ) = 0.d0
         		qb_xi(i-1,j  ) = 0.d0
         		qb_et(i  ,j  ) = 0.d0
         		qb_et(i  ,j-1) = 0.d0
        		end if
      	end do
    	end do
    	
    else if( j_qb_vec==1 ) then

!$omp do private(i,j,d_sed1,d_sed2,beta_a,qbn,coss,sins)
    	do j=1,ny
    		do i=1,nx

    			if( tausta(i,j)<=tsc*kc(i,j) ) then
    				qbxc(i,j) = 0.d0
    				qbyc(i,j) = 0.d0
    			else
    				d_sed1 = sin_bed(i,j)-pi_bed*btheta_y(i,j)*tsc/tausta(i,j)*dtan(theta_y(i,j))
    				d_sed2 = cos_bed(i,j)-pi_bed*btheta_x(i,j)*tsc/tausta(i,j)*dtan(theta_x(i,j))
    				beta_a = datan2(d_sed1,d_sed2)
    				qbxc(i,j) = qbti(i,j)*dcos(beta_a)
    				qbyc(i,j) = qbti(i,j)*dsin(beta_a)
    				
!            		coss = ux(i,j) / vti(i,j)
!            		sins = uy(i,j) / vti(i,j)
!					qbn = qbti(i,j)*(ubnvb(i,j)-gamma/dsqrt(tausta(i,j))*dzdn(i,j))
!					qbxc(i,j) = coss*qbti(i,j)-sins*qbn
!					qbyc(i,j) = sins*qbti(i,j)+coss*qbn
				end if
    		end do
    	end do

    	if( jrep==0 ) then
!$omp do private(j)
			do j=1,ny
				qbxc(   0,j) = qbxc( 1,j)
				qbxc(nx+1,j) = qbxc(nx,j)
				qbyc(   0,j) = qbyc( 1,j)
				qbyc(nx+1,j) = qbyc(nx,j)
			end do
    	else
!$omp do private(j)
			do j=1,ny
				qbxc(   0,j) = qbxc(nx,j)
				qbxc(nx+1,j) = qbxc( 1,j)
				qbyc(   0,j) = qbyc(nx,j)
				qbyc(nx+1,j) = qbyc( 1,j)
			end do
    	end if

!$omp do private(i)
		do i=1,nx
			qbxc(i,   0) = qbxc(i, 1)
			qbxc(i,ny+1) = qbxc(i,ny)
			qbyc(i,   0) = qbyc(i, 1)
			qbyc(i,ny+1) = qbyc(i,ny)
		end do

!$omp do private(i,j,qbxi1,qbxi2,qbet1,qbet2,qbx_xi1,qby_xi1,qbx_et1,qby_et1,	&
!$omp& qbx_xi2,qby_xi2,qbx_et2,qby_et2,xi_x1,xi_y1,xi_x2,xi_y2,et_x1,et_y1,		&
!$omp& et_x2,et_y2,sj_xi1,sj_et1,sj_xi2,sj_et2,ip1,im1,jp1,jm1)
    	do j=1,ny
    		do i=1,nx
    		
				if( ubxiti(i,j)<0.d0 ) then
					ip1 = 1
					im1 = 0
				else
					ip1 = 0
					im1 = 1
				end if
				
				if( ubetti(i,j)<0.d0 ) then
					jp1 = 1
					jm1 = 0
				else
					jp1 = 0
					jm1 = 1
				end if
				
    			qbx_xi1 = (qbxc(i+ip1,j-jm1)+qbxc(i+ip1,j+jp1))*0.5d0
    			qby_xi1 = (qbyc(i+ip1,j-jm1)+qbyc(i+ip1,j+jp1))*0.5d0
    			xi_x1   = (xi_x(i+ip1,j-jm1)+xi_x(i+ip1,j+jp1))*0.5d0
    			xi_y1   = (xi_y(i+ip1,j-jm1)+xi_y(i+ip1,j+jp1))*0.5d0
    			sj_xi1  = (  sj(i+ip1,j-jm1)+  sj(i+ip1,j+jp1))*0.5d0
    			qbx_xi2 = (qbxc(i-im1,j-jm1)+qbxc(i-im1,j+jp1))*0.5d0
    			qby_xi2 = (qbyc(i-im1,j-jm1)+qbyc(i-im1,j+jp1))*0.5d0
    			xi_x2   = (xi_x(i-im1,j-jm1)+xi_x(i-im1,j+jp1))*0.5d0
    			xi_y2   = (xi_y(i-im1,j-jm1)+xi_y(i-im1,j+jp1))*0.5d0
    			sj_xi2  = (  sj(i-im1,j-jm1)+  sj(i-im1,j+jp1))*0.5d0
    			qbx_et1 = (qbxc(i-im1,j+jp1)+qbxc(i+ip1,j+jp1))*0.5d0
    			qby_et1 = (qbyc(i-im1,j+jp1)+qbyc(i+ip1,j+jp1))*0.5d0
    			et_x1   = (et_x(i-im1,j+jp1)+et_x(i+ip1,j+jp1))*0.5d0
    			et_y1   = (et_y(i-im1,j+jp1)+et_y(i+ip1,j+jp1))*0.5d0
    			sj_et1  = (  sj(i-im1,j+jp1)+  sj(i+ip1,j+jp1))*0.5d0
    			qbx_et2 = (qbxc(i-im1,j-jm1)+qbxc(i+ip1,j-jm1))*0.5d0
    			qby_et2 = (qbyc(i-im1,j-jm1)+qbyc(i+ip1,j-jm1))*0.5d0
    			et_x2   = (et_x(i-im1,j-jm1)+et_x(i+ip1,j-jm1))*0.5d0
    			et_y2   = (et_y(i-im1,j-jm1)+et_y(i+ip1,j-jm1))*0.5d0
    			sj_et2  = (  sj(i-im1,j-jm1)+  sj(i+ip1,j-jm1))*0.5d0

    			qbxi1 = (xi_x1*qbx_xi1+xi_y1*qby_xi1)/sj_xi1
    			qbxi2 = (xi_x2*qbx_xi2+xi_y2*qby_xi2)/sj_xi2
    			qbet1 = (et_x1*qbx_et1+et_y1*qby_et1)/sj_et1
    			qbet2 = (et_x2*qbx_et2+et_y2*qby_et2)/sj_et2
    			
    			if( j_conf==0 .or. j_bank==0 .or. i<=i_erosion_start .or. i>=nx-i_erosion_end) then
	    			if( j==1  ) qbet2 = 0.d0
	    			if( j==ny ) qbet1 = 0.d0
	    		end if
	    		
    			if( ijo_in(i,j)==0 ) then
    				dex(i,j) = -sj(i,j)*dt*dsmt*	&
    							( (qbxi1-qbxi2)*r_dxi+(qbet1-qbet2)*r_det )*csm
    			else
    				dex(i,j) = 0.d0
    			end if   			
    			
    		end do
    	end do
    	
    
    end if

    !
  end subroutine qbcal_w
end module     qbcal_w_m

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
module etacal_m
  
  use common_hh
  use common_cmxy
  use common_cmave
  use common_cmsui
  use common_cmhq
  use common_cmdex
  use common_cmconf1
  use fixed_bed
contains
  
  subroutine etacal( qb_xi, qb_et, dsmt )
    implicit none

    integer :: i,j
    real(8) :: dqbxi, dqbet

	real(8),intent(in) :: dsmt
    real(8),dimension(0:im,0:jm),intent(in) :: qb_xi, qb_et
    !
    if( j_qb_vec==0 ) then
!$omp do private( i, j, dqbxi, dqbet )
	    do j = 1, ny
	       do i = 1, nx
	          dqbxi = ( -qb_xi(i-1,j)/(sj(i-1,j)+sj(i,j))*2.d0			&
	          			+qb_xi(i  ,j)/(sj(i,j)+sj(i+1,j))*2.d0 )*r_dxi
	          dqbet = ( -qb_et(i,j-1)/(sj(i,j-1)+sj(i,j))*2.d0			&
	          			+qb_et(i,j  )/(sj(i,j)+sj(i,j+1))*2.d0 )*r_det
	          dex(i,j) = - sj(i,j)*dt*dsmt*(dqbxi+dqbet)*csm

	       end do
	    end do
	end if
    !
    if( jrep == 1 ) then
!$omp do private(i,j)
       do j = 1, ny
          do i = 0,  1
             dex(i,j) = dex(i+nx-3,j)
          end do
       end do
!$omp do private(i,j)
       do j =    1, ny
          do i = nx-1, nx+1
             dex(i,j) = dex(i-nx+3,j)
          end do
       end do
    else
       if( j_qbup==0 ) then
!$omp do private(i,j)
          do j = 1, ny
             do i = 0,  1
               dex(i,j) = 0.d0
             end do
          end do
       else
!$omp do private(j)
          do j=1,ny
             dex(1,j) = dex(2,j)
             dex(0,j) = dex(1,j)
          end do
       end if
!$omp do private(j)
       do j=1, ny
          dex(nx,j) = dex(nx-1,j)
       end do
    end if
    !
    if( j_conf>=2 ) then
       if( j_qbup==0 ) then
!$omp do private(i)
         do i=i_t1+1,i_t2
           dex(i,j_t2+js2) = 0.d0
         end do
       else
!$omp do private(i)
         do i=i_t1+1,i_t2
           dex(i,j_t2+js2) = dex(i,j_t2+js2-jxd)
         end do
       end if
    end if

!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				if( dex(i,j)+emb(i,j)<0.d0 ) dex(i,j) = 0.d0
			end do
		end do
    !
!$omp do private(i,j)
    do j = 1, ny
       do i = 1, nx
          if( ijo_in(i,j)==0 ) then
            eta(i,j) = eta(i,j) + dex(i,j)
            hs( i,j) = hn( i,j) - eta(i,j)
            if(hs(i,j) <= hmin) then
               hs( i,j) =  hmin
               hn(i,j) = eta(i,j)+hmin
            end if
          end if
       end do
    end do
    !
    if(jrep == 1) then
!$omp do private(i,j)
       do j = 1, ny
          do i = 0,  1
             eta(i,j) = eta0(i,j) + ( eta(i+nx-3,j) - eta0(i+nx-3,j) )
             hs( i,j) = hs(i+nx-3,j)
             hn( i,j) = eta(i,j) + hs(i,j)
          end do
          do i = nx-1, nx+1
             eta(i,j) = eta0(i,j) + ( eta(i-nx+3,j) - eta0(i-nx+3,j) )
             hs( i,j) = hs(i-nx+3,j)
             hn( i,j) = eta(i,j) + hs(i,j)
          end do
       end do
    end if

  end subroutine etacal

  !----------------------------------------------------------
  subroutine etacal_c( qb_xi, qb_et, dsmt, qsu, wf, cb )
    implicit none

    integer :: i,j
    real(8) :: dsmt, wf, dqbxi, dqbet
    
    real(8),dimension(0:im,0:jm),intent(in) :: qb_xi, qb_et, qsu, cb
    !
    
    if( j_qb_vec==0 ) then
!$omp do private( i, j, dqbxi, dqbet )
	    do j = 1, ny
       		do i = 1, nx
          		dqbxi=(qb_xi(i  ,j)/(sj(i+1,j)+sj(i  ,j))*2.d0- &
               				qb_xi(i-1,j)/(sj(i  ,j)+sj(i-1,j))*2.d0)*r_dxi
          		dqbet=(qb_et(i,j  )/(sj(i,j+1)+sj(i,j  ))*2.d0- &
               				qb_et(i,j-1)/(sj(i,j  )+sj(i,j-1))*2.d0)*r_det
          		dex(i,j) = ( - sj(i,j)*dt*dsmt*(dqbxi+dqbet) &
               						-dt*dsmt*(qsu(i,j) - wf*cb(i,j)) )*csm
       		end do
    	end do
    else
!$omp do private(i,j)
    	do j=1,ny
    		do i=1,nx
    			dex(i,j) = dex(i,j)-dt*dsmt*(qsu(i,j)-wf*cb(i,j))*csm
    		end do
    	end do
    end if
    !
    if(jrep == 1) then
!$omp do private(i,j)
       do j=1,ny
          do i=0,1
             dex(i,j) = dex(i+nx-3,j)
          end do
       end do

!$omp do private(i,j)
       do j=1,ny
          do i=nx-1, nx+1
             dex(i,j) = dex(i-nx+3,j)
          end do
       end do
    else
       if( j_qbup==0 ) then
!$omp do private(i,j)
          do j = 1, ny
             do i = 0,  1
               dex(i,j) = 0.d0
             end do
          end do
       else
!$omp do private(j)
          do j=1,ny
             dex(1,j) = dex(2,j)
             dex(0,j) = dex(1,j)
          end do
       end if
!$omp do private(j)
       do j=1, ny
          dex(nx,j) = dex(nx-1,j)
       end do
    end if
    !
    if( j_conf>=2 ) then
       if( j_qbup==0 ) then
!$omp do private(i)
         do i=i_t1+1,i_t2
           dex(i,j_t2+js2) = 0.d0
         end do
       else
!$omp do private(i)
         do i=i_t1+1,i_t2
           dex(i,j_t2+js2) = dex(i,j_t2+js2-jxd)
         end do
       end if
    end if

!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				if( dex(i,j)+emb(i,j)<0.d0 ) dex(i,j) = 0.d0
			end do
		end do
    !
!$omp do private(i,j)
    do j = 1, ny
       do i = 1, nx
          if( ijo_in(i,j)==0 ) then
            eta(i,j) = eta(i,j) + dex(i,j)
            hs( i,j) = hn( i,j) - eta(i,j)
            if( hs( i,j) <= hmin ) then
               hs(i,j)  = hmin
               hn(i,j) = eta(i,j)+hmin
            end if
          end if
       end do
    end do
    !
    if(jrep == 1) then
!$omp do private(j)
       do j = 1, ny
          do i = 0,  1
             eta(i,j) = eta0(i,j) + ( eta(i+nx-3,j)-eta0(i+nx-3,j) )
             hs( i,j) = hs(i+nx-3,j)
             hn( i,j) = eta(    i,j) + hs(i,j)
          end do
          do i=nx-1, nx+1
             eta(i,j) = eta0(i,j) + ( eta(i-nx+3,j)-eta0(i-nx+3,j) )
             hs( i,j) = hs(i-nx+3,j)
             hn( i,j) = eta(    i,j) + hs(i,j)
          end do
       end do
    end if
  end subroutine etacal_c

end module     etacal_m

!--------------------------------------------------------------------------------
module bank_shift_m
  
  use common_hh
  use common_cmxy
  use common_cmhq
  use common_cmet
  use common_cmdex
  use common_cmchunk
  use common_cmave
  use gcoefs_m

  integer(4), dimension(:,:),allocatable :: i_er
  real(8),dimension(:,:),allocatable :: er_y, ern
  
contains

  subroutine alloc_bank_shift_temp_variables
    implicit none

    allocate( i_er(2,0:im) )
    allocate( er_y(2,0:im), ern(2,0:im) )

    i_er = 0.d0;	ern = 0.d0

  end subroutine alloc_bank_shift_temp_variables

  ! --------------------------------------------------------
  subroutine pshift(r_tantc,qb_et,slambda,dermax,j_chunk &
       ,i_erosion_start,i_erosion_end,j_smooth,i_smooth,iier)
    implicit none
    integer :: i,j,m

    real(8) :: r_tantc, slambda, dermax, bh0, bh, dz, er, b_os &
         , alpha_chunk, f_chunk, der, dac, smg_frg, esum &
         , e_ave, yr_old, b_old, dn1, dn0, al_dn, dx_new, dy_new &
         , yr_new, b_new, b_ave, dbdt, dyrdt, eett
    integer :: j_chunk, i_erosion_start, i_erosion_end &
         , j_smooth, i_smooth, iier, ier_er, ier_dp, ner, ii

    real(8),dimension(0:im,0:jm),intent(in) :: qb_et

    !
    dermax = 0.d0
    ier_er = 0
    ier_dp = 0
    er_y = 0.d0;

    !
    do i = i_erosion_start+1, nx-i_erosion_end-1
       !
       !cccccccccccccccccccccccccccccccccccccccc
       ! ---- Left bank ------
       !cccccccccccccccccccccccccccccccccccccccc
       !
       bh0 = b_elv(2,i)-eta(i,ny)
       bh  = max(hmin,bh0)
       dz  = dex(i,ny)
       er  = et_r_vp(i,ny)
       if(j_chunk == 1) then
          b_os=bh*r_tantc
          alpha_chunk=a_chunk(2,i)/(d_chunk*b_os)
          sk_chunk(2,i)=f_chunk(alpha_chunk)
          der=-1.d0/(1.d0-slambda)*sk_chunk(2,i)*qb_et(i,ny)*csm/bh*dt/er &
               +dz*r_tantc
       else
          der=-1.d0/(1.d0-slambda)*qb_et(i,ny)*csm/bh*dt/er+dz*r_tantc
       end if
       dermax=max(der,dermax)
       if(der /= 0.d0) then
          if(der > 0.d0) then
             i_er(2,i)=1
             ier_er=ier_er+1
             dac=der*h_chunk-a_chunk(2,i)/t_chunk*dt
             a_chunk(2,i)=a_chunk(2,i)+dac
             if(a_chunk(2,i) < 0.d0) a_chunk(2,i)=0.d0
          else
             i_er(2,i)=2
             ier_dp=ier_dp+1
          end if
          er_y(2,i)=er_y(2,i)+der
       end if
       !
       !cccccccccccccccccccccccccccccccccccccc
       ! ------ Right bank ------
       !cccccccccccccccccccccccccccccccccccccc
       !
       bh0=b_elv(1,i)-eta(i,1)
       bh=max(hmin,bh0)
       dz=dex(i,1)
       er=et_r_vp(i,0)
       if(j_chunk == 1) then
          b_os=bh*r_tantc
          alpha_chunk=a_chunk(1,i)/(d_chunk*b_os)
          sk_chunk(1,i)=f_chunk(alpha_chunk) 
          der=1./(1.-slambda)*sk_chunk(1,i)*qb_et(i,0)*csm/bh*dt/er &
               +dz*r_tantc
       else
          der=1./(1.-slambda)*qb_et(i,0)*csm/bh*dt/er+dz*r_tantc
       end if
       dermax=max(der,dermax)
       if(der /= 0.) then
          if(der > 0.) then
             i_er(1,i)=1
             ier_er=ier_er+1
             dac=der*h_chunk-a_chunk(1,i)/t_chunk*dt
             a_chunk(1,i)=a_chunk(1,i)+dac 
             if(a_chunk(1,i) < 0.) a_chunk(1,i)=0.
          else
             i_er(1,i)=2
             ier_dp=ier_dp+1
          end if
          er_y(1,i)=er_y(1,i)+der
       end if
    end do
    iier=ier_er+ier_dp
    !
    if(jrep == 1) then
       do m=1,2
          do i=0,1
             i_er( m,i)=i_er( m,i+nx-3)
             er_y(m,i)=er_y(m,i+nx-3)
          end do
          do i=nx,nx+1
             i_er( m,i)=i_er( m,i-nx+3)
             er_y(m,i)=er_y(m,i-nx+3)
          end do
       end do
    else
       do m=1,2
          i_er( m,   0) = i_er( m, 1)
          er_y(m,   0) = er_y(m, 1)
          i_er( m,nx+1) = i_er( m,nx)
          er_y(m,nx+1) = er_y(m,nx)
       end do
    end if
    !
    ! ------ smoothing -----
    !
    smg_frg=0
    if(iier > 0.and.i_smooth > 0.and.j_smooth == 1) then
       smg_frg=1
       do m=1,2
          do i=i_smooth+1,nx-i_smooth-1
             esum=0.
             ner=0
             do ii=i-i_smooth,i+i_smooth
                if(ii >= i_smooth.and.ii <= nx-i_smooth) then
                   ner=ner+1
                   esum=esum+er_y(m,ii)
                end if
             end do
             if(ner > 0) then
                e_ave=esum/dble(ner)
                ern(m,i)=e_ave
             else
                ern(m,i)=er_y(m,i)
             end if
          end do
       end do
       !
       ! ----- smooth again -----
       !
       do m=1,2
          do i=i_smooth+1,nx-i_smooth-1
             esum=0.
             ner=0
             do ii=i-i_smooth,i+i_smooth
                if(ii >= i_smooth.and.ii <= nx-i_smooth) then
                   ner=ner+1
                   esum=esum+ern(m,ii)
                end if
             end do
             if(ner > 0) then
                e_ave=esum/dble(ner)
                er_y(m,i)=e_ave
             else
                er_y(m,i)=ern(m,i)
             end if
          end do
       end do
    end if

    !
    !  ----- re-alocation of computational grid -----
    !
    eta_t = 0.
    if(iier > 0.or.smg_frg == 1) then
       do i = i_erosion_start, nx - i_erosion_end
          yr_old=y(i, 0)
          b_old =y(i,ny)-y(i,0)
          do m=1,2
             dn1=(er_y(m,i)+er_y(m,i+1))*.5
             if(m == 1) then
                dn0=dn(i,1)
                al_dn=(1.+dn1/dn0)
                x(i,0)=x(i,1)-(x(i,1)-x(i,0))*al_dn
                y(i,0)=y(i,1)-(y(i,1)-y(i,0))*al_dn
             else
                dn0=dn(i,ny)
                al_dn=(1.+dn1/dn0)
                x(i,ny)=x(i,ny-1)+(x(i,ny)-x(i,ny-1))*al_dn
                y(i,ny)=y(i,ny-1)+(y(i,ny)-y(i,ny-1))*al_dn
             end if
          end do
          dx_new=(x(i,ny)-x(i,0))/dble(ny)
          dy_new=(y(i,ny)-y(i,0))/dble(ny)
          do j=1,ny-1
             x(i,j)=x(i,0)+dx_new*dble(j)
             y(i,j)=y(i,0)+dy_new*dble(j)
          end do
          yr_new=y(i,0)
          b_new =y(i,ny)-y(i,0)
          b_ave =(b_old+b_new) * 0.5
          dbdt  =( b_new- b_old) /dt
          dyrdt =(yr_new-yr_old) /dt
          do j=0,ny
             eett=dble(j)/dble(ny)
             eta_t(i,j)=-(eett*dbdt+dyrdt)/b_ave
          end do
       end do
       call gcoefs(1)
    end if
  end subroutine pshift

  ! --------------------------------------------------------
  subroutine bkfill(j_fill,hdry,bheight,ndeposit,j_smooth,i_smooth)
    implicit none
    
    integer :: i,j,m

    real(8) :: hdry, bheight, bh, dzfill, volfill, bfill, esum, e_ave &
         , yr_old, b_old, dn1, dn0, al_dn, dx_new, dy_new, yr_new, b_new &
         , b_ave, dbdt, dyrdt, eett
    integer :: j_fill, ndeposit, j_smooth, i_smooth, ner, ii

    !
    er_y = 0.
    !
    ! ------ bank filling when the depth is shallower than critical depth ------
    !
    ndeposit=0
    if(j_fill == 1) then
       do i = 1, nx
          if(hs(i,1) <= hdry) then
             bh=(z0(i,0)+z0(i-1,0))*.5+bheight-eta(i,1)
             i_er(1,i)=1
             dzfill=hdry-hs(i,1)
             eta(i,1)=eta(i,1)-dzfill
             volfill=dzfill*(ds(i,0)+ds(i,1))*(dn(i,1)+dn(i-1,1))*.25
             if(bh <= 0.) then
                bfill=0.
             else
                bfill=volfill/(bh*ds(i,0))
             end if
             bfill=min(bfill,(dn(i,1)+dn(i-1,1))*.5)
             er_y(1,i)=er_y(1,i)-bfill
             ndeposit=ndeposit+1
          end if
          if(hs(i,ny) <= hdry) then
             bh=(z0(i,ny)+z0(i-1,ny))*.5+bheight-eta(i,ny)
             i_er(2,i)=1
             dzfill=hdry-hs(i,ny)
             eta(i,ny)=eta(i,ny)-dzfill
             volfill=dzfill*(ds(i,ny)+ds(i,ny-1))*(dn(i,ny)+dn(i-1,ny))*.25
             if(bh <= 0.) then
                bfill=0.
             else
                bfill=volfill/(bh*ds(i,ny))
             end if
             bfill=min(bfill,(dn(i,ny)+dn(i-1,ny))*.5)
             er_y(2,i)=er_y(2,i)-bfill
             ndeposit=ndeposit+1
          end if
       end do
    else
       do i=1,nx
          do j=1,nym
             if(hs(i,j) <= hdry) then
                bh=(z0(i,0)+z0(i-1,0))*.5+bheight-eta(i,1)
                i_er(1,i)=1
                dzfill=hdry-hs(i,j)
                eta(i,j)=eta(i,j)-dzfill
                volfill=dzfill*(ds(i,j-1)+ds(i,j))*(dn(i,j)+dn(i-1,j))*.25
                if(bh <= 0.) then
                   bfill=0.
                else
                   bfill=volfill/(bh*ds(i,0))
                end if
                bfill=min(bfill,(dn(i,1)+dn(i-1,1))*.5)
                er_y(1,i)=er_y(1,i)-bfill
                ndeposit=ndeposit+1
                goto 250
             end if
          end do
250       continue
       
          do j=ny,nym,-1
             if(hs(i,j) <= hdry) then
                bh=(z0(i,ny)+z0(i-1,ny))*.5+bheight-eta(i,ny)
                i_er(2,i)=1
                dzfill=hdry-hs(i,j)
                eta(i,j)=eta(i,j)-dzfill
                volfill=dzfill*(ds(i,j)+ds(i,j-1))*(dn(i,j)+dn(i-1,j))*.25
                if(bh <= 0.) then
                   bfill=0.
                else
                   bfill=volfill/(bh*ds(i,ny))
                end if
                bfill=min(bfill,(dn(i,ny)+dn(i-1,ny))*.5)
                er_y(2,i)=er_y(2,i)-bfill
                ndeposit=ndeposit+1
                goto 251
             end if
          end do
251       continue
       end do
    end if
    !
    ! ------ smoothing ------
    !
    if(ndeposit > 0.and.j_smooth == 1) then
       do m = 1, 2
          do i = i_smooth+1, nx-i_smooth-1
             esum = 0.
             ner  = 0
             do ii = i-i_smooth, i+i_smooth
                if( ii >= i_smooth.and.ii <= nx-i_smooth ) then
                   ner  = ner  + 1
                   esum = esum + er_y(m,ii)
                end if
             end do
             if(ner > 0) then
                e_ave    = esum / dble(ner)
                ern(m,i) = e_ave
             else
                ern(m,i) = er_y(m,i)
             end if
          end do
       end do
       !
       ! ----- smooth again -----
       !
       do m=1,2
          do i=i_smooth+1,nx-i_smooth-1
             esum=0.
             ner=0
             do ii=i-i_smooth,i+i_smooth
                if(ii >= i_smooth.and.ii <= nx-i_smooth) then
                   ner=ner+1
                   esum=esum+ern(m,ii)
                end if
             end do
             if(ner > 0) then
                e_ave=esum/dble(ner)
                er_y(m,i)=e_ave
             else
                er_y(m,i)=ern(m,i)
             end if
          end do
       end do
    end if
    !
    !------ boundary cond. for bank erosion ------
    !
    if(jrep == 1) then
       do m=1,2
          do i=0,1
             i_er(m,i)=i_er(m,i+nx-3)
             er_y(m,i)=er_y(m,i+nx-3)
          end do
          do i=nx,nx+1
             i_er(m,i)=i_er(m,i-nx+3)
             er_y(m,i)=er_y(m,i-nx+3)
          end do
       end do
    else
       do m=1,2
          i_er( m,   0)=i_er( m, 1)
          er_y(m,   0)=er_y(m, 1)
          i_er( m,nx+1)=i_er( m,nx)
          er_y(m,nx+1)=er_y(m,nx)
       end do
    end if
    !
    if(ndeposit > 0) then
       do i=1,nx-1
          if(i_er(1,i) == 1.or.i_er(1,i+1) == 1.or. &
               i_er(2,i) == 1.or.i_er(2,i+1) == 1) then
             yr_old = y(i, 0)
             b_old  = y(i,ny) - y(i,0)
             do m=1,2
                dn1 = ( er_y(m,i) + er_y(m,i+1) ) * 0.5
                if( m == 1 ) then
                   dn0    = dn(i,1)
                   al_dn  = ( 1. + dn1/dn0 )
                   x(i,0) = x(i,1) - ( x(i,1) - x(i,0) ) * al_dn
                   y(i,0) = y(i,1) - ( y(i,1) - y(i,0) ) * al_dn
                else
                   dn0     = dn(i,ny)
                   al_dn   = ( 1. + dn1/dn0 )
                   x(i,ny) = x(i,ny-1) + ( x(i,ny) - x(i,ny-1) ) * al_dn
                   y(i,ny) = y(i,ny-1) + ( y(i,ny) - y(i,ny-1) ) * al_dn
                end if
             end do
             dx_new = ( x(i,ny) - x(i,0) ) / dble(ny)
             dy_new = ( y(i,ny) - y(i,0) ) / dble(ny)
             do j=1, ny-1
                x(i,j) = x(i,0)+dx_new*dble(j)
                y(i,j) = y(i,0)+dy_new*dble(j)
             end do
             yr_new = y(i,0)
             b_new  = y(i,ny) - y(i,0)
             b_ave  = ( b_old  + b_new ) * 0.5
             dbdt   = (  b_new - b_old ) / dt
             dyrdt  = ( yr_new -yr_old ) / dt
             do j = 0, ny
                eett = dble(j) / dble(ny)
                eta_t(i,j) = - ( eett*dbdt + dyrdt ) / b_ave
             end do
          end if
       end do
       !
       call gcoefs(1)
    end if
  end subroutine bkfill

end module     bank_shift_m

!--------------------------------------------------------------------------------
! Iwagaki
!--------------------------------------------------------------------------------
subroutine usc(d,uc,s,sn,g)
  implicit none
  real(8) :: d, uc, s, sn, g, rst

  rst=dsqrt(s*g)*d**(3.d0/2.d0)/sn
  if(rst <= 2.14d0) uc=.14d0*s*g*d
  if(rst >  2.14d0) uc=(.1235d0*s*g)**(25.d0/32.d0)*sn**(7.d0/16.d0)* &
       d**(11.d0/32.d0)
  if(rst >  54.2d0) uc=.034d0*s*g*d
  if(rst > 162.7d0) uc=(.01505d0*s*g)**(25.d0/22.d0)*sn**(-3.d0/11.d0)* &
       d**(31.d0/22.d0)
  if(rst >  671.d0) uc=.05d0*s*g*d
  uc=dsqrt(uc)
end subroutine usc

!--------------------------------------------------------------------------------
! Rubey
!--------------------------------------------------------------------------------
subroutine wfcal(s,d,snu,wf,g)
  implicit none
  real(8) :: s, d, snu, wf, g
  
  if(d > 0.001d0) then
     wf = 32.8d0*dsqrt(d*100.d0)*0.01d0
  else
     wf = dsqrt(2.d0/3.d0*s*g*d+(6.d0*snu/d)**2)-6.d0*snu/d
  end if
end subroutine wfcal

! --------------------------------------------------------------------------------

subroutine us_avelog(us_e,vv,dis,rough)
	implicit none
	real(8),intent(in) :: vv, dis, rough
	real(8),intent(out) :: us_e
	
	if( dis>rough ) then
		us_e = vv/(6.d0+2.5d0*dlog(dis/rough))
	else
		us_e = vv/6.d0
	end if

end subroutine us_avelog

!--------------------------------------------------------------------------------
real(8) function alf(bet)
  implicit none
  !real(8) :: alf
  real(8) :: bet

  if (bet > 20.d0) then
     alf = bet
  else
     alf = bet / (1.d0-dexp(-bet))
  end if
end function alf

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
module cbcal_m
  
	use common_hh
  use sus_profile
contains
  !--------------------------------------------------------------------
  subroutine cbcal(c,cb,hs,wf,usta)
	implicit none
	integer :: i,j
	real(8) :: wf, bet, alfx, alf

	real(8),dimension(0:im,0:jm),intent(in)    :: c, hs, usta
	real(8),dimension(0:im,0:jm),intent(inout) :: cb

!$omp do private( i, j, bet, alfx )
	do j = 1, ny
		do i = 1, nx
			if( hs(i,j) <= hmin.or.usta(i,j) <= 0.d0 ) then
				cb(i,j) = 0.d0
			else
				bet     = 15.d0 * wf / usta(i,j)   ! * hs(i,j)
!				alfx    = alf( bet )
				call alf_s(alfx,bet)
				cb(i,j) = c(i,j) * alfx
			end if
		end do
	end do
	
  end subroutine cbcal

! --------------------------------------------------------------------
  subroutine cbcal_mix( ck, cbk, wfk, hs, usta, nk )
	
	implicit none

	integer :: i, j, k
	real(8) :: bet, alfx
	
	integer,intent(in) :: nk
	real(8),dimension(nk),intent(in) :: wfk(nk)
	real(8),dimension(0:im,0:jm),intent(in)    :: hs, usta
	real(8),dimension(0:im,0:jm,nk),intent(in) :: ck
	real(8),dimension(0:im,0:jm,nk),intent(out) :: cbk
!
!$omp do private( i, j, k, bet, alfx )
	do j=1,ny
		do k=1,nk
			do i=1,nx
				if( hs(i,j)<=hmin ) then
					cbk(i,j,k) = 0.d0
				else if( usta(i,j)<=wfk(k) ) then
					cbk(i,j,k) = ck(i,j,k)*15.d0
				else
					bet = 15.d0*wfk(k)/usta(i,j)
					call alf_s(alfx,bet)
!                    alfx = alf(bet)
               cbk(i,j,k) = ck(i,j,k)*alfx
				end if
			end do
		end do
	end do

  end subroutine cbcal_mix

real(8) function alf(bet)
  implicit none
  !real(8) :: alf
  real(8) :: bet

  if (bet > 20.d0) then
     alf = bet
  else
     alf = bet / (1.d0-dexp(-bet))
  end if
end function alf

end module cbcal_m



!--------------------------------------------------------------------------------
! Kishi & Itakura
!--------------------------------------------------------------------------------
module qsucal_m
  
	use common_hh
	use common_cmuvp
	use common_cmhq
	use common_cmtst
	use fixed_bed
	use supplying_sediment
  
	real(8), parameter :: sk = 0.008d0
	real(8), parameter :: als = 0.14d0
	real(8), parameter :: rw = 1.0d0
	real(8), parameter :: rs = 2.65d0
	real(8), parameter :: bs = 0.143d0

	real(8), parameter :: a1 = .4361836d0
	real(8), parameter :: a2 = -.1201676d0
	real(8), parameter :: a3 = .937298d0
	real(8), parameter :: pai = 3.141592d0
  
  contains
	!--------------------------------------------------------------------
	subroutine qsucal(wf,rsgd)
		implicit none
		integer :: i,j

		real(8) :: wf, rsgd, ome, de
    
    	if( j_qsu==0 ) then
!$omp do private( i, j, ome )
			do j = 1, ny
				do i = 1, nx
					if(dabs(vti(i,j)) < 1e-8.or.hs(i,j) < hmin .or. tausta(i,j)<tsc .or. usta(i,j)/wf<1.08  ) then
						qsu(i,j) = 0.d0
					else
						call calomega(bs,tausta(i,j),ome)
						qsu(i,j) = sk * ( als*rw/rs*ome*rsgd/tausta(i,j)**0.5d0-wf )*phi(i,j)*c_se(i,j)
						if(qsu(i,j) < 1e-10) qsu(i,j)=0.d0
					end if
				end do
			end do

		else if( j_qsu==1 ) then
!$omp do private( i, j, de )
			do j = 1, ny
				do i = 1, nx
					if(dabs(vti(i,j)) < 1e-8.or.hs(i,j) < hmin .or. tausta(i,j)<tsc .or. usta(i,j)/wf<1.08  ) then
						qsu(i,j) = 0.d0
					else
						de = dexp(-wf/usta(i,j))
						qsu(i,j) = 5.5*(0.5*usta(i,j)/wf*de)**1.61d0/(1.d0+spec)/1000.d0*wf*phi(i,j)*c_se(i,j)
						if(qsu(i,j) < 1e-10) qsu(i,j)=0.d0
					end if
				end do
			end do
		end if
	end subroutine qsucal

	subroutine qsucal_mix( qsuk, tsk, tsck, p_m, tsci0, wfk, ddk, usta, hs, vti, nk )
		implicit none
		
		integer :: i, j, k
		real(8) :: ome, bsk, de

		integer,intent(in) :: nk
		real(8),dimension(nk),intent(in) :: tsci0, wfk, ddk
		real(8),dimension(0:im,0:jm),intent(in) :: hs, vti, usta
		real(8),dimension(0:im,0:jm,nk),intent(in) :: tsk, tsck, p_m
		real(8),dimension(0:im,0:jm,nk),intent(out) :: qsuk
!
!!$omp single
		if( j_qsu==0 ) then
!$omp do private( i, j, k, bsk, ome )
			do j=1,ny
				do k=1,nk
					do i=1,nx
						if( dabs(vti(i,j)) < 1e-8.or.hs(i,j) < hmin .or. tsk(i,j,k)<tsck(i,j,k) .or. usta(i,j)/wfk(k)<1.08d0 ) then
							qsuk(i,j,k) = 0.d0
						else
							bsk = bs*tsck(i,j,k)/tsci0(k)
							call calomega( bsk, tsk(i,j,k), ome )
							qsuk(i,j,k) = p_m(i,j,k)*sk*(als*rw/rs*ome*spec*g*ddk(k)/usta(i,j)-wfk(k))*phi(i,j)*c_se(i,j)
							if( p_m(i,j,k)<=0.d0 .or. qsuk(i,j,k)<1e-10 ) qsuk(i,j,k) = 0.d0
						end if
					end do
				end do
			end do
		else if( j_qsu==1 ) then
!$omp do private( i, j, k, de )
			do j=1,ny
				do k=1,nk
					do i=1,nx
						if( dabs(vti(i,j)) < 1e-8.or.hs(i,j) < hmin .or. tsk(i,j,k)<tsck(i,j,k) .or. usta(i,j)/wfk(k)<1.08 ) then
							qsuk(i,j,k) = 0.d0
						else
							de = dexp(-wfk(k)/usta(i,j))
							qsuk(i,j,k) = p_m(i,j,k)*5.5d0*(0.5d0*usta(i,j)/wfk(k)*de)**1.61d0/(1.d0+spec)/1000.d0*wfk(k)*phi(i,j)*c_se(i,j)
							if( p_m(i,j,k)<=0.d0 .or. qsuk(i,j,k)<1e-10 ) qsuk(i,j,k) = 0.d0
						end if
					end do
				end do
			end do
		end if
!!$omp end single

	end subroutine qsucal_mix

!--------------------------------------------------------------------
	subroutine calomega(bs,ts,ome)
  		implicit none

		real(8) :: ome, ts, ad, bs, x, t, zx, px, er1, er

		if(ts <= 1e-7) then
			ome = 0.d0
			return
		end if

		ad = bs / ts - 2.d0
		if(ad >= 0.d0) x =   ad*dsqrt(2.d0)
		if(ad <  0.d0) x = - ad*dsqrt(2.d0)
		t   = 1.d0 / ( 1.d0 + 0.33627d0 * x )
		zx  = 1.d0 / dsqrt(2.d0*pai)*dexp(-x**2.d0/2.d0)
		px  = 1.d0 - zx*(a1*t+a2*t**2+a3*t**3)
		er1 = 2.d0 - 2.d0*px
		if(   ad >= 0.d0) er = er1/2.d0
		if(   ad <  0.d0) er = (2.d0-er1) / 2.d0
		if( ( bs == 0.d0).or.(er == 0.d0) ) then
			ome = 0.d0
		else
			ome = ts/bs/(2.d0*dsqrt(pai))*dexp(-ad**2)/er+ts*2.d0/bs-1.d0
		end if
		if(ome < 1e-10) ome = 0.d0
  !
	end subroutine calomega

end module     qsucal_m

!-----------------------------------------------------------------------
module c_secondary_m
  
  use common_hh
  use common_cmconf1	!h101019 conf

  real(8),dimension(:,:),allocatable :: ctr

contains

  subroutine alloc_c_secondary_temp_variables
    implicit none
    
    allocate( ctr(im,jm) )
    ctr = 0.d0
    
  end subroutine alloc_c_secondary_temp_variables
  ! -------------------------------------------------------------
  subroutine c_secondary(c,u,hs,sr,theta)
    implicit none

    integer :: i,j
    real(8) :: theta
    
    real(8),dimension(0:im,0:jm),intent(inout) :: c
    real(8),dimension(0:im,0:jm),intent(in)    :: u, sr, hs

    do i=1,nx
       do j=1,ny
          ctr(i,j)=-(c(i,j+1)*u(i,j+1)*hs(i,j+1)*sr(i,j+1) &
               -c(i,j-1)*u(i,j-1)*hs(i,j-1)*sr(i,j-1))*theta
       end do
    end do
    !
    if(j_conf.ge.2) then	!h101019 conf
       do i=i_t1+1,i_t2
          do j=j_t1+js1,j_t2+js2
             ctr(i,j)=-(c(i+jxd,j)*u(i+jxd,j)*hs(i+jxd,j)*sr(i+jxd,j) &
                  -c(i-jxd,j)*u(i-jxd,j)*hs(i-jxd,j)*sr(i-jxd,j))*theta
          end do
       end do
    end if
    !
    do i=1,nx
       do j=1,ny
          c(i,j) = c(i,j) + ctr(i,j) * dt
          if (c(i,j) < 1e-10) c(i,j) = 0.
       end do
    end do
  end subroutine c_secondary
end module     c_secondary_m

module c_transport_m
	use common_hh
	
	implicit none
	
	double precision,dimension(:,:),allocatable :: quc, qvc, dcdxi, dcdet, source
	
  contains
  
    subroutine alloc_c_transport_temp_variables
      implicit none
      
      allocate( quc(0:im,0:jm), qvc(0:im,0:jm) )
      allocate( dcdxi(0:im,0:jm), dcdet(0:im,0:jm) )
      allocate( source(0:im,0:jm) )

      quc = 0.d0;	qvc = 0.d0;	dcdxi = 0.d0;	dcdet = 0.d0;	source = 0.d0
   
    end subroutine alloc_c_transport_temp_variables

    subroutine c_transport(wf,dsmt)
      use common_cmsui
      use common_cmqxe
      use common_cmc
      use common_cmhq
      use common_cmxy
      use common_cmave
      use common_cmtst
      use fixed_bed
      use common_cmconf1
      implicit none
      integer :: i,j,n
      real(8),intent(in) :: wf,dsmt
      real(8) :: dzc,ez
! ---------------------------------------------------------------- !

  ! ---- advection term of suspended sediment transport --- !

!$omp do private(i,j)
      do j=1,ny
        do i=1,nx-1
          if( ijo_in(i,j)==1 .or. ijo_in(i+1,j)==1 ) then
            quc(i,j) = 0.d0
          else
            quc(i,j) = (q_xi(i,j)+dabs(q_xi(i,j)))*ycn(i  ,j)*0.5d0    &
                      +(q_xi(i,j)-dabs(q_xi(i,j)))*ycn(i+1,j)*0.5d0
          end if
        end do
      end do

!$omp do private(j)
      do j=1,ny
        quc( 0,j) = q_xi( 0,j)*ycn( 0,j)
        quc(nx,j) = q_xi(nx,j)*ycn(nx,j)
      end do

!$omp do private(i,j)
      do j=1,ny-1
        do i=1,nx
          if( ijo_in(i,j)==1 .or. ijo_in(i,j+1)==1 ) then
            qvc(i,j) = 0.d0
          else
            qvc(i,j) = (q_et(i,j)+dabs(q_et(i,j)))*ycn(i,  j)*0.5d0   &
                      +(q_et(i,j)-dabs(q_et(i,j)))*ycn(i,j+1)*0.5d0
          end if
        end do
      end do

!$omp do private(i)
      do i=1,nx
          qvc(i,0) = 0.d0
          qvc(i,ny) = 0.d0
      end do

		if( j_conf>=2 ) then
!$omp do private(i)
			do i=i_t1+1,i_t2
				if( ijo_in(i,j_t2+js2)==0 ) then
					qvc(i,j_t2) = q_et(i,j_t2)*ycn(i,j_t2+js1)
				end if
			end do
		end if
!
!$omp do private(i,j)
      do j=1,ny
        do i=1,nx
          dcdxi(i,j) = -(-quc(i-1,j)+quc(i,j))*r_dxi
        end do
      end do

!$omp do private(i,j)
      do j=1,ny
        do i=1,nx
          dcdet(i,j) = -(-qvc(i,j-1)+qvc(i,j))*r_det
        end do
      end do

  ! ---- source term ---- !

!$omp do private( i, j, ez, dzc )
      do j=1,ny
        do i=1,nx
          if( hs(i,j)>hmin ) then
            ez = emb(i,j)
            dzc = qsu(i,j)*dt*dsmt
            if( dzc>ez ) then
              qsu(i,j) = ez/(dsmt*dt)
            end if
            source(i,j) = (qsu(i,j)-wf*ycb(i,j))/sj(i,j)
          else
            source(i,j) = 0.d0
          end if
        end do
      end do

  ! ---- update suspended sediment concentration ---- !

!$omp do private( i, j )
      do j=1,ny
        do i=1,nx
          if( hs(i,j)>hmin ) then
            ycn(i,j) = ( ycn(i,j)*whs(i,j)   &
                       +(dcdxi(i,j)+dcdet(i,j)+source(i,j))  &
                                            *dt*sj(i,j) )/hs(i,j)
!            yc(i,j) = ( yc(i,j)*whs(i,j)   &
!                      +(dcdxi(i,j)+dcdet(i,j))*dt*sj(i,j) )/hs(i,j)
          else
            ycn(i,j) = 0.d0
          end if
          ycn(i,j) = max( ycn(i,j), 0.d0 )
        end do
      end do

    end subroutine c_transport
end module c_transport_m

!-----------------------------------------------------------------------
module ecoefs_m
  
  real(8) gamma_c
contains
  
  subroutine ecoefs(phi0,h0,us0,wf,theta_cx)
    implicit none
    real(8), parameter :: skp = 0.4
    real(8) :: phi0, h0, us0, wf, theta_cx, beta_c, alpha_c, a_c &
         , eps0, eg, sa1, sb1, sc1, sd1, omg_c

    beta_c = 3. / (skp*phi0+1.)
    alpha_c=beta_c*(2./3.-3./5.*beta_c+beta_c**2)/(beta_c/3.-1.)
    a_c = 1./(-alpha_c/6.-beta_c/30.+beta_c**2/210.)
    eps0    = skp / 6. * us0 * h0
    gamma_c = wf * h0 / eps0
    eg  =  dexp(gamma_c)
    sa1 =  a_c*alpha_c   / ( 2.*g_f(3)*eg)
    sb1 =  a_c*beta_c    / ( 6.*g_f(5)*eg)
    sc1 = -a_c*beta_c**2 / (30.*g_f(7)*eg)
    sd1 =  1. / ( g_f(1) * eg )
    omg_c=sa1*(eg*(g_f(2)-2.*g_f(1)+2.)-2.) &
         +sb1*(eg*(g_f(4)-4.*g_f(3)+12.*g_f(2)-24.*g_f(1)+24.)-24.) &
         +sc1*(eg*(g_f(6)-6.*g_f(5)+30.*g_f(4)-120.*g_f(3)+360.*g_f(2)- &
         720.*g_f(1)+720.)-720.)+sd1*(eg-1.)
         
         theta_cx=omg_c*6.*phi0/(a_c*skp)*(3./(3.-beta_c))**2 &
         * g_f(1) / (1.-dexp(-gamma_c))
  end subroutine ecoefs
  !
  !-----------------------------------------------------------------------
  function g_f(i)
    implicit none
    real(8) :: g_f
    integer :: i
    !      common /ccgg/gamma_c
    g_f = gamma_c**i
  end function g_f
end module     ecoefs_m

!-----------------------------------------------------------------------
module snucal_m
  
  use common_hh
  use common_cmsui
  use common_cmcf
contains
  
  subroutine snucal(usta,hs,snu00,snu,snu_x)
    implicit none

    integer :: i,j
    real(8) :: snu00
    
    real(8),dimension(0:im,0:jm),intent(in)    :: usta, hs
    real(8),dimension(0:im,0:jm),intent(inout) :: snu, snu_x

!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          if(ijo_in(i,j) == 1.or.hs(i,j) < hmin) then
             snu(i,j) = 0.d0
          else if(re(i,j) <= 500.d0) then
             snu(i,j) = snu00
          else
             snu(i,j) = 0.4d0 / 6.d0 * usta(i,j) * hs(i,j)*a_snu+b_snu
             !snu(i,j) = 0.2d0 * usta(i,j) * hs(i,j)
          end if
       end do
    end do
    !
!$omp do private(i,j)
    do j=1,ny-1
       do i=1,nx-1
         snu_x(i,j) = (snu(i,j)+snu(i+1,j)+snu(i,j+1)+snu(i+1,j+1))*0.25d0*(1-ijobst(i,j))
       end do
    end do
  end subroutine snucal
end module     snucal_m

!-----------------------------------------------------------------------

module hqtcal_m
  
  use common_hh
  use common_cmhq
  use common_qhyd
  use common_cmave
  use common_cmxy
  use common_cmsui
  use common_cmsn
  use common_qhyd_t
  use common_cmave_t
  use common_cmave_t2
  use common_cmconf1
contains
  !----------------------------------------------------------------
  subroutine hqtcal(nq,slope,slope_up,slope_up_t,hplus,j_wl,h_down,sn_g)
    implicit none

    integer :: i,j, n
    real(8) :: qmax, qmin, b_ups, slope, slope_up, slope_up_t, hplus, h_down, sn_g &
         , qmax_t, qmin_t, b_dse, h00, hss, hsmax1, hsmax2, hsmax, hsmax2_t, hsmax2_t2 &
         , hmax1, hmin1, hh, qcc, hs1, as, u0, qs, qp_ttl
    integer :: nq, j_wl, nnym, nnxm, jss1, jss2


    qmax = maxval(q_ups)
    qmax_t=maxval(q_ups_t)	!h101019 conf
    qmin = qmax/1000.d0
    qmin_t=qmax_t/1000.d0	!h101019 conf
    
    !
    b_ups = 0.d0
    do j = 1, ny
       if(    ijobst( 0,j-1)+ijobst( 0,j) == 0) then
          b_ups = b_ups+dn( 0,j)
       elseif(ijobst( 0,j-1)+ijobst( 0,j) == 1) then
          b_ups = b_ups+dn( 0,j) * 0.5d0
       end if
    end do

    b_dse=0.d0
    do j=1,ny
       if(    ijobst(nx,j-1)+ijobst(nx,j) == 0) then
          b_dse = b_dse+dn(nx,j)
       elseif(ijobst(nx,j-1)+ijobst(nx,j) == 1) then
          b_dse = b_dse+dn(nx,j) * 0.5d0
       end if
    end do
    !
    if( slope < 1e-8 ) then
       if(h_down > -100.d0) then
          h00 = h_down   - emin(nx)
       else 
          h00 = h_dse(0) - emin(nx)
       end if
       if(h00 < 1e-4) h00 = 1e-4
       slope = (sn_g*qmax/b_ups/h00**(5.d0/3.d0))**2
    end if
    !
    if(slope_up.lt.1e-8) then
       if(h_down.gt.-100.d0) then
          h00=h_down-emin(nx)
       else 
          h00=h_dse(0)-emin(nx)
       end if
       if(h00.lt.1e-4) h00=1e-4
       slope_up=(sn_g*qmax/b_ups/h00**(5.d0/3.d0))**2
    end if
    !
    hsmax1=(snmm(1,nym)*qmax/(chb(1)*dsqrt(slope)))**(3.d0/5.d0)*100.d0
    hsmax2=(snmm(1,nym)*qmax/(chb(1)*dsqrt(slope_up)))**(3.d0/5.d0)*100.d0
    hsmax=max(hsmax1,hsmax2)
    !				!h101019 conf
    nnym=(j_t2+j_t1)/2
    nnxm=(i_t2+i_t1)/2
    if(j_conf.eq.1) then
       hsmax2_t=(snmm(1,nnym)*qmax_t/(chb_t(1)*dsqrt(slope_up_t)))**(3.d0/5.d0)*100.d0
    else if(j_conf.ge.2) then
       hsmax2_t2=(snmm(nnxm,j_t2+js2)*qmax_t/(chb_t2(j_t2)*dsqrt(slope_up_t)))**(3.d0/5.d0)*100.d0
    end if
    !				!h101019 conf
    !
    do n=0,nq
       !
       ! è„ó¨í[êÖà ÇÃåvéZ
       !
       if(q_ups(n) <= 1e-6) then
          !  h_ups(n) = h(1,j)
          h_ups(n) = emin(1)
          goto 100		!h101019 debug 103 > 100
       end if
       hmax1 = eave(1)+hsmax*10.d0
       hmin1 = emin(1)
120    hh    = (hmax1+hmin1)*.5d0
       qcc = 0.d0
       if(j_conf.eq.0) then		!h101019 conf
          jss1=1
          jss2=ny
       else 
          jss1=j_m1+1
          jss2=j_m2
       end if
       do j=jss1,jss2			!h101019 conf
          hs1 = hh - eta(1,j)
          if( hs1 > 0. .and. ijo_in(1,j)==0 ) then
             as  = hs1 * dn(0,j)
             u0  = 1.d0 / snmm(1,j) * hs1**(2.d0/3.d0) * dsqrt(slope_up)
             qs  = as * u0
             qcc = qcc + qs
          end if
       end do
!       if( dabs(qcc-q_ups(n)) < qmin) goto 100
       if( dabs(qcc-q_ups(n)) < q_ups(n)*0.001d0) goto 100
       if(   qcc > q_ups(n) ) then
          hmax1 = hh
       else
          hmin1 = hh
       end if
       goto 120
100    continue
       h_ups(n) = hh
       !				!h101019 conf
       ! è„ó¨í[êÖà ÇÃåvéZÅiéxêÏë§Åj
       !
       if(j_conf.eq.1) then
          if(q_ups_t(n).le.1e-6) then
             !  h_ups_t(n)=h(1,j)
             h_ups_t(n) = emin_t(1)
             goto 105
          end if
          hmax1=eave_t(1)+hsmax2_t*10.d0
          hmin1=emin_t(1)
125       hh=(hmax1+hmin1)*.5d0
          qcc=0.
          do j=j_t1+1,j_t2
             hs1=hh-eta(1,j)
             if(hs1.gt.0. .and. ijo_in(1,j)==0 ) then
                as=hs1*dn(0,j)
                u0=1.d0/snmm(1,j)*hs1**(2.d0/3.d0)*dsqrt(slope_up_t)
                qs=as*u0
                qcc=qcc+qs
             end if
          end do
!          if(dabs(qcc-q_ups_t(n))<qmin_t) goto 105
          if(dabs(qcc-q_ups_t(n))<q_ups_t(n)*0.001d0) goto 105
          if(qcc.gt.q_ups_t(n)) then
             hmax1=hh
          else
             hmin1=hh
          end if
          goto 125
105       continue
          h_ups_t(n)=hh
          !
       else if(j_conf.ge.2) then
          if(q_ups_t(n).le.1e-6) then
             !   h_ups_t(n)=h(i,j_t2+js2)
             h_ups_t(n) = emin_t2(j_t2+js2)
             goto 104
          end if
          hmax1=eave_t2(j_t2+js2)+hsmax2_t2*10.d0
          hmin1=emin_t2(j_t2+js2)
124       hh=(hmax1+hmin1)*.5d0
          qcc=0.
          do i=i_t1+1,i_t2
             hs1=hh-eta(i,j_t2+js2)
             
             if(hs1.gt.0. .and. ijo_in(i,j_t2+js2)==0 ) then
                as=hs1*ds(i,j_t2+js2)
                u0=1.d0/snmm(i,j_t2+js2)*hs1**(2.d0/3.d0)*dsqrt(slope_up_t)
                qs=as*u0
                qcc=qcc+qs
             end if
          end do
!          if(dabs(qcc-q_ups_t(n)).lt.qmin_t) goto 104
          if(dabs(qcc-q_ups_t(n))<q_ups_t(n)*0.001d0) goto 104
          if(qcc.gt.q_ups_t(n)) then
             hmax1=hh
          else
             hmin1=hh
          end if
          goto 124
104       continue
          h_ups_t(n)=hh
       end if
       !				!h101019 conf
       !
       ! â∫ó¨í[êÖà ÇÃåvéZ
       !
       if( j_wl == 1 .or. j_wl == 3) then
          jss1=1				!h101019 conf
          jss2=ny
          if(j_conf.ge.1) then
             qp_ttl=q_ups(n)+q_ups_t(n)
             if(j_conf.ge.2) then
                jss1=j_m1+1
                jss2=j_m2
             end if
          else
             qp_ttl=q_ups(n)
          end if				!h101019 conf
          if( qp_ttl <= 1e-6 ) then	!h101019 conf
             h_dse(n) = h_down
             goto 103
          end if
          hmax1 = eave(nx) + hsmax * 10.d0
          hmin1 = emin(nx)
121       hh    = ( hmax1 + hmin1 ) * 0.5d0
          qcc = 0.d0
          do j = jss1, jss2		!h101019 conf
             hss = hh - eta(nx,j)
             if(hss > 0.d0 .and. ijo_in(nx,j)==0 ) then
                as  = hss*dn(nx,j)
                u0  = 1.d0 / snmm(nx,j) * hss**(2.d0/3.d0) * dsqrt(slope)
                qs  =  as * u0
                qcc = qcc + qs
             end if
          end do
!          if( dabs(qcc-qp_ttl) < qmin ) goto 101	!h101019 conf
          if( dabs(qcc-qp_ttl) < qp_ttl*0.001d0 ) goto 101	!h101019 conf
          if( qcc   > qp_ttl ) then		!h101019 conf
             hmax1 = hh
          else
             hmin1 = hh
          end if
          goto 121
101       continue
          h_dse(n) = hh + hplus
       elseif( j_wl == 0 ) then
          h_dse(n) = h_down
			 
       end if
103    continue
       if( j_wl/=1 ) then
         if( h_dse(n) <= emin(nx) ) then
            write(*,*) 'Given Downstream Water Surface is below Bed'
            stop
         end if
       end if
    end do

  end subroutine hqtcal

	subroutine upstream_h( q_main, q_tri, slope, slope_up, slope_up_t, sn_g, h_main, h_tri )
		implicit none

		integer :: i, j
		real(8), intent(in)		:: q_main, q_tri, slope, slope_up, slope_up_t, sn_g
		real(8), intent(out)	:: h_main, h_tri
		real(8) :: qmax, qmin, b_ups, qmax_t, qmin_t, h00, hss, 			&
						hsmax1, hsmax2, hsmax, hsmax2_t, hsmax2_t2, hmax1, hmin1, 	&
						hh, qcc, hs1, as, u0, qs, qp_ttl
		integer :: nnym, nnxm, jss1, jss2

		qmax		= q_main
		qmax_t	= q_tri
		qmin		= qmax*0.0001d0
		qmin_t	= qmax_t*0.0001d0 
!
		b_ups = 0.d0
		do j = 1, ny
			if(    ijobst( 0,j-1)+ijobst( 0,j) == 0) then
				b_ups = b_ups+dn( 0,j)
			elseif(ijobst( 0,j-1)+ijobst( 0,j) == 1) then
				b_ups = b_ups+dn( 0,j) * 0.5d0
			end if
		end do
!
!		if( slope<1e-8 ) then
!			slope = (sn_g*qmax/b_ups/h00**(5.d0/3.d0))**2
!		end if
!
!		if( slope_up<1e-8 ) then
!			slope_up = (sn_g*qmax/b_ups/h00**(5.d0/3.d0))**2
!		end if
    !
		hsmax1 = (snmm(1,nym)*qmax/(chb(1)*dsqrt(slope)))**0.6d0*100.d0
		hsmax2 = (snmm(1,nym)*qmax/(chb(1)*dsqrt(slope_up)))**0.6d0*100.d0
		hsmax  = max(hsmax1,hsmax2)
!
		nnym = (j_t2+j_t1)*0.5d0
		nnxm = (i_t2+i_t1)*0.5d0
		
		if( j_conf==1 ) then
			hsmax2_t = (snmm(1,nnym)*qmax_t/(chb_t(1)*dsqrt(slope_up_t)))**0.6d0*100.d0
		else if( j_conf>=2 ) then
			hsmax2_t2 = (snmm(nnxm,j_t2+js2)*qmax_t/(chb_t2(j_t2)*dsqrt(slope_up_t)))**0.6d0*100.d0
		end if
!
	! è„ó¨í[êÖà ÇÃåvéZ

		if( j_conf==0 ) then
			jss1 = 1
			jss2 = ny
		else 
			jss1 = j_m1+1
			jss2 = j_m2
		end if
		
		emin(1) = 9999.d0
		do j=1,ny
			emin(1) = min( emin(1), eta(1,j) )
		end do
!
		if( q_main<=1e-6 ) then
			h_main = emin(1)
		else
		
			hmax1 = emin(1)+hsmax*100.d0
			hmin1 = emin(1)
			
			do
				hh    = (hmax1+hmin1)*0.5d0
				qcc = 0.d0
			
				do j=jss1,jss2
					hs1 = hh - eta(1,j)
					if( hs1>hmin .and. ijo_in(1,j)==0 ) then
						as  = hs1 * dn(0,j)
						u0  = 1.d0 / snmm(1,j) * hs1**(2.d0/3.d0) * dsqrt(slope_up)
						qs  = as * u0
						qcc = qcc + qs
					end if
				end do
			
!				if( dabs(qcc-q_main)<qmin ) exit
				if( dabs(qcc-q_main)<q_main*0.001d0 ) exit
			
				if( qcc>q_main ) then
					hmax1 = hh
				else
					hmin1 = hh
				end if
			end do
			
			h_main = hh

		end if
!
	! è„ó¨í[êÖà ÇÃåvéZÅiéxêÏë§Åj
!
		if( j_conf==1 ) then
			
			emin_t(1) = 99999.d0
			do j=j_t1+1,j_t2
				emin_t(1) = min( emin_t(1), eta(1,j) )
			end do
			
			if( q_tri<=1e-6 ) then
				h_tri = emin_t(1)
			else
				hmax1 = emin_t(1)+hsmax2_t*100.d0
				hmin1 = emin_t(1)
				
				do 
					hh = (hmax1+hmin1)*.5d0
					qcc = 0.d0
					
					do j=j_t1+1,j_t2
						hs1 = hh-eta(1,j)
						if( hs1>hmin .and. ijo_in(1,j)==0 ) then
							as = hs1*dn(0,j)
							u0 = 1.d0/snmm(1,j)*hs1**(2.d0/3.d0)*dsqrt(slope_up_t)
							qs = as*u0
							qcc = qcc+qs
						end if
					end do
						
!					if( dabs(qcc-q_tri)<qmin_t ) exit
					if( dabs(qcc-q_tri)<q_tri*0.001d0 ) exit
					
					if( qcc>q_tri ) then
						hmax1 = hh
					else
						hmin1 = hh
					end if
				end do
				
				h_tri = hh
			end if
!
		else if( j_conf>=2 ) then
			
			emin_t2(j_t2+js2) = 99999.d0
			do i=i_t1+1,i_t2
				emin_t2(j_t2+js2) = min( emin_t2(j_t2+js2), eta(i,j_t2+js2) )
			end do
		
			if( q_tri<=1e-6 ) then
				h_tri = emin_t2(j_t2+js2)
			else
				hmax1 = emin_t2(j_t2+js2)+hsmax2_t2*100.d0
				hmin1 = emin_t2(j_t2+js2)
								
				do
					hh = (hmax1+hmin1)*.5d0
					qcc = 0.d0
					
					do i=i_t1+1,i_t2
						hs1 = hh-eta(i,j_t2+js2)
						if( hs1>hmin .and. ijo_in(i,j_t2+js2)==0 ) then
							as = hs1*ds(i,j_t2+js2)
							u0 = 1.d0/snmm(i,j_t2+js2)*hs1**(2.d0/3.d0)*dsqrt(slope_up_t)
							qs = as*u0
							qcc = qcc+qs
						end if
					end do
					
!					if( dabs(qcc-q_tri)<qmin_t ) exit
					if( dabs(qcc-q_tri)<q_tri*0.001d0 ) exit
					
					if( qcc>q_tri ) then
						hmax1 = hh
					else
						hmin1 = hh
					end if
				end do
				
				h_tri = hh
			end if
		end if

  end subroutine upstream_h

end module     hqtcal_m

!-----------------------------------------------------------------------
module upstream_m
  
  use common_hh
  use common_cmuv
  use common_cmxy
  use common_cmqxe
  use common_cmquv
  use common_cmhq
  use common_cmsn
  use common_cmsui
  use common_cmconf1
  
  real(8),dimension(:),allocatable :: uinti, hsin
  real(8),dimension(:),allocatable :: uinti2, hsin2

contains

  subroutine alloc_upstream_temp_variables
    implicit none
    
    allocate( uinti(0:jm), hsin(0:jm) )
    allocate( uinti2(0:im), hsin2(0:im) )

    uinti=0.d0; hsin=0.d0; uinti2=0.d0; hsin2=0.d0
   
  end subroutine alloc_upstream_temp_variables
  
  !----------------------------------------------------------------
  subroutine upstream(hin,hin_t,qin,qin_t,slope,slope_t,j_upv)	!h101019
    implicit none
    
    integer :: i,j

    real(8) :: hin, hin_t, qin, qin_t, slope, slope_t, qc0, as, qdiff
    integer :: j_upv, jss1, jss2
    integer :: nnn, time_m
    double precision :: rr, rp

    !
    ! Main channel
    !
    if(qin > 0.d0) then
       qc0=0.d0
       if(j_conf.eq.0) then			!h101019 conf
          jss1=1
          jss2=ny
       else
          jss1=j_m1+1
          jss2=j_m2
       end if
       do j=jss1,jss2				!h101019 conf
          if(j_upv == 1) then
             hsin(j) = hin - eta(1,j)
          else
             hsin(j) = hs(1,j)
          end if
          hs(0,j)  = hs(1,j)
          if(hsin(j) < 0.d0) hsin(j) = 0.d0
          uinti(j)=1.d0 / snmm(1,j) * hsin(j)**(2.d0/3.d0) * dsqrt(slope)
          if(ijo_in(1,j) == 0) then
             as = hsin(j) * dn(0,j)
          else
             as = 0.d0
          end if
          qu(0,j) = uinti(j) * as
          qc0 = qc0 + qu(0,j)
       end do
       qdiff = qc0 / qin
       qc(0) = 0.d0

!       time_m = int(time/dt)

!		 if( mod(time_m, 100)==0 ) then
!       	call system_clock(count=nnn)
!       	call random_seed(put=(/nnn/))
!       end if

       do j=1,ny
!          call random_number(rr)
!          rp = 1.d0-(rr-0.5)*0.05d0
          if(ijo_in(1,j) == 0) then
             yu(0,j) = uinti(j) / qdiff * xi_r_up(0,j)	!*rp
          else
             yu(0,j) = 0.d0
          end if
          qu(  0,j) = qu(0,j) / qdiff
          q_xi(0,j) = yu(0,j) * hsin(j) / sj(1,j)
          yun( 0,j) = yu(0,j)
          qc(  0)   = qc(0) + qu(0,j)
       end do

    end if
    !				!h101019 conf
    !  Tributary
    !
    if(j_conf.eq.1.and.qin_t.gt.0.) then
       qc0=0.d0
       do j=j_t1+1,j_t2
          if(j_upv.eq.1) then
             hsin(j)=hin_t-eta(1,j)
          else
             hsin(j)=hs(1,j)
          end if
          hs(0,j)=hs(1,j)
          if(hsin(j).le.hmin2) hsin(j)=0.d0
          uinti(j)=1.d0/snmm(1,j)*hsin(j)**(2.d0/3.d0)*dsqrt(slope_t)
          if(ijo_in(1,j).eq.0) then
             as=hsin(j)*dn(0,j)
          else
             as=0.d0
          end if
          qu(0,j)=uinti(j)*as
          qc0=qc0+qu(0,j)
       end do
       qdiff=qc0/qin_t
       qc_t(0)=0.d0
       do j=j_t1+1,j_t2
          if(ijo_in(1,j).eq.0) then
             yu(0,j)=uinti(j)/qdiff*xi_r_up(0,j)
          else
             yu(0,j)=0.d0
          end if
          qu(0,j)=qu(0,j)/qdiff
          q_xi(0,j)=yu(0,j)*hsin(j)/sj(1,j)
          yun(0,j)=yu(0,j)
          qc_t(0)=qc_t(0)+qu(0,j)      
       end do
       !
    else if(j_conf.ge.2.and.qin_t.gt.0.) then
       qc0=0.d0
       do i=i_t1+1,i_t2
          if(j_upv.eq.1) then
             hsin2(i)=hin_t-eta(i,j_t2+js2)
          else
             hsin2(i)=hs(i,j_t2+js2)
          end if
          hs(i,j_t2+js2+jxd)=hs(i,j_t2+js2)
          if(hsin2(i).le.hmin2) hsin2(i)=0.d0
          uinti2(i)=1.d0/snmm(i,j_t2+js2)*hsin2(i)**(2.d0/3.d0)*dsqrt(slope_t)
          if(ijo_in(i,j_t2+js2).eq.0) then
             as=hsin2(i)*ds(i,j_t2)
          else
             as=0.d0
          end if
          qv(i,j_t2)=-uinti2(i)*as*jxd
          qc0=qc0+qv(i,j_t2)
       end do
       qdiff=qc0/qin_t
       qc_t2(j_t2)=0.d0
       do i=i_t1+1,i_t2
          if(ijo_in(i,j_t2+js2).eq.0) then
             yv(i,j_t2)=uinti2(i)/qdiff*et_r_vp(i,j_t2)
          else 
             yv(i,j_t2)=0.d0
          end if
          qv(i,j_t2)=qv(i,j_t2)/qdiff
          q_et(i,j_t2)=yv(i,j_t2)*hsin2(i)/sj(i,j_t2)
          yvn(i,j_t2)=yv(i,j_t2)
          qc_t2(j_t2)=qc_t2(j_t2)+qv(i,j_t2)
       end do
    end if
    !				!h101019 conf
    
  end subroutine upstream
end module     upstream_m

!-----------------------------------------------------------------------
module downstream_m
  
  use common_hh
  use common_cmhq
  use common_cmxy
  use common_cmsui
contains
  !----------------------------------------------------------------
  subroutine downstream(j_wl, hnx)
    implicit none
	 integer, intent(in) :: j_wl
    integer :: i,j

    
    real(8),intent(in) :: hnx
	 if(j_wl ==3)then
		 do j=1, ny
			hn(nx,j) = h(  nx-1,j)
			if(ijo_in(nx,j) == 0) then
				hs(nx,j) = hn(nx,j) - eta(nx,j)
				if(hs(nx,j) < hmin)    hs(nx,j) = 0.d0
				h( nx,j) = eta(nx,j) + hs(nx,j)
				hn(nx,j) = h(  nx,j)
			 end if
		 end do
	 else
		 do j=1, ny
			 if(ijo_in(nx,j) == 0) then
				 hs(nx,j) = hnx - eta(nx,j)
				 if(hs(nx,j) < hmin)    hs(nx,j) = 0.d0
				 h( nx,j) = eta(nx,j) + hs(nx,j)
				 hn(nx,j) = h(  nx,j)
			 end if
		 end do
	 end if
  end subroutine downstream
end module     downstream_m

!--------------------------------------------------------------------------------
module snucal_ke_m
  
  use common_hh
  use common_cmuv
  use common_cmyp
  use common_cmsui
  use common_cmcf
contains
  !----------------------------------------------------------------
  subroutine snucal_ke(hs,yk,yep,c_mu0,snu00,snu,snu_x)
    implicit none
    
    integer :: i,j

    real(8) :: c_mu0, snu00
    
    real(8),dimension(0:im,0:jm),intent(in)    :: hs, yk, yep
    real(8),dimension(0:im,0:jm),intent(inout) :: snu, snu_x
    !
!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          if(ijo_in(i,j) == 1.or.hs(i,j) < hmin) then
             snu(i,j) = 0.d0
          else if(re(i,j) <= 500.d0.or.y_plus(i,j) <= 30.d0) then
             snu(i,j) = snu00
          else
             if(yep(i,j) > 0.d0) then
                snu(i,j)=c_mu0*yk(i,j)**2/yep(i,j)
             else
                snu(i,j)=snu00
             end if
          end if
       end do
    end do
    !
!$omp do private(i,j)
    do j=1,ny-1
       do i=1,nx-1
         snu_x(i,j)=(snu(i,j)+snu(i+1,j)+snu(i,j+1)+snu(i+1,j+1))*.25d0*(1-ijobst(i,j))
       end do
    end do
    !
  end subroutine snucal_ke
end module     snucal_ke_m

!--------------------------------------------------------------------------------
module source_ke
  
  use common_hh
  use common_cmkep
  use common_cmsui
contains
  !----------------------------------------------------------------
  subroutine source_k(yk,ykn,yep,hs)
    implicit none

    integer :: i,j
    real(8),dimension(0:im,0:jm),intent(in)    :: yk, yep, hs
    real(8),dimension(0:im,0:jm),intent(inout) :: ykn

!$omp do private(i,j)
    do j = 1, ny
       do i = 1, nx
          if( hs(i,j) > hmin.and.ijo_in(i,j) == 0 ) then
             ykn(i,j) = yk(i,j) + ( ph(i,j) + pkv(i,j) - yep(i,j) ) * dt
          else
             ykn(i,j) = 0.d0
          end if
       end do
    end do
  end subroutine source_k
  !
  !----------------------------------------------------------------
  subroutine source_e(yep,yepn,yk,hs,c_1e,c_2e)
    implicit none
    integer :: i,j
    real(8) :: c_1e, c_2e
    
    real(8),dimension(0:im,0:jm),intent(in)    :: yep, yk, hs
    real(8),dimension(0:im,0:jm),intent(inout) :: yepn

!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          if(hs(i,j) > hmin.and.yk(i,j) > 0.d0.and.ijo_in(i,j) /= 1) then
             yepn(i,j) = yep(i,j)+( c_1e*yep(i,j)    / yk(i,j)*ph(i,j) &
                  + pev(i,j) - c_2e*yep(i,j)**2 / yk(i,j)          ) * dt
          else
             yepn(i,j) = 0.d0
          end if
       end do
    end do
  end subroutine source_e
end module     source_ke

!--------------------------------------------------------------------------------
module ypcal_ini_m
  
  use common_hh
  use common_cmxy
  use common_cmyp
  use common_cmsui
  
  real(8),dimension(:,:),allocatable :: xref, yref

contains

  subroutine alloc_ypcal_ini_variables
    implicit none
    
    allocate( xref(0:im,0:jm), yref(0:im,0:jm) )
    xref = 0.d0;	yref = 0.d0

  end subroutine alloc_ypcal_ini_variables
  !----------------------------------------------------------------
  subroutine ypcal_ini(us0,h0,snu00,rho)
    implicit none
    integer :: i,j
    
    real(8) :: us0, h0, snu00, rho, xp, yp, dis
    integer :: jj

    !
    do j=1,ny
       do i=1,nx
          xref(i,j)=(x(i,j)+x(i-1,j)+x(i,j-1)+x(i-1,j-1))*.25d0
          yref(i,j)=(y(i,j)+y(i-1,j)+y(i,j-1)+y(i-1,j-1))*.25d0
          y_dis(i,j) = 9999.d0
          do jj=0,ny,ny
             xp=(x(i,jj)+x(i-1,jj))*.5d0
             yp=(y(i,jj)+y(i-1,jj))*.5d0
             dis=dsqrt((xp-xref(i,j))**2+(yp-yref(i,j))**2)
             y_dis(i,j)=min(y_dis(i,j),dis)
          end do
       end do
    end do
    !
    do j=1,ny
       do i=1,nx
          if(ijo_in(i,j) == 1) then
             y_dis(i,j)=0.d0
          else
             if(ijo_in(i,j) == 1) then
                if(ijobst(i  ,j) == 1.and.ijobst(i  ,j-1) == 1) then
                   xp=(x(i,j)+x(i,j-1))*.5d0
                   yp=(y(i,j)+y(i,j-1))*.5d0
                   dis=dsqrt((xp-xref(i,j))**2+(yp-yref(i,j))**2)
                   y_dis(i,j)=min(y_dis(i,j),dis)
                end if
                if(ijobst(i-1,j) == 1.and.ijobst(i-1,j-1) == 1) then
                   xp=(x(i-1,j)+x(i-1,j-1))*.5d0
                   yp=(y(i-1,j)+y(i-1,j-1))*.5d0
                   dis=dsqrt((xp-xref(i,j))**2+(yp-yref(i,j))**2)
                   y_dis(i,j)=min(y_dis(i,j),dis)
                end if
                if(ijobst(i,j  ) == 1.and.ijobst(i-1,j  ) == 1) then
                   xp  = ( x(i,j) + x(i-1,j) ) * 0.5d0
                   yp  = ( y(i,j) + y(i-1,j) ) * 0.5d0
                   dis = dsqrt((xp-xref(i,j))**2+(yp-yref(i,j))**2)
                   y_dis(i,j) = min( y_dis(i,j), dis )
                end if
                if(ijobst(i,j-1) == 1.and.ijobst(i-1,j-1) == 1) then
                   xp  = ( x(i,j-1) + x(i-1,j-1) ) * 0.5d0
                   yp  = ( y(i,j-1) + y(i-1,j-1) ) * 0.5d0
                   dis = dsqrt( (xp-xref(i,j))**2 + (yp-yref(i,j))**2 )
                   y_dis(i,j) = min( y_dis(i,j), dis )
                end if
             end if
          end if
       end do
    end do
    !
    do j=1,ny
       do i=1,nx
          y_dis(i,j)=rho*y_dis(i,j)/snu00
       end do
    end do

  end subroutine ypcal_ini
end module     ypcal_ini_m

!--------------------------------------------------------------------------------
module ypcal_m
  
  use common_hh
  use common_cmyp
  use common_cmsui
contains
  !----------------------------------------------------------------
  subroutine ypcal(usta,h0,snu00,rho)
    implicit none
    integer :: i,j
    real(8) :: rho
    real(8),dimension(0:im,0:jm),intent(in) :: usta
    real(8)                     ,intent(in) :: h0, snu00

!$omp do private(i,j)
    do j=1,ny
       do i=1,nx
          y_plus(i,j) = rho*y_dis(i,j)*usta(i,j)/snu00*(1-ijo_in(i,j))
       end do
    end do
  end subroutine ypcal
end module     ypcal_m

!--------------------------------------------------------------------------------
module wall_ke_m
  
  use common_hh
  use common_cmyp

contains
  !----------------------------------------------------------------
  subroutine wall_ke(yk,yep,c_mu0,usta)
    implicit none
    integer :: i,j
    real(8) :: c_mu0

    real(8),dimension(0:im,0:jm),intent(in)    :: usta
    real(8),dimension(0:im,0:jm),intent(inout) :: yk, yep

!$omp do private(i,j)
    do j = 1, ny
       do i = 1, nx
          if(y_plus(i,j) <= 30.d0) then
             yk(i,j) = 0.d0
             yep(i,j) = 0.d0
          elseif( y_plus(i,j) <= 100.d0 ) then
             yk(i,j) =     usta(i,j) **2 / dsqrt(c_mu0)
             yep(i,j) = dabs(usta(i,j))**3 / skp / y_dis(i,j)
          endif
       end do
    end do
  end subroutine wall_ke
end module     wall_ke_m

!--------------------------------------------------------------------------------
module phkecal_m
  
  use common_hh
  use common_cmuv
  use common_cmuvp
  use common_cmhq
  use common_cmxy
  use common_cmtst
  use common_cmsnu
  use common_cmkep
  use common_cmcf
  use common_cmyp
  use common_cmke
  use common_cmsui
contains
  !----------------------------------------------------------------
  subroutine phkecal(c_k0,c_e0,c_mu0,c_2e)
    implicit none
    integer :: i,j

    real(8) :: c_k0, c_e0, c_mu0, c_2e, xi_r_0, et_r_0 &
         , dudx_d, dvdy_d, ud1, ud2, dudy_d, vd1, vd2, dvdx_d

!$omp do private( i, j, xi_r_0, et_r_0, dudx_d, dvdy_d, ud1, ud2, dudy_d, vd1, vd2, dvdx_d )
    do j=2,ny-1
       do i=2,nx-1
          if(hs(i,j) <= hmin.or.ijobst(i,j)==1.or.ijobst(i-1,j)==1 &
               .or.ijobst(i,j-1)==1.or.ijobst(i-1,j-1)==1) then
             strain(i,j) = 0.d0
             ph(    i,j) = 0.d0
             pkv(   i,j) = 0.d0
             pev(   i,j) = 0.d0
          else 
             xi_r_0 = xi_r_up(i-1,j)+xi_r_up(i,j)
             et_r_0 = et_r_vp(i,j-1)+et_r_vp(i,j)
             dudx_d = ( -yu(i-1,j)+yu(i,j) )*r_dxi
             dvdy_d = ( -yv(i,j-1)+yv(i,j) )*r_det
             ud1    = ( yu(i-1,j+1)+yu(i,j+1) ) * 0.5d0
             ud2    = ( yu(i-1,j-1)+yu(i,j-1) ) * 0.5d0
             dudy_d = et_r_0/xi_r_0*(ud1-ud2)*r_det*0.5d0
             vd1    = ( yv(i+1,j) + yv(i+1,j-1) ) * 0.5d0
             vd2    = ( yv(i-1,j) + yv(i-1,j-1) ) * 0.5d0
             dvdx_d = xi_r_0/et_r_0*(vd1-vd2)*r_dxi*0.5d0
             strain(i,j)=2.d0*dudx_d**2+2.d0*dvdy_d**2+dudy_d**2+dvdx_d**2 &
                  +2.d0*dudy_d*dvdx_d
             !        if(cf(i,j) > 0.) then
             !          ck = 1. / dsqrt(cf(i,j))
             !          ce = 3.6 * c_2e * dsqrt(c_mu0) / cf(i,j)**(3./4.)
             !        else
             !          ck = 0.
             !          ce = 0.
             !        end if
             ph( i,j) = snu(i,j) * strain(i,j)
             pkv(i,j) = c_k0*dabs(usta(i,j))**3 / hs(i,j)
             pev(i,j) = c_e0*    usta(i,j) **4 / hs(i,j)**2
          end if
       end do
    end do
    !
  end subroutine phkecal
end module     phkecal_m

!--------------------------------------------------------------------------------
module schange_m
  
  use common_hh
  
  real(8),dimension(:,:),allocatable :: xe, ye, xf, yf
  real(8),dimension(:),allocatable :: xct, yct, xct_o, yct_o &
         , s_o, s, xr, xl, yr, yl, xr_o, xl_o, yr_o, yl_o
  real(8),dimension(:,:),allocatable :: dbl

contains

  subroutine alloc_schange_temp_variables
    implicit none
    
    allocate( xe(0:im,0:jm), ye(0:im,0:jm), xf(0:im,0:jm), yf(0:im,0:jm) )
    allocate( xct(0:im), yct(0:im), xct_o(0:im), yct_o(0:im) )
    allocate( s_o(0:im), s(0:im), xr(0:im), xl(0:im), yr(0:im), yl(0:im) )
    allocate( xr_o(0:im), xl_o(0:im), yr_o(0:im), yl_o(0:im) )
    allocate( dbl(0:im,0:1) )

    xe=0.d0; ye=0.d0; xf=0.d0; yf=0.d0; xct=0.d0; yct=0.d0; xct_o=0.d0; yct_o=0.d0
    s_o=0.d0; s=0.d0; xr=0.d0; xl=0.d0; yr=0.d0; yl=0.d0; xr_o=0.d0; xl_o=0.d0
    yr_o=0.d0; yl_o=0.d0; dbl=0.d0
    
  end subroutine alloc_schange_temp_variables
  ! -----------------------------------------------------------
  subroutine schange(mtime,x,y,mave)
    implicit none
    integer :: i,j,m,l

    integer :: mtime, mave, mmc, jfd, m1, jcr, jcrs
    real(8) :: xk, yk, xtmp, ytmp,dbm, ss


    real(8),dimension(0:im,0:jm),intent(inout) :: x, y

    xe=0.d0; ye=0.d0; xf=0.d0; yf=0.d0; xct=0.d0; yct=0.d0; xct_o=0.d0; yct_o=0.d0
    s_o=0.d0; s=0.d0; xr=0.d0; xl=0.d0; yr=0.d0; yl=0.d0; xr_o=0.d0; xl_o=0.d0
    yr_o=0.d0; yl_o=0.d0; dbl=0.d0
    !
    do mmc=1,mtime
       !
       ! ----- center line -----
       !
       do i=0,nx
          xct(i)=(x(i,0)+x(i,ny))*.5
          xct_o(i)=xct(i)
          yct(i)=(y(i,0)+y(i,ny))*.5
          yct_o(i)=yct(i)
       end do
       !
       ! ----- re-distribute the grid points along the center line ------
       !
       call s3npl(xct_o,yct_o,s_o,xct,yct,s,nx,nx)
       !
       ! ----- re-distribution of grid points along the banks ------
       !
       do i=0,nx
          xr_o(i)=x(i,0)
          yr_o(i)=y(i,0)
          xl_o(i)=x(i,ny)
          yl_o(i)=y(i,ny)
          xr(i)=x(i,0)
          yr(i)=y(i,0)
          xl(i)=x(i,ny)
          yl(i)=y(i,ny)
       end do
       call s3npl(xr_o,yr_o,s_o,xr,yr,s,nx,nx)
       call s3npl(xl_o,yl_o,s_o,xl,yl,s,nx,nx)
       !
       do i=0,ny
          x(i, 0)=xr(i)
          y(i, 0)=yr(i)
          x(i,ny)=xl(i)
          y(i,ny)=yl(i)
       end do
       !
       !         center line and banks ------------------------------------
       !
       do j = 0, ny, ny
          do i = 1, nx-1
             jfd = 0
             do m = 1,nx
                m1 = i-m
                if(m1 >= 0) call findits( &
                     xct(i-1),yct(i-1),xct(i),yct(i),xct(i+1),yct(i+1) &
                     ,x(m1,j),y(m1,j),x(m1+1,j),y(m1+1,j),jfd,1,0,xk,yk)
                if(jfd > 0) goto 200
                m1=i-1+m
                if(m1 < nx) call findits( &
                     xct(i-1),yct(i-1),xct(i),yct(i),xct(i+1),yct(i+1) &
                     ,x(m1,j),y(m1,j),x(m1+1,j),y(m1+1,j),jfd,2,0,xk,yk)
                if(jfd > 0) goto 200
             end do
             if(jfd == 0) then
                do m=1,nx
                   m1=i-m
                   if(m1 >= 0) call findits( &
                        xct(i-1),yct(i-1),xct(i),yct(i),xct(i+1),yct(i+1) &
                        ,x(m1,j),y(m1,j),x(m1+1,j),y(m1+1,j),jfd,1,1,xk,yk)
                   if(jfd > 0) goto 200
                   m1=i-1+m
                   if(m1 < nx) call findits( &
                        xct(i-1), yct(i-1), xct(i), yct(i), xct(i+1), yct(i+1) &
                        ,x(m1,j), y(m1,j), x(m1+1,j), y(m1+1,j), jfd, 2, 1, xk, yk )
                   if( jfd > 0 ) goto 200
                end do
             end if
200          continue
             if( jfd /= 0 ) then
                xe(i,j) = xk
                ye(i,j) = yk
             else
                xe(i,j) = - 9999.
                ye(i,j) = - 9999.
             end if
          end do
       end do
       !
       do j = 0, ny, ny
          jfd = 0
          do m = 0, nx-1 
             call find1( xct(0), yct(0), xct(1), yct(1) &
                  , x(m,j), y(m,j), x(m+1,j), y(m+1,j), jfd, xk, yk )
             if( jfd > 0 ) goto 201
          end do
201       continue
          if( jfd /= 0 ) then
             xe(0,j) = xk
             ye(0,j) = yk
          else
             xe(0,j) = - 9999.
             ye(0,j) = - 9999.
          end if
          !
          jfd = 0
          do m=nx-1,0,-1
             call find2( xct(nx-1), yct(nx-1), xct(nx), yct(nx) &
                  , x(m,j), y(m,j), x(m+1,j), y(m+1,j), jfd, xk, yk )
             if( jfd > 0 ) goto 202
          end do
202       continue
          if( jfd /= 0 ) then
             xe(nx,j) = xk
             ye(nx,j) = yk
          else
             xe(nx,j) = - 9999.
             ye(nx,j) = - 9999.
          end if
       end do
       !
       ! ----- check crossing (left bank)-----
       !
       do j = 0, ny, ny
300       continue
          jcr  = 0
          do i = 0, nx-1
             call crossck( xct(i), yct(i), xe(i,j), ye(i,j) &
                  , xct(i+1), yct(i+1), xe(i+1,j), ye(i+1,j), jcrs )
             if( jcrs == 1 ) then
                xtmp      = xe(i  ,j)
                ytmp      = ye(i  ,j)
                xe(i  ,j) = xe(i+1,j)
                ye(i  ,j) = ye(i+1,j)
                xe(i+1,j) = xtmp
                ye(i+1,j) = ytmp
             end if
             jcr = jcr + jcrs
          end do
          if(jcr > 0) goto 300
       end do
       !
       ! ----- new center line -----
       !
       do i=0, nx
          xct(i) = ( xe(i,0) + xe(i,ny) ) * 0.5
          yct(i) = ( ye(i,0) + ye(i,ny) ) * 0.5
       end do
       !
       ! ----- re-distribution of grids along banks ------
       !
       do m=0,1
          if(m == 0) then
             j =  0
          else
             j = ny
          end if
          do l = 1, mave
             do i = 1, nx
                dbl(i,m)=dsqrt((xe(i,j)-xe(i-1,j))**2+(ye(i,j)-ye(i-1,j))**2)
             end do
             xf( 0,j) = xe( 0,j)
             yf( 0,j) = ye( 0,j)
             xf(nx,j) = xe(nx,j)
             yf(nx,j) = ye(nx,j)
             do i=1, nx-1
                dbm = ( dbl(i,m) + dbl(i+1,m) ) * 0.5
                if(dbl(i,m) > dbm) then
                   ss = dbm / dbl(i,m)
                   xf(i,j) = xe(i-1,j) + ( xe(i  ,j) - xe(i-1,j) ) * ss
                   yf(i,j) = ye(i-1,j) + ( ye(i  ,j) - ye(i-1,j) ) * ss
                else
                   ss = 1. - dbm / dbl(i+1,m)
                   xf(i,j) = xe(i  ,j) + ( xe(i+1,j) - xe(i  ,j) ) * ss
                   yf(i,j) = ye(i  ,j) + ( ye(i+1,j) - ye(i  ,j) ) * ss
                end if
             end do
             do i=0,nx
                xe(i,j) = xf(i,j)
                ye(i,j) = yf(i,j)
             end do
          end do
       end do
       !
       ! ------------- internal grid coordinates -----
       !
       do i = 0, nx
          do j = 1, ny-1
             ss      = dble(j) / dble(ny)
             xf(i,j) = xf(i,0) + ( xf(i,ny) - xf(i,0) ) * ss
             yf(i,j) = yf(i,0) + ( yf(i,ny) - yf(i,0) ) * ss
          end do
       end do
       !
       do i = 0, nx
          do j = 0, ny
             x(i,j) = xf(i,j)
             y(i,j) = yf(i,j)
          end do
       end do
       !
    end do
  end subroutine schange
end module     schange_m

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
subroutine find1(xr1,yr1,xr2,yr2,xl1,yl1,xl2,yl2,jfd,xk,yk)
  implicit none
  real(8) :: x1,xr1,x2,xr2,y1,yr1,y2,yr2,rs,cost,sint,c0,s0,r1,cost1,sint1 &
       , xl1,yl1,xl2,yl2,r2,cost2,sint2,t1,t2,xk,yk
  integer ::jfd

  jfd=0
  !
  ! ------ line perpedicular to (r1--r2) passing r1 ----> line "L"
  !
  x1=xr1
  x2=xr2
  y1=yr1
  y2=yr2
  call kzahyo(x1,y1,x2,y2,rs,cost,sint)
  rs=20.
  c0=-sint
  s0=cost
  !
  ! ------ intersection between L and line (l1--l2) ------
  !
  x1=xr1
  y1=yr1
  r1=rs
  cost1=c0
  sint1=s0
  !
  call kzahyo(xl1,yl1,xl2,yl2,rs,cost,sint)
  x2=xl1
  y2=yl1
  r2=rs
  cost2=cost
  sint2=sint
  call kouten(x1,y1,r1,cost1,sint1,x2,y2,r2,cost2,sint2,t1,t2,xk,yk)
  if(t2 <= 1.) jfd=1
  !
end subroutine find1

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
subroutine find2(xr2,yr2,xr3,yr3,xl2,yl2,xl3,yl3,jfd,xk,yk)
  implicit none
  integer :: jfd
  real(8) :: xr2,yr2,xr3,yr3,xl2,yl2,xl3,yl3,xk,yk &
       , x1,x2,y1,y2,rs,cost,sint,c0,s0,r1,cost1,sint1,r2,cost2,sint2,t1,t2

  !
  jfd=0
  !
  ! ------ line perpedicular to (r2--r3) passing r3 ----> line "L"
  !
  x1=xr2
  x2=xr3
  y1=yr2
  y2=yr3
  call kzahyo(x1,y1,x2,y2,rs,cost,sint)
  rs=20.
  c0=-sint
  s0=cost
  !
  ! ------ intersection between L and line (l2--l3) ------
  !
  x1=xr3
  y1=yr3
  r1=rs
  cost1=c0
  sint1=s0
  call kzahyo(xl2,yl2,xl3,yl3,rs,cost,sint)
  x2=xl2
  y2=yl2
  r2=rs
  cost2=cost
  sint2=sint
  call kouten(x1,y1,r1,cost1,sint1,x2,y2,r2,cost2,sint2,t1,t2,xk,yk)
  if(t2 >= 0.) jfd=1
end subroutine find2

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
subroutine findits(xr1,yr1,xr2,yr2,xr3,yr3,xl1,yl1,xl2,yl2,jfd,jrl,jtr,xk,yk)
  implicit none
  integer :: jfd

  real(8) :: xr1,yr1,xr2,yr2,xr3,yr3,xl1,yl1,xl2,yl2,xk,yk &
       , x1, x2, y1,y2,rs,cost,sint,c0,s0,r1,cost1,sint1,r2,cost2,sint2,t1,t2
  integer :: jrl,jtr
 
  jfd=0
  !
  ! ------ line perpedicular to (r1--r3) passing r2 ----> line "L"
  x1=xr1
  x2=xr3
  y1=yr1
  y2=yr3
  call kzahyo(x1,y1,x2,y2,rs,cost,sint)
  rs=20.
  c0=-sint
  s0=cost
  !
  ! ------ intersection between L and line (l1--l2) ------
  x1=xr2
  y1=yr2
  r1=rs
  cost1=c0
  sint1=s0
  !
  call kzahyo(xl1,yl1,xl2,yl2,rs,cost,sint)
  x2=xl1
  y2=yl1
  r2=rs
  cost2=cost
  sint2=sint
  call kouten(x1,y1,r1,cost1,sint1,x2,y2,r2,cost2,sint2,t1,t2,xk,yk)
  if(jtr == 0) then
     if(t2 >= 0..and.t2 <= 1.) jfd=1
  else
     if((jrl == 1.and.t2 <= 1).or.(jrl == 2.and.t2 > 0)) jfd=1
  end if
end subroutine findits

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
subroutine crossck(x1,y1,x2,y2,x3,y3,x4,y4,jcrs)
  implicit none
  integer :: jcrs
  real(8) :: x1,y1,x2,y2,x3,y3,x4,y4 &
       , rs, cost, sint, cost1, sint1,r1,cost2,sint2,r2,t1,t2,xk,yk

  jcrs=0
  call kzahyo(x1,y1,x2,y2,rs,cost,sint)
  cost1=cost
  sint1=sint
  r1=rs
  !
  call kzahyo(x3,y3,x4,y4,rs,cost,sint)
  cost2=cost
  sint2=sint
  r2=rs
  !
  call kouten(x1,y1,r1,cost1,sint1,x3,y3,r2,cost2,sint2,t1,t2,xk,yk)
  if(t1 >= 0.and.t1 <= 1.) jcrs=1
end subroutine crossck

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
subroutine kzahyo(x1,y1,x2,y2,rs,cost,sint)
  implicit none
  real(8) :: x1,y1,x2,y2,rs,cost,sint

  rs   = dsqrt( (x2-x1)**2 + (y2-y1)**2 )
  cost = (x2-x1) / rs
  sint = (y2-y1) / rs
end subroutine kzahyo


!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
subroutine kouten(x1,y1,r1,cost1,sint1,x2,y2,r2,cost2,sint2,t1,t2,xk,yk)
  implicit none
  real(8) :: x1,y1,r1,cost1,sint1,x2,y2,r2,cost2,sint2,t1,t2,xk,yk &
       , bt1, bt2

  !
  bt1=sint2*cost1-sint1*cost2
  if(dabs(bt1) < 1e-5) then
     t1=-9999.
  else
     t1=((x2-x1)*sint2+(-y2+y1)*cost2)/(r1*bt1)
  end if
  bt2=sint1*cost2-sint2*cost1
  if(dabs(bt2) < 1e-5) then
     t2=-9999.
  else
     t2=((x1-x2)*sint1+(-y1+y2)*cost1)/(r2*bt2)
  end if
  xk=x1+r1*t1*cost1
  yk=y1+r1*t1*sint1
  return
end subroutine kouten

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
subroutine s3n(x,y,xx,yy,n,nn)
  implicit none
  
  integer :: i,j,k,n

  real(8) :: xxi, smj, smj1, yj,yj1,hj1,xj1,xj,hj2,hj3
  integer :: n1, k1,j1,nn

  real(8), parameter :: c1 = 0.
  real(8), parameter :: cn = 0.
  real(8), parameter :: amu1 = 0.
  real(8), parameter :: almn = 0.
!  data c1,cn,amu1,almn/0.,0.,0.,0./

  ! ----- Interplolation with a cubic nonperiodic spline -----
  real(8) :: x(0:n),y(0:n),sm(0:n),xx(0:nn),yy(0:nn),h(0:n) &
       ,alm(0:n),amu(0:n),c(0:n),p(0:n),q(0:n),u(0:n)




  n1=n-1
  do i=1,n
     h(i)=x(i)-x(i-1)
  end do
  do i=1,n1
     alm(i)=h(i+1)/(h(i)+h(i+1))
     amu(i)=1.-alm(i)
  end do
  do i=1,n1
     c(i)=3.*(alm(i)*(y(i)-y(i-1))/h(i)+amu(i)*(y(i+1)-y(i))/h(i+1))
  end do
  c(0)=c1
  c(n)=cn
  amu(0)=amu1
  alm(n)=almn
  p(0)=2.
  q(0)=-amu(0)/p(0)
  u(0)=c(0)/p(0)
  do k=1,n
     p(k)=alm(k)*q(k-1)+2.
     q(k)=-amu(k)/p(k)
     u(k)=(c(k)-alm(k)*u(k-1))/p(k)
  end do
  sm(n)=u(n)
  do k=1,n1
     k1=n1-k+1
     sm(k1)=q(k1)*sm(k1+1)+u(k1)
  end do
  do 160 i=0,nn
     xxi=xx(i)
     do 170 k=1,n
        if(xxi > x(k)) goto 170
        j1=k
        goto 180
170     continue
180     j=j1-1
        smj=sm(j)
        smj1=sm(j1)
        yj=y(j)
        yj1=y(j1)
        hj1=h(j1)
        xj1=x(j1)-xxi
        xj=xxi-x(j)
        hj2=hj1*hj1
        hj3=hj2*hj1
        yy(i)=smj*xj1*xj1*xj/hj2-smj1*xj*xj*xj1/hj2+yj*xj1*xj1*(2.*xj+ &
             hj1)/hj3+yj1*xj*xj*(2.*xj1+hj1)/hj3
160     continue
      end subroutine s3n

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
subroutine s3npl(x,y,s,xx,yy,ss,n,nn)
  implicit none
  integer :: i,j
  real(8) :: dd
  integer :: n,nn
  ! ----- Interplolation of plane data with a cubic nonperiodic spline ---
  real(8) :: x(0:n),y(0:n),s(0:n),xx(0:nn),yy(0:nn),ss(0:nn)


  s(0) = 0.
  do i = 1, n
     s(i)=s(i-1)+dsqrt((x(i)-x(i-1))**2+(y(i)-y(i-1))**2)
  end do
  dd = ( s(n) - s(0) ) / dble(nn)
  do i = 0, nn
     ss(i) = s(0) + dd * dble(i)
  end do
  !     call s3n(s,x,sm,ss,xx,n,nn,c1x,cnx,amu1x,almnx,h,alm,amu,c,p,q,u)
  !     call s3n(s,y,sm,ss,yy,n,nn,c1y,cny,amu1y,almny,h,alm,amu,c,p,q,u)
  call s3n(s,x,ss,xx,n,nn)
  call s3n(s,y,ss,yy,n,nn)
end subroutine s3npl

!--------------------------------------------------------------------------------
!
!--------------------------------------------------------------------------------
function f_chunk(alpha)
  implicit none
  real(8) :: f_chunk
  real(8) :: alpha

  if(      alpha >  1.) then
     f_chunk = 0.
  else if( alpha >= 0.) then
     f_chunk = 1. - alpha
  else
     f_chunk = 1.
  end if
end function f_chunk
!
module cell2grid_m
  use common_hh
  
 contains

  ! ------------------------------------------------------------- !
  subroutine cell2grid(f_c,f_g)
    implicit none

    real(8),dimension(0:im,0:jm),intent(in)    :: f_c
    real(8),dimension(0:im,0:jm),intent(out)    :: f_g
    integer :: i,j
    !
			!	óÃàÊÇÃäpÇÃèÍçá

		f_g( 0, 0) = f_c( 1, 1)
		f_g(nx, 0) = f_c(nx, 1)
		f_g( 0,ny) = f_c( 1,ny)
		f_g(nx,ny) = f_c(nx,ny)

			!	óÃàÊÇÃï”ÇÃèÍçá
!$omp do private(i)
		do i=1,nx-1
			f_g(i, 0) = (f_c(i, 1)+f_c(i+1, 1))*0.5d0
			f_g(i,ny) = (f_c(i,ny)+f_c(i+1,ny))*0.5d0
		end do

!$omp do private(j)
		do j=1,ny-1
			f_g( 0,j) = (f_c( 1,j)+f_c( 1,j+1))*0.5d0
			f_g(nx,j) = (f_c(nx,j)+f_c(nx,j+1))*0.5d0
		end do

			!	óÃàÊì‡ïîÇÃèÍçá
!$omp do private(i,j)
		do j=1,ny-1
			do i=1,nx-1
				f_g(i,j) = (f_c(i,j)+f_c(i+1,j)+f_c(i,j+1)+f_c(i+1,j+1))*.25d0
			end do
		end do
    !
  end subroutine cell2grid

end module cell2grid_m

!--------------------------------------------------------------------------------
module mix_m
  use common_hh
  use fixed_bed
  implicit none
  
  real(8),dimension(:,:),allocatable :: ubxi, ubet, uang, dzdn
  real(8),dimension(:,:,:),allocatable :: qbti_mix

  real(8),dimension(:,:,:),allocatable :: quck, qvck, dcdxi_k, dcdet_k, sourcek

contains

  subroutine alloc_mix_temp_variables(nk)
    implicit none
    integer(4),intent(in) :: nk
    
    allocate( ubxi(0:im,0:jm), ubet(0:im,0:jm) )
    allocate( uang(0:im,0:jm), dzdn(0:im,0:jm) )
    allocate( qbti_mix(0:im,0:jm,nk) )

	allocate( quck(0:im,0:jm,nk), qvck(0:im,0:jm,nk) )
  	allocate( dcdxi_k(0:im,0:jm,nk), dcdet_k(0:im,0:jm,nk), sourcek(0:im,0:jm,nk) )
    
    ubxi = 0.d0;	ubet = 0.d0
    uang = 0.d0;	dzdn = 0.d0

	quck = 0.d0;	qvck = 0.d0;
	dcdxi_k = 0.d0;	dcdet_k = 0.d0;	sourcek = 0.d0

    qbti_mix = 0.d0;
   
  end subroutine alloc_mix_temp_variables
  ! --------------------------------------------------------------------
  subroutine mixini(snu00,dm0)
    use mix
    implicit none
    real(8),intent(in) :: snu00
    real(8),intent(out) :: dm0
    integer :: i,j,k,n
    real(8) :: d10, d50, d90, p_tot
    !
    ! ----------- d10, d50, d90 of initial distribution ------
    !
!    do k=1,nk
!       if(pdist_100(k,0) >= 10.d0 .and. pdist_100(k-1,0) <= 10.d0) then
!          d10=10.**( &
!               dlog10(ddist_mm(k-1))+(10.d0-pdist_100(k-1,0)) &
!               /(pdist_100(k,0)-pdist_100(k-1,0))* &
!               (dlog10(ddist_mm(k))-dlog10(ddist_mm(k-1))))
!       end if
!       if(pdist_100(k,0) >= 50.d0 .and. pdist_100(k-1,0) <= 50.d0) then
!          d50=10.**( &
!               dlog10(ddist_mm(k-1))+(50.d0-pdist_100(k-1,0)) &
!               /(pdist_100(k,0)-pdist_100(k-1,0))* &
!               (dlog10(ddist_mm(k))-dlog10(ddist_mm(k-1))))
!       end if
!       if(pdist_100(k,0) >= 90.d0 .and. pdist_100(k-1,0) <= 90.d0) then
!          d90=10.**( &
!               dlog10(ddist_mm(k-1))+(90.d0-pdist_100(k-1,0)) &
!               /(pdist_100(k,0)-pdist_100(k-1,0))* &
!               (dlog10(ddist_mm(k))-dlog10(ddist_mm(k-1))))
!       end if
!    end do
    !
!    e_m=d90/1000.d0
    !
    ! ------ initial fraction of sediment class in k ------
    !
    if( j_mix_dis==0 ) then
       dm0 = 0.d0
       do k=1,nk
          ddk(k) = 10.d0**(0.5d0*dlog10(ddist_mm(k)*ddist_mm(k-1)))/1000.d0
          rdsgi(k) = 1.d0/dsqrt(ddk(k)/(spec*g))
          pmk0(k,0) = (pdist_m_100(k,0)-pdist_m_100(k-1,0))/100.d0
          dm0 = dm0+ddk(k)*pmk0(k,0)
       end do
    
       do n=0,nm_cell
          do k=1,nk
             pmk0(k,n) = (pdist_m_100(k,n)-pdist_m_100(k-1,n))*0.01d0
          end do
       end do

       if( j_mix_dis_dep==0 ) then
          
          do n=0,nm_cell
             do k=1,nk
                pdk0(k,n) = pmk0(k,n)
             end do
          end do
       else
       
          do n=0,nm_cell
             do k=1,nk
                pdk0(k,n) = (pdist_d_100(k,n)-pdist_d_100(k-1,n))*0.01d0
             end do
          end do
       
       end if

    else
       dm0 = 0.d0
       do k=1,nk
          ddk(k) = ddist_mm(k)/1000.d0
          rdsgi(k) = 1.d0/dsqrt(ddk(k)/(spec*g))
          pmk0(k,0) = pdist_m_100(k,0)/100.d0
          dm0 = dm0+ddk(k)*pmk0(k,0)
       end do
    
       do n=0,nm_cell
          do k=1,nk
             pmk0(k,n) = pdist_m_100(k,n)*0.01d0
          end do
       end do
       
       if( j_mix_dis_dep==0 ) then
       
          do n=0,nm_cell
             do k=1,nk
                pdk0(k,n) = pmk0(k,n)
             end do
          end do
       
       else
       
          do n=0,nm_cell
             do k=1,nk
                pdk0(k,n) = pdist_d_100(k,n)*0.01d0
             end do
          end do
       
       end if
       
    end if
    
    do n=0,nm_cell
       p_tot = 0.d0
       do k=1,nk
         p_tot = p_tot+pmk0(k,n)
       end do
       if( p_tot>0.d0 ) then
         do k=1,nk
           pmk0(k,n) = pmk0(k,n)/p_tot
         end do
       end if

       p_tot = 0.d0
       do k=1,nk
         p_tot = p_tot+pdk0(k,n)
       end do
       if( p_tot>0.d0 ) then
         do k=1,nk
           pdk0(k,n) = pdk0(k,n)/p_tot
         end do
       end if
    end do
    
    !
    do k=1,nk
       call usc(ddk(k),uci(k),spec,snu00,g)
       tsci0(k) = uci(k)**2/(spec*g*ddk(k))
       call wfcal(spec,ddk(k),snu00,wfk(k),g)
    end do
    !
  end subroutine mixini
  ! --------------------------------------------------------------------
  subroutine ini_layer(snu00)
    use common_cmxy
    use common_cmsui
    use mix
    implicit none
    real(8),intent(in) :: snu00
    integer :: i, j, k, n
    integer :: i_nbmin, j_nbmin, i_nbmax, j_nbmax, nbmax, nbmin
    
    !  --- setting of the bottom elevation of movable bed --- !
    
    do j=1,ny
    	do i=1,nx
    		if( ij_ero(i,j)==1 ) then
    			eta_base(i,j) = eta(i,j)
    		else
    			if( eta_zb(i,j)>eta(i,j)-e_thick ) then
    				eta_base(i,j) = eta_zb(i,j)
    			else
		    		eta_base(i,j) = eta(i,j) - e_thick
		    	end if
	    	end if
    	end do
    end do
   
    !
    !  ---setting for mixture bed material ------
    !
    
    nbmin = 999
    nbmax =-999
    do j=1,ny
    	do i=1,nx
    		nb(i,j) = 0
210 		e_t(i,j) = eta(i,j)-(eta_base(i,j)+nb(i,j)*e_d+e_m)
    		if( e_t(i,j)>e_d ) then
    			nb(i,j) = nb(i,j)+1
    			if( nb(i,j)>nm ) then
    				write(*,*) "Error !"
    				write(*,*) 'The number of deposited layer exceeds maximum number', nm,'at i=',i,'j=',j
    				write(*,*) 'Please change the thickness of deposited layer or the maximum number of deposited layer.'
    				pause
    				stop
    			end if
    			goto 210
    		end if
    		if( e_t(i,j)<0.d0 ) then
    			e_t(i,j) = 0.d0
    		end if
    		if( nb(i,j)<nbmin ) then
    			nbmin = nb(i,j)
    			i_nbmin = i
    			j_nbmin = j
    		end if
    		if( nb(i,j)>nbmax ) then
    			nbmax = nb(i,j)
    			i_nbmax = i
    			j_nbmax = j
    		end if
    	end do
    end do
    !
    ! ----- setting initial fraction of bed material ------
    !
    do i=1,nx
    	do j=1,ny
    		do k=1,nk
    			do n=0,nb(i,j)
    				p_d(i,j,n,k) = pdk0(k,flg_mix(i,j))
    			end do
    			p_m(i,j,k) = pmk0(k,flg_mix(i,j))
    			p_t(i,j,k) = pmk0(k,flg_mix(i,j))
    		end do
    	end do
    end do
    !
    call dmtscm(snu00)
    !
  end subroutine ini_layer
  !
  ! ------------------------------------------------------------
  subroutine dmtscm(snu00)
    use common_cmsn
    use mix
    implicit none
    real(8),intent(in) :: snu00
    integer :: i,j,k
    real(8) :: ucm
    ! ------------------------------------------------------------
    !
    ! ------ cal. of dm and t*cm------
    !
    do i=1,nx
    	do j=1,ny
    		dm_m(i,j) = 0.
    		do k=1,nk
    			dm_m(i,j) = dm_m(i,j)+ddk(k)*p_m(i,j,k)
    		end do
    		if( dm_m(i,j)<=0.d0 ) then
    			dm_m(i,j) = (7.66d0*snmm(i,j)*dsqrt(g))**6.d0/2.5d0
    		end if
    		call usc( dm_m(i,j), ucm, spec, snu00, g )
    		tscm(i,j) = ucm**2/(spec*g*dm_m(i,j))
    	end do
    end do
    !
    if( jrep==1 ) then
    	do j=1,ny
    		do i=0,1
    			dm_m(i,j) = dm_m(i+nx-3,j)
    			tscm(i,j) = tscm(i+nx-3,j)
    		end do
    		do i=nx-1,nx
    			dm_m(i,j) = dm_m(i-nx+3,j)
    			tscm(i,j) = tscm(i-nx+3,j)
    		end do
    	end do
    end if
    !
    !       if(j_drg_movable == 1) then
    !        do j=1,ny
    !         do i=1,nx
    !           snmm(i,j) = (2.5d0*dm_m(i,j))**(1.d0/6.d0)/(7.66d0*sqrt(9.81d0))
    !          snmm(i,j) = dm_m(i,j)**(0.1666667)*0.046976218
    !          snmm(i,j) = dm_m(i,j)**(1./6.) / 6.8 / dsqrt(g)
    !         end do
    !        end do
    !
    !        do j=1,ny
    !         do i=0,nx
    !          if(i > 0 .and. i < nx) then
    !           sn_up(i,j)=(snmm(i,j)+snmm(i+1,j))*.5
    !          else if(i == 0) then
    !           sn_up(i,j)=snmm(i+1,j)
    !          else
    !           sn_up(i,j)=snmm(i,j)
    !          end if
    !         end do
    !        end do
    !
    !        do j=0,ny
    !         do i=1,nx
    !          if(j > 0 .and. j < ny) then
    !           sn_vp(i,j)=(snmm(i,j)+snmm(i,j+1))*.5
    !          else if(j == 0) then
    !           sn_vp(i,j)=snmm(i,j+1)
    !          else
    !           sn_vp(i,j)=snmm(i,j)
    !          end if
    !         end do
    !        end do
    !
    !       end if
    !
  end subroutine dmtscm
  ! --------------------------------------------------------
  subroutine dmcal
    use mix
    implicit none
    integer :: i, j, n, k
    ! --------------------------------------------------------
    !
    do i=1,nx
    	do j=1,ny
    		dm_t(i,j)=0.d0
    		do n=1,nb(i,j)
    			dm_d(i,j,n)=0.d0
    		end do
    		do k=1,nk
    			dm_t(i,j)=dm_t(i,j)+ddk(k)*p_t(i,j,k)
    			do n=1,nb(i,j)
    				dm_d(i,j,n)=dm_d(i,j,n)+ddk(k)*p_d(i,j,n,k)
    			end do
    		end do
    	end do
    end do
    !
  end subroutine dmcal
  ! --------------------------------------------------------------------
	subroutine qbcal_w_mix(ux0,uy0,hs0,gamma_m,dsmt,pi_bed,tantc &
			,j_bank,i_erosion_start,i_erosion_end,bheight)

		use common_cmsr
		use common_cmxy
		use common_cmtst
		use common_cmave
		use common_cmsui
		use common_cmconf1
		use common_cmqb
		use common_cmdex
		use common_cmhq
		use mix
		use supplying_sediment
		use secondary_flow
		implicit none

		integer,intent(in) :: j_bank,i_erosion_start,i_erosion_end
		real(8),intent(in) :: dsmt,tantc,bheight,gamma_m,pi_bed

		integer :: i,j,k,j1,j2,ip1,im1,jp1,jm1
		real(8) :: xi_ega,usci,coss,sins,vvup,ubup 		&
				,xr,er,dzdxi,cost,dzdet,tsi_up,tsci_up,qb,vvvp 		&
				,ubvp,bh0,bh_alpha,tsi_vp,tsci_vp,qbxi,qbet
		real(8) :: uxbed, uybed, vb, us_e, ts_e, d_sed1, d_sed2		&
				, beta_a, qbxi1, qbxi2, qbet1, qbet2				&
				, qbx_xi1, qby_xi1, qbx_et1, qby_et1				&
				, qbx_xi2, qby_xi2, qbx_et2, qby_et2				&
				, xi_x1, xi_y1, xi_x2, xi_y2						&
				, et_x1, et_y1, et_x2, et_y2						&
				, sj_xi1, sj_et1, sj_xi2, sj_et2

		real(8),dimension(0:im,0:jm),intent(in) :: ux0,uy0,hs0
    ! --------------------------------------------------------------------
    !
!!$omp single
!$omp do private( i, j, coss, sins, dzdxi, dzdet, uxbed, uybed, vb )
    do j = 1, ny
       do i = 1, nx
          if( dabs(vti(i,j)) < 1e-8.or.hs(i,j) < hmin) then
            ubxi(i,j) = 0.d0
            ubet(i,j) = 0.d0
            cos_bed(i,j) = 0.d0
            sin_bed(i,j) = 0.d0
            kc(i,j) = 1.d0
            btheta_y(i,j) = 0.d0
            btheta_x(i,j) = 0.d0
            dzds(i,j) = 0.d0
            dzdn(i,j) = 0.d0
            ubnvb(i,j) = 0.d0
          else
            coss = ux0(i,j) / vti(i,j)
            sins = uy0(i,j) / vti(i,j)
            ubxi(i,j) = ( ( xi_x(i,j)*coss+xi_y(i,j)*sins)*us_bed(i,j) &
                  			+ ( - xi_x(i,j)*sins+xi_y(i,j)*coss)*un_bed(i,j) ) / &
                  				( xi_r(i,j) + xi_r(i,j-1) ) * 2.d0
            ubet(i,j) = ( ( et_x(i,j)*coss+et_y(i,j)*sins)*us_bed(i,j) &
                  			+ ( - et_x(i,j)*sins+et_y(i,j)*coss)*un_bed(i,j) ) / &
                  				( et_r(i,j) + et_r(i-1,j) ) * 2.d0
                  				
            ubnvb(i,j) = un_bed(i,j)/us_bed(i,j)

            uxbed = coss*us_bed(i,j)-sins*un_bed(i,j)
            uybed = sins*us_bed(i,j)+coss*un_bed(i,j)
				vb = dsqrt( uxbed**2.d0+uybed**2.d0 ) 
	            
	!			if( ubxiti(i,j)>0.d0 ) then
	!				if( i==nx ) then
	!					dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi*xi_r_up(i-1,j)
	!				else
	!					dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi*xi_r_up(i,j)
	!				end if
	!			else
	!				if( i==1 ) then
	!					dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi*xi_r_up(i,j)
	!				else
	!					dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi*xi_r_up(i-1,j)
	!				end if
	!			end if
				
	!			if( ubetti(i,j)<0.d0 ) then
	!				if( j==1 ) then
	!					dzdet = (-eta(i,j)+eta(i,j+1))*r_det*et_r_vp(i,j)
	!				else
	!					dzdet = (-eta(i,j-1)+eta(i,j))*r_det*et_r_vp(i,j-1)
	!				end if
	!			else
	!				if( j==ny ) then
	!					dzdet = (-eta(i,j-1)+eta(i,j))*r_det*et_r_vp(i,j-1)
	!				else
	!					dzdet = (-eta(i,j)+eta(i,j+1))*r_det*et_r_vp(i,j)
	!				end if			
	!			end if

	!			theta_x(i,j) = datan(dzdxi)
	!			theta_y(i,j) = datan(dzdet)

				if( ubxi(i,j)>0.d0 ) then
					if( i==nx ) then
						dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi
					else
						dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi
					end if
				else
					if( i==1 ) then
						dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi
					else
						dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi
					end if
				end if
				
				if( ubet(i,j)<0.d0 ) then
					if( j==1 ) then
						dzdet = (-eta(i,j)+eta(i,j+1))*r_det
					else
						dzdet = (-eta(i,j-1)+eta(i,j))*r_det
					end if
				else
					if( j==ny ) then
						dzdet = (-eta(i,j-1)+eta(i,j))*r_det
					else
						dzdet = (-eta(i,j)+eta(i,j+1))*r_det
					end if
				end if

!				if( i==1 ) then
!					dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi
!				else if( i==nx ) then
!					dzdxi = (-eta(i-1,j)+eta(i,j))*r_dxi
!				else
!					dzdxi = (-eta(i-1,j)+eta(i+1,j))*r_dxi*0.5d0
!				end if
				
!				if( j==1 ) then
!					dzdet = (-eta(i,j)+eta(i,j+1))*r_det
!				else if( j==ny ) then
!					dzdet = (-eta(i,j-1)+eta(i,j))*r_det
!				else
!					dzdet = (-eta(i,j-1)+eta(i,j+1))*r_det
!				end if

				theta_x(i,j) = datan(xi_x(i,j)*dzdxi+et_x(i,j)*dzdet)
				theta_y(i,j) = datan(xi_y(i,j)*dzdxi+et_y(i,j)*dzdet)
				
				cos_bed(i,j) = uxbed / vb
	         sin_bed(i,j) = uybed / vb

	    		dzds(i,j) = (xi_x(i,j)*coss+xi_y(i,j)*sins)*dzdxi		&
						   +(et_x(i,j)*coss+et_y(i,j)*sins)*dzdet
				dzdn(i,j) = (-xi_x(i,j)*sins+xi_y(i,j)*coss)*dzdxi		&
						   +(-et_x(i,j)*sins+et_y(i,j)*coss)*dzdet
	       
				kc(i,j) = Dmax1(1.d0+1.d0/mu_s*((1.d0/spec+1.d0)*cos_bed(i,j)*dtan(theta_x(i,j))	&
									+sin_bed(i,j)*dtan(theta_y(i,j))),0.5D0)

!				kc(i,j) = dmax1(1.d0+dzds(i,j)/mu_s,0.5d0)

	    		btheta_y(i,j) = 1.d0/(1.d0+dtan(theta_x(i,j))**2.d0+dtan(theta_y(i,j))**2.d0)
	    		btheta_x(i,j) = btheta_y(i,j)+dcos(theta_x(i,j))**2.d0/spec
					   
          end if
       end do
    end do
    
!$omp do private( i, j, k, us_e, ts_e )
		do j=1,ny
			do k=1,nk
				do i=1,nx
             !
					if( dabs(vti(i,j)) < 1e-8 .or. hs0(i,j) < hmin ) then
						qbti_mix(i,j,k) = 0.d0
					else
						if( tsk(i,j,k)<=kc(i,j)*tsck(i,j,k) ) then
				!		if( dsqrt(kc(i,j))*usck(i,j,k)>=usta(i,j) ) then
							qbti_mix(i,j,k) = 0.d0
						else
							call us_avelog(us_e,vti(i,j),hs0(i,j),dm_m(i,j)*(1.d0+2.d0*tausta(i,j)))
							ts_e = us_e**2.d0/(spec*g*ddk(k))
				!			qbti_mix(i,j,k) = p_m(i,j,k)*17.d0*dsqrt(spec*g*ddk(k)**3)* 		&
				!							ts_e**1.5*(1.d0-kc(i,j)*tsck(i,j,k)/tsk(i,j,k)) 	&
							qbti_mix(i,j,k) = p_m(i,j,k)*17.d0*dsqrt(spec*g*ddk(k)**3)* 		&
											ts_e**1.5*(1.d0-kc(i,j)*tsck(i,j,k)/tsk(i,j,k)) 	&
											*(1.d0-dsqrt(kc(i,j)*tsck(i,j,k)/tsk(i,j,k)))*phi(i,j)*c_se(i,j)
				!			qbti_mix(i,j,k) = p_m(i,j,k)*17.d0*dsqrt(spec*g*ddk(k)**3)* 		&
				!							ts_e**1.5*(1.d0-kc(i,j)*tsck(i,j,k)/tsk(i,j,k)) 	&
				!							*(1.d0-dsqrt(kc(i,j))*usck(i,j,k)/usta(i,j))*phi(i,j)
				!			qbti_mix(i,j,k) = p_m(i,j,k)*17.d0*dsqrt(spec*g*ddk(k)**3)* 		&
				!							ts_e**1.5*(1.d0-kc(i,j)*tsck(i,j,k)/tausta(i,j)) 	&
				!							*(1.d0-dsqrt(kc(i,j))*usck(i,j,k)/usta(i,j))*phi(i,j)
						end if
					end if
             !
				end do
			end do
		end do
		
	if( j_qb_vec==0 ) then
    !
    ! ------- qb_xi_mix -------------------------
    !
!$omp do private( i, j, vvup, ubup, er, dzdxi, cost, dzdet )
		do j=1,ny
			do i=1,nx-1
!				vvup = (vti(i,j)+vti(i+1,j))*.5d0
				vvup = (us_bed(i,j)+us_bed(i+1,j))*.5d0
				ubup = (ubxi(i,j)+ubxi(i+1,j))*.5d0
				er = et_r(i,j)
				dzdxi = (-eta(i,j)+eta(i+1,j))*r_dxi
				cost = (cos_t(i+1,j)+cos_t(i,j))*.5d0
          
				if( j == 1 ) then
					dzdet = ( -(eta(i,j)+eta(i+1,j))+(eta(i,j+1)+eta(i+1,j+1)) ) * 0.5d0 *r_det
!					if(eta(i+1,j)>=b_elv(1,i+1).or.eta(i,j)>=b_elv(1,i)) dzdet = 0.d0
				else if(j == ny) then
					dzdet = ( -(eta(i,j-1)+eta(i+1,j-1))+(eta(i,j)+eta(i+1,j)) ) * 0.5d0 *r_det
!					if(eta(i+1,j)>=b_elv(2,i+1).or.eta(i,j)>=b_elv(2,i)) dzdet = 0.d0
				else
					dzdet = ( -(eta(i,j-1)+eta(i+1,j-1))+(eta(i,j+1)+eta(i+1,j+1)) ) * 0.25d0 *r_det
				end if

				if( vvup<1e-5 ) then
					uang(i,j) = 0.d0
				else
					uang(i,j) = ubup/vvup
				end if
				dzdn(i,j) = xi_r_up(i,j)*dzdxi+er*cost*dzdet
			end do
		end do

!$omp do private( i, j, k, tsi_up, tsci_up, qbxi, qb )
		do j=1,ny
			do k=1,nk
				do i=1,nx-1
					tsi_up = (tsk(i,j,k)+tsk(i+1,j,k))*0.5d0
					tsci_up = (tsck(i,j,k)+tsck(i+1,j,k))*0.5d0
					qb = (qbti_mix(i,j,k)+qbti_mix(i+1,j,k))*0.5d0
					if( tsi_up<tsci_up ) then
						qb_xi_mix(i,j,k) = 0.d0
					else
						qbxi = xi_r_up(i,j)*(uang(i,j)-gamma_m*dsqrt(tsci_up/tsi_up)*dzdn(i,j))
						
						qb_xi_mix(i,j,k) = ( (qbxi+dabs(qbxi))*qbti_mix(i  ,j,k)	&
												  +(qbxi-dabs(qbxi))*qbti_mix(i+1,j,k) )*0.5d0
				
				!		qb_xi_mix(i,j,k) = xi_r_up(i,j)*qb*(uang(i,j)-gamma_m*dsqrt(tsci_up/tsi_up)*dzdn(i,j))
						
					end if
				end do
			end do
		end do
    !
		if( jrep==1 ) then
!$omp do private(j,k)
			do j=1,ny
				do k=1,nk
					qb_xi_mix(0,j,k) = qb_xi_mix(nx-3,j,k)
					qb_xi_mix(1,j,k) = qb_xi_mix(nx-2,j,k)
					qb_xi_mix(nx-1,j,k) = qb_xi_mix(2,j,k)
					qb_xi_mix(nx,j,k) = qb_xi_mix(3,j,k)
				end do
			end do
		else
!$omp do private(j,k)
			do j=1,ny
				do k=1,nk
					qb_xi_mix(0,j,k) = qb_xi_mix(1,j,k)
					qb_xi_mix(nx,j,k) = qb_xi_mix(nx-1,j,k)
				end do
			end do
		end if
    
    !
    ! ------- qb_et_mix -------------------------
    !
!$omp do private( i, j, k, j1, j2, xr, er, vvvp, ubvp, dzdet, cost, dzdxi, bh0, bh_alpha, qb, tsi_vp, tsci_vp, qbet )
		do i=2,nx-1
			if( j_bank == 0 .or. i <= i_erosion_start .or. i >= nx-i_erosion_end ) then
				j1 = 1
				j2 = ny-1
				do k=1,nk
					qb_et_mix(i,0,k) = 0.d0
					qb_et_mix(i,ny,k) = 0.d0
				end do
			else
				j1 = 0
				j2 = ny
			end if
      !
			do j=j1,j2
				xr = xi_r(i,j)
				er = et_r_vp(i,j)
				if( j==0 ) then
!					vvvp = vti(i,j+1)
					vvvp = us_bed(i,j+1)
					ubvp = ubet(i,j+1)
					dzdet = -tantc/er
					cost = cos_t(i,j+1)
					dzdxi = (-eta(i-1,j+1)+eta(i+1,j+1))*0.5d0*r_dxi
					bh0 = b_elv(1,i)-eta(i,1)
					if( bh0<0.d0 ) bh0 = 0.d0
					if( bh0>bheight ) bh0 = bheight
					bh_alpha = bh0/bheight
				else if( j==ny ) then
!					vvvp = vti(i,j)
					vvvp = us_bed(i,j)
					ubvp = ubet(i,j)
					dzdet = tantc/er
					cost = cos_t(i,j)
					dzdxi = (-eta(i-1,j)+eta(i+1,j))*0.5d0*r_dxi
					bh0 = b_elv(2,i)-eta(i,ny)
					if( bh0<0.d0 ) bh0 = 0.d0
					if( bh0>bheight ) bh0 = bheight
					bh_alpha = bh0/bheight
				else
!					vvvp = (vti(i,j)+vti(i,j+1))*.5d0
					vvvp = (us_bed(i,j)+us_bed(i,j+1))*.5d0
					ubvp = (ubet(i,j)+ubet(i,j+1))*.5d0
					dzdet = (-eta(i,j)+eta(i,j+1))*r_det
					cost = (cos_t(i,j)+cos_t(i,j+1))*.5
					dzdxi = ( (-eta(i-1,j)+eta(i+1,j))+(-eta(i-1,j+1)+eta(i+1,j+1)) )*r_dxi*0.25d0
					bh_alpha = 1.d0
				end if
         !
				if( (j == 0 .and. eta(i, 1) >= b_elv(1,i)).or. &
						(j == ny.and. eta(i,ny) >= b_elv(2,i))     ) then
					do k=1,nk
						qb_et_mix(i,j,k) = 0.d0
					end do
				else
					if(vvvp < 1e-5) then
						uang(i,j) = 0.d0
					else
						uang(i,j) = ubvp/vvvp
					end if

					do k=1,nk
						if( j==0 ) then
							qb = qbti_mix(i,j+1,k)
  							tsi_vp = tsk(i,j+1,k)
							tsci_vp = tsck(i,j+1,k)
						else if( j== ny ) then
							qb = qbti_mix(i,j,k)
							tsi_vp = tsk(i,j,k)
							tsci_vp = tsck(i,j,k)
						else
                     qb = (qbti_mix(i,j,k)+qbti_mix(i,j+1,k))*0.5d0
							tsi_vp = (tsk(i,j,k)+tsk(i,j+1,k))*0.5d0
							tsci_vp = (tsck(i,j,k)+tsck(i,j+1,k))*0.5d0
						end if
						if( tsi_vp<tsci_vp ) then
							qb_et_mix(i,j,k) = 0.d0
						else
							if( j==0 .or. j==ny ) then
								qb_et_mix(i,j,k) = er*qb*(uang(i,j)-gamma_m &
									*dsqrt(tsci_vp/tsi_vp)*(er*dzdet+xr*cost*dzdxi))*bh_alpha
							else
								qbet = er*(uang(i,j)-gamma_m*dsqrt(tsci_vp/tsi_vp) &
										*(er*dzdet+xr*cost*dzdxi))*bh_alpha
										
								qb_et_mix(i,j,k) = ( (qbet+dabs(qbet))*qbti_mix(i,j  ,k)	&
														  +(qbet-dabs(qbet))*qbti_mix(i,j+1,k) )*0.5d0
						
						!		qb_et_mix(i,j,k) = er*qb*(uang(i,j)-gamma_m*dsqrt(tsci_vp/tsi_vp) &
						!									*(er*dzdet+xr*cost*dzdxi))*bh_alpha
							end if
						end if

					end do
				end if
			end do
		end do

		if(j_conf>=2) then
!$omp do private(i,k)
			do i=i_t1+1,i_t2
				do k=1,nk
					qb_et_mix(i,j_t2,k) = qb_et_mix(i,j_t2-jxd,k)
				end do
			end do
		end if
   
   !
		if(jrep == 1) then
!$omp do private(j,k)
			do j=0,ny
				do k=1,nk
					qb_et_mix(0,j,k) = qb_et_mix(nx-3,j,k)
					qb_et_mix(1,j,k) = qb_et_mix(nx-2,j,k)
					qb_et_mix(nx-1,j,k) = qb_et_mix(2,j,k)
					qb_et_mix(nx,j,k) = qb_et_mix(3,j,k)
				end do
			end do
		else
!$omp do private(j,k)
			do j=0,ny
				do k=1,nk
					qb_et_mix(1,j,k) = qb_et_mix(2,j,k)
					qb_et_mix(nx,j,k) = qb_et_mix(nx-1,j,k)
				end do
			end do
		end if

!$omp do private(i,j,k)
		do j=1,ny
			do i=1,nx
				if( ijo_in(i,j)==1 ) then
					do k=1,nk
						qb_xi_mix(i  ,j  ,k) = 0.d0
						qb_xi_mix(i-1,j  ,k) = 0.d0
						qb_et_mix(i  ,j  ,k) = 0.d0
						qb_et_mix(i  ,j-1,k) = 0.d0
					end do
				end if
			end do
		end do
    
!$omp do private(i,j)
		do j=1,ny
			do i=0,nx
				qb_xi(i,j) = 0.d0
			end do
		end do
    
!$omp do private(i,j,k)
		do j=1,ny
			do i=0,nx
				do k=1,nk
					qb_xi(i,j) = qb_xi(i,j)+qb_xi_mix(i,j,k)
				end do
			end do
		end do
	
!$omp do private(i,j)
		do j=0,ny
			do i=1,nx
				qb_et(i,j) = 0.d0
			end do
		end do
    
!$omp do private(i,j,k)
		do j=0,ny
			do i=1,nx
				do k=1,nk
					qb_et(i,j) = qb_et(i,j)+qb_et_mix(i,j,k)
				end do
			end do
		end do

	else
	
!$omp do private(i,j,k,d_sed1,d_sed2,beta_a,coss,sins)
    	do j=1,ny
    		do k=1,nk
    			do i=1,nx

    				if( tsk(i,j,k)<=tsck(i,j,k)*kc(i,j) ) then
    					qbxkc(i,j,k) = 0.d0
    					qbykc(i,j,k) = 0.d0
    				else
    					d_sed1 = sin_bed(i,j)-pi_bed*btheta_y(i,j)*tsck(i,j,k)/tsk(i,j,k)*dtan(theta_y(i,j))
    					d_sed2 = cos_bed(i,j)-pi_bed*btheta_x(i,j)*tsck(i,j,k)/tsk(i,j,k)*dtan(theta_x(i,j))
    					beta_a = datan2(d_sed1,d_sed2)
    					qbxkc(i,j,k) = qbti_mix(i,j,k)*dcos(beta_a)
    					qbykc(i,j,k) = qbti_mix(i,j,k)*dsin(beta_a)
    				end if
    			end do
    		end do
    	end do

    	if( jrep==0 ) then
!$omp do private(j,k)
			do j=1,ny
				do k=1,nk
					qbxkc(   0,j,k) = qbxkc( 1,j,k)
					qbxkc(nx+1,j,k) = qbxkc(nx,j,k)
					qbykc(   0,j,k) = qbykc( 1,j,k)
					qbykc(nx+1,j,k) = qbykc(nx,j,k)
				end do
			end do
    	else
!$omp do private(j,k)
			do j=1,ny
				do k=1,nk
					qbxkc(   0,j,k) = qbxkc(nx,j,k)
					qbxkc(nx+1,j,k) = qbxkc( 1,j,k)
					qbykc(   0,j,k) = qbykc(nx,j,k)
					qbykc(nx+1,j,k) = qbykc( 1,j,k)
				end do
			end do
    	end if

!$omp do private(i,k)
		do i=1,nx
			do k=1,nk
				qbxkc(i,   0,k) = qbxkc(i, 1,k)
				qbxkc(i,ny+1,k) = qbxkc(i,ny,k)
				qbykc(i,   0,k) = qbykc(i, 1,k)
				qbykc(i,ny+1,k) = qbykc(i,ny,k)
			end do
		end do
		
!$omp do private(i,j,k)
		do j=0,ny+1
			do i=0,nx+1
				qbxc(i,j) = 0.d0
				qbyc(i,j) = 0.d0
				do k=1,nk
					qbxc(i,j) = qbxc(i,j)+qbxkc(i,j,k)
					qbyc(i,j) = qbyc(i,j)+qbykc(i,j,k)
				end do
			end do
		end do

!$omp do private(i,j,k,qbxi1,qbxi2,qbet1,qbet2,qbx_xi1,qby_xi1,qbx_et1,qby_et1,	&
!$omp& qbx_xi2,qby_xi2,qbx_et2,qby_et2,xi_x1,xi_y1,xi_x2,xi_y2,et_x1,et_y1,		&
!$omp& et_x2,et_y2,sj_xi1,sj_et1,sj_xi2,sj_et2,ip1,im1,jp1,jm1)
    	do j=1,ny
    		do i=1,nx
    		
    			dex(i,j) = 0.d0
    		
				if( ubxi(i,j)<0.d0 ) then
					ip1 = 1
					im1 = 0
				else
					ip1 = 0
					im1 = 1
				end if
				
				if( ubet(i,j)<0.d0 ) then
					jp1 = 1
					jm1 = 0
				else
					jp1 = 0
					jm1 = 1
				end if

    			xi_x1   = (xi_x(i+ip1,j-jm1)+xi_x(i+ip1,j+jp1))*0.5d0
    			xi_y1   = (xi_y(i+ip1,j-jm1)+xi_y(i+ip1,j+jp1))*0.5d0
    			sj_xi1  = (  sj(i+ip1,j-jm1)+  sj(i+ip1,j+jp1))*0.5d0
    			xi_x2   = (xi_x(i-im1,j-jm1)+xi_x(i-im1,j+jp1))*0.5d0
    			xi_y2   = (xi_y(i-im1,j-jm1)+xi_y(i-im1,j+jp1))*0.5d0
    			sj_xi2  = (  sj(i-im1,j-jm1)+  sj(i-im1,j+jp1))*0.5d0
    			et_x1   = (et_x(i-im1,j+jp1)+et_x(i+ip1,j+jp1))*0.5d0
    			et_y1   = (et_y(i-im1,j+jp1)+et_y(i+ip1,j+jp1))*0.5d0
    			sj_et1  = (  sj(i-im1,j+jp1)+  sj(i+ip1,j+jp1))*0.5d0
    			et_x2   = (et_x(i-im1,j-jm1)+et_x(i+ip1,j-jm1))*0.5d0
    			et_y2   = (et_y(i-im1,j-jm1)+et_y(i+ip1,j-jm1))*0.5d0
    			sj_et2  = (  sj(i-im1,j-jm1)+  sj(i+ip1,j-jm1))*0.5d0
    			
    			do k=1,nk
				
	    			qbx_xi1 = (qbxkc(i+ip1,j-jm1,k)+qbxkc(i+ip1,j+jp1,k))*0.5d0
	    			qby_xi1 = (qbykc(i+ip1,j-jm1,k)+qbykc(i+ip1,j+jp1,k))*0.5d0
	    			qbx_xi2 = (qbxkc(i-im1,j-jm1,k)+qbxkc(i-im1,j+jp1,k))*0.5d0
	    			qby_xi2 = (qbykc(i-im1,j-jm1,k)+qbykc(i-im1,j+jp1,k))*0.5d0
	    			qbx_et1 = (qbxkc(i-im1,j+jp1,k)+qbxkc(i+ip1,j+jp1,k))*0.5d0
	    			qby_et1 = (qbykc(i-im1,j+jp1,k)+qbykc(i+ip1,j+jp1,k))*0.5d0
	    			qbx_et2 = (qbxkc(i-im1,j-jm1,k)+qbxkc(i+ip1,j-jm1,k))*0.5d0
	    			qby_et2 = (qbykc(i-im1,j-jm1,k)+qbykc(i+ip1,j-jm1,k))*0.5d0

	    			qbxi1 = (xi_x1*qbx_xi1+xi_y1*qby_xi1)/sj_xi1
	    			qbxi2 = (xi_x2*qbx_xi2+xi_y2*qby_xi2)/sj_xi2
	    			qbet1 = (et_x1*qbx_et1+et_y1*qby_et1)/sj_et1
	    			qbet2 = (et_x2*qbx_et2+et_y2*qby_et2)/sj_et2
	    			
	    			if( j_conf==1 .or. j_bank==0 .or. i<=i_erosion_start .or. i>=nx-i_erosion_end) then
		    			if( j==1  ) qbet2 = 0.d0
		    			if( j==ny ) qbet1 = 0.d0
		    		end if
		    		
	    			if( ijo_in(i,j)==0 ) then
	    				dex_mix(i,j,k) = -sj(i,j)*dt*dsmt*	&
	    								( (qbxi1-qbxi2)*r_dxi+(qbet1-qbet2)*r_det )*csm
	    			else
	    				dex_mix(i,j,k) = 0.d0
	    			end if
	    		end do
    		end do
    	end do
    
    end if
!!$omp end single

   !
 end subroutine qbcal_w_mix
 !
 ! -------------------------------------------------------------
	subroutine etacal_mix( dsmt )
		use common_cmxy
		use common_cmsui
		use common_cmave
		use common_cmhq
		use common_cmdex
		use common_cmconf1
		use mix
		implicit none

		real(8),intent(in) :: dsmt
		integer :: i, j, k, n, nbmax, nbmin, nb_new
		integer :: i_nbmax, j_nbmax, i_nbmin, j_nbmin
		real(8) :: dqbxi, dqbet, e_t_new, p_tot
		real(8),dimension(nk) :: p_m_new, p_t_new, p_d_new
		real(8) :: sj_w, sj_e, sj_n, sj_s, sj_c
		real(8) :: rsj_w, rsj_e, rsj_n, rsj_s
   
		p_m_new=0.d0; p_t_new=0.d0; p_d_new=0.d0
		p_tot = 0.d0
		
   ! -------------------------------------------------------------
   !
   ! ----- cal. of bed elevation changes -----
   !       âÕè∞çÇÇÃïœçXÇÃåvéZ
   !
   
!!$omp single
		if( j_qb_vec==0 ) then

!$omp do private( i, j, k, dqbxi, dqbet		&
!$omp			,rsj_w ,rsj_e ,rsj_n ,rsj_s ,sj_w ,sj_e ,sj_n ,sj_s ,sj_c )
			do j=1,ny
				do i=1,nx
					dex(i,j) = 0.d0
						
					sj_s = sj(i  ,j-1)
					sj_w = sj(i-1,j  )
					sj_c = sj(i  ,j  )
					sj_e = sj(i+1,j  )
					sj_n = sj(i  ,j+1)

					rsj_s = 2.d0/(sj_s+sj_c)
					rsj_w = 2.d0/(sj_w+sj_c)
					rsj_e = 2.d0/(sj_c+sj_e)
					rsj_n = 2.d0/(sj_c+sj_n)

					do k=1,nk
						dqbxi = (-qb_xi_mix(i-1,j,k)*rsj_w+qb_xi_mix(i,j,k)*rsj_e)*r_dxi
						dqbet = (-qb_et_mix(i,j-1,k)*rsj_s+qb_et_mix(i,j,k)*rsj_n)*r_det
						dex_mix(i,j,k) = -sj_c*dt*dsmt*(dqbxi+dqbet)*csm
						dex(i,j) = dex(i,j)+dex_mix(i,j,k)
					end do
				end do
			end do
		else
!$omp do private(i,j,k)
			do j=1,ny
				do k=1,nk
					do i=1,nx
						dex(i,j) = dex(i,j)+dex_mix(i,j,k)
					end do
				end do
			end do
		end if
   !
		if( jrep==1 ) then
!$omp do private(i,j,k)
			do j=1,ny
				do i=0,1
					dex(i,j) = dex(i+nx-3,j)
					do k=1,nk
						dex_mix(i,j,k) = dex_mix(i+nx-3,j,k)
					end do
				end do
			end do
      
!$omp do private(i,j,k)
			do j=1,ny
				do i=nx-1,nx+1
					dex(i,j) = dex(i-nx+3,j)
					do k=1,nk
						dex_mix(i,j,k) = dex_mix(i-nx+3,j,k)
					end do
				end do
			end do
		else
			if( j_qbup==0 ) then
!$omp do private(i,j,k)
				do j=1,ny
					do i=0,1
						dex(i,j) = 0.d0
						do k=1,nk
							dex_mix(i,j,k) = 0.d0
						end do
					end do
				end do
			else
!$omp do private(j,k)
				do j=1,ny
					dex(1,j) = dex(2,j)
					dex(0,j) = dex(1,j)
					do k=1,nk
						dex_mix(1,j,k) = dex_mix(2,j,k)
						dex_mix(0,j,k) = dex_mix(1,j,k)
					end do
				end do
			end if
!$omp do private(j,k)
			do j=1,ny
				dex(nx,j) = dex(nx-1,j)
				do k=1,nk
					dex_mix(nx,j,k) = dex_mix(nx-1,j,k)
				end do
			end do
		end if
   
		if( j_conf>=2 ) then
			if( j_qbup==0 ) then
!$omp do private(i,k)
				do i=i_t1+1,i_t2
					dex(i,j_t2+js2) = 0.d0
					do k=1,nk
						dex_mix(i,j_t2+js2,k) = 0.d0
					end do
				end do
			else
!$omp do private(i,k)
				do i=i_t1+1,i_t2
					dex(i,j_t2+js2) = dex(i,j_t2+js2-jxd)
					do k=1,nk
						dex_mix(i,j_t2+js2,k) = dex_mix(i,j_t2+js2-jxd,k)
					end do
				end do
			end if
		end if
 
!$omp do private(i,j,k)
		do j=1,ny
			do i=1,nx
				if( dex(i,j)+emb(i,j)<0.d0 ) then
					dex(i,j) = 0.d0
					do k=1,nk
						dex_mix(i,j,k) = 0.d0
					end do
				end if
			end do
		end do
   !
   ! ------ cal. of sediment fraction changes in exchange layer ------
   !        âÕè∞çÇÇ∆âÕè∞çﬁóøó±ìxï™ïzÇÃåvéZ
   !

		nbmin =  9999
		nbmax = -9999

!!$omp do
!		do j=1,ny
!			do k=1,nk
!				do i=1,nx
!					eta(i,j) = eta(i,j)+dex_mix(i,j,k)
!				end do
!			end do
!		end do

!$omp do private( i, j, k, e_t_new, nb_new, p_m_new, p_t_new, p_d_new, nbmin, nbmax, i_nbmin, j_nbmin, i_nbmax, j_nbmax, p_tot )
		do j=1,ny
			do i=1,nx
				eta(i,j) = eta(i,j)+dex(i,j)
				
				if( phi(i,j)<1.d0 ) then
					call sorting_fixed( i, j, nb_new, e_t_new, p_m_new, p_t_new, p_d_new, p_tot )
				else
					call sorting_movable( i, j, nb_new, e_t_new, p_m_new, p_t_new, p_d_new, p_tot )
				end if
				
				e_t(i,j) = e_t_new
				nb(i,j) = nb_new
         
				do k=1,nk
					p_m(i,j,k) = p_m_new(k)
					p_t(i,j,k) = p_t_new(k)
					p_d(i,j,nb(i,j),k) = p_d_new(k)
				end do

			end do
		end do

   !
   ! ----- Adjust Water Depth ------
   !
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				if( ijo_in(i,j)==0 ) then
					hs(i,j) = hn(i,j)-eta(i,j)
					if( hs(i,j)<=hmin ) then
						hs(i,j) = hmin
						hn(i,j) = eta(i,j)+hmin
					end if
				end if
			end do
		end do
   !
		if( jrep==1 ) then
!$omp do private(i,j,k)
			do j=1,ny
				do i=0,1
					eta(i,j) = eta0(i,j)+(eta(i+nx-3,j)-eta0(i+nx-3,j))
					hs(i,j) = hs(i+nx-3,j)
					hn(i,j) = eta(i,j)+hs(i,j)
					e_t(i,j) = e_t(nx-3+i,j)
					nb(i,j) = nb(nx-3+i,j)
					do k=1,nk
						p_m(i,j,k) = p_m(nx-3+i,j,k)
						p_t(i,j,k) = p_t(nx-3+i,j,k)
						do n=1,nb(i,j)
							p_d(i,j,n,k) = p_d(i+nx-3,j,n,k)
						end do
					end do
				end do

				do i=nx-1,nx+1
					eta(i,j) = eta0(i,j)+(eta(i-nx+3,j)-eta0(i-nx+3,j))
					hs(i,j) = hs(i-nx+3,j)
					hn(i,j) = eta(i,j)+hs(i,j)
					e_t(i,j) = e_t(i-nx+3,j)
					nb(i,j) = nb(i-nx+3,j)
					do k=1,nk
						p_m(i,j,k) = p_m(i-nx+3,j,k)
						p_t(i,j,k) = p_t(i-nx+3,j,k)
						do n=0,nb(i,j)
							p_d(i,j,n,k) = p_d(i-nx+3,j,n,k)
						end do
					end do
				end do
			end do
		else
!$omp do private(i,j,k)
			do j=1,ny
				do i=nx,nx+1
					e_t(i,j) = e_t(nx-1,j)
					nb(i,j) = nb(nx-1,j)
					do k=1,nk
						p_m(i,j,k) = p_m(nx-1,j,k)
						p_t(i,j,k) = p_t(nx-1,j,k)
						p_d(i,j,nb(i,j),k) = p_d(nx-1,j,nb(i,j),k)
					end do
				end do
			end do
		end if
!!$omp end single
   !
	end subroutine etacal_mix

 !
 ! -------------------------------------------------------------
	subroutine etacal_mix_c( dsmt )
		use common_cmxy
		use common_cmsui
		use common_cmave
		use common_cmhq
		use common_cmdex
		use common_cmconf1
		use mix
		implicit none

		real(8),intent(in) :: dsmt
		integer :: i, j, k, n, nbmax, nbmin, nb_new
		integer :: i_nbmax, j_nbmax, i_nbmin, j_nbmin
		real(8) :: dqbxi, dqbet, e_t_new, p_tot
		real(8),dimension(nk) :: p_m_new, p_t_new, p_d_new
		real(8) :: sj_w, sj_e, sj_n, sj_s, sj_c
		real(8) :: rsj_w, rsj_e, rsj_n, rsj_s
   
		p_m_new=0.; p_t_new=0.; p_d_new=0.
		
   ! -------------------------------------------------------------
   !
   ! ----- cal. of bed elevation changes -----
   !       âÕè∞çÇÇÃïœçXÇÃåvéZ
   !
   
!!$omp single
   		if( j_qb_vec==0 ) then
!$omp do private( i, j, k, dqbxi, dqbet		&
!$omp			,rsj_w ,rsj_e ,rsj_n ,rsj_s ,sj_w ,sj_e ,sj_n ,sj_s ,sj_c )
				do j=1,ny
					do i=1,nx
						dex(i,j) = 0.d0
							
						sj_s = sj(i  ,j-1)
						sj_w = sj(i-1,j  )
						sj_c = sj(i  ,j  )
						sj_e = sj(i+1,j  )
						sj_n = sj(i  ,j+1)

						rsj_s = 2.d0/(sj_s+sj_c)
						rsj_w = 2.d0/(sj_w+sj_c)
						rsj_e = 2.d0/(sj_c+sj_e)
						rsj_n = 2.d0/(sj_c+sj_n)
							
						if(hs(i,j) > hmin) then
						do k=1,nk
							dqbxi = (-qb_xi_mix(i-1,j,k)*rsj_w+qb_xi_mix(i,j,k)*rsj_e)*r_dxi
							dqbet = (-qb_et_mix(i,j-1,k)*rsj_s+qb_et_mix(i,j,k)*rsj_n)*r_det
							dex_mix(i,j,k) = ( -sj_c*dt*dsmt*(dqbxi+dqbet)	&
												    -dt*dsmt*(qsuk(i,j,k)-wfk(k)*ycbk(i,j,k)) )*csm
!							dex_mix(i,j,k) = ( -dt*dsmt*(qsuk(i,j,k)-wfk(k)*ycbk(i,j,k)) )*csm
							dex(i,j) = dex(i,j)+dex_mix(i,j,k)
						end do
						else
						  dex(i,j) = 0.
						end if
					end do
				end do
			else
!$omp do private(i,j,k)
				do j=1,ny
					do k=1,nk
						do i=1,nx
							dex_mix(i,j,k) = dex_mix(i,j,k)-dt*dsmt*(qsuk(i,j,k)-wfk(k)*ycbk(i,j,k))*csm
							dex(i,j) = dex(i,j)+dex_mix(i,j,k)
						end do
					end do
				end do
			end if

   !
		if( jrep==1 ) then
!$omp do private(i,j,k)
			do j=1,ny
				do i=0,1
					dex(i,j) = dex(i+nx-3,j)
					do k=1,nk
						dex_mix(i,j,k) = dex_mix(i+nx-3,j,k)
					end do
				end do
			end do
      
!$omp do private(i,j,k)
			do j=1,ny
				do i=nx-1,nx+1
					dex(i,j) = dex(i-nx+3,j)
					do k=1,nk
						dex_mix(i,j,k) = dex_mix(i-nx+3,j,k)
					end do
				end do
			end do
		else
			if( j_qbup==0 ) then
!$omp do private(i,j,k)
				do j=1,ny
					do i=0,1
						dex(i,j) = 0.d0
						do k=1,nk
							dex_mix(i,j,k) = 0.d0
						end do
					end do
				end do
			else
!$omp do private(i,j,k)
				do j=1,ny
					dex(1,j) = dex(2,j)
					dex(0,j) = dex(1,j)
					do k=1,nk
						dex_mix(1,j,k) = dex_mix(2,j,k)
						dex_mix(0,j,k) = dex_mix(1,j,k)
					end do
				end do
			end if
!$omp do private(j,k)
			do j=1,ny
				dex(nx,j) = dex(nx-1,j)
				do k=1,nk
					dex_mix(nx,j,k) = dex_mix(nx-1,j,k)
				end do
			end do
		end if
   
		if( j_conf>=2 ) then
			if( j_qbup==0 ) then
!$omp do private(i,k)
				do i=i_t1+1,i_t2
					dex(i,j_t2+js2) = 0.d0
					do k=1,nk
						dex_mix(i,j_t2+js2,k) = 0.d0
					end do
				end do
			else
!$omp do private(i,k)
				do i=i_t1+1,i_t2
					dex(i,j_t2+js2) = dex(i,j_t2+js2-jxd)
					do k=1,nk
						dex_mix(i,j_t2+js2,k) = dex_mix(i,j_t2+js2-jxd,k)
					end do
				end do
			end if
		end if

!$omp do private(i,j,k)
		do j=1,ny
			do i=1,nx
				if( dex(i,j)+emb(i,j)<0.d0 ) then
					dex(i,j) = 0.d0
					do k=1,nk
						dex_mix(i,j,k) = 0.d0
					end do
				end if
			end do
		end do
   !
   ! ------ cal. of sediment fraction changes in exchange layer ------
   !        âÕè∞çÇÇ∆âÕè∞çﬁóøó±ìxï™ïzÇÃåvéZ
   !

		nbmin =  9999
		nbmax = -9999

!$omp do private( i, j, k, e_t_new, nb_new, p_m_new, p_t_new, p_d_new, nbmin, nbmax, i_nbmin, j_nbmin, i_nbmax, j_nbmax, p_tot )
		do j=1,ny
			do i=1,nx
				eta(i,j) = eta(i,j)+dex(i,j)

				if( phi(i,j)<1.d0 ) then
					call sorting_fixed( i, j, nb_new, e_t_new, p_m_new, p_t_new, p_d_new, p_tot )
				else
					call sorting_movable( i, j, nb_new, e_t_new, p_m_new, p_t_new, p_d_new, p_tot )
				end if
				
				e_t(i,j) = e_t_new
				nb(i,j) = nb_new
         
				do k=1,nk
					p_m(i,j,k) = p_m_new(k)
					p_t(i,j,k) = p_t_new(k)
					p_d(i,j,nb(i,j),k) = p_d_new(k)
				end do

			end do
		end do

   !
   ! ----- Adjust Water Depth ------
   !

!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				if( ijo_in(i,j)==0 ) then
					hs(i,j) = hn(i,j)-eta(i,j)
					if( hs(i,j)<=hmin ) then
						hs(i,j) = hmin
						hn(i,j) = eta(i,j)+hmin
					end if
				end if
			end do
		end do
   !
		if( jrep==1 ) then
!$omp do private(i,j,k)
			do j=1,ny
				do i=0,1
					eta(i,j) = eta0(i,j)+(eta(i+nx-3,j)-eta0(i+nx-3,j))
					hs(i,j) = hs(i+nx-3,j)
					hn(i,j) = eta(i,j)+hs(i,j)
					e_t(i,j) = e_t(nx-3+i,j)
					nb(i,j) = nb(nx-3+i,j)
					do k=1,nk
						p_m(i,j,k) = p_m(nx-3+i,j,k)
						p_t(i,j,k) = p_t(nx-3+i,j,k)
						do n=1,nb(i,j)
							p_d(i,j,n,k) = p_d(i+nx-3,j,n,k)
						end do
					end do
				end do

				do i=nx-1,nx+1
					eta(i,j) = eta0(i,j)+(eta(i-nx+3,j)-eta0(i-nx+3,j))
					hs(i,j) = hs(i-nx+3,j)
					hn(i,j) = eta(i,j)+hs(i,j)
					e_t(i,j) = e_t(i-nx+3,j)
					nb(i,j) = nb(i-nx+3,j)
					do k=1,nk
						p_m(i,j,k) = p_m(i-nx+3,j,k)
						p_t(i,j,k) = p_t(i-nx+3,j,k)
						do n=1,nb(i,j)
							p_d(i,j,n,k) = p_d(i-nx+3,j,n,k)
						end do
					end do
				end do
			end do
		else
!$omp do private(i,j,k)
			do j=1,ny
				do i=nx,nx+1
					e_t(i,j) = e_t(nx-1,j)
					nb(i,j) = nb(nx-1,j)
					do k=1,nk
						p_m(i,j,k) = p_m(nx-1,j,k)
						p_t(i,j,k) = p_t(nx-1,j,k)
						p_d(i,j,nb(i,j),k) = p_d(nx-1,j,nb(i,j),k)
					end do
				end do
			end do
		end if
!!$omp end single
   !
	end subroutine etacal_mix_c

! ---------------------------------------------------------------- !

	subroutine sorting_movable( i, j, nb_new, e_t_new, p_m_new, p_t_new, p_d_new, p_tot )
		use common_cmdex
		use mix
		implicit none
		integer,intent(in) :: i, j
		integer,intent(out) :: nb_new
		double precision,intent(out) :: e_t_new, p_tot
		double precision,dimension(nk),intent(out) :: p_m_new, p_t_new, p_d_new
		
		integer :: k
!		double precision :: p_tot
		
		!ëÕêœ
		if( dex(i,j)>0.d0 ) then
			if( e_t(i,j)+dex(i,j)<e_d ) then
				e_t_new = e_t(i,j)+dex(i,j)
				nb_new = nb(i,j)
				do k=1,nk
					p_m_new(k) = p_m(i,j,k)*(1.d0-dex(i,j)/e_m)+dex_mix(i,j,k)/e_m
					p_t_new(k) = (e_t(i,j)*p_t(i,j,k)+dex(i,j)*p_m(i,j,k))/e_t_new
					p_d_new(k) = p_d(i,j,nb(i,j),k)
				end do
			else
				e_t_new = e_t(i,j)+dex(i,j)-e_d
				nb_new = nb(i,j)+1
				do k=1,nk
					p_m_new(k) = p_m(i,j,k)*(1.d0-dex(i,j)/e_m)+dex_mix(i,j,k)/e_m
					p_t_new(k) = p_m(i,j,k)
					p_d_new(k) = p_t(i,j,k)*e_t(i,j)/e_d+(1.d0-e_t(i,j)/e_d)*p_m(i,j,k)
				end do
			end if
			
		!í·â∫
		else
			if( e_t(i,j)+dex(i,j)>0.d0 ) then
				e_t_new = e_t(i,j)+dex(i,j)
				nb_new = nb(i,j)
				do k=1,nk
					p_m_new(k) = p_m(i,j,k)+(-dex(i,j)*p_t(i,j,k)+dex_mix(i,j,k))/e_m
					p_t_new(k) = p_t(i,j,k)
					p_d_new(k) = p_d(i,j,nb(i,j),k)
				end do
			else
				if( nb(i,j)==0 ) then
					e_t_new = 0.d0
					nb_new = 0
					do k=1,nk
						p_m_new(k) = p_m(i,j,k)+e_t(i,j)/e_m*p_t(i,j,k)+dex_mix(i,j,k)/e_m
						p_t_new(k) = p_d(i,j,nb(i,j),k)		! É_É~Å[
						p_d_new(k) = p_t_new(k)					! É_É~Å[
					end do
				else
					e_t_new = e_t(i,j)+dex(i,j)+e_d
					nb_new = nb(i,j)-1
					do k=1,nk
						p_m_new(k) = p_m(i,j,k)+e_t(i,j)/e_m*p_t(i,j,k)	&
										-(e_t(i,j)+dex(i,j))/e_m*p_d(i,j,nb(i,j),k)	&
										+dex_mix(i,j,k)/e_m
						p_t_new(k) = p_d(i,j,nb(i,j),k)
						p_d_new(k) = p_d(i,j,nb(i,j)-1,k)
					end do
				end if
			end if
		end if
		
		if( nb_new<0 ) then
			write(*,*) 'Error !'		!Ç±ÇÃèåèÇ…ÇÕì¸ÇÁÇ»Ç¢ÇÕÇ∏
			write(*,*) 'The number of deposited layer is less than 0 at i=',i,'j=',j
			write(*,*) 'Please change the thickness of deposited layer, &
          			thickness of movable bed layer or the maximum number of deposited layer.'
			pause
			stop
		end if
				
		if( nb_new>nm ) then
			write(*,*) 'The number of deposited layer exceeds the maximum number', nm,'at i=',i,'j=',j
			write(*,*) 'Please change the thickness of deposited layer, &
          			thickness of movable bed layer or the maximum number of deposited layer.'
			pause
			stop
		end if
						
		p_tot = 0.d0

		do k=1,nk
			if( p_m_new(k)<=0.d0 ) p_m_new(k) = 0.d0
			p_tot = p_tot+p_m_new(k)
		end do
		do k=1,nk
			p_m_new(k) = p_m_new(k)/p_tot
		end do
!
		p_tot = 0.d0

		do k=1,nk
			if( p_t_new(k)<=0.d0 ) p_t_new(k) = 0.d0
			p_tot = p_tot+p_t_new(k)
		end do
		do k=1,nk
			p_t_new(k) = p_t_new(k)/p_tot
		end do
!
		p_tot = 0.d0

		do k=1,nk
			if( p_d_new(k)<=0.d0 ) p_d_new(k) = 0.d0
			p_tot = p_tot+p_d_new(k)
		end do
		do k=1,nk
			p_d_new(k) = p_d_new(k)/p_tot
		end do
		
	end subroutine sorting_movable

! ---------------------------------------------------------------- !

	subroutine sorting_fixed( i, j, nb_new, e_t_new, p_m_new, p_t_new, p_d_new, p_tot )
		use common_cmdex
		use mix
		implicit none
		integer,intent(in) :: i, j
		integer,intent(out) :: nb_new
		double precision,intent(out) :: e_t_new, p_tot
		double precision,dimension(nk),intent(out) :: p_m_new, p_t_new, p_d_new
		
		integer :: k
		double precision :: emb_new

		emb_new = emb(i,j)+dex(i,j)
		nb_new = 0
		
		if( emb_new>e_m ) then
			e_t_new = emb_new-e_m
			emb_new = e_m
			
			do k=1,nk
				p_m_new(k) = p_m(i,j,k)*(emb(i,j)-e_t_new)/emb_new+dex_mix(i,j,k)/emb_new
				p_t_new(k) = p_m(i,j,k)
				p_d_new(k) = p_t_new(k)		! É_É~Å[
			end do
		else if( emb_new<=0.d0 ) then
			e_t_new = 0.d0
			
			do k=1,nk
				p_m_new(k) = 0.d0
				p_t_new(k) = p_m_new(k)		! É_É~Å[
				p_d_new(k) = p_t_new(k)		! É_É~Å[
			end do
		else
			e_t_new = 0.d0
			
			do k=1,nk
				p_m_new(k) = (emb(i,j)*p_m(i,j,k)+dex_mix(i,j,k))/emb_new
				p_t_new(k) = p_m_new(k)		! É_É~Å[
				p_d_new(k) = p_t_new(k)		! É_É~Å[
			end do
		end if
				
		p_tot = 0.d0

		do k=1,nk
			if( p_m_new(k)<=0.d0 ) p_m_new(k) = 0.d0
			p_tot = p_tot+p_m_new(k)
		end do
		
		if( p_tot>0.d0 ) then
			do k=1,nk
				p_m_new(k) = p_m_new(k)/p_tot
			end do
		end if
!
		p_tot = 0.d0

		do k=1,nk
			if( p_t_new(k)<=0.d0 ) p_t_new(k) = 0.d0
			p_tot = p_tot+p_t_new(k)
		end do

		if( p_tot>0.d0 ) then
			do k=1,nk
				p_t_new(k) = p_t_new(k)/p_tot
			end do
		end if

	end subroutine sorting_fixed

! ---------------------------------------------------------------- !
	subroutine c_transport_mix( dsmt )
		use common_cmsui
		use common_cmqxe
		use common_cmxy
		use common_cmhq
		use common_cmconf1
		use mix
		use fixed_bed
		implicit none

		integer :: i, j, k, n, i_noflux
		real(8) :: dzc, ez, v_ck, wdis, depth, wdepth, wsj
		
		real(8),intent(in) :: dsmt

  ! ---- advection term of suspended sediment transport --- !
!!$omp single

!$omp do private( i, j, k )
		do j=1,ny
			do k=1,nk
				do i=1,nx-1
					quck(i,j,k) = (  (q_xi(i,j)+dabs(q_xi(i,j)))*yck(i  ,j,k)	&
										 +(q_xi(i,j)-dabs(q_xi(i,j)))*yck(i+1,j,k)  )*ijobst_u(i,j)*0.5d0

				end do
			end do
		end do

!$omp do private(j,k)
		do j=1,ny
			do k=1,nk
				quck( 0,j,k) = q_xi( 0,j)*yck( 0,j,k)
				quck(nx,j,k) = q_xi(nx,j)*yck(nx,j,k)
			end do
		end do

!$omp do private( i, j, k )
		do j=1,ny-1
			do k=1,nk
				do i=1,nx
					qvck(i,j,k) = (  (q_et(i,j)+dabs(q_et(i,j)))*yck(i,  j,k)	&
										 +(q_et(i,j)-dabs(q_et(i,j)))*yck(i,j+1,k)  )*ijobst_v(i,j)*0.5d0
				end do
			end do
		end do

!$omp do private(i,k)
		do i=1,nx
			do k=1,nk
				qvck(i, 0,k) = 0.d0
				qvck(i,ny,k) = 0.d0
			end do
		end do

		if( j_conf>=2 ) then
!$omp do private(i,k)
			do i=i_t1+1,i_t2
				if( ijo_in(i,j_t2+js2)==0 ) then
					do k=1,nk
						qvck(i,j_t2,k) = q_et(i,j_t2)*yck(i,j_t2+js1,k)
					end do
				end if
			end do
		end if

!$omp do private(i,j,k)
		do j=1,ny
			do k=1,nk
				do i=1,nx
					dcdxi_k(i,j,k) = (quck(i-1,j,k)-quck(i,j,k))*r_dxi
				end do
			end do
		end do

!$omp do private(i,j,k)
		do j=1,ny
			do k=1,nk
				do i=1,nx
					dcdet_k(i,j,k) = (qvck(i,j-1,k)-qvck(i,j,k))*r_det
				end do
			end do
		end do

  ! ---- source term ---- !
!!$omp single
!$omp do private( i, j, k, i_noflux, wdepth, wsj, v_ck, ez, dzc )
		do j=1,ny
			do k=1,nk
				do i=1,nx
				
					if( hs(i,j)>hmin.and.ijo_in(i,j)==0 ) then
				
					!	ez = (eta(i,j)-eta0(i,j))*p_m(k,i,j)
					!	ez = e_m*p_m(i,j,k)
					!	dzc = (qsuk(i,j,k)-wfk(k)*ycbk(i,j,k))*dt*dsmt
					
					!	if( dzc>ez ) then
					!		qsuk(i,j,k) = ez/(dsmt*dt)+wfk(k)*ycbk(i,j,k)
					!	end if
						
					!	v_ck = -(qsuk(i,j,k)-wfk(k)*ycbk(i,j,k))*dt
						
					!	if( yck(i,j,k)*hs(i,j)<v_ck ) then
					!		ycbk(i,j,k) = (yck(i,j,k)*hs(i,j)/dt+qsuk(i,j,k))/wfk(k)
					!	end if
					
!						ez = emb(i,j)*p_m(i,j,k)
!						dzc = qsuk(i,j,k)*dt*dsmt
!					
!						if( dzc>ez ) then
!							qsuk(i,j,k) = ez/(dsmt*dt)
!						end if
!						
!						v_ck = wfk(k)*ycbk(i,j,k)*dt
!						
!						if( yck(i,j,k)*whs(i,j)<v_ck ) then
!							ycbk(i,j,k) = yck(i,j,k)*whs(i,j)/dt/wfk(k)
!						end if

						sourcek(i,j,k) = (qsuk(i,j,k)-wfk(k)*ycbk(i,j,k))/sj(i,j)
					else
						sourcek(i,j,k) = 0.0
					end if
				end do
			end do
		end do

  ! ---- update suspended sediment concentration ---- !

!$omp do private( i, j, k, i_noflux, depth, wdepth, wsj )
		do j=1,ny
			do k=1,nk
				do i=1,nx
					if( hs(i,j)>hmin.and.ijo_in(i,j)==0 ) then
						yck(i,j,k) = ( yck(i,j,k)*whs(i,j) 	&
								+(dcdxi_k(i,j,k)+dcdet_k(i,j,k)+sourcek(i,j,k))*dt*sj(i,j) )/hs(i,j)
!						yck(i,j,k) = ( yck(i,j,k)*whs(i,j) 	&
!								+(dcdxi_k(i,j,k)+dcdet_k(i,j,k))*dt*sj(i,j) )/hs(i,j)

					else
						yck(i,j,k) = 0.d0
					end if
					yck(i,j,k) = max( yck(i,j,k), 0.d0 )
				end do
			end do
		end do
!!$omp end single


	end subroutine c_transport_mix

  !--------------------------------------------------------------------
	subroutine bound_c_mix
		use common_cmsui
		use mix
		implicit none

		integer :: i, j, k
		
		if ( jrep==1 ) then
!$omp do private(i,j,k)
			do j=1,ny
				do k=1,nk
					do i=0,1
						yck(i,j,k) = yck(i+nx-3,j,k)
					end do
					do i=nx-1, nx+1
						yck(i,j,k) = yck(i-nx+3,j,k)
					end do
				end do
			end do
		end if
    !
!$omp do private(i,j,k)
		do j=1,ny
			do i=1,nx
				if( ijo_in(i,j)==1 ) then
					do k=1,nk
						yck(i,j,k) = 0d0
					end do
				end if
			end do
		end do

	end subroutine bound_c_mix
 !
end module mix_m

!
module ebank_m

	use common_hh
	use common_cmdnx
	use common_cmxy
	use common_cmhq
	use common_cmdex
	use common_cmsui
	use fixed_bed
	use mix_m

	real(8),dimension(:,:),allocatable :: dzx, dedn, deds

  contains

	subroutine alloc_ebank_temp_variables
		implicit none
      
		allocate( dzx(0:im,0:jm), dedn(0:im,0:jm), deds(0:im,0:jm) )
      
		dedn = 0.;  deds = 0.;
      
	end subroutine alloc_ebank_temp_variables

 ! ----------------------------------

	subroutine ebank( tantc, dtanmax )
		implicit none
		integer :: i, j
		real(8),intent(in) :: tantc, dtanmax
		real(8) :: dz1, dz2

		dzx = 0.;
!
! --- â°ífï˚å¸ÇÃÉ`ÉFÉbÉN ---
!
		do i=1,nx
			do j=1,ny-1
				dedn(i,j) = (eta(i,j+1)-eta(i,j))/dnx(i,j)
			end do
			do j=ny-1,1,-1
				if( ijo_in(i,j)==0 .and. ijo_in(i,j+1)==0 ) then		! Ç«ÇøÇÁÇ∆Ç‡ç\ë¢ï®Ç≈ÇÕÇ»Ç¢
					if( hs(i,j)>hmin .or. hs(i,j+1)>hmin ) then			! êÖíÜÇ©êÖç€ÇÃéû
						if( phi(i,j+1)==1.d0 ) then							! ïˆÇÍÇÈÇŸÇ§Ç…åä∑ëwà»è„ÇÃçªÇ™Ç†ÇÈ
							if( dedn(i,j)>tantc ) then
								dz1 = (eta(i,j+1)-eta(i,j)-tantc*dnx(i,j))/(1.d0+sj(i,j+1)/sj(i,j))
								dz2 = -sj(i,j+1)/sj(i,j)*dz1
								if( eta(i,j+1)-eta_zb(i,j+1)<-dz2 ) then
									dz2 = -(eta(i,j+1)-eta_zb(i,j+1))
									dz1 = -dz2*sj(i,j)/sj(i,j+1)
								end if
								dzx(i,j+1) = dzx(i,j+1)+dz2
								dzx(i,j) = dzx(i,j)+dz1
							end if
						end if
					end if
				end if
			end do
!
			do j=1,ny-1
				if( ijo_in(i,j)==0 .and. ijo_in(i,j+1)==0 ) then
					if( hs(i,j)>hmin .or. hs(i,j+1)>hmin ) then
						if( phi(i,j)==1.d0 ) then
							if( -dedn(i,j)>tantc ) then
								dz1 = (eta(i,j+1)-eta(i,j)+tantc*dnx(i,j))/(1.d0+sj(i,j+1)/sj(i,j))
								dz2 = -sj(i,j+1)/sj(i,j)*dz1
								if( eta(i,j)-eta_zb(i,j)<-dz1 ) then
									dz1 = -(eta(i,j)-eta_zb(i,j))
									dz2 = -dz1*sj(i,j)/sj(i,j+1)
								end if
								dzx(i,j) = dzx(i,j)+dz1
								dzx(i,j+1) = dzx(i,j+1)+dz2
							end if
						end if
					end if
				end if
			end do
		end do
!
! --- ècífï˚å¸ÇÃÉ`ÉFÉbÉN ---
!
		do j=1,ny
			do i=1,nx-1
				deds(i,j) = (eta(i+1,j)-eta(i,j))/dsy(i,j)
			end do
			do i=nx-1,1,-1
				if( ijo_in(i,j)==0 .and. ijo_in(i+1,j)==0 ) then
					if( hs(i,j)>hmin .or. hs(i+1,j)>hmin ) then
						if( phi(i+1,j)==1.d0 ) then
							if( deds(i,j)>tantc ) then
								dz1 = (eta(i+1,j)-eta(i,j)-tantc*dsy(i,j))/(1.d0+sj(i+1,j)/sj(i,j))
								dz2 = -sj(i+1,j)/sj(i,j)*dz1
								if( eta(i+1,j)-eta_zb(i+1,j)<-dz2 ) then
									dz2 = -(eta(i+1,j)-eta_zb(i+1,j))
									dz1 = -dz2*sj(i,j)/sj(i+1,j)
								end if
								dzx(i+1,j) = dzx(i+1,j)+dz2
								dzx(i,j) = dzx(i,j)+dz1
							end if
						end if
					end if
				end if
			end do
!
			do i=1,nx-1
				if( ijo_in(i,j)==0 .and. ijo_in(i+1,j)==0 ) then
					if( hs(i,j)>hmin .or. hs(i+1,j)>hmin ) then
						if( phi(i,j)==1.d0 ) then
							if( -deds(i,j)>tantc ) then
								dz1 = (eta(i+1,j)-eta(i,j)+tantc*dsy(i,j))/(1.d0+sj(i+1,j)/sj(i,j))
								dz2 = -sj(i+1,j)/sj(i,j)*dz1
								if( eta(i,j)-eta_zb(i,j)<-dz1 ) then
									dz1 = -(eta(i,j)-eta_zb(i,j))
									dz2 = -dz1*sj(i,j)/sj(i+1,j)
								end if
								dzx(i,j) = dzx(i,j)+dz1
								dzx(i+1,j) = dzx(i+1,j)+dz2
							end if
						end if
					end if
				end if
			end do
		end do
!
		if( jrep==1 ) then
			do i=0,1
				do j=1,ny
					dzx(i,j) = dzx(i+nx-3,j)
				end do
			end do
		
			do i=nx-1,nx+1
				do j=1,ny
					dzx(i,j) = dzx(i-nx+3,j)
				end do
			end do
		else
			do i=0,1
				do j=1,ny
					dzx(i,j)=0.
				end do
			end do
		
			do j=1,ny
				dzx(nx,j) = dzx(nx-1,j)
			end do
		end if
!
		do j=1,ny
			do i=1,nx
				eta(i,j) = eta(i,j)+dzx(i,j)
				if( dzx(i,j)/=0.d0 .and. hs(i,j)<=hmin ) then
					hn(i,j) = eta(i,j)+hmin
!				else
!					hs(i,j) = hn(i,j)-eta(i,j)
!					if(hs(i,j) <= hmin) then
!						hs(i,j)=hmin
!						eta(i,j)=hn(i,j)-hmin
!!						yun(i,j)=0.
!!						yun(i-1,j)=0.
!!						yvn(i,j)=0.
!! 						yvn(i,j-1)=0.
!					end if
!					dex(i,j) = dex(i,j)+dzx(i,j)
				end if
			end do
		end do

	end subroutine ebank

! ----------------------------------------------------------- !

	subroutine ebank_mix( tantc, dtanmax )
		use mix
		implicit none
		real(8),intent(in) :: tantc, dtanmax

		integer :: i, j, k, nb_new
		real(8) :: dz1, dz2, e_t_new, p_tot
		real(8),dimension(nk) :: p_m_new, p_t_new, p_d_new
		
		p_m_new = 0.d0; p_t_new = 0.d0; p_d_new = 0.d0

		do j=1,ny
			do i=1,nx
				dex(i,j) = 0.d0
				do k=1,nk
					dex_mix(i,j,k) = 0.d0
				end do
			end do
		end do
!
! --- â°ífï˚å¸ÇÃÉ`ÉFÉbÉN ---
!
		do i=1,nx
			do j=1,ny-1
				dedn(i,j) = (eta(i,j+1)-eta(i,j))/dnx(i,j)
			end do
			do j=ny-1,1,-1
				if( ijo_in(i,j)==0 .and. ijo_in(i,j+1)==0 ) then		! Ç«ÇøÇÁÇ∆Ç‡ç\ë¢ï®Ç≈ÇÕÇ»Ç¢
					if( hs(i,j)>hmin .or. hs(i,j+1)>hmin ) then			! êÖíÜÇ©êÖç€ÇÃéû
						if( phi(i,j+1)==1.d0 ) then							! ïˆÇÍÇÈÇŸÇ§Ç…åä∑ëwà»è„ÇÃçªÇ™Ç†ÇÈ
							if( dedn(i,j)>tantc ) then
								dz1 = (eta(i,j+1)-eta(i,j)-tantc*dnx(i,j))/(1.d0+sj(i,j+1)/sj(i,j))
								dz2 = -sj(i,j+1)/sj(i,j)*dz1
								if( eta(i,j+1)-eta_zb(i,j+1)<-dz2 ) then
									dz2 = -(eta(i,j+1)-eta_zb(i,j+1))
									dz1 = -dz2*sj(i,j)/sj(i,j+1)
								end if
								dex(i,j+1) = dex(i,j+1)+dz2
								dex(i,j  ) = dex(i,j  )+dz1
								do k=1,nk
									dex_mix(i,j+1,k) = dex_mix(i,j+1,k)+dz2*p_m(i,j+1,k)
									dex_mix(i,j  ,k) = dex_mix(i,j  ,k)+dz1*p_m(i,j+1,k)
								end do
							end if
						end if
					end if
				end if
			end do
!
			do j=1,ny-1
				if( ijo_in(i,j)==0 .and. ijo_in(i,j+1)==0 ) then
					if( hs(i,j)>hmin .or. hs(i,j+1)>hmin ) then
						if( phi(i,j)==1.d0 ) then
							if( -dedn(i,j)>tantc ) then
								dz1 = (eta(i,j+1)-eta(i,j)+tantc*dnx(i,j))/(1.d0+sj(i,j+1)/sj(i,j))
								dz2 = -sj(i,j+1)/sj(i,j)*dz1
								if( eta(i,j)-eta_zb(i,j)<-dz1 ) then
									dz1 = -(eta(i,j)-eta_zb(i,j))
									dz2 = -dz1*sj(i,j)/sj(i,j+1)
								end if
								dex(i,j  ) = dex(i,j  )+dz1
								dex(i,j+1) = dex(i,j+1)+dz2
								do k=1,nk
									dex_mix(i,j  ,k) = dex_mix(i,j  ,k)+dz1*p_m(i,j,k)
									dex_mix(i,j+1,k) = dex_mix(i,j+1,k)+dz2*p_m(i,j,k)
								end do
							end if
						end if
					end if
				end if
			end do
		end do
!
! --- ècífï˚å¸ÇÃÉ`ÉFÉbÉN ---
!
		do j=1,ny
			do i=1,nx-1
				deds(i,j) = (eta(i+1,j)-eta(i,j))/dsy(i,j)
			end do
			do i=nx-1,1,-1
				if( ijo_in(i,j)==0 .and. ijo_in(i+1,j)==0 ) then
					if( hs(i,j)>hmin .or. hs(i+1,j)>hmin ) then
						if( phi(i+1,j)==1.d0 ) then
							if( deds(i,j)>tantc ) then
								dz1 = (eta(i+1,j)-eta(i,j)-tantc*dsy(i,j))/(1.d0+sj(i+1,j)/sj(i,j))
								dz2 = -sj(i+1,j)/sj(i,j)*dz1
								if( eta(i+1,j)-eta_zb(i+1,j)<-dz2 ) then
									dz2 = -(eta(i+1,j)-eta_zb(i+1,j))
									dz1 = -dz2*sj(i,j)/sj(i+1,j)
								end if
								dex(i+1,j) = dex(i+1,j)+dz2
								dex(i  ,j) = dex(i  ,j)+dz1
								do k=1,nk
									dex_mix(i  ,j,k) = dex_mix(i  ,j,k)+dz1*p_m(i+1,j,k)
									dex_mix(i+1,j,k) = dex_mix(i+1,j,k)+dz2*p_m(i+1,j,k)
								end do
							end if
						end if
					end if
				end if
			end do
!
			do i=1,nx-1
				if( ijo_in(i,j)==0 .and. ijo_in(i+1,j)==0 ) then
					if( hs(i,j)>hmin .or. hs(i+1,j)>hmin ) then
						if( phi(i,j)==1.d0 ) then
							if( -deds(i,j)>tantc ) then
								dz1 = (eta(i+1,j)-eta(i,j)+tantc*dsy(i,j))/(1.d0+sj(i+1,j)/sj(i,j))
								dz2 = -sj(i+1,j)/sj(i,j)*dz1
								if( eta(i,j)-eta_zb(i,j)<-dz1 ) then
									dz1 = -(eta(i,j)-eta_zb(i,j))
									dz2 = -dz1*sj(i,j)/sj(i+1,j)
								end if
								dex(i  ,j) = dex(i  ,j)+dz1
								dex(i+1,j) = dex(i+1,j)+dz2
								do k=1,nk
									dex_mix(i  ,j,k) = dex_mix(i  ,j,k)+dz1*p_m(i,j,k)
									dex_mix(i+1,j,k) = dex_mix(i+1,j,k)+dz2*p_m(i,j,k)
								end do
							end if
						end if
					end if
				end if
			end do
		end do
!
		if( jrep==1 ) then
			do i=0,1
				do j=1,ny
					dex(i,j) = dex(i+nx-3,j)
					do k=1,nk
						dex_mix(i,j,k) = dex_mix(i+nx-3,j,k)
					end do
				end do
			end do
		
			do i=nx-1,nx+1
				do j=1,ny
					dex(i,j) = dex(i-nx+3,j)
					do k=1,nk
						dex_mix(i,j,k) = dex_mix(i-nx+3,j,k)
					end do
				end do
			end do
		else
			do i=0,1
				do j=1,ny
					dex(i,j) = 0.d0
					do k=1,nk
						dex_mix(i,j,k) = 0.d0
					end do
				end do
			end do
		
			do j=1,ny
				dex(nx,j) = dex(nx-1,j)
				do k=1,nk
					dex_mix(nx,j,k) = dex_mix(nx-1,j,k)
				end do
			end do
		end if
!
		do j=1,ny
			do i=1,nx
				eta(i,j) = eta(i,j)+dex(i,j)
				
				if( phi(i,j)<1.d0 ) then
					call sorting_fixed( i, j, nb_new, e_t_new, p_m_new, p_t_new, p_d_new, p_tot )
				else
					call sorting_movable( i, j, nb_new, e_t_new, p_m_new, p_t_new, p_d_new, p_tot )
				end if
				
				e_t(i,j) = e_t_new
				nb(i,j) = nb_new
         
				do k=1,nk
					p_m(i,j,k) = p_m_new(k)
					p_t(i,j,k) = p_t_new(k)
					p_d(i,j,nb(i,j),k) = p_d_new(k)
				end do

			end do
		end do

	end subroutine ebank_mix

end module ebank_m

module cross_sectional_output
	use common_hh
	use common_cmconf1
	use common_output
	use common_cmsui
	use common_cmxy
	implicit none
	
   
  contains
  
	subroutine cross_section_variables
		implicit none
		integer :: i,j,nnp,jss1,jss2
		real(8) :: zmin
      double precision :: hmin10
		
      hmin10 = 2. * hmin
      
!$omp do private( i, j, jss1, jss2, nnp )
	    do i=0,nx
	       z_ave_main(i) = 0.d0
	       z_min_main(i) = 9999.d0
	       h_ave_main(i) = 0.d0
	       nnp = 0
	       if( i<i_t1.or.j_conf>=2) then
	          jss1 = j_m1
	          jss2 = j_m2
	       else
	          jss1 = 0
	          jss2 = ny
	       end if
	       do j=jss1,jss2
	          if( ijobst(i,j)/=1 .and. hsxx(i,j) > hmin10) then
	             nnp = nnp+1
	             z_ave_main(i) = z_ave_main(i)+z(i,j)
	             z_min_main(i) = min(z_min_main(i),z(i,j))
	          end if
	       end do
	       z_ave_main(i) = z_ave_main(i)/dble(nnp)
	       
	       nnp = 0
	       do j=jss1,jss2
	          if( ijobst(i,j)/=1.and.hsxx(i,j)>hmin10 ) then
	             nnp = nnp+1
	             h_ave_main(i) = h_ave_main(i)+(z(i,j)+hsxx(i,j))
	          end if
	       end do
	       if( nnp==0 ) then
	         h_ave_main(i) = z_min_main(i)
	       else
	         h_ave_main(i) = h_ave_main(i)/dble(nnp)
	       end if
	    end do
	    
	    if( j_conf==1 ) then
!$omp do private( i, j, nnp )
	       do i=0,i_t2
	          z_ave_tri(i) = 0.d0
	          z_min_tri(i) = 9999.d0
	          h_ave_tri(i) = 0.d0
	          nnp = 0
	          do j=j_t1,j_t2
	             if( ijobst(i,j)/=1 .and. hsxx(i,j) > hmin10) then
	                nnp = nnp+1
	                z_ave_tri(i) = z_ave_tri(i)+z(i,j)
	                z_min_tri(i) = min(z_min_tri(i),z(i,j))
	             end if
	          end do
	          z_ave_tri(i) = z_ave_tri(i)/dble(nnp)
	          
	          nnp = 0
	          do j=j_t1,j_t2
	             if( ijobst(i,j)/=1.and.hsxx(i,j)>hmin10 ) then
	                nnp = nnp+1
	                h_ave_tri(i) = h_ave_tri(i)+z(i,j)+hsxx(i,j)
	             end if
	          end do
	          if( nnp==0 ) then
	          	h_ave_tri(i) = z_min_tri(i)
	          else
	            h_ave_tri(i) = h_ave_tri(i)/dble(nnp)
	          end if
	       end do
	       
	    else if( j_conf>=2 ) then
!$omp do private( i, j, nnp )
	       do j=j_t1,j_t2,jxd
	          z_ave_tri2(j) = 0.d0
	          z_min_tri2(j) = 9999.d0
	          h_ave_tri2(j) = 0.d0
	          nnp = 0
	          do i=i_t1,i_t2
	             if( ijobst(i,j)/=1 .and. hsxx(i,j) > hmin10) then
	                nnp = nnp+1
	                z_ave_tri2(j) = z_ave_tri2(j)+z(i,j)
	                z_min_tri2(j) = min(z_min_tri2(j),z(i,j))
	             end if
	          end do
	          z_ave_tri2(j) = z_ave_tri2(j)/dble(nnp)
	          
	          nnp = 0
	          do i=i_t1,i_t2
	             if( ijobst(i,j)/=1.and.hsxx(i,j)>hmin10 ) then
	                nnp = nnp+1
	                h_ave_tri2(j) = h_ave_tri2(j)+z(i,j)+hsxx(i,j)
	             end if
	          end do
	          if( nnp==0 ) then
	            h_ave_tri2(j) = z_min_tri2(j)
	          else
	            h_ave_tri2(j) = h_ave_tri2(j)/dble(nnp)
	          end if
	          
	       end do
	    end if
	    
!$omp do private( i, j, jss1, jss2 )
	    do i=0,nx
	       if( i<i_t1.or.j_conf>=2) then
	          jss1 = j_m1
	          jss2 = j_m2
	       else
	          jss1 = 0
	          jss2 = ny
	       end if
	       do j=jss1,jss2
	          z_ave(i,j) = z_ave_main(i)
	          z_min(i,j) = z_min_main(i)
	          h_ave(i,j) = h_ave_main(i)
	       end do
	    end do
	    
	    if( j_conf==1 ) then
!$omp do private(i,j)
	       do i=0,i_t2
	          do j=j_t1,j_t2
	             z_ave(i,j) = z_ave_tri(i)
	             z_min(i,j) = z_min_tri(i)
	             h_ave(i,j) = h_ave_tri(i)
	          end do
	       end do
	       
	    else if( j_conf>=2 ) then
!$omp do private(i,j)
	       do j=j_t1+js1-js2,j_t2,jxd
	          do i=i_t1,i_t2
	             z_ave(i,j) = z_ave_tri2(j)
	             z_min(i,j) = z_min_tri2(j)
	             h_ave(i,j) = h_ave_tri2(j)
	          end do
	       end do
	    end if

	end subroutine cross_section_variables

end module cross_sectional_output


	subroutine center2grid_4(f_cen, f_grid, nk)
		use common_hh
		implicit none
		integer,intent(in) :: nk
		real(8),dimension(0:im,0:jm,nk),intent(out) :: f_grid
		real(8),dimension(0:im,0:jm,nk),intent( in) :: f_cen
		
		integer :: i,j,k

!$omp single
		do k=1,nk
			f_grid( 0, 0,k) = f_cen( 1, 1,k)
			f_grid(nx, 0,k) = f_cen(nx, 1,k)
			f_grid( 0,ny,k) = f_cen( 1,ny,k)
			f_grid(nx,ny,k) = f_cen(nx,ny,k)
		end do
!$omp end single

					!	óÃàÊÇÃï”ÇÃèÍçá

!$omp do private(i,k)
		do i=1,nx-1
			do k=1,nk
				f_grid(i, 0,k) = (f_cen(i, 1,k)+f_cen(i+1, 1,k))*0.5d0
				f_grid(i,ny,k) = (f_cen(i,ny,k)+f_cen(i+1,ny,k))*0.5d0
			end do
		end do

!$omp do private(j,k)
		do j=1,ny-1
			do k=1,nk
				f_grid( 0,j,k) = (f_cen( 1,j,k)+f_cen( 1,j+1,k))*0.5d0
				f_grid(nx,j,k) = (f_cen(nx,j,k)+f_cen(nx,j+1,k))*0.5d0
			end do
		end do

					!	óÃàÊì‡ïîÇÃèÍçá

!$omp do private(i,j,k)
		do j=1,ny-1
			do k=1,nk
				do i=1,nx-1
					f_grid(i,j,k) = (f_cen(i,j,k)+f_cen(i+1,j,k)+f_cen(i,j+1,k)+f_cen(i+1,j+1,k))*.25d0
				end do
			end do
		end do
		
	end subroutine center2grid_4
	
	subroutine vegetation_height
		use common_hh
		use common_cmxy
		use common_cmcf
		implicit none
		
		integer :: i, j
		
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				vege_h(i,j) = vege_el(i,j)-eta(i,j)
				vege_h(i,j) = max( vege_h(i,j), 0.d0 )
			end do
		end do	
	
	end subroutine vegetation_height

!--------------------------------------------------------------------------------
!main routine
!--------------------------------------------------------------------------------
Program Shimizu

  use common_hh
  use flag_op
  use common_cmuv
  use common_cmc
  use common_cmuvp
  use common_cmhq
  use common_cmgrd
  use common_cmxy
  use common_cmxiet
  use common_cmtst
  use common_cmuxy
  use common_cmave
  use common_cmsr
  use common_cmqb
  use common_cmet
  use common_cmsui
  use common_cmsn
  use common_cmxxyy
  use common_qhyd
  use common_cmke
  use common_cmkep
  use common_cmcf
  use common_cmyp
  use common_cmsnu
  use common_cmchunk
  use mix
  use common_qhyd_t
  use common_cmconf1
  use common_cmave_t
  use common_cmave_t2
  use fixed_bed
  use supplying_sediment
  use secondary_flow
  !
  use avgeo_m
  use gcoefs_m
  use initl_m
  use uvpcal_m
  use uxuycal_m
  use voltexcal_m
  use uxxyycal_m
  use hsxxcal_m
  use cell2grid_m
  use taustacal_m
  use hcal_v_m
  use hcal_m
  use diffusion_m
  use diffusion_c_m
  use newgrd_m
  use bound_m
  use upstream_c_m
  use gbound_m
  use dcip2d_m
  use shift_m
  use dryck_m
  use ndr_m
  use srcal_m
  use qbcal_w_m
  use etacal_m
  use bank_shift_m
  use cbcal_m
  use qsucal_m
  use c_secondary_m
  use ecoefs_m
  use hqtcal_m
  use upstream_m
  use downstream_m
  use snucal_m
  use snucal_ke_m
  use source_ke
  use ypcal_ini_m
  use ypcal_m
  use wall_ke_m
  use phkecal_m
  use schange_m
  use alloc_var_m
  use initial_0_m
  use mix_m
  use ebank_m
  use func_fixed_bed
  use c_transport_m
  use vorticity_eq_m
  use cross_sectional_output
  use iric

  implicit none

  integer :: i,j,k

  real(8) :: snu00, h_down, bh_slope, upv_slope, upv_slope_t, h_slope &
       , h_slope_t, x_bk, h_slope_1,h_slope_2,h_slope_12t, tantc, t_out_start &
       , bheight, ti_smg, c_tree, hdry,ti_fill,alh, rho, slambda,dsmt,ttt &
       , hplus, r_tantc, sn_g, dummy, t_xx, thstart,qp,etime,dm0,cw,c_mu0,sigma_k, sigma_e &
       , c_1e, c_2e, calculated_slope, calculated_slope_t,bh1, qp_t &
       , bh2, slope, slope_t, slope_up, slope_up_t, h0, hs_dse, u0, us0, fr0, phi0, ts0, c_f &
       , errmax,usci, theta_b, tan_tb, cos_tb, gamma, gamma_m, rsgd, snu_0, c_k0, c_e0 &
       , ye00, yk00, dtanmax, wf, theta_cx, hnx, dt2, h_input, h_input_t &
       , q_input, q_input_t, sst, err, qc_ave, hs_ave, dermax, sigma, total_budget		&
       , pi_bed, snst


  integer :: ii, icount, istatus, i_sec_hour, j_wl, j_slope,j_upv, j_upv_slope 				&
       , i_flow, j_snu, j_cip, j_bank, i_erosion_start, j_chunk, j_smooth, i_smooth 		&
       , j_smg, mtime, mave, j_fill,iii, icelck, n, nq, is, kend, kmod, ktismg, ktfill 		&
       , ktifill, iofrg, ndeposit, ierr_tmp, nx2, ny2, nk2, lcount, ndry, iier, i_erosion_end

  integer :: n_parallel
  
  character(50) :: mix_label, cm

  
!  CHARACTER (LEN=3), EXTERNAL :: get_extension !rmcd iRIC
  
  !ccccccccccccccccccccccccccccccccccccccccccccccccccccccc
  !
  !       Array for gridFile 
  !
  !ccccccccccccccccccccccccccccccccccccccccccccccccccccccc
  !
  integer(4), dimension(:,:), pointer :: obst4, fm4, mix_cell
  real(8)   , dimension(:,:), pointer :: x8, y8, z8, hs8, zb8
  real(8)   , dimension(:,:), pointer :: vege4, roughness4, vegeh
  integer(4) ni4,nj4,iobst4
  real(8) hmin8
  
  ! for cngs i/0
  INTEGER :: FID, IER
  CHARACTER (LEN=3) :: fext  ! For file extension query.
  REAL(8) :: qptemp
  REAL(8), DIMENSION(:), ALLOCATABLE :: xtmp, ytmp, ytmp2
  INTEGER :: tmpint
  
  ! For Hot Stat
  integer :: i_re_flag_i, i_re_flag_o, n_rest, i_tmp_count
  real(8) :: opt_tmp(0:9)
  character(len = strMax) :: tmp_file_o(0:9), tmp_caption(0:9) &
       ,tmp_file_i, tmp_dummy, tmp_pass
  i_tmp_count = 0
  do ii=0,9
     tmp_dummy = "tmp0.d"
     write(tmp_dummy(4:4),'(i1)') ii
     tmp_file_o(ii) = tmp_dummy
     tmp_dummy = "outtime_tmp0"
     write(tmp_dummy(12:12),'(i1)') ii
     tmp_caption(ii) = tmp_dummy
  end do
  !
  write(*,*) 'Nays2DH on iRIC 4.x'
  write(*,*) 'Copyright(C)2003-2023 by Yasuyuki SHIMIZU, Hokkaido Univ., Japan, and Hiroshi TAKEBAYASHI, Kyoto Univ., Japan, All Right Reserved'
  !
  !
  g     = 9.81d0
  skp   = 0.41d0
  snu00 = 1e-6
  
  lcount = 0

  !	Add iargc for gfortran, g95
  icount = nargs()
  !      icount = iargc()
  if ( icount.eq.2 ) then
     !      if ( icount.eq.1 ) then
     CALL GETARG (1, condFile, istatus)
     !        CALL GETARG (1, condfile)
  else
     write( 6, * ) 'input filename: ?'
     read( 5, *) condFile
  endif

     CALL cg_iric_open(condFile, IRIC_MODE_MODIFY, FID, IER)

!     ! guiÇ…cgnsÉtÉ@ÉCÉãÇì«çûÇ›Ç≈Ç†ÇÈÇ±Ç∆ÇímÇÁÇπÇÈÉtÉ@ÉCÉãÇê∂ê¨
!     call iric_initoption(IRIC_OPTION_CANCEL, ier)

     call cg_iRIC_Read_Grid2d_Str_Size(fid,ni4, nj4, ier)
     allocate (x8(ni4,nj4), y8(ni4,nj4))
     call cg_iRIC_Read_Grid2d_Coords(fid,x8, y8, ier)

     allocate (z8(ni4,nj4))
     allocate (zb8(ni4,nj4))
     allocate (hs8(ni4,nj4))
     
     allocate (obst4(     ni4-1, nj4-1))
     allocate (fm4(       ni4-1, nj4-1))
     allocate (vege4(     ni4-1, nj4-1))
     allocate (roughness4(ni4-1, nj4-1))
     allocate (vegeh     (ni4-1, nj4-1))
     allocate (mix_cell  (ni4-1, nj4-1))
     
     call cg_iric_read_grid_real_node(fid,'Elevation', z8, ier)
     call cg_iric_read_grid_real_node(fid,'Elevation_zb', zb8, ier)
     call cg_iric_read_grid_integer_cell(fid,'Obstacle', obst4, ier)
     call cg_iric_read_grid_integer_cell(fid,'Fix_movable', fm4, ier)
     call cg_iric_read_grid_real_cell(fid,'vege_density', vege4, ier)
     call cg_iric_read_grid_real_cell(fid,'vege_height', vegeh, ier)
     call cg_iric_read_grid_real_cell(fid,'roughness_cell', roughness4, ier)
     call cg_iric_read_grid_integer_cell(fid,'mix_cell', mix_cell, ier)

     CALL CG_IRIC_READ_INTEGER(fid,'i_sec_hour', i_sec_hour, ier)

     CALL CG_IRIC_READ_INTEGER(fid,'edition', edition, ier)
     
   ! ---- Parameters for Confluence -----
   !
     
     CALL CG_IRIC_READ_INTEGER(fid,'j_conf', j_conf, ier)
   !
   !  j_conf = 0 çáó¨ì_ñ≥Çµ
   !  j_conf = 1 çáó¨ì_Ç†ÇË(É^ÉCÉvAï™äÚçáó¨)
   !  j_conf = 2 çáó¨ì_Ç†ÇË(É^ÉCÉvBâ°ó¨ì¸çáó¨ÅAç∂ä›Ç©ÇÁ)
   !  j_conf = 3 çáó¨ì_Ç†ÇË(É^ÉCÉvBâ°ó¨ì¸çáó¨ÅAâEä›Ç©ÇÁ)
   !  ñ{êÏ j_m1--j_m2
   !  éxêÏ j_t1--j_t2
     !
     if(j_conf.eq.1) then
        write(*,*) 'Confluence TYPE-A'
     else if(j_conf.eq.2) then
        write(*,*) 'Confluence TYPE-B(from left bank)'
     else if(j_conf.eq.3) then
        write(*,*) 'Confluence TYPE-B(from right bank)'
     end if
     !
     if(j_conf.ge.1) then
        CALL CG_IRIC_READ_INTEGER(fid,'j_m1', j_m1, ier)
        CALL CG_IRIC_READ_INTEGER(fid,'j_m2', j_m2, ier)
        CALL CG_IRIC_READ_INTEGER(fid,'j_t1', j_t1, ier)
        CALL CG_IRIC_READ_INTEGER(fid,'j_t2', j_t2, ier)
        CALL CG_IRIC_READ_INTEGER(fid,'i_t1', i_t1, ier)
        CALL CG_IRIC_READ_INTEGER(fid,'i_t2', i_t2, ier)
        j_m1 = j_m1-1
        j_m2 = j_m2-1
        j_t1 = j_t1-1
        j_t2 = j_t2-1
        i_t1 = i_t1-1
        i_t2 = i_t2-1
        jxd=1
        js1=0
        js2=0
        if( j_conf==2 ) then
           jxd=1
           js1=1
           js2=0
        else if( j_conf==3 ) then
           jxd=-1
           js1=0
           js2=1
        end if
     end if
   !
   ! ---- Parameters for Downstream Water Surface Elevation -----
   !
     CALL CG_IRIC_READ_INTEGER(fid,'j_wl', j_wl, ier)
   !
   !   j_wl = 0 ...â∫ó¨í[êÖà àÍíËílÇó^Ç¶ÇÈ(h_down)
   !   j_wl = 1 ...â∫ó¨í[êÖà ÇÕìôó¨åvéZÇ≈ãÅÇﬂÇÈ
   !   j_wl = 2 ...â∫ó¨í[êÖà ÇÕÉtÉ@ÉCÉãÇ©ÇÁì«Ç›çûÇﬁ
	!   j_wl = 3 ...â∫ó¨í[êÖà ÇÕé©óRó¨èo

     CALL cg_iric_read_real(fid,'h_down', h_down, ier)
   !
   !   h_dwown = â∫ó¨í[êÖà ÇÃíl(è„ãLj_wl=0ÇÃéûÇÃÇ›óLå¯)
   
     CALL CG_IRIC_READ_INTEGER(fid,'j_slope', j_slope, ier)
   !
   !   è„ãLj_wl=1ÇÃéûìôó¨åvéZÇ…ópÇ¢ÇÈå˘îzÇ
   !   j_slope=0.... âÕè∞ÉfÅ[É^Ç©ÇÁé©ìÆìIÇ…åvéZÇ∑ÇÈ
   !   j_slope=1.... ó^Ç¶ÇÈÅ®Ç±ÇÃéûÇÕó^Ç¶ÇÈílÇÕéüÇÃbh_slopeÇÃíl

     CALL cg_iric_read_real(fid,'bh_slope', bh_slope, ier)
   !
   !   è„ãLj_wl=1Ç≈j_slope=1ÇÃèÍçáÇ…ó^Ç¶ÇÈå˘îz = bh_slope
   !
   ! ------ Parameters for Upstream Boundary ------
   !
     CALL CG_IRIC_READ_INTEGER(fid,'j_upv', j_upv, ier)
   !
   !  j_upv =1 è„ó¨í[ÇÃó¨ë¨Çìôó¨åvéZÇ≈ó^Ç¶ÇÈ
   !  j_upv =2 è„ó¨í[ÇÃó¨ë¨ÇÅAè„ó¨í[ÇÃêÖê[ÇégÇ¡Çƒó¨ó Ç©ÇÁãtéZÇ∑ÇÈ
   !
     CALL CG_IRIC_READ_INTEGER(fid,'j_upv_slope', j_upv_slope, ier)
   !
   !  è„ãLj_upv=1ÇÃÇ∆Ç´ÇÃìôó¨åvéZÇ…égópÇ∑ÇÈå˘îzÇÃó^Ç¶ï˚
   !
   !    j_upv_slope=0 .... âÕè∞ÉfÅ[É^Ç©ÇÁé©ìÆìIÇ…åvéZ
   !    j_upv_slope=1 .... ílÇó^Ç¶ÇÈÅ®Ç±ÇÃèÍçáÇÕéüÇÃçÄñ⁄ÇÃuvp_slope
   !
     CALL cg_iric_read_real(fid,'upv_slope', upv_slope, ier)
     CALL cg_iric_read_real(fid,'upv_slope_t', upv_slope_t, ier)
   !                       
   !   è„ãLj_upv=1Ç≈j_upv_slope=1ÇÃèÍçáÇ…ó^Ç¶ÇÈå˘îz = upv_slope
   !   éxêÏë§ÇÃå˘îz = upv_slope_t
   !
   ! ---- Parameters for Initial Water Surface Profile-----
   !
     CALL CG_IRIC_READ_INTEGER(fid,'i_flow', i_flow, ier)
   !
   !   i_flow=0 èâä˙êÖñ å`ÇÕíºê¸(àÍíËå˘îz)
   !   i_flow=1 èâä˙êÖñ å`ÇÕê‹ê¸(ÇPê‹ì_Ç∆ÇQíºê¸)
   !   i_flow=2 èâä˙êÖñ å`ÇÕìôó¨åvéZ
   !   i_flow=3 èâä˙êÖñ å`ÇÕïsìôó¨åvéZ

     CALL cg_iric_read_real(fid,'h_slope', h_slope, ier)
     CALL cg_iric_read_real(fid,'h_slope_t', h_slope_t, ier)
   !
   !  è„ãLi_flow=0ÇÃÇ∆Ç´ÇÃèâä˙êÖñ å˘îz  
   !  è„ãLi_flow=0ÇÃÇ∆Ç´ÇÃéxêÏÇÃèâä˙êÖñ å˘îz  

     CALL cg_iric_read_real(fid,'x_bk', x_bk, ier)
   !
   !  è„ãLi_flow=1ÇÃÇ∆Ç´ÇÃå˘îzïœâªì_ÇÃâ∫ó¨Ç©ÇÁÇÃãóó£ x_bk
   !   
     CALL cg_iric_read_real(fid,'h_slope_1', h_slope_1, ier)
     CALL cg_iric_read_real(fid,'h_slope_2', h_slope_2, ier)
     CALL cg_iric_read_real(fid,'h_slope_12t', h_slope_12t, ier)
   !
   !  è„ãLi_flow=1ÇÃÇ∆Ç´ÇÃèâä˙êÖñ å˘îz(â∫ó¨ë§)h_slope_1
   !  è„ãLi_flow=1ÇÃÇ∆Ç´ÇÃèâä˙êÖñ å˘îz(è„ó¨ë§)h_slope_2
   !  è„ãLi_flow=1ÇÃÇ∆Ç´ÇÃèâä˙êÖñ å˘îz(è„ó¨ë§éxêÏ)h_slope_12t
   !
   ! ---- Parameters for Bed Material  -----
   !
     CALL CG_IRIC_READ_REAL(fid,'diam', diam, ier)
     
     CALL CG_IRIC_READ_REAL(fid,'tantc', tantc, ier)

     diam    = diam/1000.d0
     r_tantc = 1.d0 / tantc

   ! ---- Parameters for sediment transport -----
   !  
   !  j_qbqs    : sediment transport type, 0: bedload, 1: bedload+suspended load
   !  j_bedload : bedload transport formula for uniform sediment
   !              0: M.P.M, 1: Ashida & Michiue's
   !  j_qsu		: formula of upward flux of suspended load from river bed
   !			  0: Itakura and Kishi formula,  1: Lane-Kalinske formula
   !  j_collaps : slope collaps model 0: no, 1: yes
   !  j_qb_vec	: How to calculate bedload transport vector at cell boundaries
   !			  0: Watanabe formula, 1: Ashida, Egashira and Liu formula

     CALL CG_IRIC_READ_INTEGER(fid,'j_qbqs', j_qbqs, ier)

     CALL CG_IRIC_READ_INTEGER(fid,'j_bedload', j_bedload, ier)

     CALL CG_IRIC_READ_INTEGER(fid,'j_qb_vec', j_qb_vec, ier)

     CALL CG_IRIC_READ_INTEGER(fid,'j_qsu', j_qsu, ier)

     CALL CG_IRIC_READ_INTEGER(fid,'j_collaps', j_collaps, ier)

   !
   ! ---- Parameters on Time Setting -----
   !
     CALL CG_IRIC_READ_REAL(fid,'tuk', tuk, ier)
     CALL CG_IRIC_READ_REAL(fid,'dt', dt, ier)
     CALL cg_iric_read_real(fid,'ster', ster, ier)
     CALL CG_IRIC_READ_INTEGER(fid,'j_qbs', j_qbs, ier)
     CALL cg_iric_read_real(fid,'t_out_start', t_out_start, ier)
   !
   ! ---- Parameters for Numerical Calculation -----
   !
     CALL CG_IRIC_READ_INTEGER(fid,'jrep', jrep, ier)
     CALL CG_IRIC_READ_INTEGER(fid,'j_snu', j_snu, ier)
     CALL CG_IRIC_READ_INTEGER(fid,'j_cip', j_cip, ier)
     CALL cg_iric_read_real(fid,'snst', snst, ier)
     call cg_iric_read_integer(fid,'j_sf', j_sf, ier)
     
     if( j_snu==1 ) then
     	CALL cg_iric_read_real(fid,'a_snu', a_snu, ier)
     	CALL cg_iric_read_real(fid,'b_snu', b_snu, ier)
     else
     	a_snu = 1.d0
     	b_snu = 0.d0
     end if
     
	! ---- Parameter for parallel computation ----

		CALL CG_IRIC_READ_INTEGER(fid,'n_parallel', n_parallel, ier)
     
    ! n_parallel = 2
     
   !
   ! ------ Parameters for Bank Erosion ------
   !
     CALL CG_IRIC_READ_INTEGER(fid,'j_bank', j_bank, ier)
     CALL CG_IRIC_READ_INTEGER &
          (fid,'i_erosion_start', i_erosion_start, ier)
     CALL CG_IRIC_READ_INTEGER(fid,'i_erosion_end', i_erosion_end, ier)
     CALL cg_iric_read_real(fid,'bheight', bheight, ier)
   !
   ! ------ Parameters for Chunk Block ------
   !
     !      CALL CG_IRIC_READ_INTEGER(fid,'j_chunk', j_chunk, ier)
     !      CALL cg_iric_read_real(fid,'t_chunk', t_chunk, ier)
     !      CALL cg_iric_read_real(fid,'d_chunk', d_chunk, ier)
     !      CALL cg_iric_read_real(fid,'h_chunk', h_chunk, ier)
     !!
     j_chunk=0
     t_chunk=10.d0
     d_chunk=0.1d0
     h_chunk=0.1d0
     
   !
   ! ---- Parameters for Bank Smoothing -----
   !
     CALL CG_IRIC_READ_INTEGER(fid,'j_smooth', j_smooth, ier)
     CALL CG_IRIC_READ_INTEGER(fid,'i_smooth', i_smooth, ier)
   !
   ! ----- Parameter for Bank Re-distribution -----
   !
     !      CALL CG_IRIC_READ_INTEGER(fid,'j_smg', j_smg, ier)
     !      CALL cg_iric_read_real(fid,'ti_smg', ti_smg, ier)
     !      CALL CG_IRIC_READ_INTEGER(fid,'mtime', mtime, ier)
     !      CALL CG_IRIC_READ_INTEGER(fid,'mave', mave, ier)
     !
     j_smg  = 0
     ti_smg = 100.d0
     mtime  =  10
     mave   = 1
   !
   ! ----- Parameters for Vegatation -----
   !
     CALL cg_iric_read_real(fid,'c_tree', c_tree, ier)
     
     CALL cg_iric_read_integer(fid,'j_vege', j_vege, ier)

   !
   !! ----- Parameters for Inner Bend Refilling -----
   !!
     !      CALL CG_IRIC_READ_INTEGER(fid,'j_fill', j_fill, ier)
     !      CALL cg_iric_read_real(fid,'hdry', hdry, ier)
     !      CALL cg_iric_read_real(fid,'ti_fill', ti_fill, ier)
     !!
     j_fill  = 0
     hdry    = 0.01d0
     ti_fill = 100.d0

   !
   ! --- Other Parameters and Constants -----
   !
     CALL CG_IRIC_READ_INTEGER(fid,'lmax', lmax, ier)
     CALL cg_iric_read_real(fid,'alh', alh, ier)
     CALL cg_iric_read_real(fid,'rho', rho, ier)
     CALL cg_iric_read_real(fid,'spec', spec, ier)
     CALL CG_IRIC_READ_REAL(fid,'slambda', slambda, ier)

     dsmt = 1.d0/(1.d0-slambda)
   !
   ! --- Parameters for Hot Start ---
   !
     CALL CG_IRIC_READ_INTEGER(fid,'write_flag', i_re_flag_o, ier)
     CALL CG_IRIC_READ_INTEGER(fid,'read_flag', i_re_flag_i, ier)
     CALL CG_IRIC_READ_INTEGER(fid,'n_tempfile', n_rest, ier)
     CALL CG_IRIC_READ_STRING(fid,'tmp_readfile', tmp_file_i, ier)
     CALL CG_IRIC_READ_STRING(fid,'tmp_pass', tmp_pass, ier)

     do ii=0,9
        CALL CG_IRIC_READ_REAL(fid,tmp_caption(ii), opt_tmp(ii), ier)
     end do
     !
     do iii=1,n_rest
        do ii=0,n_rest-1
           if(opt_tmp(ii) /= opt_tmp(ii+1) &
                .or.opt_tmp(ii+1) < opt_tmp(ii)+dt) then
              if(opt_tmp(ii) > opt_tmp(ii+1)) then
                 ttt = opt_tmp(ii)
                 opt_tmp(ii) = opt_tmp(ii+1)
                 opt_tmp(ii+1) = ttt
              end if
           else
              opt_tmp(ii+1) = opt_tmp(ii+1)+dt
           end if
        end do
     end do
     
   ! ----- Parameters for supplying sediment transport rate from the upstream end ------ !
   
     call CG_IRIC_READ_INTEGER(fid,'j_qbup', j_qbup, ier)
     
     if( j_qbup==0 ) then
        cse = 1.d0
     else
        call CG_IRIC_READ_REAL(fid,'cse', cse, ier)
        cse = cse*0.01d0
     end if
   
   !
   ! ----- Parameters for mixture model -----
   !
     call CG_IRIC_READ_INTEGER(fid,'j_mix', j_mix, ier)
     call CG_IRIC_READ_INTEGER(fid,'j_mix_dis', j_mix_dis, ier)
     call CG_IRIC_READ_INTEGER(fid,'j_mix_dis_dep', j_mix_dis_dep, ier)
     call CG_IRIC_READ_REAL(fid,'e_m', e_m, ier)
     call CG_IRIC_READ_REAL(fid,'e_d', e_d, ier)
     call CG_IRIC_READ_REAL(fid,'e_thick', e_thick, ier)
     call CG_IRIC_READ_INTEGER(fid,'nm', nm, ier)
     
     if( j_qbs==0 ) then
     	j_mix = 0
     end if
     
     if( j_mix==0 ) then
     	e_m = diam			! Ç∆ÇËÇ†Ç¶Ç∏
     end if
     
     if( j_mix==1 ) then
       nm_cell = 9
     end if
     !

   ! ------ Morphological factor ------ !
   
     if( edition==0 ) then
        csm = 1.d0
     else
        call CG_IRIC_READ_REAL(fid,'csm', csm, ier)
     end if

	! ------ flag parameter for output variables ------ !

	if( edition==0 ) then
		jop_vort = 0
		jop_fr   = 0
		jop_zmin = 0
		jop_zave = 0
		jop_have = 0
		
		if( j_qbs==0 ) then
			jop_dz = 1
			jop_fb = 1
			jop_sh = 1
			jop_qb = 1
			jop_sc = 1
			jop_md = 1
		else
			jop_dz = 0
			jop_fb = 0
			jop_sh = 0
			jop_qb = 0
			
			if( j_qbqs==0 ) then
				jop_sc = 1
			else
				jop_sc = 0
			end if
			
			if( j_mix==0 ) then
				jop_md = 1
			else
				jop_md = 0
			end if
		end if
		
	else
	
		call CG_IRIC_READ_INTEGER(fid,'jop_vort', jop_vort, ier)
		call CG_IRIC_READ_INTEGER(fid,'jop_fr'  , jop_fr  , ier)
		call CG_IRIC_READ_INTEGER(fid,'jop_zmin', jop_zmin, ier)
		call CG_IRIC_READ_INTEGER(fid,'jop_zave', jop_zave, ier)
		call CG_IRIC_READ_INTEGER(fid,'jop_have', jop_have, ier)
		
		if( j_qbs==0 ) then
			jop_dz = 1
			jop_fb = 1
			jop_sh = 1
			jop_qb = 1
			jop_sc = 1
			jop_md = 1
		else
			jop_dz = 0
			
			call CG_IRIC_READ_INTEGER(fid,'jop_fb', jop_fb, ier)
			call CG_IRIC_READ_INTEGER(fid,'jop_sh', jop_sh, ier)
			call CG_IRIC_READ_INTEGER(fid,'jop_qb', jop_qb, ier)
			
			if( j_qbqs==0 ) then
				jop_sc = 1
			else
				call CG_IRIC_READ_INTEGER(fid,'jop_sc', jop_sc, ier)
			end if

			if( j_mix==0 ) then
				jop_md = 1
			else
				call CG_IRIC_READ_INTEGER(fid,'jop_md', jop_md, ier)
			end if
			
		end if
	
	end if

     call CG_IRIC_READ_INTEGER(fid,'j_zb', j_zb, ier)
     
     if( j_zb==0 ) then
     	do j=1,nj4
     		do i=1,ni4
     			zb8(i,j) = z8(i,j)-99999.d0
     		end do
     	end do
     else
     	do j=1,nj4
     		do i=1,ni4
     			if( zb8(i,j)>z8(i,j) ) then
     				write(*,'(A,i5,A,i5)') 'The elevation of fixed bed is higher than the bed elevation at i= ',i,'j=',j
     				write(*,'(A)') 'The elevation of fixed bed you set is set to be the initial bed elevation.'
     				zb8(i,j) = z8(i,j)
     			end if
     		end do
     	end do
     end if

   !
   im = ni4
   jm = nj4
   call alloc_var1(im,jm)
   call initial_01

   !
   nx = ni4 - 1
   ny = nj4 - 1
   do j = 1, nj4
      do i = 1, ni4
         x (i-1,j-1) =  x8(i,j)
         y (i-1,j-1) =  y8(i,j)
         z (i-1,j-1) =  z8(i,j)
         zb(i-1,j-1) = zb8(i,j)
      end do
   end do

   dxi = 1.d0 / dble(nx)
   det = 1.d0 / dble(ny)
    
   r_dxi = 1.d0/dxi
   r_det = 1.d0/det
    
   call alloc_avgeo_temp_variables
   call alloc_gcoefs_temp_variables
   call alloc_initl_temp_variables
   call alloc_voltexcal_temp_variables
   call alloc_uxxyycal_temp_variables
   call alloc_diffusion_temp_variables
   call alloc_diffusion_c_temp_variables
   call alloc_advection_temp_variables
   call alloc_qbcal_temp_variables
   call alloc_bank_shift_temp_variables
   call alloc_ebank_temp_variables
   call alloc_c_secondary_temp_variables
   call alloc_upstream_temp_variables
   call alloc_ypcal_ini_variables
   call alloc_schange_temp_variables
   call alloc_c_transport_temp_variables
   call alloc_vorticity_eq_temp_variables

   !
   ! ---- check i_erosion_start and i_erosion_end ------
   !

   if(i_erosion_start >= nx ) i_erosion_start=nx
   if(i_erosion_end   >= nx ) i_erosion_end=nx

   !
   ! ------ set cell status -----
   !

   icelck=0
   do j=1,ny
      do i=1,nx
       !
       ! ----- set obstacle cells -----

         ijo_in(i,j) = obst4(i,j)

				! 0: normal cell, 1: obstacle cell

         if( obst4(i,j) == 1 ) icelck=icelck+1
       !
       ! ----- set fixed bed cells -----

         ij_ero(i,j) = fm4(i,j)
         
         	! 0: movable bed, 1: fixed bed

       !
       ! ----- set vegetation condition -----
         
         cd_veg(i,j) = vege4(i,j)*c_tree*0.5d0
         !
      end do
   end do
   
   !
   if(icelck == 0) then
      iobst4=0
   else
      iobst4=1
   end if
   !      
   ijobst = 0
   do i = 1, nx
      do j = 1, ny
         if(ijo_in(i,j) == 1) then
            ijobst(i  ,j  ) = 1
            ijobst(i-1,j  ) = 1
            ijobst(i  ,j-1) = 1
            ijobst(i-1,j-1) = 1
         end if
      end do
   end do

	do j=1,ny
		do i=0,nx
			if( ijobst(i,j)==1 .and. ijobst(i,j-1)==1 ) then
				ijobst_u(i,j) = 0
			else
				ijobst_u(i,j) = 1
			end if
		end do
	end do

	do j=0,ny
		do i=1,nx
			if( ijobst(i,j)==1 .and. ijobst(i-1,j)==1 ) then
				ijobst_v(i,j) = 0
			else
				ijobst_v(i,j) = 1
			end if
		end do
	end do

    !
    if( j_bank < 0.or.j_bank > 2 ) then
       write(*,*) 'Wrong Value of j_bank'
       stop
    end if
    !
    
    hplus = 0.
    !
    !   Add some value as hplus if initial delpth becomes 0 
    !   then set hplus=****.
    !   j_drg = 0 .... roughness is calculated from bed material
    !   j_drg = 1 .... roughness is given
    !

    !cccccccccccccccccccccccccccccccccccccccccccccccccccc
    !
    sn_g    = diam**(1.d0/6.d0) / 6.8d0 / dsqrt(g)
    !
    jt1 =  0
    jt2 = ny
    nym = ny / 2
    !
    !cccccccccccccccccccccccccccccccccccccccccccccccccccc
    !
    !
  ! ------ read boundary condition (discharge, water level) ---------- !

       CALL CG_IRIC_READ_FUNCTIONALSIZE(fid,'discharge_waterlevel',tmpint,ier)

       allocate(xtmp(tmpint),ytmp(tmpint),ytmp2(tmpint))

       CALL CG_IRIC_READ_FUNCTIONALWITHNAME(fid,"discharge_waterlevel","time",xtmp,ier)
       CALL CG_IRIC_READ_FUNCTIONALWITHNAME(fid,"discharge_waterlevel","discharge",ytmp,ier)
       CALL CG_IRIC_READ_FUNCTIONALWITHNAME(fid,"discharge_waterlevel","water_level",ytmp2,ier)

       IF(ier.eq.0) THEN
          nq = tmpint-1
          mm = nq
          call alloc_var2(mm)
          call initial_02
       ENDIF
       DO I= 0,nq
          if(i_sec_hour == 1) THEN
             t_hyd(i) = xtmp(i+1)
          ELSE
             t_hyd(i) = xtmp(i+1)*3600.d0
          ENDIF
          q_ups(i) = ytmp(i+1)
          h_dse(i) = ytmp2(i+1)
       ENDDO
       DEALLOCATE(xtmp, STAT = ier)
       DEALLOCATE(ytmp, STAT = ier)
       DEALLOCATE(ytmp2, STAT = ier)
       
       if(j_conf/=0) then
          CALL CG_IRIC_READ_FUNCTIONALSIZE(fid,'discharge_t',tmpint,ier)

          if( nq/=tmpint-1 ) then
            write(*,*) "The number of discharge data for tributary is different from the number of discharge data for main river!"
            write(*,*) "The number of data and time should be same in both main and tributary rivers"
            stop
          end if

          allocate(xtmp(tmpint),ytmp(tmpint))
          CALL CG_IRIC_READ_functional(fid,'discharge_t',xtmp,ytmp,ier)
          DO I= 0,nq
             
             q_ups_t(i) = ytmp(i+1)
          ENDDO
          DEALLOCATE(xtmp, STAT = ier)
          DEALLOCATE(ytmp, STAT = ier)
       end if
       !
    !
    thstart = t_hyd(0)

    do n = 0, nq
       t_hyd(n) = t_hyd(n) - thstart
    end do

    qp    = q_ups(0)
    if(j_conf.ge.1) qp_t=q_ups_t(0)		!h101019 conf
    etime = t_hyd(nq)
    if( ster < 0.) then
    	ster = etime
		j_qbs = 0
		j_mix = 0
	end if
    !
    is = -1
    do ii=0,n_rest-1
       if(opt_tmp(ii) < thstart) is=ii
    end do
    i_tmp_count = is+1

  !
  ! ------- read the initial grain size distribution --------
  !
    if( j_mix == 1) then
       
       if( j_mix_dis==0 ) then
    
          CALL CG_IRIC_READ_FUNCTIONALSIZE(fid,'mixfile_pp',tmpint,ier)
          allocate(xtmp(tmpint),ytmp(tmpint))
!         CALL CG_IRIC_READ_FUNCTIONAL(fid,'mixfile_pp',xtmp,ytmp,ier)

          IF(ier == 0) THEN
             nk = tmpint-1
             mm = nk
             call alloc_var_mix(im, jm, mm, nm, nm_cell)
             call initial_mix
          ENDIF

          call cg_iric_read_functionalwithname(fid,'mixfile_pp', 'diameter_k', xtmp, ier)
       
          do k=0,nk
             ddist_mm(k) = xtmp(k+1)
          end do
       
          do n=0,nm_cell
             write(cm,'(i1)') n
             mix_label = 'pp'//trim(cm)
          
             call cg_iric_read_functionalwithname(fid,'mixfile_pp', mix_label, ytmp, ier)
          
             do k=0,nk
                pdist_m_100(k,n) = ytmp(k+1)
             end do
                    
          end do
       
          DEALLOCATE(xtmp, STAT = ier)
          DEALLOCATE(ytmp, STAT = ier)
          
          if( j_mix_dis_dep==1 ) then
             
             CALL CG_IRIC_READ_FUNCTIONALSIZE(fid,'mixfile_pp_d',tmpint,ier)
             allocate(xtmp(tmpint),ytmp(tmpint))

             if( tmpint-1/=nk ) then
                write(*,*) "The sediment size class in deposited layer is different from in the mixed layer."
                write(*,*) "The sediment size class (number of class and each diameter) must be same in both layers."
                stop
             end if
       
             do n=0,nm_cell
                write(cm,'(i1)') n
                mix_label = 'pp'//trim(cm)
          
                call cg_iric_read_functionalwithname(fid,'mixfile_pp_d', mix_label, ytmp, ier)
          
                do k=0,nk
                   pdist_d_100(k,n) = ytmp(k+1)
                end do
                    
             end do
       
             DEALLOCATE(xtmp, STAT = ier)
             DEALLOCATE(ytmp, STAT = ier)
             
          end if
          
       else
       
          CALL CG_IRIC_READ_FUNCTIONALSIZE(fid,'mixfile_fr',tmpint,ier)
          allocate(xtmp(tmpint),ytmp(tmpint))
!         CALL CG_IRIC_READ_FUNCTIONAL(fid,'mixfile_fr',xtmp,ytmp,ier)

          IF(ier == 0) THEN
             nk = tmpint
             mm = nk
             call alloc_var_mix(im, jm, mm, nm, nm_cell)
             call initial_mix
          ENDIF

          call cg_iric_read_functionalwithname(fid,'mixfile_fr', 'diameter_k', xtmp, ier)
       
          do k=1,nk
             ddist_mm(k) = xtmp(k)
          end do
       
          do n=0,nm_cell
             write(cm,'(i1)') n
             mix_label = 'fraction'//trim(cm)
          
             call cg_iric_read_functionalwithname(fid,'mixfile_fr', mix_label, ytmp, ier)
          
             do k=1,nk
                pdist_m_100(k,n) = ytmp(k)
             end do
                    
          end do
       
          DEALLOCATE(xtmp, STAT = ier)
          DEALLOCATE(ytmp, STAT = ier)

          if( j_mix_dis_dep==1 ) then
             
             CALL CG_IRIC_READ_FUNCTIONALSIZE(fid,'mixfile_fr_d',tmpint,ier)
             allocate(xtmp(tmpint),ytmp(tmpint))

             if( tmpint/=nk ) then
                write(*,*) "The sediment size class in deposited layer is different from one in the mixed layer."
                write(*,*) "The sediment size class (number of class and each diameter) must be same in both layers."
                stop
             end if
       
             do n=0,nm_cell
                write(cm,'(i1)') n
                mix_label = 'fraction'//trim(cm)
          
                call cg_iric_read_functionalwithname(fid,'mixfile_fr_d', mix_label, ytmp, ier)
          
                do k=0,nk
                   pdist_d_100(k,n) = ytmp(k)
                end do
                    
             end do
       
             DEALLOCATE(xtmp, STAT = ier)
             DEALLOCATE(ytmp, STAT = ier)
             
          end if
          
       end if
          !
    else
    	nk = 1
    end if
    !
    if( j_mix == 1) then
       call mixini(snu00,dm0)
       call alloc_mix_temp_variables(nk)
       sn_g    = dm0**(1.d0/6.d0) / 6.8d0 / dsqrt(g)
       
       do j=1,ny
          do i=1,nx
             flg_mix(i,j) = mix_cell(i,j)
          end do
       end do
       
    end if

    allocate( cc_m(0:im,0:jm,nk) )

    !
    ! ----- set bed friction parameter -----
    !
    do j = 0, ny              !ïsóvÇæÇ™îOÇÃÇΩÇﬂ
       do i = 0, nx
          snmm( i,j) = sn_g
       end do
    end do
    
    do j=1,ny
       do i=1,nx
          snmm(i,j)=roughness4(i,j)
          if(snmm(i,j)<=0.d0) then
             write(*,'(a30,i5,a1,i5,a4,f10.3)') &
                  'Manning roughness coefficient(',i,',',j,') is',snmm(i,j)
             write(*,*) 'This coefficient should be larger than 0'
             stop
          end if
       end do
    end do
    !
    do i = 0, nx
       do j = 1, ny
          if(i > 0.and.i < nx) then
             sn_up(i,j) = ( snmm(i,j) + snmm(i+1,j) ) * 0.5
          else if(i == 0) then
             sn_up(i,j) = snmm(i+1,j)
          else
             sn_up(i,j) = snmm(i,j)
          end if
       end do
    end do

    do i = 1, nx
       do j = 0, ny
          if( j > 0.and.j < ny ) then
             sn_vp(i,j) = ( snmm(i,j) + snmm(i,j+1) ) * 0.5
          else if(j == 0) then
             sn_vp(i,j) = snmm(i,j+1)
          else
             sn_vp(i,j) = snmm(i,j)
          end if
       end do
    end do
    
  ! ---- The rate of sediment transport to an equilibrium state ---- !
  
    do j=1,ny
    	do i=1,nx
    		if( i==1 ) then
    			c_se(i,j) = cse
    		else
    			c_se(i,j) = 1.d0
    		end if
    	end do
    end do
    
    if( j_conf>=2 ) then
       do i=i_t1+1,i_t2
          c_se(i,j_t2+js2) = cse
       end do
    end if

  ! ------------------------------------------

    cw      =  0.00d0
    c_mu0   =  0.09d0
    sigma = 1.0d0
    sigma_k = 1.0d0
    sigma_e = 1.3d0
    c_1e    = 1.44d0
    c_2e    = 1.92d0
    kend = int( etime / dt + 0.5d0 )
    kmod = int( tuk   / dt + 0.5d0 )
  !-------------------------------------------

    if( ti_smg > 0.d0 ) then
       ktismg = int( ti_smg / dt + 0.5d0 )
    else
       ktismg = - 100
    end if
    !
    if(ti_fill > 0.d0) then
       ktifill = int( ti_fill / dt + 0.5d0 )
    else
       ktifill = - 100
    end if
    !
    if(j_conf.eq.0) then
       call avgeo( calculated_slope, bheight )
       calculated_slope_t = calculated_slope
    else
       call avgeo_t( calculated_slope, calculated_slope_t, bheight )
    end if
    !

	! ----- calculate the elevation of vegetation ------ !

   do j=1,ny
   	do i=1,nx
   		if( cd_veg(i,j)<=0.d0 ) then
   			vege_el(i,j) = eta(i,j)-99999.d0
   		else
   			if( j_vege==0 ) then
   				vege_el(i,j) = eta(i,j)+99999.d0
   			else
   				vege_el(i,j) = eta(i,j)+vegeh(i,j)
   			end if
   		end if
   	end do
   end do
   
    !  --- calculate the elevation of fixed bed at cell center --- !
    
    do j=1,ny
    	do i=1,nx
    		eta_zb(i,j) = ( zb(i-1,j-1)+zb(i,j-1)+zb(i-1,j)+zb(i,j) )*0.25d0
    		if( ij_ero(i,j)==1 ) eta_zb(i,j) = eta(i,j)
    	end do
    end do

	call phical

    if( j_mix==1 ) then
       call ini_layer(snu00)
       call cell2grid(dm_m,dmxx)
       call dmcal
    end if

    !
    call hsxxcal(eta0, z0, hs, hsxx)
    !
    
    if( j_wl == 0.and.h_down < -10. ) then
       write(*,*) 'Downstream Water Surface Value is Wrong!!!'            !j090219e
       stop
    end if

    if( j_wl /= 0 ) h_down = - 999.
  !
  !    slope ìôó¨åvéZÇÇ∑ÇÈÇΩÇﬂÇÃå˘îz
  !
    if(j_slope == 1.or.calculated_slope <= 0.) then
       slope = bh_slope
       slope_t = bh_slope		!h101019 conf
    else
       slope = calculated_slope
       slope_t=calculated_slope_t	!h101019 conf
    end if

  !
  !    slope_up slope for the uniform flow calculation of the upstream end
  !

    if(j_upv_slope.eq.0) then
       slope_up=calculated_slope
       slope_up_t=calculated_slope_t	!h101019 conf
    else
       slope_up=upv_slope
       slope_up_t=upv_slope_t		!h101019 conf
    end if

    !
    call gcoefs(0)
    !
    ! ------------------------------------------
    if( qp < 1e-6 ) then
       h0     = 0.d0
       hs_dse = h_dse(0) - eave(nx)
       h0     = max( hs_dse, h0 )
    else
       h0 = ( snmm(nx,nym) * qp / ( width * dsqrt(slope) ) )**(3.d0/5.d0)
    end if
    
    u0   = 1.d0 / snmm(nx,nym) * h0**(2.d0/3.d0) * dsqrt(slope)
    us0  = dsqrt( g * h0 * slope )
    fr0  = u0 / dsqrt( g * h0 )
    phi0 = u0 / us0
    ts0  = h0 * slope / ( spec *diam )
    c_f  = us0**2 / u0**2
    !
    hmin    = h0   / 100.d0
!    errmax  = hmin * 0.00000000001d0
!	errmax = 1e-7
	 errmax = hmin*0.01d0
    hmin2   = hmin * 2.d0

    call usc( diam, usci, spec, snu00, g )
    tsc     = usci**2 / ( spec * g * diam )
    theta_b = datan(slope)
    tan_tb  = dtan(theta_b)
    cos_tb  = dcos(theta_b) 
    mu_s = 0.7d0	!0.84d0
    mu_k = 0.7d0	!0.56d0
    gamma = dsqrt( tsc / (mu_s*mu_k) )
    gamma_m = dsqrt( 1.d0 / (mu_s*mu_k) )
!    gamma   = dsqrt( tsc * cos_tb / 0.7d0 )
!    gamma_m = dsqrt( cos_tb / 0.7d0 )
    rsgd    = dsqrt( spec * g * diam )
    pi_bed = 0.85d0+1.d0/mu_s
    !
    if(j_snu == 0) then
       snu_0 = snu00
    else
       snu_0 = 0.4d0 / 6.d0 * us0 * h0*a_snu + b_snu
    end if
    c_k0 = phi0
    c_e0 = 3.6d0*c_2e / c_f**(3.d0/4.d0) * dsqrt(c_mu0)
    ye00 = 0.d0
    yk00 = 0.d0
    dtanmax = 0.0001d0

    call wfcal( spec, diam, snu00, wf, g )
    call ypcal_ini( us0, h0, snu00, rho )
    if( j_qbqs == 3 ) call ecoefs( phi0, h0, us0, wf, theta_cx )

  ! ------ Initial Condition -----
    !
    !   Cal. of time series of upstream water surface elevation 
    !   by uniform flow calculation.
    !c	!h101019 conf  &  initl <-> hqtcal
    
    call hqtcal( nq, slope, slope_up, slope_up_t, hplus, j_wl, h_down, sn_g )
    !
    hnx = h_dse(0)
    
    call initl( qp, qp_t, hnx, us0, snu_0, ye00, yk00, h0 &
         ,i_flow, slope, slope_t, h_slope, h_slope_t, x_bk &
         , h_slope_1, h_slope_2, h_slope_12t )	!h101019 conf
    
    call bound_u(yu )
    call bound_v(yv )
    call bound_u(yun)
    call bound_v(yvn)
    call bound_h(h ,hs,eta)
    call bound_h(hn,hs,eta)

    time     = 0.d0
    icount   = 0
    iofrg    = 0
    ndeposit = 0

    !
    ! ----- Read tempfile for hot start ----
    !
    if(i_re_flag_i == 1) then
       !
       open(501,file=tmp_file_i,status='old',iostat = ierr_tmp,form='unformatted')
       if(ierr_tmp /= 0) then
          write(6,*) 'Input file error!'
          write(6,*) 'Temporary file for Hot Start does not exist'
          pause
          stop
       end if
       !
       read(501) time,icount,dt2
       !
       time=(icount-1)*dt2
       icount=time/dt
       !
       read(501) nx2, ny2
       if(nx /= nx2.or.ny /= ny2) then
          write(6,*) 'Number of grid is different between grid file and temporary file!'
          pause
          stop
       end if
       !
       read(501) ((x(i,j),i=0,nx2),j=0,ny2)
       read(501) ((y(i,j),i=0,nx2),j=0,ny2)
       read(501) ((eta_t(i,j),i=0,nx2),j=0,ny2)
       read(501) ((hs(i,j),i=1,nx2),j=1,ny2)
       read(501) ((eta(i,j),i=1,nx2),j=1,ny2)
       read(501) ((h(i,j),i=1,nx2),j=1,ny2)
       read(501) ((ycn(i,j),i=1,nx2),j=1,ny2)
       read(501) ((yun(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((yvn(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((gux(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((guy(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((gvx(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((gvy(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((snu(i,j),i=0,nx2),j=0,ny2)
       read(501) ((snu_x(i,j),i=0,nx2),j=0,ny2)
       read(501) ((ykn(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((yepn(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((an(i,j),i=0,nx2+1),j=0,ny2+1)
       read(501) ((vort(i,j),i=0,nx2+1),j=0,ny2+1)
       if(j_mix == 1) then
          read(501) nk2
          
          if( nk2/=nk ) write(*,*) "The number of grain size class is different between grid file and temporary file!"
          
          read(501) (((yck(i,j,k),i=0,nx2+1),j=0,ny2+1),k=1,nk2)
          read(501) ((e_t(i,j),i=1,nx2),j=1,ny2)
          read(501) (((p_m(i,j,k),i=1,nx2),j=1,ny2),k=1,nk2)
          read(501) (((p_t(i,j,k),i=1,nx2),j=1,ny2),k=1,nk2)
          read(501) ((nb(i,j),i=1,nx2),j=1,ny2)
          do i=1,nx2
             do j=1,ny2
                do n=1,nb(i,j)
                   do k=1,nk2
                      read(501) p_d(i,j,nb(i,j),k)
                   end do
                end do
             end do
          end do
       end if
       !
       do j=1,ny2
          do i=1,nx2
             hn(i,j) = h(i,j)
             yc(i,j) = ycn(i,j)
          end do
       end do
       !
       do j=0,ny2+1
          do i=0,nx2+1
             yu(i,j) = yun(i,j)
             yv(i,j) = yvn(i,j)
             yk(i,j) = ykn(i,j)
             yep(i,j)= yepn(i,j)
          end do
       end do
       !
       close(501)
       !
       call gcoefs(1)
       !
       is = -1
       do ii=0,n_rest-1
          if(opt_tmp(ii) < time) is=ii
       end do
       !
       i_tmp_count = is+1
       !
    end if
  !
  !cccccccccccccccccccccccccccccccccccccccccccccccccccc
  !
  !     Start Point of the Main Computational Loop
  !
  !ccccccccccccccccccccccccccccccccccccccccccccccccccccc
  !

! ------------- Time loop -------------

!$	call omp_set_num_threads(n_parallel)

!$omp parallel

  do					!  Time loop
!2000 continue

!$omp single
    
    !-------------------------------------------
    if( time <= 0.d0 ) then
        h_input   = h_ups( 0)
        h_input_t = h_ups_t( 0)		!h101019 conf
        q_input   = q_ups( 0)
        q_input_t = q_ups_t( 0)		!h101019 conf
     else if( time > t_hyd(nq) ) then
        h_input   = h_ups(nq)
        h_input_t = h_ups_t(nq)		!h101019 conf
        q_input   = q_ups(nq)
        q_input_t = q_ups_t(nq)		!h101019 conf
     else
        do n = 1, nq
           if(time >= t_hyd(n-1).and.time <= t_hyd(n)) then
              sst = ( time - t_hyd(n-1) ) / ( t_hyd(n) - t_hyd(n-1) )
              h_input   = h_ups(n-1) + (h_ups(n)-h_ups(n-1)) * sst
              h_input_t = h_ups_t(n-1) + (h_ups_t(n)-h_ups_t(n-1)) * sst	!h101019
              q_input   = q_ups(n-1) + (q_ups(n)-q_ups(n-1)) * sst
              q_input_t = q_ups_t(n-1) + (q_ups_t(n)-q_ups_t(n-1)) * sst	!h101019
           end if
        end do
     end if

     qp = q_input
     !-------------------------------------------
     if( h_down < -100.d0 ) then
        if( time <= 0.d0 ) then
           hnx = h_dse( 0)
        elseif( time > t_hyd(nq) ) then
           hnx = h_dse(nq)
        else
           do n = 1, nq
              if(time >= t_hyd(n-1).and.time <= t_hyd(n)) then
                 sst = ( time - t_hyd(n-1) ) / ( t_hyd(n) - t_hyd(n-1) )
                 hnx = h_dse(n-1) + ( h_dse(n) - h_dse(n-1) ) * sst
              end if
           end do
        end if
     else
        hnx = h_down
     end if
     !
     !-------------------------------------------
     if( jrep == 0 ) then
        if( j_qbup==1 ) then
           call upstream_h( q_input, q_input_t, slope, slope_up, slope_up_t, sn_g, h_input, h_input_t )
        end if
        
        call upstream( h_input, h_input_t, q_input, q_input_t, slope_up, slope_up_t, j_upv )
        call downstream(j_wl, hnx)
     end if

      if( j_mix==1 ) then
         call dmtscm(snu00)
      end if

!$omp end single

!      if ( icount == 1.or.mod(icount-1,kmod) == 0 ) then		!h time=0Ç‡èoóÕ
      if ( icount == 0.or.mod(icount,kmod) == 0 ) then		!h time=0Ç‡èoóÕ
         if( iofrg == 0 ) then
            iofrg = 1
            if( i_re_flag_i == 0 ) then
               call hsxxcal( eta0, z, hs, hsxx )
            else
               call hsxxcal( eta , z, hs, hsxx )
            end if
         else
            call hsxxcal( eta , z, hs, hsxx )
         end if

         call cell2grid( eta_zb, zb_g )

         if( j_mix==1 ) then
        	   call cell2grid(dm_m,dmxx)
         end if
         !
         if( j_mix==0 ) then
!$omp do private(i,j)
        	   do j=0,ny
        		   do i=0,nx
        			   dmn(i,j) = diam*1000.d0
        		   end do
        	   end do
         else
!$omp do private(i,j)
        	   do j=0,ny
        		   do i=0,nx
        			   dmn(i,j) = dmxx(i,j)*1000.d0
        		   end do
        	   end do
         end if
        
!$omp do private(i,j)
         do j=1,ny
        	   do i=1,nx
        		   if( hs(i,j)<=hmin .or. ijo_in(i,j)==1 ) then
        			   fr_c(i,j) = 0.d0
        		   else
        			   fr_c(i,j) = vti(i,j)/dsqrt(g*hs(i,j))
        		   end if
        	   end do
         end do
        
         call cell2grid( fr_c, fr_g )
         call cell2grid( tausta, ts_g )
			call cell2grid( usta, us_g )
         !
         call cell2grid( ycn, c_g )
         call uxxyycal( yu, yv, uxx, uyy )
         call voltexcal( yu, yv, voltex )

		   if( j_qb_vec==0 ) then
            call uxxyycal( qb_xi, qb_et, qbxx, qbyy )
         else
!$omp single
            qbxx( 0, 0) = qbxc( 1, 1)
            qbyy( 0, 0) = qbyc( 1, 1)
            qbxx( 0,ny) = qbxc( 1,ny)
            qbyy( 0,ny) = qbyc( 1,ny)
            qbxx(nx, 0) = qbxc(nx, 1)
            qbyy(nx, 0) = qbyc(nx, 1)
            qbxx(nx,ny) = qbxc(nx,ny)
            qbyy(nx,ny) = qbyc(nx,ny)
!$omp end single
             
!$omp do private(j)
            do j=1,ny-1
               qbxx( 0,j) = ( qbxc( 1,j)+qbxc( 1,j+1) )*0.5d0
               qbyy( 0,j) = ( qbyc( 1,j)+qbyc( 1,j+1) )*0.5d0
               qbxx(nx,j) = ( qbxc(nx,j)+qbxc(nx,j+1) )*0.5d0
               qbyy(nx,j) = ( qbyc(nx,j)+qbyc(nx,j+1) )*0.5d0
            end do
           
!$omp do private(i)
            do i=1,nx-1
               qbxx(i, 0) = ( qbxc(i, 1)+qbxc(i+1, 1) )*0.5d0
               qbyy(i, 0) = ( qbyc(i, 1)+qbyc(i+1, 1) )*0.5d0
               qbxx(i,ny) = ( qbxc(i,ny)+qbxc(i+1,ny) )*0.5d0
               qbyy(i,ny) = ( qbyc(i,ny)+qbyc(i+1,ny) )*0.5d0
            end do
           
!$omp do private(i,j)
            do j=1,ny-1
               do i=1,nx-1
                  qbxx(i,j) = ( qbxc(i,j)+qbxc(i+1,j)+qbxc(i,j+1)+qbxc(i+1,j+1) )*0.25d0
                  qbyy(i,j) = ( qbyc(i,j)+qbyc(i+1,j)+qbyc(i,j+1)+qbyc(i+1,j+1) )*0.25d0
               end do
            end do
           
         end if
        
         call cross_section_variables
        
         if( j_mix==1 ) then
			   call center2grid_4(yck, cc_m, nk)
		   end if
		
		   call cell2grid( phi, phi_g )

!$omp barrier

!$omp single

         if( time>=t_out_start ) then
        
        	   qptemp = qp
            call cg_iric_write_sol_start(fid,ier)   
        	   CALL Write_CGNS(fid,time,qptemp,im,jm		&
            		,x,y,uxx,uyy,hsxx,z,z0,zb_g,voltex,c_g,dmn,phi_g,fr_g		&
              		, rho, us_g, ts_g,z_ave,z_min,h_ave,qbxx,qbyy,cc_m,nk,j_mix)
            call cg_iric_write_sol_end(fid,ier)
            
         end if
        
         !
         ! ------ CRT Output ------------------------
        
         if( time < t_out_start ) then
            if(j_conf.eq.0) then		!h101019 conf
               write(*,'(f10.3,2f10.4,i4)')    time,q_input,hnx,lcount
            else
               write(*,'(f10.3,3f10.4,i4)')    time,q_input,q_input_t,hnx,lcount
            end if
         else
            if(j_conf.eq.0) then		!h101019 conf
               write(*,'(f10.3,2f10.4,i4,a4)') time,q_input,hnx,lcount,'out'
            else
               write(*,'(f10.3,3f10.4,i4,a4)')  &
                   time,q_input,q_input_t,hnx,lcount,'out'
            end if
            !
         end if
!$omp end single

      end if
     !
     !------- output temporary file for hot start -----------
     !
!$omp single

        ! ÉÜÅ[ÉUÇ™GUIè„Ç≈ "STOP" É{É^ÉìÇâüÇµÇƒé¿çsÇÉLÉÉÉìÉZÉãÇµÇΩÇ©ämîF
     call iric_check_cancel(ier)
     if(ier == 1) then
        write(*,*) "Solver is stopped because the STOP button was clicked."
        stop
     end if

! iRIC GUIÇ≈çƒì«Ç›çûÇ›É{É^ÉìÇ™âüÇ≥ÇÍÇΩÇ©É`ÉFÉbÉN
     call cg_iric_check_update(fid, ier)

     if(i_re_flag_o == 1 .and. time > opt_tmp(i_tmp_count)) then
        !
        tmp_file_o(i_tmp_count)=trim(tmp_pass)//tmp_file_o(i_tmp_count)  !i110419
        !       write(*,*) 'pastuki',tmp_file_o(i_tmp_count)
        open(502,file=tmp_file_o(i_tmp_count) &
             ,status='unknown',form='unformatted')
        !
        write(502) time,icount,dt
        write(502) nx,ny
        !
        write(502) ((x(i,j),i=0,nx),j=0,ny)
        write(502) ((y(i,j),i=0,nx),j=0,ny)
        write(502) ((eta_t(i,j),i=0,nx),j=0,ny)
        write(502) ((hs(i,j),i=1,nx),j=1,ny)
        write(502) ((eta(i,j),i=1,nx),j=1,ny)
        write(502) ((h(i,j),i=1,nx),j=1,ny)
        write(502) ((ycn(i,j),i=1,nx),j=1,ny)
        write(502) ((yun(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((yvn(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((gux(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((guy(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((gvx(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((gvy(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((snu(i,j),i=0,nx),j=0,ny)
        write(502) ((snu_x(i,j),i=0,nx),j=0,ny)
        write(502) ((ykn(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((yepn(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((an(i,j),i=0,nx+1),j=0,ny+1)
        write(502) ((vort(i,j),i=0,nx+1),j=0,ny+1)
        if(j_mix == 1) then
           write(502) nk
           write(502) (((yck(i,j,k),i=0,nx+1),j=0,ny+1),k=1,nk)
           write(502) ((e_t(i,j),i=1,nx),j=1,ny)
           write(502) (((p_m(i,j,k),i=1,nx),j=1,ny),k=1,nk)
           write(502) (((p_t(i,j,k),i=1,nx),j=1,ny),k=1,nk)
           write(502) ((nb(i,j),i=1,nx),j=1,ny)
           do i=1,nx
              do j=1,ny
                 do n=1,nb(i,j)
                    do k=1,nk
                       write(502) p_d(i,j,nb(i,j),k)
                    end do
                 end do
              end do
           end do
        end if
        !
        close(502)
        !
        i_tmp_count = i_tmp_count + 1
        !
        if(i_tmp_count > n_rest) i_re_flag_o = 0
        !
     end if

!$omp end single
   !
   !-------------------------------------------
     call vegetation_height
     call hcal( errmax, err, lcount, alh, qc_ave, hs_ave )
     if( jrep == 1 ) call hcal_v(     qp, qc_ave, hs_ave )
     call bound_h( hn, hs, eta )
     call bound_u( yun )
     call bound_v( yvn )
   ! -------------------------------------------
     call diffusion( cw )
     call bound_u( yun )
     call newgrd_u(yun, yu, gux, guy, ijobst )
     call bound_v( yvn )
     call newgrd_v(yvn, yv, gvx, gvy, ijobst )
   !------------------------------------------------
     if( j_cip == 1 ) then
        call upwind2d_u( yun, gux, guy )
     else
        call dcip2d_u( yun, gux, guy )
     end if
     call dryck_u( yun, hs, gux, guy )
     call bound_u( yun )
     if(jrep == 1) then
        call gbound( gux )
        call gbound( guy )
     end if
   !-------------------------------------------
     if(j_cip == 1) then
        call upwind2d_v( yvn, gvx, gvy )
     else
        call dcip2d_v( yvn, gvx, gvy )
     end if
     call dryck_v( yvn, hs, gvx, gvy )
     call bound_v( yvn )
     if( jrep == 1 ) then
        call gbound( gvx )
        call gbound( gvy )
     end if
   !-------------------------------------------
!$omp single
     call ndr( hs, hn, eta, ndry )
!$omp end single
     call shift_u( yun, yu )
     call shift_v( yvn, yv )
   !--------------------------------------------
     call uvpcal( yun, yvn, up, vp, hs )
     call uxuycal( up, vp, ux, uy )

     if( j_mix==0 ) then
	    call taustacal_uni( snu00 )
	 else
	 	call taustacal_mix( snu00 )
	 end if
	 
	 call phical
	 
     !--------------------------------------------
     call ypcal( usta, h0, snu00 ,rho )
     call phkecal( c_k0, c_e0, c_mu0, c_2e )
     call bound_phke( strain, ph, pkv, pev )
     if(j_snu > 0) then
        call snucal( usta, hs, snu00, snu, snu_x )
        if(j_snu > 1) call snucal_ke(hs,yk,yep,c_mu0,snu00,snuk,snuk_x)
     end if
     if(j_snu == 2) then
!$omp do private(i,j)
		do j=1,ny
			do i=1,nx
				snu(i,j) = snuk(i,j)
				snu_x(i,j) = snuk_x(i,j)
			end do
		end do

        call source_k( yk, ykn, yep, hs )
        call source_e( yep, yepn, yk, hs, c_1e, c_2e )
        call wall_ke( ykn, yepn, c_mu0, usta )
        call diffusion_c( ykn, sigma_k )
        call diffusion_c( yepn, sigma_e )
        call bound_ke( ykn, yepn )
        call newgrd_c( ykn, yk, gkx, gky )
        call newgrd_c( yepn, ye, gex, gey )
        !      if(j_cip == 1) then
        call upwind2d_c( ykn, gkx, gky )
        call upwind2d_c( yepn, gex, gey )
        !      else
        !        call dcip2d_c(   ykn, gkx, gky )
        !        call dcip2d_c(   yepn, gex, gey )
        !      end if
        call dryck_c(  ykn, hs, gkx, gky )
        call dryck_c(  yepn, hs, gex, gey )
        call bound_ke( ykn, yepn )
        if( jrep == 1 ) then
           call gbound( gkx )
           call gbound( gky )
           call gbound( gex )
           call gbound( gey )
        end if
        call shift_ke( ykn, yk )
        call shift_ke( yepn, yep )
     end if
     !--------------------------------------------
     if(  j_qbqs >= 1) then
        if(j_qbqs >= 2) then
           if(j_mix == 0) then
              call qsucal( wf, rsgd )
              call cbcal(    ycn, ycb, hs, wf,  usta )

              if(j_qbqs == 3) call c_secondary( ycn, up, hs, sr, theta_cx )

              if( jrep==0 ) call upstream_c( ycn, ycb, wf, qsu, usta )

              call c_transport(wf,dsmt)

!              call diffusion_c( ycn, sigma )
              call bound_c( ycn )

           else
           		call qsucal_mix( qsuk, tsk, tsck, p_m, tsci0, wfk, ddk, usta, hs, vti, nk )
           		call cbcal_mix( yck, ycbk, wfk, hs, usta, nk )
           		if( jrep==0 ) call upstream_c_mix( yck, ycbk, wfk, qsuk, usta, nk )
           		call c_transport_mix( dsmt )
           		call bound_c_mix           		
           end if
        end if
        !-------------------------------------------
        if( j_qbs==1 ) then
        
           call srcal( ux, uy, up, sr, snst )
           
           if( j_sf==1 ) call vorticity_eq
           
           if( time > ster ) then
              if( j_mix == 0 ) then
                 call qbcal_w    ( ux,uy,hs,gamma,pi_bed,dsmt,tantc,j_bank 			&
                      				,i_erosion_start,i_erosion_end,bheight )
              else
                 call qbcal_w_mix( ux,uy,hs,gamma_m,dsmt,pi_bed,tantc 					&
                      				,j_bank,i_erosion_start,i_erosion_end,bheight )
              end if
              if(j_qbqs == 1) then
                 if(j_mix == 0) then
                    call etacal( qb_xi, qb_et, dsmt )
                 else
                    call etacal_mix( dsmt )
                 end if
              else if(j_qbqs == 2) then
                 if( j_mix==0 ) then
                 	call cbcal(    ycn, ycb, hs, wf, usta )
                 	call etacal_c( qb_xi, qb_et, dsmt, qsu, wf, ycb )
                 else
                 	call etacal_mix_c( dsmt )
                 end if
              end if

              call phical
!$omp single
              if( j_collaps==1 ) then
                 if( j_mix==0 ) then
                    call ebank( tantc, dtanmax )
                 else
                    call ebank_mix( tantc, dtanmax )
                 end if
              end if
              
              if(j_bank == 1) then
                 call pshift( r_tantc, qb_et, slambda, dermax, j_chunk &
                      ,i_erosion_start, i_erosion_end, j_smooth, i_smooth, iier )
                 if(j_fill >= 1.and.mod(icount-1,ktifill) == 0 ) then
                    call bkfill(j_fill,hdry,bheight,ndeposit,j_smooth,i_smooth)
                    write(*,*) time,ktifill,icount,'bkfill'
                 end if
                 if( j_smg >= 1 .and. mod(icount-1,ktismg) == 0 ) then
                    call schange( mtime, x, y, mave )
                    write(*,*) time, ktismg, icount, 'schange'
                 end if
              end if
!$omp end single
           end if
        end if
     end if
     !-------------------------------------------
     call hshift( hn, h )
     
!$omp do private(i,j)
     do j=1,ny
        do i=1,nx
           if( isnan(h(i,j)) ) then
              write(*,*) 'Calculation is failure!'
              stop
           end if
        end do
     end do
     !-------------------------------------------
!     if( icount-1 > kend ) goto 3000
     if(  icount > kend ) exit

!$omp barrier

!$omp single
    icount	= icount + 1
    time		= dble( icount ) * dt
!$omp end single

	end do
!     goto 2000
!3000 continue

!$omp end parallel

     call cg_iric_close(fid,ier)

END PROGRAM Shimizu


!--------------------------------------------------------------------------------
! output for cgns file
!--------------------------------------------------------------------------------  
subroutine write_cgns(fid,time,disch,im,jm,x,y,u,v,hs,z		&
						,z0,zb,vort,c,dmn,phi,fr &
						,rho, usta, ts,zave,zmin,have,qbx,qby,cc_m,nk,j_mix)
  use flag_op
  use iric
  IMPLICIT NONE
  REAL(8), INTENT(IN) :: time, disch, rho
  INTEGER, INTENT(IN) :: im, jm, nk, j_mix, fid
  real(8),dimension(0:im,0:jm),intent(in) :: u, v, hs, z, z0, zb, vort, qbx, qby
  real(8),dimension(0:im,0:jm),intent(in) :: x, y, dmn, c, fr, usta, ts, zmin, zave, have, phi
  real(8),dimension(0:im,0:jm,nk),intent(in) :: cc_m
  
  INTEGER :: NX, NY
  INTEGER :: BID, ZID, IER, iret
  INTEGER :: i, j, k
  REAL*8, ALLOCATABLE, DIMENSION(:,:) :: Vdata1, Udata1, Hdata1, Zbdata1, zfixdata, WSE, qbxdata1, qbydata1
  REAL*8, ALLOCATABLE, DIMENSION(:,:) :: xx, yy, dmn1, ssc
  REAL*8, ALLOCATABLE, DIMENSION(:,:) :: Dzbdata1, z01, vort1, ts0, ts1, fr1, phi1
  REAL*8, ALLOCATABLE, DIMENSION(:,:) :: zmin1, zave1, have1
  INTEGER, ALLOCATABLE, DIMENSION(:,:) :: IBC
  character(40) :: c_label, cm
  
  nx=im
  ny=jm
  
  CALL CG_IRIC_WRITE_SOL_TIME(fid,time, IER)
  CALL CG_IRIC_WRITE_SOL_BASEITERATIVE_REAL(fid,'Discharge(m3s-1)', disch, IER)

  ALLOCATE(xx(nx, ny), STAT=ier)
  ALLOCATE(yy(nx, ny), STAT=ier)
  ALLOCATE(Udata1(nx, ny), STAT=ier)
  ALLOCATE(Vdata1(nx, ny), STAT=ier)
  ALLOCATE(Hdata1(nx, ny), STAT=ier)
  ALLOCATE(Zbdata1(nx, ny), STAT=ier)
  ALLOCATE(zfixdata(nx, ny), STAT=ier)
  ALLOCATE(Dzbdata1(nx, ny), STAT=ier)
  ALLOCATE(IBC(nx, ny), STAT=ier)
  ALLOCATE(WSE(nx, ny), STAT=ier)
  ALLOCATE(z01(nx, ny), STAT=ier)
  ALLOCATE(vort1(nx, ny), STAT=ier)
  ALLOCATE(dmn1(nx, ny), STAT=ier)
  ALLOCATE(ssc(nx, ny), STAT=ier)
  ALLOCATE(fr1(nx, ny), STAT=ier)
  ALLOCATE(phi1(nx, ny), STAT=ier)
  ALLOCATE(ts1(nx, ny), STAT=ier)
  ALLOCATE(ts0(nx, ny), STAT=ier)
  ALLOCATE(zmin1(nx, ny), STAT=ier)
  ALLOCATE(zave1(nx, ny), STAT=ier)
  ALLOCATE(have1(nx, ny), STAT=ier)
  ALLOCATE(qbxdata1(nx, ny), STAT=ier)
  ALLOCATE(qbydata1(nx, ny), STAT=ier)

  DO j=1,NY
     DO i=1,NX
        IBC(i,j) = -1
        xx(i,j)		= x(i-1,j-1)
        yy(i,j)		= y(i-1,j-1)
        Zbdata1(i,j)	= z(i-1,j-1)
        WSE(i,j)		= z(i-1, j-1) + hs(i-1,j-1)
        Hdata1(i,j)	= hs(i-1, j-1)
        Udata1(i,j)	= u(i-1,j-1)
        Vdata1(i,j)	= v(i-1,j-1)
        zfixdata(i,j)= zb(i-1,j-1)
        vort1(i,j)	= vort(i-1, j-1)
        dmn1(i,j)		= dmn(i-1, j-1)
        z01(i,j)		= z(i-1,j-1) - z0(i-1,j-1)
        ssc(i,j)		= c(i-1,j-1)
        fr1(i,j)		= fr(i-1,j-1)
        phi1(i,j)		= phi(i-1,j-1)
        ts1(i,j)		= ts(i-1,j-1)
		  ts0(i,j)		= rho * usta(i-1,j-1)**2.
        zmin1(i,j)	= zmin(i-1,j-1)
        zave1(i,j)	= zave(i-1,j-1)
        have1(i,j)	= have(i-1,j-1)
        qbxdata1(i,j)= qbx(i-1,j-1)
        qbydata1(i,j)= qby(i-1,j-1)
     ENDDO
  ENDDO

  CALL cg_iRIC_Write_Sol_Grid2d_Coords(fid,xx,yy,IER)
  CALL cg_iRIC_Write_Sol_Node_Real(fid,"Velocity(ms-1)X",UData1,IER)
  CALL cg_iRIC_Write_Sol_Node_Real(fid,"Velocity(ms-1)Y",VData1,IER)
  CALL cg_iRIC_Write_Sol_Node_Real(fid,"Depth(m)",HData1,IER)
  CALL cg_iRIC_Write_Sol_Node_Real(fid,"Elevation(m)",Zbdata1,IER)
  CALL cg_iRIC_Write_Sol_Node_Real(fid,"WaterSurfaceElevation(m)",WSE,IER)
  CALL cg_iRIC_Write_Sol_Node_Real(fid,"ShearStress(Nm-2)",ts0,IER)

  if( jop_dz  ==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"ElevationChange(m)",z01,IER)
  if( jop_fb  ==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"FixedBedElevation(m)",zfixdata,IER)
  !		CALL cg_iRIC_Write_Sol_Node_Integer(fid,"IBC",IBC,IER)
  if( jop_vort==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"Vorticity(s-1)",vort1,IER)
  if( jop_md  ==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"MeanDiameter(mm)",dmn1,IER)
  if( jop_fr  ==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"FroudeNumber",fr1,IER)
!	  CALL cg_iRIC_Write_Sol_Node_Real(fid,"Phi",phi1,IER)
  if( jop_sh  ==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"ShieldsNumber",ts1,IER)
  if( jop_zmin==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"CrossSectionalMinBedElev(m)",zmin1,IER)
  if( jop_zave==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"CrossSectionalAveBedElev(m)",zave1,IER)
  if( jop_have==0 ) CALL cg_iRIC_Write_Sol_Node_Real(fid,"CrossSectionalAveWaterLevel(m)",have1,IER)
  if( jop_qb  ==0 ) then
  		CALL cg_iRIC_Write_Sol_Node_Real(fid,"BedloadFlux(m2s-1)X",qbxData1,IER)
  		CALL cg_iRIC_Write_Sol_Node_Real(fid,"BedloadFlux(m2s-1)Y",qbyData1,IER)
  end if

  if( jop_sc==0 ) then
	  if( j_mix==0 ) then
	  	   CALL cg_iRIC_Write_Sol_Node_Real(fid,"SuspendedSedimentConcentration",ssc,IER)
	  else
	!  	do k=1,nk
	!		write(cm,'(i1)') k
	!		c_label = 'SuspendedSedimentConcentration'//trim(cm)
					
			do j=1,ny
				do i=1,nx
					ssc(i,j) = 0.d0
				end do
			end do
				
			do j=1,ny
				do k=1,nk
					do i=1,nx
						ssc(i,j) = ssc(i,j)+cc_m(i-1,j-1,k)
					end do
				end do
			end do
					
	!		CALL cg_iRIC_Write_Sol_Node_Real(fid,c_label,ssc,IER)
	!	end do
		
		CALL cg_iRIC_Write_Sol_Node_Real(fid,"SuspendedSedimentConcentration",ssc,IER)
		
	  end if
  end if

end subroutine write_cgns
