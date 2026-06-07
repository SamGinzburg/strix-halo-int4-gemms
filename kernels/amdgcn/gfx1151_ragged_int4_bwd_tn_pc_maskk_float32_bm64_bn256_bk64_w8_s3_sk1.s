	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s8, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s25, 0xff
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
	s_ashr_i32 s20, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s17, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s17, s20
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
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s8, s17
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s6, s8
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s10, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s8
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s10, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s12, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s9, s12, s17
	s_ashr_i32 s21, s9, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s6
	s_mul_hi_u32 s4, s6, s5
	s_abs_i32 s5, s12
	s_add_i32 s4, s6, s4
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s4, s8
	s_add_i32 s9, s4, 1
	s_sub_i32 s5, s5, s11
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s11, s10, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s22, s4, s21
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[8:9], s[10:11], 2
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s4, s22, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s5, s4, s17
	.loc	1 704 17 is_stmt 0              ; ragged.py:704:17
	s_sub_i32 s5, s12, s5
	.loc	1 710 19 is_stmt 1              ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 719 22                        ; ragged.py:719:22
	s_lshl_b32 s29, s3, 5
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s18, s[6:7], 0x0
	s_mov_b32 s3, 0
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s18, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 26 is_stmt 0              ; ragged.py:711:26
	s_lshr_b32 s7, s6, 31
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s28, s6, 1
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	s_cmp_lt_i32 s29, s28
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_lshl_b32 s16, s25, 4
	s_lshl_b32 s26, s25, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr16
                                        ; implicit-def: $sgpr26
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x28
	v_and_b32_e32 v70, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v69, 0x70, v1
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v71, 0xf0, v0
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v99, 0
	s_lshl_b32 s11, s4, 6
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s27, s5, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s3, s[0:1], 0x38
	s_load_b128 s[4:7], s[0:1], 0x0
	.loc	1 706 36 is_stmt 1              ; ragged.py:706:36
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 735 33                        ; ragged.py:735:33
	s_and_b32 s0, s18, 0x80000001
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshrrev_b32_e32 v72, 4, v71
	.loc	1 735 33                        ; ragged.py:735:33
	s_cmp_eq_u32 s0, 1
	.loc	1 720 19                        ; ragged.py:720:19
	s_mul_i32 s20, s20, s10
	.loc	1 706 36                        ; ragged.py:706:36
	v_and_b32_e32 v3, 56, v2
	.loc	1 735 33                        ; ragged.py:735:33
	s_cselect_b32 s30, -1, 0
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshrrev_b32_e32 v73, 3, v0
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshlrev_b32_e32 v1, 4, v70
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s2, s2, 8
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v5, s11, v3
	v_or_b32_e32 v7, 0x7f0, v0
	.loc	1 720 19                        ; ragged.py:720:19
	v_xad_u32 v80, v73, -1, s28
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v4, s27, v1
	s_mov_b32 s19, 0x31027000
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s24, v5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s26, s25, 5
	.loc	1 723 35                        ; ragged.py:723:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s10, s3
	.loc	1 720 19                        ; ragged.py:720:19
	s_sub_i32 s3, s21, s20
	s_add_i32 s1, s1, s29
	s_sub_i32 s3, s3, s22
	v_add_nc_u32_e32 v5, s1, v72
	s_mul_i32 s17, s17, s3
	v_add_nc_u32_e32 v6, s1, v73
	s_lshl_b32 s1, s17, 8
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s25, v4
	.loc	1 720 19                        ; ragged.py:720:19
	v_mul_lo_u32 v8, s25, v5
	v_add_nc_u32_e32 v5, 16, v5
	s_add_i32 s2, s2, s1
	v_or_b32_e32 v4, 0x3f0, v0
	s_lshl_b32 s1, s22, 6
	s_and_b32 s5, s5, 0xffff
	v_mul_lo_u32 v5, s25, v5
	s_and_b32 s7, s7, 0xffff
	v_add3_u32 v77, s2, v8, v1
	s_lshl_b32 s31, s24, 5
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s22, s18
	v_add3_u32 v78, s2, v5, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v75, 0, v2
	v_add_nc_u32_e32 v74, 0, v70
	v_add_nc_u32_e32 v83, 0, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v84, 0, v7
	v_mov_b32_e32 v5, v1
	v_mul_lo_u32 v6, s24, v6
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v85, v75, v2
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v13, v1
	v_add3_u32 v3, v6, s1, v3
	v_sub_nc_u32_e32 v6, s28, v72
	s_lshl_b32 s1, s21, 6
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v9, v1
	v_subrev_nc_u32_e32 v79, s1, v3
	v_subrev_nc_u32_e32 v81, 17, v6
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v82, -1, v6
	v_add_nc_u32_e32 v76, v74, v69
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
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
	s_mov_b32 s21, s7
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v65, s29, v72
	.loc	1 734 30                        ; ragged.py:734:30
	v_add_nc_u32_e32 v66, s29, v73
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s1, s29, v82
	v_cmp_eq_u32_e64 s2, s29, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s3, s28, v65
	v_cmp_gt_i32_e64 s4, s28, v66
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v65, 16, v65
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s5, s30, s1
	s_and_b32 s6, s30, s2
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s1, vcc_lo, s3
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s3, s0, s4
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s2, s28, v65
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v65, 0x80000000, v77, s1
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v66, 0x80000000, v79, s3
	.loc	1 720 19                        ; ragged.py:720:19
	v_add_nc_u32_e32 v77, s26, v77
	v_add_nc_u32_e32 v79, s31, v79
	.loc	1 737 34                        ; ragged.py:737:34
	buffer_load_b128 v[86:89], v65, s[20:23], 0 offen
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_b64 v[96:97], v66, s[16:19], 0 offen
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s1, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 737 34 is_stmt 0              ; ragged.py:737:34
	v_cndmask_b32_e64 v65, 0x80000000, v78, s1
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s1, s29, v81
	.loc	1 720 19                        ; ragged.py:720:19
	v_add_nc_u32_e32 v78, s26, v78
	.loc	1 750 17                        ; ragged.py:750:17
	s_add_i32 s29, s29, 32
	.loc	1 737 34                        ; ragged.py:737:34
	buffer_load_b128 v[65:68], v65, s[20:23], 0 offen
	.loc	1 738 34                        ; ragged.py:738:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s1, s30, s1
	.loc	1 720 19                        ; ragged.py:720:19
	s_cmp_lt_i32 s29, s28
	.loc	1 737 34                        ; ragged.py:737:34
	s_waitcnt vmcnt(2)
	v_lshrrev_b64 v[98:99], 24, v[86:87]
	v_lshrrev_b64 v[99:100], 24, v[88:89]
	.loc	1 736 34                        ; ragged.py:736:34
	s_waitcnt vmcnt(1)
	v_lshrrev_b64 v[100:101], 24, v[96:97]
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v90.l, v86.l, 15
	v_and_b16 v90.h, v86.h, 15
	v_and_b16 v91.l, v87.l, 15
	v_and_b16 v91.h, v87.h, 15
	v_and_b16 v92.l, v88.l, 15
	v_and_b16 v92.h, v88.h, 15
	v_and_b16 v93.l, v89.l, 15
	v_and_b16 v93.h, v89.h, 15
	.loc	1 737 34                        ; ragged.py:737:34
	v_lshrrev_b32_e32 v102, 8, v86
	v_lshrrev_b32_e32 v103, 8, v87
	v_lshrrev_b32_e32 v104, 24, v87
	v_lshrrev_b32_e32 v105, 8, v88
	v_lshrrev_b32_e32 v106, 8, v89
	v_lshrrev_b32_e32 v107, 24, v89
	.loc	1 736 34                        ; ragged.py:736:34
	v_lshrrev_b32_e32 v101, 8, v97
	v_lshrrev_b32_e32 v108, 24, v97
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v94.l, v97.l, 15
	v_and_b16 v94.h, v97.h, 15
	v_and_b16 v95.l, v96.l, 15
	v_and_b16 v95.h, v96.h, 15
	.loc	1 736 34                        ; ragged.py:736:34
	v_lshrrev_b32_e32 v109, 8, v96
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v86.l, v86.l, v90.l, s5
	v_cndmask_b16 v86.h, v86.h, v90.h, s5
	v_cndmask_b16 v87.l, v87.l, v91.l, s5
	v_cndmask_b16 v87.h, v87.h, v91.h, s5
	v_cndmask_b16 v88.l, v88.l, v92.l, s5
	v_cndmask_b16 v88.h, v88.h, v92.h, s5
	v_cndmask_b16 v89.l, v89.l, v93.l, s5
	v_cndmask_b16 v89.h, v89.h, v93.h, s5
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v90.l, v101.l, 15
	v_and_b16 v90.h, v108.l, 15
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v91.l, v97.l, v94.l, s6
	v_cndmask_b16 v91.h, v97.h, v94.h, s6
	v_cndmask_b16 v92.l, v96.l, v95.l, s6
	v_cndmask_b16 v92.h, v96.h, v95.h, s6
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v93.l, v109.l, 15
	.loc	1 739 62 is_stmt 1              ; ragged.py:739:62
	v_and_b16 v93.h, v106.l, 15
	v_and_b16 v94.l, v107.l, 15
	v_and_b16 v94.h, v105.l, 15
	v_and_b16 v95.l, v103.l, 15
	v_and_b16 v95.h, v104.l, 15
	v_and_b16 v96.l, v102.l, 15
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v96.h, v100.l, 15
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v97.l, v98.l, 15
	v_and_b16 v97.h, v99.l, 15
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v90.l, v101.l, v90.l, s6
	v_cndmask_b16 v90.h, v108.l, v90.h, s6
	v_cndmask_b16 v93.l, v109.l, v93.l, s6
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v93.h, v106.l, v93.h, s5
	v_cndmask_b16 v94.l, v107.l, v94.l, s5
	v_cndmask_b16 v94.h, v105.l, v94.h, s5
	v_cndmask_b16 v95.l, v103.l, v95.l, s5
	v_cndmask_b16 v95.h, v104.l, v95.h, s5
	v_cndmask_b16 v96.l, v102.l, v96.l, s5
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v96.h, v100.l, v96.h, s6
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v97.l, v98.l, v97.l, s5
	v_cndmask_b16 v97.h, v99.l, v97.h, s5
	.loc	1 738 34                        ; ragged.py:738:34
	v_and_b16 v91.l, 0xff, v91.l
	v_and_b16 v91.h, 0xff, v91.h
	v_and_b16 v92.l, 0xff, v92.l
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v89.l, 0xff, v89.l
	v_and_b16 v89.h, 0xff, v89.h
	v_and_b16 v88.l, 0xff, v88.l
	v_and_b16 v87.l, 0xff, v87.l
	v_and_b16 v87.h, 0xff, v87.h
	v_and_b16 v86.l, 0xff, v86.l
	.loc	1 738 34                        ; ragged.py:738:34
	v_and_b16 v92.h, 0xff, v92.h
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v88.h, 0xff, v88.h
	v_and_b16 v86.h, 0xff, v86.h
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v90.l, 8, v90.l
	v_lshlrev_b16 v90.h, 8, v90.h
	v_lshlrev_b16 v93.l, 8, v93.l
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v93.h, 8, v93.h
	v_lshlrev_b16 v94.l, 8, v94.l
	v_lshlrev_b16 v94.h, 8, v94.h
	v_lshlrev_b16 v95.l, 8, v95.l
	v_lshlrev_b16 v95.h, 8, v95.h
	v_lshlrev_b16 v96.l, 8, v96.l
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v96.h, 8, v96.h
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v97.h, 8, v97.h
	v_lshlrev_b16 v97.l, 8, v97.l
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v91.l, v91.l, v90.l
	v_or_b16 v91.h, v91.h, v90.h
	v_or_b16 v90.l, v92.l, v93.l
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v217.l, v89.l, v93.h
	v_or_b16 v217.h, v89.h, v94.l
	v_or_b16 v216.l, v88.l, v94.h
	v_or_b16 v215.l, v87.l, v95.l
	v_or_b16 v215.h, v87.h, v95.h
	v_or_b16 v214.l, v86.l, v96.l
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v90.h, v92.h, v96.h
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v216.h, v88.h, v97.h
	v_or_b16 v214.h, v86.h, v97.l
	.loc	1 737 34                        ; ragged.py:737:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b64 v[218:219], 24, v[65:66]
	v_lshrrev_b32_e32 v221, 8, v66
	.loc	1 738 34                        ; ragged.py:738:34
	ds_store_b64 v75, v[90:91]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 740 27                        ; ragged.py:740:27
	ds_load_u8 v202, v74 offset:192
	ds_load_u8 v203, v74 offset:128
	ds_load_u8 v194, v74 offset:208
	ds_load_u8 v195, v74 offset:144
	ds_load_u8 v179, v74 offset:224
	ds_load_u8 v181, v74 offset:160
	ds_load_u8 v168, v74 offset:240
	ds_load_u8 v170, v74 offset:176
	ds_load_u8 v208, v74 offset:448
	ds_load_u8 v209, v74 offset:384
	ds_load_u8 v200, v74 offset:464
	ds_load_u8 v201, v74 offset:400
	ds_load_u8 v192, v74 offset:480
	ds_load_u8 v193, v74 offset:416
	ds_load_u8 v182, v74 offset:496
	ds_load_u8 v183, v74 offset:432
	ds_load_u8 v212, v74 offset:320
	ds_load_u8 v213, v74 offset:256
	ds_load_u8 v205, v74 offset:336
	ds_load_u8 v206, v74 offset:272
	ds_load_u8 v197, v74 offset:352
	ds_load_u8 v199, v74 offset:288
	ds_load_u8 v189, v74 offset:368
	ds_load_u8 v191, v74 offset:304
	ds_load_u8 v210, v74 offset:64
	ds_load_u8 v204, v74 offset:80
	ds_load_u8 v196, v74 offset:96
	ds_load_u8 v185, v74 offset:112
	ds_load_u8 v211, v74
	ds_load_u8 v207, v74 offset:16
	ds_load_u8 v198, v74 offset:32
	ds_load_u8 v187, v74 offset:48
	ds_load_u8 v174, v74 offset:960
	ds_load_u8 v176, v74 offset:896
	ds_load_u8 v130, v74 offset:1024
	ds_load_u8 v165, v74 offset:976
	ds_load_u8 v167, v74 offset:912
	ds_load_u8 v151, v74 offset:992
	ds_load_u8 v153, v74 offset:928
	ds_load_u8 v140, v74 offset:944
	ds_load_u8 v184, v74 offset:832
	ds_load_u8 v186, v74 offset:768
	ds_load_u8 v172, v74 offset:848
	ds_load_u8 v173, v74 offset:784
	ds_load_u8 v161, v74 offset:864
	ds_load_u8 v162, v74 offset:800
	ds_load_u8 v145, v74 offset:880
	ds_load_u8 v146, v74 offset:816
	ds_load_u8 v178, v74 offset:704
	ds_load_u8 v180, v74 offset:640
	ds_load_u8 v166, v74 offset:720
	ds_load_u8 v169, v74 offset:656
	ds_load_u8 v156, v74 offset:736
	ds_load_u8 v157, v74 offset:672
	ds_load_u8 v152, v74 offset:752
	ds_load_u8 v154, v74 offset:688
	ds_load_u8 v188, v74 offset:576
	ds_load_u8 v190, v74 offset:512
	ds_load_u8 v175, v74 offset:592
	ds_load_u8 v177, v74 offset:528
	ds_load_u8 v163, v74 offset:608
	ds_load_u8 v164, v74 offset:544
	ds_load_u8 v159, v74 offset:624
	ds_load_u8 v160, v74 offset:560
	ds_load_u8 v139, v74 offset:1216
	ds_load_u8 v147, v74 offset:1280
	ds_load_u8 v131, v74 offset:1232
	ds_load_u8 v132, v74 offset:1168
	ds_load_u8 v119, v74 offset:1248
	ds_load_u8 v120, v74 offset:1184
	ds_load_u8 v107, v74 offset:1264
	ds_load_u8 v108, v74 offset:1200
	ds_load_u8 v141, v74 offset:1152
	ds_load_u8 v144, v74 offset:1088
	ds_load_u8 v135, v74 offset:1104
	ds_load_u8 v136, v74 offset:1040
	ds_load_u8 v126, v74 offset:1120
	ds_load_u8 v127, v74 offset:1056
	ds_load_u8 v115, v74 offset:1136
	ds_load_u8 v116, v74 offset:1072
	ds_load_u8 v150, v74 offset:1472
	ds_load_u8 v102, v74 offset:1536
	ds_load_u8 v142, v74 offset:1488
	ds_load_u8 v143, v74 offset:1424
	ds_load_u8 v133, v74 offset:1504
	ds_load_u8 v134, v74 offset:1440
	ds_load_u8 v123, v74 offset:1520
	ds_load_u8 v125, v74 offset:1456
	ds_load_u8 v155, v74 offset:1408
	ds_load_u8 v158, v74 offset:1344
	ds_load_u8 v148, v74 offset:1360
	ds_load_u8 v149, v74 offset:1296
	ds_load_u8 v137, v74 offset:1376
	ds_load_u8 v138, v74 offset:1312
	ds_load_u8 v128, v74 offset:1392
	ds_load_u8 v129, v74 offset:1328
	ds_load_u8 v113, v74 offset:1984
	ds_load_u8 v103, v74 offset:2000
	ds_load_u8 v105, v74 offset:1936
	ds_load_u8 v91, v74 offset:2016
	ds_load_u8 v93, v74 offset:1952
	ds_load_u8 v171, v83
	ds_load_u8 v86, v84
	ds_load_u8 v87, v74 offset:1968
	ds_load_u8 v117, v74 offset:1920
	ds_load_u8 v121, v74 offset:1856
	ds_load_u8 v109, v74 offset:1872
	ds_load_u8 v110, v74 offset:1808
	ds_load_u8 v98, v74 offset:1888
	ds_load_u8 v99, v74 offset:1824
	ds_load_u8 v88, v74 offset:1904
	ds_load_u8 v89, v74 offset:1840
	ds_load_u8 v114, v74 offset:1728
	ds_load_u8 v124, v74 offset:1792
	ds_load_u8 v104, v74 offset:1744
	ds_load_u8 v106, v74 offset:1680
	ds_load_u8 v94, v74 offset:1760
	ds_load_u8 v95, v74 offset:1696
	ds_load_u8 v90, v74 offset:1776
	ds_load_u8 v92, v74 offset:1712
	ds_load_u8 v118, v74 offset:1664
	ds_load_u8 v122, v74 offset:1600
	ds_load_u8 v111, v74 offset:1616
	ds_load_u8 v112, v74 offset:1552
	ds_load_u8 v100, v74 offset:1632
	ds_load_u8 v101, v74 offset:1568
	ds_load_u8 v96, v74 offset:1648
	ds_load_u8 v97, v74 offset:1584
	.loc	1 739 34                        ; ragged.py:739:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v85, v[214:217]
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v215.l, v66.l, 15
	v_and_b16 v215.h, v66.h, 15
	v_and_b16 v216.l, v67.l, 15
	v_and_b16 v216.h, v67.h, 15
	v_and_b16 v214.l, v65.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v215.l, v66.l, v215.l, s1
	v_cndmask_b16 v215.h, v66.h, v215.h, s1
	v_cndmask_b16 v216.l, v67.l, v216.l, s1
	v_cndmask_b16 v216.h, v67.h, v216.h, s1
	.loc	1 737 34 is_stmt 1              ; ragged.py:737:34
	v_lshrrev_b32_e32 v222, 24, v66
	v_lshrrev_b32_e32 v223, 8, v67
	v_lshrrev_b64 v[66:67], 24, v[67:68]
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v214.l, v65.l, v214.l, s1
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v214.h, v65.h, 15
	.loc	1 737 34 is_stmt 1              ; ragged.py:737:34
	v_lshrrev_b32_e32 v220, 8, v65
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v65.l, v218.l, 15
	.loc	1 737 34                        ; ragged.py:737:34
	v_lshrrev_b32_e32 v224, 8, v68
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v217.l, v68.l, 15
	.loc	1 739 34 is_stmt 0              ; ragged.py:739:34
	v_cndmask_b16 v214.h, v65.h, v214.h, s1
	.loc	1 737 34 is_stmt 1              ; ragged.py:737:34
	v_lshrrev_b32_e32 v225, 24, v68
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v65.h, v218.l, v65.l, s1
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v65.l, v66.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v217.l, v68.l, v217.l, s1
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v217.h, v68.h, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v214.l, 0xff, v214.l
	v_lshlrev_b16 v65.h, 8, v65.h
	v_cndmask_b16 v67.h, v66.l, v65.l, s1
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v65.l, v224.l, 15
	v_and_b16 v66.l, v225.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v66.h, 0xff, v217.l
	v_cndmask_b16 v217.h, v68.h, v217.h, s1
	v_lshlrev_b16 v67.h, 8, v67.h
	v_cndmask_b16 v65.l, v224.l, v65.l, s1
	v_cndmask_b16 v66.l, v225.l, v66.l, s1
	.loc	1 740 27 is_stmt 1              ; ragged.py:740:27
	v_perm_b32 v194, v195, v194, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v67.l, 0xff, v217.h
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v197, v199, v197, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v65.l, 8, v65.l
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v192, v193, v192, 0xc0c0004
	v_perm_b32 v196, v198, v196, 0xc0c0004
	v_perm_b32 v179, v181, v179, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v68.l, v66.h, v65.l
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v65.l, v223.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v68.h, v67.l, v66.l
	v_and_b16 v66.l, 0xff, v216.l
	v_and_b16 v66.h, 0xff, v215.h
	.loc	1 740 27 is_stmt 1              ; ragged.py:740:27
	v_perm_b32 v189, v191, v189, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v65.l, v223.l, v65.l, s1
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v182, v183, v182, 0xc0c0004
	v_perm_b32 v185, v187, v185, 0xc0c0004
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v159, v160, v159, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v168, v170, v168, 0xc0c0004
	v_perm_b32 v184, v186, v184, 0xc0c0004
	v_perm_b32 v174, v176, v174, 0xc0c0004
	v_perm_b32 v188, v190, v188, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v67.l, v66.l, v65.l
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v65.l, v221.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v66.l, 0xff, v215.l
	.loc	1 740 27 is_stmt 1              ; ragged.py:740:27
	v_perm_b32 v178, v180, v178, 0xc0c0004
	v_perm_b32 v172, v173, v172, 0xc0c0004
	v_perm_b32 v165, v167, v165, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v65.l, v221.l, v65.l, s1
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v175, v177, v175, 0xc0c0004
	v_perm_b32 v166, v169, v166, 0xc0c0004
	v_perm_b32 v151, v153, v151, 0xc0c0004
	v_perm_b32 v163, v164, v163, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v156, v157, v156, 0xc0c0004
	v_perm_b32 v152, v154, v152, 0xc0c0004
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v147, v147, v158, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v66.l, v66.l, v65.l
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v65.l, v222.l, 15
	.loc	1 740 27 is_stmt 1              ; ragged.py:740:27
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v65.l, v222.l, v65.l, s1
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v126, v127, v126, 0xc0c0004
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v128, v129, v128, 0xc0c0004
	v_perm_b32 v123, v125, v123, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v108, v124, v121, 0xc0c0004
	v_perm_b32 v113, v117, v113, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v66.h, v66.h, v65.l
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v65.l, v220.l, 15
	.loc	1 740 27 is_stmt 1              ; ragged.py:740:27
	v_perm_b32 v140, v140, v171, 0xc0c0004
	v_perm_b32 v150, v155, v150, 0xc0c0004
	v_perm_b32 v130, v130, v144, 0xc0c0004
	v_perm_b32 v139, v141, v139, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v65.l, v220.l, v65.l, s1
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v114, v118, v114, 0xc0c0004
	v_perm_b32 v122, v102, v122, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v226, v89, v88, 0xc0c0004
	v_perm_b32 v228, v87, v86, 0xc0c0004
	v_lshl_or_b32 v86, v179, 16, v196
	v_lshl_or_b32 v89, v182, 16, v189
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v65.l, v214.l, v65.l
	v_and_b16 v214.l, 0xff, v216.h
	.loc	1 740 27                        ; ragged.py:740:27
	v_lshl_or_b32 v88, v168, 16, v185
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v110, v105, v103, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v67.h, v214.l, v67.h
	v_and_b16 v214.l, 0xff, v214.h
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v112, v106, v104, 0xc0c0004
	v_perm_b32 v220, v95, v94, 0xc0c0004
	v_perm_b32 v222, v97, v96, 0xc0c0004
	v_lshl_or_b32 v87, v192, 16, v197
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v65.h, v214.l, v65.h
	.loc	1 740 27                        ; ragged.py:740:27
	v_lshl_or_b32 v95, v151, 16, v161
	v_lshl_or_b32 v94, v156, 16, v163
	v_lshl_or_b32 v96, v152, 16, v159
	v_lshl_or_b32 v97, v140, 16, v145
	.loc	1 739 34                        ; ragged.py:739:34
	ds_store_b128 v85, v[65:68] offset:4096
	.loc	1 740 27                        ; ragged.py:740:27
	v_perm_b32 v65, v213, v212, 0xc0c0004
	v_perm_b32 v66, v209, v208, 0xc0c0004
	v_perm_b32 v67, v211, v210, 0xc0c0004
	v_perm_b32 v68, v203, v202, 0xc0c0004
	.loc	1 739 34                        ; ragged.py:739:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 740 27                        ; ragged.py:740:27
	ds_load_u8 v208, v76 offset:1280
	ds_load_u8 v209, v76 offset:1024
	ds_load_u8 v202, v76 offset:1920
	ds_load_u8 v162, v76 offset:2048
	ds_load_u8 v160, v76 offset:2176
	v_lshl_or_b32 v66, v66, 16, v65
	v_lshl_or_b32 v65, v68, 16, v67
	ds_load_u8 v203, v76 offset:1664
	ds_load_u8 v210, v76 offset:1408
	v_perm_b32 v67, v206, v205, 0xc0c0004
	v_perm_b32 v68, v201, v200, 0xc0c0004
	ds_load_u8 v200, v76 offset:1792
	v_perm_b32 v201, v207, v204, 0xc0c0004
	ds_load_u8 v204, v76 offset:1536
	ds_load_u8 v205, v76 offset:1152
	ds_load_u8 v195, v76 offset:256
	ds_load_u8 v199, v76
	ds_load_u8 v193, v76 offset:896
	ds_load_u8 v198, v76 offset:640
	ds_load_u8 v181, v76 offset:384
	ds_load_u8 v183, v76 offset:768
	ds_load_u8 v187, v76 offset:512
	ds_load_u8 v191, v76 offset:128
	ds_load_u8 v170, v76 offset:3328
	ds_load_u8 v176, v76 offset:3968
	ds_load_u8 v190, v76 offset:3712
	ds_load_u8 v180, v76 offset:3456
	ds_load_u8 v138, v76 offset:4096
	ds_load_u8 v129, v76 offset:4224
	ds_load_u8 v167, v76 offset:3840
	ds_load_u8 v177, v76 offset:3584
	ds_load_u8 v186, v76 offset:3072
	ds_load_u8 v173, v76 offset:3200
	ds_load_u8 v169, v76 offset:2304
	ds_load_u8 v153, v76 offset:2944
	ds_load_u8 v164, v76 offset:2688
	ds_load_u8 v157, v76 offset:2432
	ds_load_u8 v154, v76 offset:2816
	ds_load_u8 v146, v76 offset:2560
	ds_load_u8 v158, v76 offset:5120
	ds_load_u8 v149, v76 offset:5248
	ds_load_u8 v132, v76 offset:4352
	ds_load_u8 v134, v76 offset:4992
	ds_load_u8 v127, v76 offset:4736
	ds_load_u8 v120, v76 offset:4480
	ds_load_u8 v125, v76 offset:4864
	ds_load_u8 v116, v76 offset:4608
	ds_load_u8 v117, v76 offset:8064
	ds_load_u8 v124, v76 offset:7808
	ds_load_u8 v206, v76 offset:7424
	ds_load_u8 v118, v76 offset:7552
	ds_load_u8 v211, v76 offset:7936
	ds_load_u8 v212, v76 offset:7680
	ds_load_u8 v171, v76 offset:5376
	ds_load_u8 v155, v76 offset:6016
	ds_load_u8 v144, v76 offset:5760
	ds_load_u8 v141, v76 offset:5504
	ds_load_u8 v215, v76 offset:6144
	ds_load_u8 v223, v76 offset:6272
	ds_load_u8 v143, v76 offset:5888
	ds_load_u8 v136, v76 offset:5632
	ds_load_u8 v121, v76 offset:7168
	ds_load_u8 v207, v76 offset:7296
	ds_load_u8 v213, v76 offset:6400
	ds_load_u8 v217, v76 offset:7040
	ds_load_u8 v219, v76 offset:6784
	ds_load_u8 v221, v76 offset:6528
	ds_load_u8 v225, v76 offset:6912
	ds_load_u8 v227, v76 offset:6656
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v168, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v179, v204, v200, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v182, v199, v195, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v183, v187, v183, 0xc0c0004
	v_perm_b32 v185, v205, v210, 0xc0c0004
	v_perm_b32 v187, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v181, v191, v181, 0xc0c0004
	v_perm_b32 v189, v198, v193, 0xc0c0004
	v_lshl_or_b32 v68, v68, 16, v67
	v_lshl_or_b32 v67, v194, 16, v201
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v140, v186, v170, 0xc0c0004
	v_perm_b32 v145, v177, v167, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v151, v162, v169, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v146, v146, v154, 0xc0c0004
	v_perm_b32 v152, v173, v180, 0xc0c0004
	v_perm_b32 v154, v190, v176, 0xc0c0004
	v_perm_b32 v156, v160, v157, 0xc0c0004
	v_perm_b32 v153, v164, v153, 0xc0c0004
	v_lshl_or_b32 v103, v133, 16, v137
	v_lshl_or_b32 v104, v107, 16, v115
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v125, v116, v125, 0xc0c0004
	v_lshl_or_b32 v106, v114, 16, v122
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v137, v124, v117, 0xc0c0004
	v_lshl_or_b32 v115, v179, 16, v168
	v_lshl_or_b32 v114, v183, 16, v182
	v_lshl_or_b32 v117, v187, 16, v185
	v_lshl_or_b32 v116, v189, 16, v181
	v_perm_b32 v214, v99, v98, 0xc0c0004
	v_perm_b32 v216, v93, v91, 0xc0c0004
	v_perm_b32 v218, v101, v100, 0xc0c0004
	v_perm_b32 v224, v92, v90, 0xc0c0004
	v_lshl_or_b32 v91, v174, 16, v184
	v_lshl_or_b32 v90, v178, 16, v188
	v_lshl_or_b32 v93, v165, 16, v172
	v_lshl_or_b32 v92, v166, 16, v175
	v_lshl_or_b32 v98, v139, 16, v130
	v_lshl_or_b32 v100, v131, 16, v135
	v_lshl_or_b32 v102, v119, 16, v126
	v_lshl_or_b32 v105, v123, 16, v128
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v123, v158, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v126, v136, v143, 0xc0c0004
	v_perm_b32 v128, v138, v132, 0xc0c0004
	v_perm_b32 v130, v149, v141, 0xc0c0004
	v_perm_b32 v131, v144, v155, 0xc0c0004
	v_perm_b32 v129, v129, v120, 0xc0c0004
	v_perm_b32 v127, v127, v134, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v132, v121, v206, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v136, v207, v118, 0xc0c0004
	v_lshl_or_b32 v119, v145, 16, v140
	v_lshl_or_b32 v118, v146, 16, v151
	v_lshl_or_b32 v121, v154, 16, v152
	v_lshl_or_b32 v120, v153, 16, v156
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[86:87], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[86:87], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[114:115], v[88:89], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[88:89], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v150, 16, v147
	v_lshl_or_b32 v101, v142, 16, v148
	v_perm_b32 v133, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v134, v215, v213, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v227, v225, 0xc0c0004
	v_perm_b32 v138, v223, v221, 0xc0c0004
	v_perm_b32 v139, v219, v217, 0xc0c0004
	v_lshl_or_b32 v123, v126, 16, v123
	v_lshl_or_b32 v122, v125, 16, v128
	v_lshl_or_b32 v125, v131, 16, v130
	v_lshl_or_b32 v124, v127, 16, v129
	v_wmma_i32_16x16x16_iu4 v[1:8], v[118:119], v[90:91], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[90:91], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[92:93], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[92:93], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[118:119], v[94:95], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[120:121], v[94:95], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[118:119], v[96:97], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[120:121], v[96:97], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v113, 16, v108
	v_lshl_or_b32 v109, v110, 16, v109
	v_lshl_or_b32 v108, v112, 16, v111
	v_lshl_or_b32 v111, v216, 16, v214
	v_lshl_or_b32 v110, v220, 16, v218
	v_lshl_or_b32 v112, v224, 16, v222
	v_lshl_or_b32 v113, v228, 16, v226
	v_lshl_or_b32 v127, v133, 16, v132
	v_lshl_or_b32 v126, v135, 16, v134
	v_lshl_or_b32 v129, v137, 16, v136
	v_lshl_or_b32 v128, v139, 16, v138
	v_wmma_i32_16x16x16_iu4 v[1:8], v[122:123], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[98:99], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[122:123], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[124:125], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[122:123], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[122:123], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[124:125], v[104:105], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[108:109], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[110:111], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[128:129], v[110:111], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[126:127], v[112:113], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[128:129], v[112:113], v[57:64] neg_lo:[1,1,0]
	.loc	1 720 19                        ; ragged.py:720:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 751 19                        ; ragged.py:751:19
	v_cvt_f32_i32_e32 v99, v1
	v_cvt_f32_i32_e32 v98, v2
	v_cvt_f32_i32_e32 v97, v3
	v_cvt_f32_i32_e32 v96, v4
	v_cvt_f32_i32_e32 v95, v5
	v_cvt_f32_i32_e32 v94, v6
	v_cvt_f32_i32_e32 v93, v7
	v_cvt_f32_i32_e32 v92, v8
	v_cvt_f32_i32_e32 v91, v9
	v_cvt_f32_i32_e32 v90, v10
	v_cvt_f32_i32_e32 v89, v11
	v_cvt_f32_i32_e32 v88, v12
	v_cvt_f32_i32_e32 v87, v13
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v85, v15
	v_cvt_f32_i32_e32 v84, v16
	v_cvt_f32_i32_e32 v83, v17
	v_cvt_f32_i32_e32 v82, v18
	v_cvt_f32_i32_e32 v81, v19
	v_cvt_f32_i32_e32 v80, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v78, v22
	v_cvt_f32_i32_e32 v77, v23
	v_cvt_f32_i32_e32 v76, v24
	v_cvt_f32_i32_e32 v75, v25
	v_cvt_f32_i32_e32 v74, v26
	v_cvt_f32_i32_e32 v73, v27
	v_cvt_f32_i32_e32 v72, v28
	v_cvt_f32_i32_e32 v68, v29
	v_cvt_f32_i32_e32 v67, v30
	v_cvt_f32_i32_e32 v66, v31
	v_cvt_f32_i32_e32 v65, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_lshl_b32 s16, s25, 4
