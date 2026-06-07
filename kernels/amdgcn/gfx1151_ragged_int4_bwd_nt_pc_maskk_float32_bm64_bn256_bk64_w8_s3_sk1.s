	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v75, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s35, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_ashr_i32 s12, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s10, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s10, s12
	.loc	1 701 20                        ; ragged.py:701:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s6, s10
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s8, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s8
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s8, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s6
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s8, s4
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_i32 s5, s5, s9
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s11, s2, s4
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s7, s11
	s_add_i32 s9, s9, s4
	s_xor_b32 s13, s11, s10
	s_mul_hi_u32 s9, s7, s9
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_i32 s14, s9, s6
	s_ashr_i32 s13, s13, 31
	s_sub_i32 s7, s7, s14
	s_add_i32 s14, s9, 1
	s_sub_i32 s15, s7, s6
	s_cmp_ge_u32 s7, s6
	.loc	1 725 35                        ; ragged.py:725:35
	s_mul_i32 s23, s8, s34
	.loc	1 703 17                        ; ragged.py:703:17
	s_cselect_b32 s9, s14, s9
	s_cselect_b32 s7, s15, s7
	s_add_i32 s14, s9, 1
	s_cmp_ge_u32 s7, s6
	.loc	1 727 35                        ; ragged.py:727:35
	s_mul_i32 s33, s8, s35
	.loc	1 703 17                        ; ragged.py:703:17
	s_cselect_b32 s6, s14, s9
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s9, s8, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s14, s6, s13
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[6:7], s[8:9], 2
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s15, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s16, s15, s10
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s22, s15, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s9, s11, s16
	.loc	1 707 18                        ; ragged.py:707:18
	s_lshl_b32 s19, s9, 8
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 719 22                        ; ragged.py:719:22
	s_lshl_b32 s40, s3, 5
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s11, s[4:5], 0x0
	s_mov_b32 s4, 0
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 26 is_stmt 0              ; ragged.py:711:26
	s_lshr_b32 s6, s5, 31
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s41, s5, 1
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	s_cmp_lt_i32 s40, s41
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshlrev_b32_e32 v35, 1, v0
	.loc	1 754 21                        ; ragged.py:754:21
	s_add_i32 s9, s22, s23
	.loc	1 761 21                        ; ragged.py:761:21
	s_add_i32 s3, s19, s33
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s4, -1
                                        ; implicit-def: $sgpr9
                                        ; implicit-def: $sgpr3
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v72, 15, v0
	v_lshrrev_b32_e32 v74, 1, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v73, 1, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 707 18 is_stmt 1              ; ragged.py:707:18
	v_or_b32_e32 v1, s19, v74
	v_bfe_u32 v6, v0, 4, 1
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s3, s[0:1], 0x38
	.loc	1 735 33                        ; ragged.py:735:33
	s_and_b32 s0, s11, 0x80000001
	.loc	1 706 36                        ; ragged.py:706:36
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v8, 0x80, v1
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v1
	v_and_or_b32 v1, v75, 30, v6
	.loc	1 735 33                        ; ragged.py:735:33
	s_cmp_eq_u32 s0, 1
	.loc	1 720 19                        ; ragged.py:720:19
	s_mul_i32 s12, s12, s8
	v_and_b32_e32 v4, 24, v74
	.loc	1 735 33                        ; ragged.py:735:33
	s_cselect_b32 s42, -1, 0
	v_lshlrev_b32_e32 v76, 2, v1
	v_mov_b32_e32 v1, 0
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s8, s14, 6
	s_sub_i32 s9, s13, s12
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v7, s22, v2
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v2, s23, s8, v2
	s_sub_i32 s8, s9, s14
	.loc	1 714 18                        ; ragged.py:714:18
	v_and_b32_e32 v66, 24, v3
	v_xor_b32_e32 v3, v3, v4
	v_and_b32_e32 v6, 16, v0
	.loc	1 720 19                        ; ragged.py:720:19
	s_mul_i32 s10, s10, s8
	s_lshl_b32 s2, s2, 8
	s_lshl_b32 s8, s10, 8
	v_and_b32_e32 v5, 24, v75
	s_add_i32 s8, s8, s33
	v_cmp_eq_u32_e64 s11, 0, v6
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v101, 0, v3
	v_mov_b32_e32 v3, v1
	v_sub_nc_u32_e32 v6, s41, v66
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshlrev_b32_e32 v65, 4, v73
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v64, s8, s2, v74
	s_lshl_b32 s9, s13, 6
	v_mov_b32_e32 v38, v1
	v_subrev_nc_u32_e32 v63, s9, v2
	v_add_nc_u32_e32 v77, -8, v6
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v78, -7, v6
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v79, -6, v6
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v80, -5, v6
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v81, -4, v6
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v82, -3, v6
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v83, -2, v6
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v84, -1, v6
	v_mov_b32_e32 v6, v1
	v_lshl_or_b32 v5, v72, 5, v5
	v_sub_nc_u32_e32 v2, s41, v65
	v_add_nc_u32_e32 v69, 0x80, v64
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s34, v7
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s1, s35, v8
	v_xor_b32_e32 v4, 8, v5
	v_xor_b32_e32 v7, 16, v5
	v_xor_b32_e32 v8, 24, v5
	.loc	1 720 19                        ; ragged.py:720:19
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s3, v63, v[66:67]
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v85, -16, v2
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v86, -15, v2
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v87, -14, v2
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v88, -13, v2
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v89, -12, v2
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v90, -11, v2
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v91, -10, v2
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v92, -9, v2
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v93, -8, v2
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v94, -7, v2
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v95, -6, v2
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v96, -5, v2
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v97, -4, v2
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v98, -3, v2
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v99, -2, v2
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v100, -1, v2
	v_mov_b32_e32 v2, v1
	v_mad_u64_u32 v[68:69], null, s3, v69, v[65:66]
	v_mad_u64_u32 v[69:70], null, s3, v64, v[65:66]
	v_dual_mov_b32 v33, v1 :: v_dual_add_nc_u32 v102, 0, v5
	v_dual_mov_b32 v34, v1 :: v_dual_add_nc_u32 v103, 0, v4
	v_dual_mov_b32 v35, v1 :: v_dual_add_nc_u32 v104, 0, v7
	v_dual_mov_b32 v36, v1 :: v_dual_add_nc_u32 v105, 0, v8
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_xor_b32_e32 v106, 4, v76
	s_mov_b32 s31, 0x31027000
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s37, s7, 0xffff
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s36, s6
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v70, s40, v66
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s4, s40, v83
	v_cmp_eq_u32_e64 s9, s40, v78
	v_cmp_eq_u32_e64 s5, s40, v82
	v_add_nc_u32_e32 v109, s40, v67
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v71, 4, v70
	v_add_nc_u32_e32 v113, 5, v70
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s6, s40, v81
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v114, 6, v70
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s16, s42, s9
	s_and_b32 s9, s42, s4
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s4, s41, v71
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s7, s40, v80
	.loc	1 734 30                        ; ragged.py:734:30
	v_add_nc_u32_e32 v115, 7, v70
	v_add_nc_u32_e32 v116, 4, v109
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s12, s42, s5
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s5, s41, v113
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s8, s40, v79
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v120, 3, v70
	v_add_nc_u32_e32 v117, 5, v109
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s13, s42, s6
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s6, s41, v114
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s4, s0, s4
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s14, s42, s7
	v_add_nc_u32_e32 v118, 6, v109
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s7, s41, v115
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v121, 2, v70
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s2, s41, v70
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v126, 1, v70
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v70, 0x80000000, v116, s4
	.loc	1 736 66 is_stmt 0              ; ragged.py:736:66
	s_and_b32 s4, s0, s5
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s15, s42, s8
	.loc	1 736 34                        ; ragged.py:736:34
	v_add_nc_u32_e32 v119, 7, v109
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s8, s41, v120
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v71, 0x80000000, v117, s4
	.loc	1 736 66 is_stmt 0              ; ragged.py:736:66
	s_and_b32 s4, s0, s6
	v_add_nc_u32_e32 v122, 3, v109
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v116, 0x80000000, v118, s4
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s4, s0, s7
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s10, s40, v77
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v117, 0x80000000, v119, s4
	.loc	1 736 66 is_stmt 0              ; ragged.py:736:66
	s_and_b32 s4, s0, s8
	v_add_nc_u32_e32 v123, 2, v109
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v118, 0x80000000, v122, s4
	s_clause 0x4
	buffer_load_u8 v119, v70, s[28:31], 0 offen
	buffer_load_u8 v71, v71, s[28:31], 0 offen
	buffer_load_u8 v117, v117, s[28:31], 0 offen
	buffer_load_u8 v116, v116, s[28:31], 0 offen
	buffer_load_u8 v118, v118, s[28:31], 0 offen
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s17, s42, s10
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s4, s41, v121
	v_cmp_gt_i32_e64 s5, s41, v126
	v_add_nc_u32_e32 v127, 1, v109
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s2, s0, s2
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s3, s40, v84
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s4, s0, s4
	.loc	1 736 34 is_stmt 0              ; ragged.py:736:34
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	.loc	1 721 22 is_stmt 1              ; ragged.py:721:22
	v_add_nc_u32_e32 v107, s40, v65
	v_add_nc_u32_e32 v108, s40, v69
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s10, s42, s3
	v_add_nc_u32_e32 v110, s40, v68
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_u8 v109, v109, s[28:31], 0 offen
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v111, 1, v107
	v_add_nc_u32_e32 v112, 2, v107
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s3, s41, v107
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v124, 3, v107
	v_add_nc_u32_e32 v125, 4, v107
	v_add_nc_u32_e32 v128, 5, v107
	v_add_nc_u32_e32 v129, 6, v107
	v_add_nc_u32_e32 v130, 7, v107
	v_add_nc_u32_e32 v120, 11, v107
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s2, s41, v111
	v_add_nc_u32_e32 v131, 1, v108
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s18, vcc_lo, s3
	v_add_nc_u32_e32 v132, 2, v108
	s_and_b32 s3, s1, s3
	v_add_nc_u32_e32 v133, 3, v108
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s6, s41, v125
	v_add_nc_u32_e32 v134, 4, v108
	v_add_nc_u32_e32 v135, 5, v108
	v_add_nc_u32_e32 v136, 6, v108
	v_add_nc_u32_e32 v137, 7, v108
	v_add_nc_u32_e32 v138, 1, v110
	v_add_nc_u32_e32 v139, 2, v110
	v_add_nc_u32_e32 v140, 3, v110
	v_add_nc_u32_e32 v141, 4, v110
	v_add_nc_u32_e32 v113, 5, v110
	v_add_nc_u32_e32 v114, 6, v110
	v_add_nc_u32_e32 v115, 7, v110
	v_add_nc_u32_e32 v126, 9, v108
	v_add_nc_u32_e32 v111, 10, v108
	v_add_nc_u32_e32 v125, 13, v108
	v_cmp_gt_i32_e64 s7, s41, v128
	v_cmp_gt_i32_e64 s8, s41, v129
	v_add_nc_u32_e32 v128, 15, v108
	v_add_nc_u32_e32 v129, 8, v110
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(5)
	v_and_b16 v70.l, v119.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v70.h, v71.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v71.h, v116.l, 15
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v70.l, v119.l, v70.l, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v70.h, v71.l, v70.h, s15
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v71.l, v117.l, 15
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v71.h, v116.l, v71.h, s16
	.loc	1 721 22 is_stmt 1              ; ragged.py:721:22
	v_add_nc_u32_e32 v116, 8, v107
	v_add_nc_u32_e32 v119, 10, v107
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v70.h, 8, v70.h
	v_cndmask_b16 v71.l, v117.l, v71.l, s17
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v117, 9, v107
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s14, s41, v120
	v_add_nc_u32_e32 v120, 12, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v71.l, 8, v71.l
	v_or_b16 v71.h, v71.h, v71.l
	v_or_b16 v71.l, v70.l, v70.h
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v70, 0x80000000, v123, s4
	.loc	1 736 66 is_stmt 0              ; ragged.py:736:66
	s_and_b32 s4, s0, s5
	.loc	1 721 22 is_stmt 1              ; ragged.py:721:22
	v_add_nc_u32_e32 v123, 15, v107
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v121, 0x80000000, v127, s4
	s_clause 0x1
	buffer_load_u8 v122, v70, s[28:31], 0 offen
	buffer_load_u8 v121, v121, s[28:31], 0 offen
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(3)
	v_and_b16 v70.l, v118.l, 15
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s4, s41, v112
	v_cmp_gt_i32_e64 s5, s41, v124
	v_add_nc_u32_e32 v112, 11, v108
	v_add_nc_u32_e32 v124, 12, v108
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v70.l, v118.l, v70.l, s13
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v118, 12, v107
	v_add_nc_u32_e32 v127, 14, v108
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s13, s41, v119
	v_add_nc_u32_e32 v119, 11, v110
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v70.l, 8, v70.l
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s15, s41, v118
	v_add_nc_u32_e32 v118, 13, v110
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(1)
	v_and_b16 v70.h, v122.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v70.h, v122.l, v70.h, s12
	.loc	1 721 22 is_stmt 1              ; ragged.py:721:22
	v_add_nc_u32_e32 v122, 13, v107
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s12, s41, v117
	v_add_nc_u32_e32 v117, 10, v110
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v70.h, v70.h, v70.l
	.loc	1 738 62 is_stmt 0              ; ragged.py:738:62
	v_and_b16 v70.l, v109.l, 15
	.loc	1 734 30 is_stmt 1              ; ragged.py:734:30
	v_cmp_gt_i32_e64 s16, s41, v122
	v_add_nc_u32_e32 v122, 14, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v70.l, v109.l, v70.l, s10
	.loc	1 738 62 is_stmt 0              ; ragged.py:738:62
	s_waitcnt vmcnt(0)
	v_and_b16 v109.l, v121.l, 15
	.loc	1 734 30 is_stmt 1              ; ragged.py:734:30
	v_cmp_gt_i32_e64 s10, s41, v116
	v_add_nc_u32_e32 v116, 9, v110
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v109.l, v121.l, v109.l, s9
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v121, 14, v107
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s9, s41, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v107.l, 8, v109.l
	v_add_nc_u32_e32 v109, 8, v108
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s17, s41, v121
	.loc	1 737 34                        ; ragged.py:737:34
	v_add_nc_u32_e32 v121, 15, v110
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v70.l, v70.l, v107.l
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v107, 0x80000000, v108, s18
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s18, vcc_lo, s2
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v108, 0x80000000, v110, s3
	v_cndmask_b32_e64 v110, 0x80000000, v131, s18
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s18, vcc_lo, s4
	.loc	1 734 30 is_stmt 1              ; ragged.py:734:30
	v_cmp_gt_i32_e64 s3, s41, v123
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v123, 0x80000000, v132, s18
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s18, vcc_lo, s5
	s_and_b32 s2, s1, s2
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v130, 0x80000000, v133, s18
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s18, vcc_lo, s6
	.loc	1 737 34                        ; ragged.py:737:34
	s_clause 0x1
	buffer_load_u8 v107, v107, s[36:39], 0 offen
	buffer_load_u8 v108, v108, s[36:39], 0 offen
	v_cndmask_b32_e64 v131, 0x80000000, v134, s18
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s18, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v132, 0x80000000, v135, s18
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s18, vcc_lo, s8
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v135, 0x80000000, v138, s2
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s2, s1, s4
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v133, 0x80000000, v136, s18
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s18, vcc_lo, s9
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v136, 0x80000000, v139, s2
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s2, s1, s5
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v134, 0x80000000, v137, s18
	v_cndmask_b32_e64 v137, 0x80000000, v140, s2
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s2, s1, s6
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s4, s40, v99
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v138, 0x80000000, v141, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s7
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s6, s40, v97
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s8
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s5, s40, v98
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s9
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s8, s40, v95
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, vcc_lo, s10
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s4, s42, s4
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, vcc_lo, s12
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s7, s40, v96
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, vcc_lo, s13
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s9, s40, v94
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, vcc_lo, s14
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s6, s42, s6
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, vcc_lo, s15
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s5, s42, s5
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, vcc_lo, s16
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s8, s42, s8
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v125, 0x80000000, v125, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, vcc_lo, s17
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s7, s42, s7
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, vcc_lo, s3
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s9, s42, s9
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s10
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s10, s40, v93
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s12
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s12, s40, v91
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s13
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s10, s42, s10
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s14
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s13, s40, v89
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s15
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s14, s40, v90
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s16
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s16, s40, v87
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s17
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s17, s40, v85
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	.loc	1 737 66 is_stmt 0              ; ragged.py:737:66
	s_and_b32 s2, s1, s3
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s3, s40, v100
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v121, 0x80000000, v121, s2
	s_clause 0x1d
	buffer_load_u8 v110, v110, s[36:39], 0 offen
	buffer_load_u8 v130, v130, s[36:39], 0 offen
	buffer_load_u8 v131, v131, s[36:39], 0 offen
	buffer_load_u8 v132, v132, s[36:39], 0 offen
	buffer_load_u8 v133, v133, s[36:39], 0 offen
	buffer_load_u8 v123, v123, s[36:39], 0 offen
	buffer_load_u8 v134, v134, s[36:39], 0 offen
	buffer_load_u8 v135, v135, s[36:39], 0 offen
	buffer_load_u8 v137, v137, s[36:39], 0 offen
	buffer_load_u8 v138, v138, s[36:39], 0 offen
	buffer_load_u8 v139, v113, s[36:39], 0 offen
	buffer_load_u8 v140, v114, s[36:39], 0 offen
	buffer_load_u8 v113, v136, s[36:39], 0 offen
	buffer_load_u8 v115, v115, s[36:39], 0 offen
	buffer_load_u8 v136, v109, s[36:39], 0 offen
	buffer_load_u8 v126, v126, s[36:39], 0 offen
	buffer_load_u8 v141, v112, s[36:39], 0 offen
	buffer_load_u8 v124, v124, s[36:39], 0 offen
	buffer_load_u8 v125, v125, s[36:39], 0 offen
	buffer_load_u8 v127, v127, s[36:39], 0 offen
	buffer_load_u8 v142, v111, s[36:39], 0 offen
	buffer_load_u8 v128, v128, s[36:39], 0 offen
	buffer_load_u8 v129, v129, s[36:39], 0 offen
	buffer_load_u8 v143, v116, s[36:39], 0 offen
	buffer_load_u8 v144, v119, s[36:39], 0 offen
	buffer_load_u8 v145, v120, s[36:39], 0 offen
	buffer_load_u8 v146, v118, s[36:39], 0 offen
	buffer_load_u8 v147, v121, s[36:39], 0 offen
	buffer_load_u8 v148, v122, s[36:39], 0 offen
	buffer_load_u8 v121, v117, s[36:39], 0 offen
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s2, s40, v92
	v_cmp_eq_u32_e64 s15, s40, v88
	.loc	1 735 32 is_stmt 0              ; ragged.py:735:32
	s_and_b32 s3, s42, s3
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s18, s40, v86
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s12, s42, s12
	s_and_b32 s13, s42, s13
	s_and_b32 s14, s42, s14
	s_and_b32 s16, s42, s16
	s_and_b32 s17, s42, s17
	s_and_b32 s2, s42, s2
	s_and_b32 s15, s42, s15
	s_and_b32 s18, s42, s18
	.loc	1 738 34 is_stmt 1              ; ragged.py:738:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v101, v[70:71]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 750 17                        ; ragged.py:750:17
	s_add_i32 s40, s40, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 720 19                        ; ragged.py:720:19
	s_cmp_lt_i32 s40, s41
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(31)
	v_and_b16 v107.h, v107.l, 15
	.loc	1 739 34 is_stmt 0              ; ragged.py:739:34
	v_cndmask_b16 v107.l, v107.l, v107.h, s3
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(30)
	v_and_b16 v107.h, v108.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v107.h, v108.l, v107.h, s3
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(29)
	v_and_b16 v108.l, v110.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v108.h, v130.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v109.h, v131.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v111.l, v133.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v108.l, v110.l, v108.l, s4
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v110.l, v132.l, 15
	s_waitcnt vmcnt(23)
	v_and_b16 v110.h, v134.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v111.h, v135.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v112.l, v137.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v113.h, v139.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v108.h, v130.l, v108.h, s6
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v112.h, v113.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v114.l, v115.l, 15
	v_and_b16 v109.l, v123.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v110.l, v132.l, v110.l, s8
	v_cndmask_b16 v110.h, v134.l, v110.h, s10
	v_cndmask_b16 v111.h, v135.l, v111.h, s4
	v_cndmask_b16 v112.l, v137.l, v112.l, s6
	v_cndmask_b16 v112.h, v113.l, v112.h, s5
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v113.l, v138.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v113.h, v139.l, v113.h, s8
	v_cndmask_b16 v114.l, v115.l, v114.l, s10
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v114.h, v140.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v109.l, v123.l, v109.l, s5
	v_cndmask_b16 v109.h, v131.l, v109.h, s7
	v_cndmask_b16 v111.l, v133.l, v111.l, s9
	v_cndmask_b16 v113.l, v138.l, v113.l, s7
	v_cndmask_b16 v114.h, v140.l, v114.h, s9
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(14)
	v_and_b16 v115.h, v126.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v116.l, v141.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v117.h, v125.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v118.l, v128.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v119.h, v143.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v120.l, v144.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v120.h, v121.l, 15
	v_and_b16 v121.h, v146.l, 15
	v_and_b16 v122.l, v147.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v108.h, 8, v108.h
	v_lshlrev_b16 v108.l, 8, v108.l
	v_lshlrev_b16 v110.h, 8, v110.h
	v_lshlrev_b16 v110.l, 8, v110.l
	v_lshlrev_b16 v112.l, 8, v112.l
	v_lshlrev_b16 v111.h, 8, v111.h
	v_lshlrev_b16 v114.l, 8, v114.l
	v_lshlrev_b16 v113.h, 8, v113.h
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v115.l, v136.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v115.h, v126.l, v115.h, s12
	v_cndmask_b16 v116.l, v141.l, v116.l, s13
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v116.h, v142.l, 15
	v_and_b16 v117.l, v124.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v117.h, v125.l, v117.h, s16
	v_cndmask_b16 v118.l, v128.l, v118.l, s17
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v118.h, v127.l, 15
	v_and_b16 v119.l, v129.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v119.h, v143.l, v119.h, s12
	v_cndmask_b16 v120.l, v144.l, v120.l, s13
	v_cndmask_b16 v120.h, v121.l, v120.h, s14
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v121.l, v145.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v121.h, v146.l, v121.h, s16
	v_cndmask_b16 v122.l, v147.l, v122.l, s17
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v122.h, v148.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v108.h, v109.l, v108.h
	v_or_b16 v108.l, v107.l, v108.l
	v_or_b16 v110.h, v111.l, v110.h
	v_or_b16 v110.l, v109.h, v110.l
	v_or_b16 v109.h, v112.h, v112.l
	v_or_b16 v109.l, v107.h, v111.h
	v_or_b16 v107.h, v114.h, v114.l
	v_or_b16 v107.l, v113.l, v113.h
	v_cndmask_b16 v115.l, v136.l, v115.l, s2
	v_cndmask_b16 v116.h, v142.l, v116.h, s14
	v_cndmask_b16 v117.l, v124.l, v117.l, s15
	v_cndmask_b16 v118.h, v127.l, v118.h, s18
	v_cndmask_b16 v119.l, v129.l, v119.l, s2
	v_cndmask_b16 v121.l, v145.l, v121.l, s15
	v_cndmask_b16 v122.h, v148.l, v122.h, s18
	v_lshlrev_b16 v116.l, 8, v116.l
	v_lshlrev_b16 v115.h, 8, v115.h
	v_lshlrev_b16 v118.l, 8, v118.l
	v_lshlrev_b16 v117.h, 8, v117.h
	v_lshlrev_b16 v120.l, 8, v120.l
	v_lshlrev_b16 v119.h, 8, v119.h
	v_lshlrev_b16 v122.l, 8, v122.l
	v_lshlrev_b16 v121.h, 8, v121.h
	ds_bpermute_b32 v125, v76, v108
	ds_bpermute_b32 v126, v106, v108
	ds_bpermute_b32 v127, v76, v110
	ds_bpermute_b32 v128, v106, v110
	ds_bpermute_b32 v129, v76, v109
	ds_bpermute_b32 v130, v106, v109
	ds_bpermute_b32 v131, v76, v107
	ds_bpermute_b32 v132, v106, v107
	v_or_b16 v116.h, v116.h, v116.l
	v_or_b16 v116.l, v115.l, v115.h
	v_or_b16 v115.h, v118.h, v118.l
	v_or_b16 v115.l, v117.l, v117.h
	v_or_b16 v117.h, v120.h, v120.l
	v_or_b16 v117.l, v119.l, v119.h
	v_or_b16 v118.h, v122.h, v122.l
	v_or_b16 v118.l, v121.l, v121.h
	.loc	1 738 34 is_stmt 1              ; ragged.py:738:34
	ds_load_2addr_stride64_b64 v[107:110], v102 offset1:1
	ds_load_2addr_stride64_b64 v[111:114], v102 offset0:2 offset1:3
	.loc	1 739 34                        ; ragged.py:739:34
	ds_bpermute_b32 v133, v76, v116
	ds_bpermute_b32 v134, v106, v116
	ds_bpermute_b32 v135, v76, v115
	ds_bpermute_b32 v136, v106, v115
	ds_bpermute_b32 v137, v76, v117
	ds_bpermute_b32 v138, v106, v117
	ds_bpermute_b32 v139, v76, v118
	ds_bpermute_b32 v140, v106, v118
	.loc	1 738 34                        ; ragged.py:738:34
	ds_load_2addr_stride64_b64 v[115:118], v103 offset1:1
	.loc	1 739 34                        ; ragged.py:739:34
	s_waitcnt lgkmcnt(17)
	v_cndmask_b32_e64 v70, v126, v125, s11
	s_waitcnt lgkmcnt(15)
	v_cndmask_b32_e64 v71, v128, v127, s11
	s_waitcnt lgkmcnt(13)
	v_cndmask_b32_e64 v123, v130, v129, s11
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v124, v132, v131, s11
	.loc	1 738 34                        ; ragged.py:738:34
	ds_load_2addr_stride64_b64 v[119:122], v104 offset1:1
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[107:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[123:124], v[107:108], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[109:110], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[123:124], v[109:110], v[25:32] neg_lo:[1,1,0]
	.loc	1 738 34                        ; ragged.py:738:34
	ds_load_2addr_stride64_b64 v[107:110], v103 offset0:2 offset1:3
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[111:112], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[113:114], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[123:124], v[111:112], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[123:124], v[113:114], v[57:64] neg_lo:[1,1,0]
	.loc	1 738 34                        ; ragged.py:738:34
	ds_load_2addr_stride64_b64 v[111:114], v104 offset0:2 offset1:3
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v71, v127, v128, s11
	v_cndmask_b32_e64 v127, v129, v130, s11
	v_cndmask_b32_e64 v128, v131, v132, s11
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v129, v134, v133, s11
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v130, v136, v135, s11
	v_cndmask_b32_e64 v131, v133, v134, s11
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v133, v138, v137, s11
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v134, v140, v139, s11
	v_cndmask_b32_e64 v70, v125, v126, s11
	.loc	1 738 34                        ; ragged.py:738:34
	ds_load_2addr_stride64_b64 v[123:126], v105 offset1:1
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[115:116], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[117:118], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[115:116], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[133:134], v[117:118], v[25:32] neg_lo:[1,1,0]
	.loc	1 738 34                        ; ragged.py:738:34
	ds_load_2addr_stride64_b64 v[115:118], v105 offset0:2 offset1:3
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[107:108], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[109:110], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[133:134], v[107:108], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[133:134], v[109:110], v[57:64] neg_lo:[1,1,0]
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v132, v135, v136, s11
	v_cndmask_b32_e64 v135, v137, v138, s11
	v_cndmask_b32_e64 v136, v139, v140, s11
	.loc	1 740 27                        ; ragged.py:740:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[119:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[119:120], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[121:122], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[121:122], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[111:112], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[113:114], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[111:112], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[127:128], v[113:114], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[131:132], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[123:124], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[131:132], v[125:126], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[125:126], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[131:132], v[115:116], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[135:136], v[115:116], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[131:132], v[117:118], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[135:136], v[117:118], v[57:64] neg_lo:[1,1,0]
	.loc	1 720 19                        ; ragged.py:720:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 751 19                        ; ragged.py:751:19
	v_cvt_f32_i32_e32 v98, v1
	v_cvt_f32_i32_e32 v97, v2
	v_cvt_f32_i32_e32 v96, v3
	v_cvt_f32_i32_e32 v95, v4
	v_cvt_f32_i32_e32 v88, v5
	v_cvt_f32_i32_e32 v87, v6
	v_cvt_f32_i32_e32 v86, v7
	v_cvt_f32_i32_e32 v85, v8
	v_cvt_f32_i32_e32 v84, v9
	v_cvt_f32_i32_e32 v83, v10
	v_cvt_f32_i32_e32 v82, v11
	v_cvt_f32_i32_e32 v81, v12
	v_cvt_f32_i32_e32 v80, v13
	v_cvt_f32_i32_e32 v79, v14
	v_cvt_f32_i32_e32 v78, v15
	v_cvt_f32_i32_e32 v77, v16
	v_cvt_f32_i32_e32 v94, v17
	v_cvt_f32_i32_e32 v93, v18
	v_cvt_f32_i32_e32 v92, v19
	v_cvt_f32_i32_e32 v91, v20
	v_cvt_f32_i32_e32 v76, v21
	v_cvt_f32_i32_e32 v71, v22
	v_cvt_f32_i32_e32 v70, v23
	v_cvt_f32_i32_e32 v69, v24
	v_cvt_f32_i32_e32 v68, v25
	v_cvt_f32_i32_e32 v67, v26
	v_cvt_f32_i32_e32 v66, v27
	v_cvt_f32_i32_e32 v65, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v18, v31
	v_cvt_f32_i32_e32 v17, v32
	v_cvt_f32_i32_e32 v90, v33
	v_cvt_f32_i32_e32 v89, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v33, v36
	v_cvt_f32_i32_e32 v26, v37
	v_cvt_f32_i32_e32 v25, v38
	v_cvt_f32_i32_e32 v24, v39
	v_cvt_f32_i32_e32 v23, v40
	v_cvt_f32_i32_e32 v16, v41
	v_cvt_f32_i32_e32 v15, v42
	v_cvt_f32_i32_e32 v14, v43
	v_cvt_f32_i32_e32 v13, v44
	v_cvt_f32_i32_e32 v12, v45
	v_cvt_f32_i32_e32 v11, v46
	v_cvt_f32_i32_e32 v10, v47
	v_cvt_f32_i32_e32 v9, v48
	v_cvt_f32_i32_e32 v32, v49
	v_cvt_f32_i32_e32 v31, v50
	v_cvt_f32_i32_e32 v30, v51
	v_cvt_f32_i32_e32 v29, v52
	v_cvt_f32_i32_e32 v22, v53
	v_cvt_f32_i32_e32 v21, v54
	v_cvt_f32_i32_e32 v20, v55
	v_cvt_f32_i32_e32 v19, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	v_mov_b32_e32 v35, v75
	s_add_i32 s9, s22, s23
	s_add_i32 s3, s19, s33
.LBB0_7:                                ; %._crit_edge
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v36, s22, v72
	.loc	1 754 21                        ; ragged.py:754:21
	v_add_lshl_u32 v38, s9, v72, 1
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v37, s19, v0
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s25, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v41, 16, v36
	v_or_b32_e32 v40, 32, v36
	v_or_b32_e32 v39, 48, v36
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s34, v36
	.loc	1 753 36                        ; ragged.py:753:36
	v_add_nc_u32_e32 v42, 32, v38
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s34, v41
	.loc	1 753 36                        ; ragged.py:753:36
	v_add_nc_u32_e32 v43, 64, v38
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s2, s34, v40
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v36, 0x80000000, v38, s0
	v_add_nc_u32_e32 v38, 0x60, v38
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v39
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v41, 0x80000000, v42, s1
	.loc	1 760 36                        ; ragged.py:760:36
	v_add_lshl_u32 v42, s3, v0, 1
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s35, v37
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v40, 0x80000000, v43, s2
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s24
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_and_b32 v35, 28, v35
	.loc	1 760 36                        ; ragged.py:760:36
	v_cndmask_b32_e64 v37, 0x80000000, v42, s3
	.loc	1 753 36                        ; ragged.py:753:36
	s_clause 0x3
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v40, s[4:7], 0 offen
	buffer_load_u16 v43, v38, s[4:7], 0 offen
	.loc	1 760 36                        ; ragged.py:760:36
	s_and_b32 s5, s27, 0xffff
	s_mov_b32 s4, s26
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v44, s35, v72
	.loc	1 760 36                        ; ragged.py:760:36
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v38, 4, v0
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s3, s9, s35
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 827 13                        ; ragged.py:827:13
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v135, v32, v43 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v89, v89, v42 :: v_dual_lshlrev_b32 v134, 16, v36
	.loc	1 765 17                        ; ragged.py:765:17
	v_and_b32_e32 v0, 0xf0, v0
	.loc	1 753 36                        ; ragged.py:753:36
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v95, v95, v134 :: v_dual_lshlrev_b32 v40, 5, v73
	v_mul_f32_e32 v96, v96, v134
	v_dual_mul_f32 v92, v92, v41 :: v_dual_and_b32 v39, 0x70, v74
	v_mul_f32_e32 v97, v97, v134
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshl_add_u32 v46, v0, 1, 0
	.loc	1 758 17                        ; ragged.py:758:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v98, v98, v134 :: v_dual_lshlrev_b32 v37, 16, v37
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v45, v38, 1, v39
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshl_add_u32 v38, v0, 2, 0
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v0, s3, s19, v44
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v90, v90, v42
	v_dual_mul_f32 v33, v33, v42 :: v_dual_mul_f32 v136, v31, v43
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v44, 0x80, v45
	v_or_b32_e32 v48, 0x8e, v45
	v_or_b32_e32 v49, 0x8c, v45
	v_or_b32_e32 v50, 0x8a, v45
	v_or_b32_e32 v51, 0x88, v45
	v_or_b32_e32 v52, 0x86, v45
	v_or_b32_e32 v53, 0x84, v45
	v_or_b32_e32 v54, 0x82, v45
	v_or_b32_e32 v55, 14, v45
	v_or_b32_e32 v56, 12, v45
	v_or_b32_e32 v57, 10, v45
	v_or_b32_e32 v58, 8, v45
	v_or_b32_e32 v59, 6, v45
	v_or_b32_e32 v60, 4, v45
	v_or_b32_e32 v61, 2, v45
	.loc	1 765 17                        ; ragged.py:765:17
	v_add3_u32 v35, v38, v40, v35
	.loc	1 827 22                        ; ragged.py:827:22
	v_lshl_add_u32 v38, s35, 4, v0
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v47, s19, v45
	v_or_b32_e32 v63, s19, v44
	.loc	1 827 22                        ; ragged.py:827:22
	v_lshl_add_u32 v62, s35, 5, v0
	.loc	1 765 17                        ; ragged.py:765:17
	ds_store_b32 v35, v37
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v107, v38, v45, 2
	v_add_lshl_u32 v108, v38, v61, 2
	v_add_lshl_u32 v109, v38, v60, 2
	v_add_lshl_u32 v110, v38, v59, 2
	v_add_lshl_u32 v111, v38, v58, 2
	v_add_lshl_u32 v112, v38, v57, 2
	v_add_lshl_u32 v113, v38, v56, 2
	v_add_lshl_u32 v114, v38, v55, 2
	v_add_lshl_u32 v115, v38, v44, 2
	v_add_lshl_u32 v116, v38, v54, 2
	v_add_lshl_u32 v117, v38, v53, 2
	v_add_lshl_u32 v118, v38, v52, 2
	v_add_lshl_u32 v119, v38, v51, 2
	v_add_lshl_u32 v120, v38, v50, 2
	v_add_lshl_u32 v121, v38, v49, 2
	v_add_lshl_u32 v122, v38, v48, 2
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v46
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v137, v30, v43
	v_mul_f32_e32 v138, v29, v43
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[29:32], v46 offset:16
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s4, s35, v47
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[39:40], null, s35, 48, v[0:1]
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v94, v94, v41
	v_mul_f32_e32 v93, v93, v41
	v_dual_mul_f32 v91, v91, v41 :: v_dual_mul_f32 v34, v34, v42
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v40, v0, v45, 2
	v_add_lshl_u32 v47, v0, v61, 2
	v_add_lshl_u32 v64, v0, v60, 2
	v_add_lshl_u32 v72, v0, v59, 2
	v_add_lshl_u32 v73, v0, v58, 2
	v_add_lshl_u32 v74, v0, v57, 2
	v_add_lshl_u32 v75, v0, v56, 2
	v_add_lshl_u32 v99, v0, v55, 2
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s35, v63
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s0, s4
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v123, v62, v45, 2
	v_add_lshl_u32 v124, v62, v61, 2
	v_add_lshl_u32 v125, v62, v60, 2
	v_add_lshl_u32 v126, v62, v59, 2
	v_add_lshl_u32 v127, v62, v58, 2
	v_add_lshl_u32 v128, v62, v57, 2
	v_add_lshl_u32 v129, v62, v56, 2
	v_add_lshl_u32 v130, v62, v55, 2
	v_add_lshl_u32 v131, v62, v44, 2
	v_add_lshl_u32 v132, v62, v54, 2
	v_add_lshl_u32 v133, v62, v53, 2
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v98, v98, v35 :: v_dual_mul_f32 v93, v93, v36
	v_dual_mul_f32 v97, v97, v36 :: v_dual_mul_f32 v96, v96, v37
	v_dual_mul_f32 v95, v95, v38 :: v_dual_mul_f32 v94, v94, v35
	v_dual_mul_f32 v91, v91, v38 :: v_dual_mul_f32 v92, v92, v37
	v_dual_mul_f32 v89, v89, v36 :: v_dual_mul_f32 v90, v90, v35
	v_dual_mul_f32 v33, v33, v38 :: v_dual_mul_f32 v34, v34, v37
	v_dual_mul_f32 v35, v135, v35 :: v_dual_mul_f32 v36, v136, v36
	v_dual_mul_f32 v37, v137, v37 :: v_dual_mul_f32 v38, v138, v38
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v71, v71, v41
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v135, v62, v52, 2
	v_add_lshl_u32 v136, v62, v51, 2
	v_add_lshl_u32 v137, v62, v50, 2
	v_add_lshl_u32 v138, v62, v49, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v88, v88, v134 :: v_dual_mul_f32 v69, v69, v41
	v_dual_mul_f32 v87, v87, v134 :: v_dual_mul_f32 v76, v76, v41
	v_dual_mul_f32 v86, v86, v134 :: v_dual_mul_f32 v67, v67, v41
	v_dual_mul_f32 v85, v85, v134 :: v_dual_mul_f32 v70, v70, v41
	v_dual_mul_f32 v80, v80, v134 :: v_dual_mul_f32 v21, v21, v43
	v_dual_mul_f32 v78, v78, v134 :: v_dual_mul_f32 v19, v19, v43
	v_dual_mul_f32 v77, v77, v134 :: v_dual_mul_f32 v22, v22, v43
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v26, v26, v42 :: v_dual_mul_f32 v85, v85, v32
	v_dual_mul_f32 v25, v25, v42 :: v_dual_mul_f32 v20, v20, v43
	v_dual_mul_f32 v24, v24, v42 :: v_dual_mul_f32 v69, v69, v32
	v_dual_mul_f32 v23, v23, v42 :: v_dual_mul_f32 v88, v88, v29
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v40, 0x80000000, v40, s5
	v_cndmask_b32_e64 v47, 0x80000000, v47, s5
	v_cndmask_b32_e64 v63, 0x80000000, v64, s5
	v_cndmask_b32_e64 v64, 0x80000000, v72, s5
	v_cndmask_b32_e64 v72, 0x80000000, v73, s5
	v_cndmask_b32_e64 v73, 0x80000000, v74, s5
	v_cndmask_b32_e64 v74, 0x80000000, v75, s5
	v_cndmask_b32_e64 v75, 0x80000000, v99, s5
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s1, s4
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v84, v84, v134 :: v_dual_mul_f32 v65, v65, v41
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v99, 0x80000000, v107, s5
	v_cndmask_b32_e64 v107, 0x80000000, v108, s5
	v_cndmask_b32_e64 v108, 0x80000000, v109, s5
	v_cndmask_b32_e64 v109, 0x80000000, v110, s5
	v_cndmask_b32_e64 v110, 0x80000000, v111, s5
	v_cndmask_b32_e64 v111, 0x80000000, v112, s5
	v_cndmask_b32_e64 v112, 0x80000000, v113, s5
	v_cndmask_b32_e64 v113, 0x80000000, v114, s5
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s2, s4
	s_and_b32 s2, s2, s3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v114, 0x80000000, v123, s5
	v_cndmask_b32_e64 v123, 0x80000000, v124, s5
	v_cndmask_b32_e64 v124, 0x80000000, v125, s5
	v_cndmask_b32_e64 v125, 0x80000000, v126, s5
	v_cndmask_b32_e64 v126, 0x80000000, v127, s5
	v_cndmask_b32_e64 v127, 0x80000000, v128, s5
	v_cndmask_b32_e64 v128, 0x80000000, v129, s5
	v_cndmask_b32_e64 v129, 0x80000000, v130, s5
	v_cndmask_b32_e64 v130, 0x80000000, v131, s2
	v_cndmask_b32_e64 v131, 0x80000000, v132, s2
	v_cndmask_b32_e64 v132, 0x80000000, v133, s2
	v_cndmask_b32_e64 v133, 0x80000000, v135, s2
	v_cndmask_b32_e64 v135, 0x80000000, v136, s2
	v_cndmask_b32_e64 v136, 0x80000000, v137, s2
	v_cndmask_b32_e64 v137, 0x80000000, v138, s2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v83, v83, v134 :: v_dual_mul_f32 v68, v68, v41
	v_dual_mul_f32 v82, v82, v134 :: v_dual_mul_f32 v27, v27, v41
	v_dual_mul_f32 v81, v81, v134 :: v_dual_mul_f32 v66, v66, v41
	v_dual_mul_f32 v79, v79, v134 :: v_dual_mul_f32 v28, v28, v41
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v87, v87, v30 :: v_dual_mul_f32 v86, v86, v31
	v_dual_mul_f32 v76, v76, v29 :: v_dual_mul_f32 v71, v71, v30
	v_dual_mul_f32 v70, v70, v31 :: v_dual_mul_f32 v17, v17, v41
	v_dual_mul_f32 v134, v26, v29 :: v_dual_mul_f32 v139, v24, v31
	v_dual_mul_f32 v138, v25, v30 :: v_dual_mul_f32 v29, v22, v29
	v_dual_mul_f32 v140, v23, v32 :: v_dual_mul_f32 v31, v20, v31
	v_dual_mul_f32 v30, v21, v30 :: v_dual_mul_f32 v7, v7, v43
	v_dual_mul_f32 v32, v19, v32 :: v_dual_mul_f32 v13, v13, v42
	ds_load_b128 v[19:22], v46 offset:512
	ds_load_b128 v[23:26], v46 offset:528
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v100, v0, v44, 2
	v_add_lshl_u32 v101, v0, v54, 2
	v_add_lshl_u32 v102, v0, v53, 2
	v_add_lshl_u32 v103, v0, v52, 2
	v_add_lshl_u32 v104, v0, v51, 2
	v_add_lshl_u32 v105, v0, v50, 2
	v_add_lshl_u32 v106, v0, v49, 2
	v_add_lshl_u32 v0, v0, v48, 2
	v_add_lshl_u32 v62, v62, v48, 2
	v_add_lshl_u32 v45, v39, v45, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v18, v18, v41 :: v_dual_mul_f32 v15, v15, v42
	v_dual_mul_f32 v16, v16, v42 :: v_dual_mul_f32 v5, v5, v43
	v_dual_mul_f32 v14, v14, v42 :: v_dual_mul_f32 v3, v3, v43
	v_dual_mul_f32 v12, v12, v42 :: v_dual_mul_f32 v1, v1, v43
	v_dual_mul_f32 v11, v11, v42 :: v_dual_mul_f32 v8, v8, v43
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v10, v10, v42 :: v_dual_mul_f32 v41, v84, v19
	v_dual_mul_f32 v9, v9, v42 :: v_dual_mul_f32 v6, v6, v43
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v61, v39, v61, 2
	v_add_lshl_u32 v60, v39, v60, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s0, s0, s3
	s_and_b32 s1, s1, s3
	s_and_b32 s4, vcc_lo, s4
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	v_cndmask_b32_e64 v45, 0x80000000, v45, s4
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v116, 0x80000000, v116, s1
	v_cndmask_b32_e64 v117, 0x80000000, v117, s1
	v_cndmask_b32_e64 v118, 0x80000000, v118, s1
	v_cndmask_b32_e64 v119, 0x80000000, v119, s1
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	v_cndmask_b32_e64 v122, 0x80000000, v122, s1
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v4, v4, v43
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v2, v2, v43 :: v_dual_mul_f32 v79, v79, v24
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v42, v83, v20 :: v_dual_mul_f32 v77, v77, v26
	v_dual_mul_f32 v43, v82, v21 :: v_dual_mul_f32 v46, v81, v22
	v_dual_mul_f32 v67, v67, v20 :: v_dual_mul_f32 v80, v80, v23
	v_dual_mul_f32 v65, v65, v22 :: v_dual_mul_f32 v78, v78, v25
	v_dual_mul_f32 v27, v27, v24 :: v_dual_mul_f32 v68, v68, v19
	v_dual_mul_f32 v17, v17, v26 :: v_dual_mul_f32 v66, v66, v21
	v_dual_mul_f32 v15, v15, v20 :: v_dual_mul_f32 v28, v28, v23
	v_dual_mul_f32 v13, v13, v22 :: v_dual_mul_f32 v18, v18, v25
	v_dual_mul_f32 v11, v11, v24 :: v_dual_mul_f32 v16, v16, v19
	v_dual_mul_f32 v9, v9, v26 :: v_dual_mul_f32 v14, v14, v21
	v_dual_mul_f32 v7, v7, v20 :: v_dual_mul_f32 v12, v12, v23
	v_dual_mul_f32 v5, v5, v22 :: v_dual_mul_f32 v10, v10, v25
	v_mul_f32_e32 v3, v3, v24
	.loc	1 827 13                        ; ragged.py:827:13
	s_clause 0x1f
	buffer_store_b32 v98, v40, s[20:23], 0 offen
	buffer_store_b32 v97, v47, s[20:23], 0 offen
	buffer_store_b32 v96, v63, s[20:23], 0 offen
	buffer_store_b32 v95, v64, s[20:23], 0 offen
	buffer_store_b32 v88, v72, s[20:23], 0 offen
	buffer_store_b32 v87, v73, s[20:23], 0 offen
	buffer_store_b32 v86, v74, s[20:23], 0 offen
	buffer_store_b32 v85, v75, s[20:23], 0 offen
	buffer_store_b32 v41, v100, s[20:23], 0 offen
	buffer_store_b32 v42, v101, s[20:23], 0 offen
	buffer_store_b32 v43, v102, s[20:23], 0 offen
	buffer_store_b32 v46, v103, s[20:23], 0 offen
	buffer_store_b32 v80, v104, s[20:23], 0 offen
	buffer_store_b32 v79, v105, s[20:23], 0 offen
	buffer_store_b32 v78, v106, s[20:23], 0 offen
	buffer_store_b32 v77, v0, s[20:23], 0 offen
	buffer_store_b32 v94, v99, s[20:23], 0 offen
	buffer_store_b32 v93, v107, s[20:23], 0 offen
	buffer_store_b32 v92, v108, s[20:23], 0 offen
	buffer_store_b32 v91, v109, s[20:23], 0 offen
	buffer_store_b32 v76, v110, s[20:23], 0 offen
	buffer_store_b32 v71, v111, s[20:23], 0 offen
	buffer_store_b32 v70, v112, s[20:23], 0 offen
	buffer_store_b32 v69, v113, s[20:23], 0 offen
	buffer_store_b32 v68, v115, s[20:23], 0 offen
	buffer_store_b32 v67, v116, s[20:23], 0 offen
	buffer_store_b32 v66, v117, s[20:23], 0 offen
	buffer_store_b32 v65, v118, s[20:23], 0 offen
	buffer_store_b32 v28, v119, s[20:23], 0 offen
	buffer_store_b32 v27, v120, s[20:23], 0 offen
	buffer_store_b32 v18, v121, s[20:23], 0 offen
	buffer_store_b32 v17, v122, s[20:23], 0 offen
	s_clause 0x10
	buffer_store_b32 v90, v114, s[20:23], 0 offen
	buffer_store_b32 v89, v123, s[20:23], 0 offen
	buffer_store_b32 v34, v124, s[20:23], 0 offen
	buffer_store_b32 v33, v125, s[20:23], 0 offen
	buffer_store_b32 v134, v126, s[20:23], 0 offen
	buffer_store_b32 v138, v127, s[20:23], 0 offen
	buffer_store_b32 v139, v128, s[20:23], 0 offen
	buffer_store_b32 v140, v129, s[20:23], 0 offen
	buffer_store_b32 v16, v130, s[20:23], 0 offen
	buffer_store_b32 v15, v131, s[20:23], 0 offen
	buffer_store_b32 v14, v132, s[20:23], 0 offen
	buffer_store_b32 v13, v133, s[20:23], 0 offen
	buffer_store_b32 v12, v135, s[20:23], 0 offen
	buffer_store_b32 v11, v136, s[20:23], 0 offen
	buffer_store_b32 v10, v137, s[20:23], 0 offen
	buffer_store_b32 v9, v62, s[20:23], 0 offen
	buffer_store_b32 v35, v45, s[20:23], 0 offen
	v_add_lshl_u32 v0, v39, v59, 2
	v_add_lshl_u32 v9, v39, v58, 2
	v_cndmask_b32_e64 v61, 0x80000000, v61, s4
	v_add_lshl_u32 v10, v39, v57, 2
	v_cndmask_b32_e64 v11, 0x80000000, v60, s4
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	buffer_store_b32 v36, v61, s[20:23], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	buffer_store_b32 v37, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v39, v56, 2
	s_clause 0x2
	buffer_store_b32 v38, v0, s[20:23], 0 offen
	buffer_store_b32 v29, v9, s[20:23], 0 offen
	buffer_store_b32 v30, v10, s[20:23], 0 offen
	v_add_lshl_u32 v0, v39, v55, 2
	v_add_lshl_u32 v10, v39, v44, 2
	v_add_lshl_u32 v12, v39, v53, 2
	v_cndmask_b32_e64 v9, 0x80000000, v11, s4
	v_add_lshl_u32 v11, v39, v54, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v8, v8, v19 :: v_dual_mul_f32 v1, v1, v26
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v6, v6, v21 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v31, v9, s[20:23], 0 offen
	buffer_store_b32 v32, v0, s[20:23], 0 offen
	buffer_store_b32 v8, v10, s[20:23], 0 offen
	buffer_store_b32 v7, v11, s[20:23], 0 offen
	buffer_store_b32 v6, v12, s[20:23], 0 offen
	v_add_lshl_u32 v0, v39, v52, 2
	v_add_lshl_u32 v6, v39, v51, 2
	v_add_lshl_u32 v7, v39, v50, 2
	v_add_lshl_u32 v8, v39, v49, 2
	v_add_lshl_u32 v9, v39, v48, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v4, v4, v23
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v2, v2, v25 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	.loc	1 827 13                        ; ragged.py:827:13
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v5, v0, s[20:23], 0 offen
	buffer_store_b32 v4, v6, s[20:23], 0 offen
	buffer_store_b32 v3, v7, s[20:23], 0 offen
	buffer_store_b32 v2, v8, s[20:23], 0 offen
	buffer_store_b32 v1, v9, s[20:23], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 149
		.amdhsa_next_free_sgpr 43
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 149
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8072
; TotalNumSgprs: 45
; NumVgprs: 149
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 149
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	698                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	699                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     149
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