.LBB0_7:                                ; %._crit_edge
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v33, s11, v70
	.loc	1 754 33                        ; ragged.py:754:33
	s_mul_i32 s0, s10, s24
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s13, 0xffff
	.loc	1 754 21                        ; ragged.py:754:21
	s_add_i32 s17, s11, s0
	s_mov_b32 s7, 0x31027000
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v36, 16, v33
	.loc	1 754 21                        ; ragged.py:754:21
	v_add_lshl_u32 v37, s17, v70, 1
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v35, 32, v33
	v_or_b32_e32 v34, 48, v33
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s24, v33
	v_cmp_gt_i32_e64 s2, s24, v36
	.loc	1 753 36                        ; ragged.py:753:36
	v_add_nc_u32_e32 v38, 32, v37
	v_add_nc_u32_e32 v39, 64, v37
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s24, v35
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v33, 0x80000000, v37, s0
	v_add_nc_u32_e32 v37, 0x60, v37
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v34
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v36, 0x80000000, v38, s2
	v_cndmask_b32_e64 v35, 0x80000000, v39, s1
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	v_cndmask_b32_e32 v34, 0x80000000, v37, vcc_lo
	s_clause 0x3
	buffer_load_u16 v37, v33, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v38, v34, s[4:7], 0 offen
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v33, s27, v0
	.loc	1 761 33                        ; ragged.py:761:33
	s_mul_i32 s3, s10, s25
	.loc	1 760 36                        ; ragged.py:760:36
	s_and_b32 s5, s15, 0xffff
	.loc	1 761 21                        ; ragged.py:761:21
	s_add_i32 s3, s27, s3
	.loc	1 760 36                        ; ragged.py:760:36
	s_mov_b32 s4, s14
	v_add_lshl_u32 v34, s3, v0, 1
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s25, v33
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v42, s25, v70
	s_mul_i32 s17, s17, s25
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshl_add_u32 v40, v71, 2, 0
	v_lshl_add_u32 v41, v71, 1, 0
	.loc	1 760 36                        ; ragged.py:760:36
	v_cndmask_b32_e64 v33, 0x80000000, v34, s3
	.loc	1 827 13                        ; ragged.py:827:13
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	.loc	1 760 36                        ; ragged.py:760:36
	buffer_load_u16 v39, v33, s[4:7], 0 offen
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v33, 4, v0
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v43, v33, 1, v69
	.loc	1 707 18 is_stmt 0              ; ragged.py:707:18
	v_or_b32_e32 v44, s27, v43
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v52, 14, v43
	v_or_b32_e32 v53, 12, v43
	v_or_b32_e32 v54, 10, v43
	v_or_b32_e32 v55, 8, v43
	v_or_b32_e32 v56, 6, v43
	v_or_b32_e32 v57, 4, v43
	v_or_b32_e32 v58, 2, v43
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s4, s25, v44
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v46, 0x8c, v43
	v_or_b32_e32 v47, 0x8a, v43
	v_or_b32_e32 v48, 0x88, v43
	v_or_b32_e32 v49, 0x86, v43
	v_or_b32_e32 v50, 0x84, v43
	v_or_b32_e32 v51, 0x82, v43
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s0, s4
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v45, 0x8e, v43
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v36, 16, v36
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 758 17                        ; ragged.py:758:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v78, v78, v36 :: v_dual_lshlrev_b32 v35, 16, v35
	v_dual_mul_f32 v99, v99, v37 :: v_dual_lshlrev_b32 v34, 1, v0
	v_dual_mul_f32 v97, v97, v37 :: v_dual_lshlrev_b32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v98, v98, v37 :: v_dual_and_b32 v33, 28, v34
	v_dual_mul_f32 v95, v95, v37 :: v_dual_and_b32 v34, 32, v0
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v0, s17, s27, v42
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v42, 0x80, v43
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v96, v96, v37
	v_mul_f32_e32 v94, v94, v37
	.loc	1 765 17                        ; ragged.py:765:17
	v_add3_u32 v40, v40, v34, v33
	.loc	1 827 22                        ; ragged.py:827:22
	v_add_nc_u32_e32 v59, s16, v0
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v61, s27, v42
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v93, v93, v37 :: v_dual_add_nc_u32 v60, s26, v0
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[33:34], null, s25, 48, v[0:1]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	v_add_lshl_u32 v34, v0, v43, 2
	v_add_lshl_u32 v44, v0, v58, 2
	v_add_lshl_u32 v62, v0, v57, 2
	v_add_lshl_u32 v63, v0, v56, 2
	v_add_lshl_u32 v64, v0, v55, 2
	v_add_lshl_u32 v69, v0, v54, 2
	v_add_lshl_u32 v70, v0, v53, 2
	v_add_lshl_u32 v71, v0, v52, 2
	v_add_lshl_u32 v107, v59, v43, 2
	v_add_lshl_u32 v108, v59, v58, 2
	v_add_lshl_u32 v109, v59, v57, 2
	v_add_lshl_u32 v110, v59, v56, 2
	v_add_lshl_u32 v111, v59, v55, 2
	v_add_lshl_u32 v112, v59, v54, 2
	v_add_lshl_u32 v113, v59, v53, 2
	v_add_lshl_u32 v114, v59, v52, 2
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s25, v61
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v122, v60, v43, 2
	v_add_lshl_u32 v123, v60, v58, 2
	v_add_lshl_u32 v124, v60, v57, 2
	v_add_lshl_u32 v125, v60, v56, 2
	v_add_lshl_u32 v126, v60, v55, 2
	v_add_lshl_u32 v127, v60, v54, 2
	v_add_lshl_u32 v128, v60, v53, 2
	v_add_lshl_u32 v129, v60, v52, 2
	v_add_lshl_u32 v130, v60, v42, 2
	v_add_lshl_u32 v131, v60, v51, 2
	v_add_lshl_u32 v132, v60, v50, 2
	v_add_lshl_u32 v133, v60, v49, 2
	v_add_lshl_u32 v134, v60, v48, 2
	v_add_lshl_u32 v135, v60, v47, 2
	v_add_lshl_u32 v136, v60, v46, 2
	.loc	1 760 36                        ; ragged.py:760:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	v_cndmask_b32_e64 v44, 0x80000000, v44, s5
	v_cndmask_b32_e64 v61, 0x80000000, v62, s5
	v_cndmask_b32_e64 v62, 0x80000000, v63, s5
	v_cndmask_b32_e64 v63, 0x80000000, v64, s5
	v_cndmask_b32_e64 v64, 0x80000000, v69, s5
	v_cndmask_b32_e64 v69, 0x80000000, v70, s5
	v_cndmask_b32_e64 v70, 0x80000000, v71, s5
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s2, s4
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v89, v89, v37 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v71, 0x80000000, v107, s5
	v_cndmask_b32_e64 v107, 0x80000000, v108, s5
	v_cndmask_b32_e64 v108, 0x80000000, v109, s5
	v_cndmask_b32_e64 v109, 0x80000000, v110, s5
	v_cndmask_b32_e64 v110, 0x80000000, v111, s5
	v_cndmask_b32_e64 v111, 0x80000000, v112, s5
	v_cndmask_b32_e64 v112, 0x80000000, v113, s5
	v_cndmask_b32_e64 v113, 0x80000000, v114, s5
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s1, s4
	s_and_b32 s1, s1, s3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v114, 0x80000000, v122, s5
	v_cndmask_b32_e64 v122, 0x80000000, v123, s5
	v_cndmask_b32_e64 v123, 0x80000000, v124, s5
	v_cndmask_b32_e64 v124, 0x80000000, v125, s5
	v_cndmask_b32_e64 v125, 0x80000000, v126, s5
	v_cndmask_b32_e64 v126, 0x80000000, v127, s5
	v_cndmask_b32_e64 v127, 0x80000000, v128, s5
	v_cndmask_b32_e64 v128, 0x80000000, v129, s5
	v_cndmask_b32_e64 v129, 0x80000000, v130, s1
	v_cndmask_b32_e64 v130, 0x80000000, v131, s1
	v_cndmask_b32_e64 v131, 0x80000000, v132, s1
	v_cndmask_b32_e64 v132, 0x80000000, v133, s1
	v_cndmask_b32_e64 v133, 0x80000000, v134, s1
	v_cndmask_b32_e64 v134, 0x80000000, v135, s1
	v_cndmask_b32_e64 v135, 0x80000000, v136, s1
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v91, v91, v37
	v_dual_mul_f32 v92, v92, v37 :: v_dual_mul_f32 v81, v81, v36
	v_dual_mul_f32 v90, v90, v37 :: v_dual_mul_f32 v79, v79, v36
	v_dual_mul_f32 v88, v88, v37 :: v_dual_mul_f32 v77, v77, v36
	v_dual_mul_f32 v87, v87, v37 :: v_dual_mul_f32 v76, v76, v36
	v_dual_mul_f32 v86, v86, v37 :: v_dual_mul_f32 v75, v75, v36
	v_dual_mul_f32 v85, v85, v37 :: v_dual_mul_f32 v74, v74, v36
	v_dual_mul_f32 v37, v84, v37 :: v_dual_mul_f32 v66, v66, v36
	v_mul_f32_e32 v83, v83, v36
	v_mul_f32_e32 v82, v82, v36
	v_mul_f32_e32 v80, v80, v36
	v_dual_mul_f32 v73, v73, v36 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v72, v72, v36 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v68, v68, v36 :: v_dual_mul_f32 v29, v29, v35
	v_dual_mul_f32 v67, v67, v36 :: v_dual_mul_f32 v30, v30, v35
	v_dual_mul_f32 v36, v65, v36 :: v_dual_mul_f32 v65, v28, v35
	v_mul_f32_e32 v84, v27, v35
	v_dual_mul_f32 v136, v26, v35 :: v_dual_mul_f32 v15, v15, v38
	v_dual_mul_f32 v137, v25, v35 :: v_dual_mul_f32 v16, v16, v38
	v_dual_mul_f32 v138, v24, v35 :: v_dual_mul_f32 v9, v9, v38
	v_mul_f32_e32 v139, v23, v35
	v_dual_mul_f32 v140, v22, v35 :: v_dual_mul_f32 v145, v12, v38
	v_dual_mul_f32 v141, v21, v35 :: v_dual_mul_f32 v146, v11, v38
	v_dual_mul_f32 v142, v20, v35 :: v_dual_mul_f32 v7, v7, v38
	v_dual_mul_f32 v143, v19, v35 :: v_dual_mul_f32 v10, v10, v38
	v_dual_mul_f32 v144, v18, v35 :: v_dual_mul_f32 v5, v5, v38
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v8, v8, v38
	.loc	1 765 17                        ; ragged.py:765:17
	ds_store_b32 v40, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v41
	ds_load_b128 v[21:24], v41 offset:16
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v39, v14, v38
	v_mul_f32_e32 v40, v13, v38
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[11:14], v41 offset:512
	ds_load_b128 v[25:28], v41 offset:528
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v100, v0, v42, 2
	v_add_lshl_u32 v101, v0, v51, 2
	v_add_lshl_u32 v102, v0, v50, 2
	v_add_lshl_u32 v103, v0, v49, 2
	v_add_lshl_u32 v104, v0, v48, 2
	v_add_lshl_u32 v105, v0, v47, 2
	v_add_lshl_u32 v106, v0, v46, 2
	v_add_lshl_u32 v0, v0, v45, 2
	v_add_lshl_u32 v115, v59, v42, 2
	v_add_lshl_u32 v116, v59, v51, 2
	v_add_lshl_u32 v117, v59, v50, 2
	v_add_lshl_u32 v118, v59, v49, 2
	v_add_lshl_u32 v119, v59, v48, 2
	v_add_lshl_u32 v120, v59, v47, 2
	v_add_lshl_u32 v121, v59, v46, 2
	v_add_lshl_u32 v59, v59, v45, 2
	v_add_lshl_u32 v60, v60, v45, 2
	v_add_lshl_u32 v43, v33, v43, 2
	.loc	1 758 17                        ; ragged.py:758:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v6, v6, v38 :: v_dual_mul_f32 v97, v97, v19
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v4, v4, v38 :: v_dual_mul_f32 v95, v95, v21
	v_dual_mul_f32 v3, v3, v38 :: v_dual_mul_f32 v96, v96, v20
	v_dual_mul_f32 v2, v2, v38 :: v_dual_mul_f32 v93, v93, v23
	v_dual_mul_f32 v1, v1, v38 :: v_dual_mul_f32 v38, v99, v17
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v41, v98, v18 :: v_dual_mul_f32 v92, v92, v24
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v58, v33, v58, 2
	v_add_lshl_u32 v57, v33, v57, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s0, s3
	s_and_b32 s2, s2, s3
	s_and_b32 s0, vcc_lo, s4
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	v_cndmask_b32_e64 v100, 0x80000000, v100, s5
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s5
	v_cndmask_b32_e64 v102, 0x80000000, v102, s5
	v_cndmask_b32_e64 v103, 0x80000000, v103, s5
	v_cndmask_b32_e64 v104, 0x80000000, v104, s5
	v_cndmask_b32_e64 v105, 0x80000000, v105, s5
	v_cndmask_b32_e64 v106, 0x80000000, v106, s5
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	v_cndmask_b32_e64 v121, 0x80000000, v121, s2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	v_cndmask_b32_e64 v60, 0x80000000, v60, s1
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v94, v94, v22 :: v_dual_mul_f32 v91, v91, v11
	v_dual_mul_f32 v90, v90, v12 :: v_dual_mul_f32 v89, v89, v13
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v88, v88, v14 :: v_dual_mul_f32 v87, v87, v25
	v_dual_mul_f32 v86, v86, v26 :: v_dual_mul_f32 v85, v85, v27
	v_dual_mul_f32 v37, v37, v28 :: v_dual_mul_f32 v82, v82, v18
	v_dual_mul_f32 v83, v83, v17 :: v_dual_mul_f32 v80, v80, v20
	v_dual_mul_f32 v81, v81, v19 :: v_dual_mul_f32 v78, v78, v22
	v_dual_mul_f32 v79, v79, v21 :: v_dual_mul_f32 v76, v76, v24
	v_dual_mul_f32 v77, v77, v23 :: v_dual_mul_f32 v74, v74, v12
	v_dual_mul_f32 v75, v75, v11 :: v_dual_mul_f32 v72, v72, v14
	v_dual_mul_f32 v73, v73, v13 :: v_dual_mul_f32 v66, v66, v27
	v_dual_mul_f32 v68, v68, v25 :: v_dual_mul_f32 v67, v67, v26
	v_dual_mul_f32 v36, v36, v28 :: v_dual_mul_f32 v31, v31, v18
	v_dual_mul_f32 v32, v32, v17 :: v_dual_mul_f32 v29, v29, v20
	v_dual_mul_f32 v30, v30, v19 :: v_dual_mul_f32 v65, v65, v21
	v_dual_mul_f32 v84, v84, v22 :: v_dual_mul_f32 v99, v137, v24
	v_dual_mul_f32 v98, v136, v23 :: v_dual_mul_f32 v137, v139, v12
	v_dual_mul_f32 v136, v138, v11 :: v_dual_mul_f32 v139, v141, v14
	v_dual_mul_f32 v138, v140, v13 :: v_dual_mul_f32 v141, v143, v26
	v_dual_mul_f32 v140, v142, v25 :: v_dual_mul_f32 v35, v35, v28
	v_dual_mul_f32 v142, v144, v27 :: v_dual_mul_f32 v15, v15, v18
	v_dual_mul_f32 v16, v16, v17 :: v_dual_mul_f32 v17, v39, v19
	.loc	1 827 13                        ; ragged.py:827:13
	s_clause 0x1f
	buffer_store_b32 v38, v34, s[8:11], 0 offen
	buffer_store_b32 v41, v44, s[8:11], 0 offen
	buffer_store_b32 v97, v61, s[8:11], 0 offen
	buffer_store_b32 v96, v62, s[8:11], 0 offen
	buffer_store_b32 v95, v63, s[8:11], 0 offen
	buffer_store_b32 v94, v64, s[8:11], 0 offen
	buffer_store_b32 v93, v69, s[8:11], 0 offen
	buffer_store_b32 v92, v70, s[8:11], 0 offen
	buffer_store_b32 v91, v100, s[8:11], 0 offen
	buffer_store_b32 v90, v101, s[8:11], 0 offen
	buffer_store_b32 v89, v102, s[8:11], 0 offen
	buffer_store_b32 v88, v103, s[8:11], 0 offen
	buffer_store_b32 v87, v104, s[8:11], 0 offen
	buffer_store_b32 v86, v105, s[8:11], 0 offen
	buffer_store_b32 v85, v106, s[8:11], 0 offen
	buffer_store_b32 v37, v0, s[8:11], 0 offen
	buffer_store_b32 v83, v71, s[8:11], 0 offen
	buffer_store_b32 v82, v107, s[8:11], 0 offen
	buffer_store_b32 v81, v108, s[8:11], 0 offen
	buffer_store_b32 v80, v109, s[8:11], 0 offen
	buffer_store_b32 v79, v110, s[8:11], 0 offen
	buffer_store_b32 v78, v111, s[8:11], 0 offen
	buffer_store_b32 v77, v112, s[8:11], 0 offen
	buffer_store_b32 v76, v113, s[8:11], 0 offen
	buffer_store_b32 v75, v115, s[8:11], 0 offen
	buffer_store_b32 v74, v116, s[8:11], 0 offen
	buffer_store_b32 v73, v117, s[8:11], 0 offen
	buffer_store_b32 v72, v118, s[8:11], 0 offen
	buffer_store_b32 v68, v119, s[8:11], 0 offen
	buffer_store_b32 v67, v120, s[8:11], 0 offen
	buffer_store_b32 v66, v121, s[8:11], 0 offen
	buffer_store_b32 v36, v59, s[8:11], 0 offen
	s_clause 0x10
	buffer_store_b32 v32, v114, s[8:11], 0 offen
	buffer_store_b32 v31, v122, s[8:11], 0 offen
	buffer_store_b32 v30, v123, s[8:11], 0 offen
	buffer_store_b32 v29, v124, s[8:11], 0 offen
	buffer_store_b32 v65, v125, s[8:11], 0 offen
	buffer_store_b32 v84, v126, s[8:11], 0 offen
	buffer_store_b32 v98, v127, s[8:11], 0 offen
	buffer_store_b32 v99, v128, s[8:11], 0 offen
	buffer_store_b32 v136, v129, s[8:11], 0 offen
	buffer_store_b32 v137, v130, s[8:11], 0 offen
	buffer_store_b32 v138, v131, s[8:11], 0 offen
	buffer_store_b32 v139, v132, s[8:11], 0 offen
	buffer_store_b32 v140, v133, s[8:11], 0 offen
	buffer_store_b32 v141, v134, s[8:11], 0 offen
	buffer_store_b32 v142, v135, s[8:11], 0 offen
	buffer_store_b32 v35, v60, s[8:11], 0 offen
	buffer_store_b32 v16, v43, s[8:11], 0 offen
	v_add_lshl_u32 v0, v33, v56, 2
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v8, v8, v11 :: v_dual_mul_f32 v5, v5, v14
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v11, v33, v55, 2
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v10, v10, v23 :: v_dual_mul_f32 v7, v7, v12
	v_dual_mul_f32 v6, v6, v13 :: v_dual_mul_f32 v3, v3, v26
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v12, v33, v54, 2
	v_cndmask_b32_e64 v13, 0x80000000, v57, s0
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v18, v40, v20 :: v_dual_mul_f32 v19, v145, v21
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v20, v146, v22 :: v_dual_mul_f32 v9, v9, v24
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v15, v58, s[8:11], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	buffer_store_b32 v17, v13, s[8:11], 0 offen
	v_add_lshl_u32 v13, v33, v53, 2
	s_clause 0x2
	buffer_store_b32 v18, v0, s[8:11], 0 offen
	buffer_store_b32 v19, v11, s[8:11], 0 offen
	buffer_store_b32 v20, v12, s[8:11], 0 offen
	v_add_lshl_u32 v0, v33, v52, 2
	v_add_lshl_u32 v12, v33, v42, 2
	v_add_lshl_u32 v14, v33, v50, 2
	v_cndmask_b32_e64 v11, 0x80000000, v13, s0
	v_add_lshl_u32 v13, v33, v51, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v2, v2, v27 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x4
	buffer_store_b32 v10, v11, s[8:11], 0 offen
	buffer_store_b32 v9, v0, s[8:11], 0 offen
	buffer_store_b32 v8, v12, s[8:11], 0 offen
	buffer_store_b32 v7, v13, s[8:11], 0 offen
	buffer_store_b32 v6, v14, s[8:11], 0 offen
	v_add_lshl_u32 v0, v33, v49, 2
	v_add_lshl_u32 v6, v33, v48, 2
	v_add_lshl_u32 v7, v33, v47, 2
	v_add_lshl_u32 v8, v33, v46, 2
	v_add_lshl_u32 v9, v33, v45, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v4, v4, v25 :: v_dual_mul_f32 v1, v1, v28
	.loc	1 827 13                        ; ragged.py:827:13
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v5, v0, s[8:11], 0 offen
	buffer_store_b32 v4, v6, s[8:11], 0 offen
	buffer_store_b32 v3, v7, s[8:11], 0 offen
	buffer_store_b32 v2, v8, s[8:11], 0 offen
	buffer_store_b32 v1, v9, s[8:11], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 229
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 229
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9432
; TotalNumSgprs: 34
; NumVgprs: 229
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 229
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     229
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
