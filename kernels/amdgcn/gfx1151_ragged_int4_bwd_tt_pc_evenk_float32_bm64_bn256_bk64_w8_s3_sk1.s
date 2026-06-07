	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[20:21], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s8, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s21, 0xff
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
	s_ashr_i32 s13, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s12, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s12, s13
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
	s_abs_i32 s6, s12
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s8, s6
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s10, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s6
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s10, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s7, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s9, s7
	s_xor_b32 s11, s7, s12
	s_ashr_i32 s25, s11, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s9, s8
	s_mul_i32 s14, s8, s6
	s_add_i32 s11, s8, 1
	s_sub_i32 s9, s9, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s14, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s9, s14, s9
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s11, s8
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s11, s10, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s26, s6, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s26, s25
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s6, s14, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 704 17 is_stmt 0              ; ragged.py:704:17
	s_sub_i32 s8, s7, s6
	.loc	1 710 19 is_stmt 1              ; ragged.py:710:19
	s_lshl_b64 s[6:7], s[10:11], 2
	.loc	1 707 18                        ; ragged.py:707:18
	s_lshl_b32 s22, s8, 8
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 719 22                        ; ragged.py:719:22
	s_lshl_b32 s24, s3, 5
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s4, s[4:5], 0x0
	s_mov_b32 s3, 0
	.loc	1 727 35                        ; ragged.py:727:35
	s_mul_i32 s11, s10, s21
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 26 is_stmt 0              ; ragged.py:711:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s23, s4, 1
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	s_cmp_lt_i32 s24, s23
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 761 21                        ; ragged.py:761:21
	s_add_i32 s16, s22, s11
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr16
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v77, 15, v0
	v_lshrrev_b32_e32 v79, 1, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v78, 1, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s3, s14, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s27, s[0:1], 0x38
	s_load_b128 s[16:19], s[0:1], 0x0
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	s_mul_i32 s13, s13, s10
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v1, s22, v79
	.loc	1 720 19                        ; ragged.py:720:19
	s_sub_i32 s13, s25, s13
	v_and_b32_e32 v8, 16, v0
	s_sub_i32 s13, s13, s26
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 720 19                        ; ragged.py:720:19
	s_mul_i32 s12, s12, s13
	s_lshl_b32 s2, s2, 8
	s_lshl_b32 s12, s12, 8
	.loc	1 706 36                        ; ragged.py:706:36
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 720 19                        ; ragged.py:720:19
	s_add_i32 s12, s12, s11
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v6, 0x80, v1
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s21, v1
	v_lshrrev_b32_e32 v1, 2, v8
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v9, s12, s2, v79
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshlrev_b32_e32 v2, 4, v78
	v_cmp_eq_u32_e64 s2, 0, v8
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s12, s26, 6
	.loc	1 723 35                        ; ragged.py:723:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s28, s10, s27
	v_and_or_b32 v81, 0x78, v3, v1
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v4, s28, s24, v4
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v8, 0x80, v9
	v_mad_u64_u32 v[73:74], null, s27, v9, v[2:3]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v4, s20, v4
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s21, v6
	.loc	1 720 19                        ; ragged.py:720:19
	v_mad_u64_u32 v[74:75], null, s27, v8, v[2:3]
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v5, 56, v3
	v_or_b32_e32 v6, 0x3f0, v0
	v_add_nc_u32_e32 v80, 0, v77
	v_xor_b32_e32 v82, 4, v81
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v84, 0, v3
	v_add3_u32 v4, v4, s12, v5
	s_lshl_b32 s12, s25, 6
	v_add_nc_u32_e32 v85, 0, v6
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v3, v1
	v_subrev_nc_u32_e32 v83, s12, v4
	v_mov_b32_e32 v4, v1
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v7, s3, v5
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v12, v1
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s20, v7
	v_or_b32_e32 v7, 0x7f0, v0
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v86, 0, v7
	v_mov_b32_e32 v7, v1
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
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s25, s20, 5
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 731 34                        ; ragged.py:731:34
	v_cndmask_b32_e64 v65, 0x80000000, v83, s1
	v_add_nc_u32_e32 v66, s24, v73
	.loc	1 732 34                        ; ragged.py:732:34
	v_add_nc_u32_e32 v67, s24, v74
	.loc	1 720 19                        ; ragged.py:720:19
	v_add_nc_u32_e32 v83, s25, v83
	.loc	1 750 17                        ; ragged.py:750:17
	s_add_i32 s24, s24, 32
	.loc	1 731 34                        ; ragged.py:731:34
	buffer_load_b64 v[75:76], v65, s[12:15], 0 offen
	.loc	1 732 34                        ; ragged.py:732:34
	v_cndmask_b32_e32 v65, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e64 v66, 0x80000000, v67, s0
	.loc	1 720 19                        ; ragged.py:720:19
	s_cmp_lt_i32 s24, s23
	.loc	1 732 34                        ; ragged.py:732:34
	s_clause 0x1
	buffer_load_b128 v[69:72], v65, s[16:19], 0 offen
	buffer_load_b128 v[65:68], v66, s[16:19], 0 offen
	.loc	1 731 34                        ; ragged.py:731:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v84, v[75:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 740 27                        ; ragged.py:740:27
	ds_load_u8 v75, v80 offset:320
	ds_load_u8 v76, v80 offset:256
	.loc	1 732 34                        ; ragged.py:732:34
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v96, v82, v70
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v97, v81, v65
	ds_bpermute_b32 v98, v81, v66
	ds_bpermute_b32 v99, v82, v65
	ds_bpermute_b32 v100, v82, v66
	ds_bpermute_b32 v101, v81, v67
	ds_bpermute_b32 v103, v82, v67
	ds_bpermute_b32 v102, v81, v68
	ds_bpermute_b32 v104, v82, v68
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v80 offset:448
	ds_load_u8 v87, v80 offset:384
	.loc	1 732 34                        ; ragged.py:732:34
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v65, v99, v97, s2
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v66, v100, v98, s2
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v87, v76, 0xc0c0004
	ds_load_u8 v87, v80 offset:64
	ds_load_u8 v88, v80
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v80 offset:192
	ds_load_u8 v89, v80 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v88, 16, v87
	ds_load_u8 v87, v80 offset:336
	ds_load_u8 v88, v80 offset:272
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[75:76], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v80 offset:464
	ds_load_u8 v89, v80 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v80 offset:16
	ds_load_u8 v90, v80 offset:80
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v89, v90, 0xc0c0004
	ds_load_u8 v90, v80 offset:208
	ds_load_u8 v91, v80 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v90, 16, v89
	ds_load_u8 v89, v80 offset:352
	ds_load_u8 v90, v80 offset:288
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v80 offset:480
	ds_load_u8 v91, v80 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v80 offset:32
	ds_load_u8 v92, v80 offset:96
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v91, v92, 0xc0c0004
	ds_load_u8 v92, v80 offset:224
	ds_load_u8 v93, v80 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v92, 16, v91
	ds_load_u8 v91, v80 offset:368
	ds_load_u8 v92, v80 offset:304
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[89:90], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v80 offset:496
	ds_load_u8 v93, v80 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v80 offset:48
	ds_load_u8 v94, v80 offset:112
	v_lshl_or_b32 v92, v92, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v94, 0xc0c0004
	ds_load_u8 v94, v80 offset:240
	ds_load_u8 v95, v80 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	.loc	1 732 34                        ; ragged.py:732:34
	ds_bpermute_b32 v95, v82, v69
	.loc	1 740 27                        ; ragged.py:740:27
	v_lshl_or_b32 v91, v94, 16, v93
	.loc	1 732 34                        ; ragged.py:732:34
	ds_bpermute_b32 v93, v81, v69
	ds_bpermute_b32 v94, v81, v70
	.loc	1 740 27                        ; ragged.py:740:27
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[91:92], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v80 offset:832
	ds_load_u8 v66, v80 offset:768
	.loc	1 732 34                        ; ragged.py:732:34
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v69, v95, v93, s2
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v70, v96, v94, s2
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v80 offset:960
	ds_load_u8 v67, v80 offset:896
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[75:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[91:92], v[49:56] neg_lo:[1,1,0]
	.loc	1 732 34                        ; ragged.py:732:34
	ds_bpermute_b32 v89, v81, v71
	ds_bpermute_b32 v91, v82, v71
	ds_bpermute_b32 v90, v81, v72
	ds_bpermute_b32 v92, v82, v72
	v_cndmask_b32_e64 v88, v104, v102, s2
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v80 offset:576
	ds_load_u8 v68, v80 offset:512
	v_lshl_or_b32 v66, v66, 16, v65
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v80 offset:704
	ds_load_u8 v69, v80 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v68, 16, v67
	ds_load_u8 v67, v80 offset:848
	ds_load_u8 v68, v80 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v80 offset:976
	ds_load_u8 v69, v80 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v80 offset:592
	ds_load_u8 v70, v80 offset:528
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v80 offset:720
	ds_load_u8 v71, v80 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v70, 16, v69
	ds_load_u8 v69, v80 offset:864
	ds_load_u8 v70, v80 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v80 offset:992
	ds_load_u8 v71, v80 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v80 offset:608
	ds_load_u8 v72, v80 offset:544
	v_lshl_or_b32 v70, v70, 16, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v80 offset:736
	ds_load_u8 v75, v80 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v72, 16, v71
	ds_load_u8 v71, v80 offset:624
	ds_load_u8 v72, v80 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v80 offset:752
	ds_load_u8 v75, v80 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v80 offset:880
	ds_load_u8 v76, v80 offset:816
	v_lshl_or_b32 v71, v72, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v85
	ds_load_u8 v87, v80 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v87, v76, 0xc0c0004
	.loc	1 732 34                        ; ragged.py:732:34
	v_cndmask_b32_e64 v87, v103, v101, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 740 27                        ; ragged.py:740:27
	v_lshl_or_b32 v72, v76, 16, v75
	.loc	1 732 34                        ; ragged.py:732:34
	v_cndmask_b32_e64 v75, v91, v89, s2
	v_cndmask_b32_e64 v76, v92, v90, s2
	.loc	1 740 27                        ; ragged.py:740:27
	v_wmma_i32_16x16x16_iu4 v[41:48], v[87:88], v[69:70], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[71:72], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[69:70], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v80 offset:1344
	ds_load_u8 v70, v80 offset:1280
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[67:68], v[17:24] neg_lo:[1,1,0]
	.loc	1 732 34                        ; ragged.py:732:34
	v_cndmask_b32_e64 v65, v93, v95, s2
	v_cndmask_b32_e64 v66, v94, v96, s2
	v_cndmask_b32_e64 v67, v97, v99, s2
	v_cndmask_b32_e64 v68, v98, v100, s2
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v80 offset:1472
	ds_load_u8 v71, v80 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v80 offset:1088
	ds_load_u8 v72, v80 offset:1024
	v_lshl_or_b32 v70, v70, 16, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v80 offset:1216
	ds_load_u8 v75, v80 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v72, 16, v71
	ds_load_u8 v71, v80 offset:1360
	ds_load_u8 v72, v80 offset:1296
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[69:70], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v80 offset:1856
	ds_load_u8 v70, v80 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v80 offset:1488
	ds_load_u8 v75, v80 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v80 offset:1728
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v80 offset:1104
	ds_load_u8 v76, v80 offset:1040
	v_lshl_or_b32 v72, v72, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v80 offset:1232
	ds_load_u8 v87, v80 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v87, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v76, 16, v75
	ds_load_u8 v75, v80 offset:1376
	ds_load_u8 v76, v80 offset:1312
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[71:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v71, v80 offset:1984
	ds_load_u8 v72, v80 offset:1920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v80 offset:1504
	ds_load_u8 v87, v80 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v87, v76, 0xc0c0004
	ds_load_u8 v87, v80 offset:1120
	ds_load_u8 v88, v80 offset:1056
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v80 offset:1248
	ds_load_u8 v93, v80 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v93, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v88, 16, v87
	ds_load_u8 v87, v80 offset:1392
	ds_load_u8 v88, v80 offset:1328
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[75:76], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v75, v80 offset:1600
	ds_load_u8 v76, v80 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v80 offset:1520
	ds_load_u8 v93, v80 offset:1456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v80 offset:1872
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v93, v88, 0xc0c0004
	ds_load_u8 v93, v80 offset:1136
	ds_load_u8 v94, v80 offset:1072
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v80 offset:1264
	ds_load_u8 v95, v80 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v94, 16, v93
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[87:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[87:88], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v87, v80 offset:1808
	ds_load_u8 v72, v80 offset:1664
	.loc	1 732 34                        ; ragged.py:732:34
	v_cndmask_b32_e64 v65, v89, v91, s2
	v_cndmask_b32_e64 v66, v90, v92, s2
	v_cndmask_b32_e64 v67, v101, v103, s2
	v_cndmask_b32_e64 v68, v102, v104, s2
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v70, 0xc0c0004
	v_lshl_or_b32 v70, v71, 16, v69
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v69, v72, 16, v75
	ds_load_u8 v71, v80 offset:2000
	ds_load_u8 v72, v80 offset:1936
	v_perm_b32 v75, v87, v76, 0xc0c0004
	ds_load_u8 v76, v80 offset:1616
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v80 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v72, v76, 0xc0c0004
	ds_load_u8 v72, v80 offset:1744
	ds_load_u8 v87, v80 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v87, v72, 0xc0c0004
	v_lshl_or_b32 v72, v71, 16, v75
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v71, v87, 16, v76
	ds_load_u8 v75, v80 offset:1888
	ds_load_u8 v76, v80 offset:1824
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[71:72], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v80 offset:2016
	ds_load_u8 v87, v80 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v87, v76, 0xc0c0004
	ds_load_u8 v87, v80 offset:1632
	ds_load_u8 v88, v80 offset:1568
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v80 offset:1760
	ds_load_u8 v89, v80 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v88, 16, v87
	ds_load_u8 v87, v80 offset:1648
	ds_load_u8 v88, v80 offset:1584
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[75:76], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v80 offset:1776
	ds_load_u8 v89, v80 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v80 offset:1904
	ds_load_u8 v90, v80 offset:1840
	v_lshl_or_b32 v87, v88, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v86
	ds_load_u8 v91, v80 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v88, v90, 16, v89
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[87:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[87:88], v[57:64] neg_lo:[1,1,0]
	.loc	1 720 19                        ; ragged.py:720:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 751 19                        ; ragged.py:751:19
	v_cvt_f32_i32_e32 v94, v1
	v_cvt_f32_i32_e32 v93, v2
	v_cvt_f32_i32_e32 v92, v3
	v_cvt_f32_i32_e32 v91, v4
	v_cvt_f32_i32_e32 v90, v5
	v_cvt_f32_i32_e32 v89, v6
	v_cvt_f32_i32_e32 v88, v7
	v_cvt_f32_i32_e32 v87, v8
	v_cvt_f32_i32_e32 v71, v9
	v_cvt_f32_i32_e32 v70, v10
	v_cvt_f32_i32_e32 v69, v11
	v_cvt_f32_i32_e32 v68, v12
	v_cvt_f32_i32_e32 v66, v13
	v_cvt_f32_i32_e32 v65, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v13, v16
	v_cvt_f32_i32_e32 v86, v17
	v_cvt_f32_i32_e32 v85, v18
	v_cvt_f32_i32_e32 v84, v19
	v_cvt_f32_i32_e32 v83, v20
	v_cvt_f32_i32_e32 v82, v21
	v_cvt_f32_i32_e32 v81, v22
	v_cvt_f32_i32_e32 v80, v23
	v_cvt_f32_i32_e32 v76, v24
	v_cvt_f32_i32_e32 v67, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v24, v27
	v_cvt_f32_i32_e32 v23, v28
	v_cvt_f32_i32_e32 v12, v29
	v_cvt_f32_i32_e32 v11, v30
	v_cvt_f32_i32_e32 v10, v31
	v_cvt_f32_i32_e32 v9, v32
	v_cvt_f32_i32_e32 v75, v33
	v_cvt_f32_i32_e32 v74, v34
	v_cvt_f32_i32_e32 v73, v35
	v_cvt_f32_i32_e32 v72, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v35, v39
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v22, v41
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v20, v43
	v_cvt_f32_i32_e32 v19, v44
	v_cvt_f32_i32_e32 v8, v45
	v_cvt_f32_i32_e32 v7, v46
	v_cvt_f32_i32_e32 v6, v47
	v_cvt_f32_i32_e32 v5, v48
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v32, v50
	v_cvt_f32_i32_e32 v31, v51
	v_cvt_f32_i32_e32 v30, v52
	v_cvt_f32_i32_e32 v29, v53
	v_cvt_f32_i32_e32 v28, v54
	v_cvt_f32_i32_e32 v27, v55
	v_cvt_f32_i32_e32 v26, v56
	v_cvt_f32_i32_e32 v18, v57
	v_cvt_f32_i32_e32 v17, v58
	v_cvt_f32_i32_e32 v16, v59
	v_cvt_f32_i32_e32 v15, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_add_i32 s16, s22, s11
.LBB0_7:                                ; %._crit_edge
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v38, s3, v77
	.loc	1 754 33                        ; ragged.py:754:33
	s_mul_i32 s0, s10, s20
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s5, 0xffff
	.loc	1 754 21                        ; ragged.py:754:21
	s_add_i32 s17, s3, s0
	s_mov_b32 s15, 0x31027000
	v_add_lshl_u32 v43, s17, v77, 1
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s20, v38
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v40, 48, v38
	v_or_b32_e32 v41, 32, v38
	v_or_b32_e32 v42, 16, v38
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v38, 0x80000000, v43, s0
	s_mov_b32 s12, s4
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s20, v41
	v_cmp_gt_i32_e64 s2, s20, v42
	v_cmp_gt_i32_e32 vcc_lo, s20, v40
	.loc	1 753 36                        ; ragged.py:753:36
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v39, s22, v0
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v47, s21, v77
	s_mul_i32 s17, s17, s21
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s21, v39
	.loc	1 827 13                        ; ragged.py:827:13
	s_mov_b32 s11, s15
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v109, 16, v38
	v_add_nc_u32_e32 v44, 32, v43
	v_add_nc_u32_e32 v45, 64, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v92, v92, v109 :: v_dual_add_nc_u32 v43, 0x60, v43
	v_mul_f32_e32 v93, v93, v109
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v42, 0x80000000, v44, s2
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v94, v94, v109
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v41, 0x80000000, v45, s1
	v_dual_cndmask_b32 v40, 0x80000000, v43 :: v_dual_mul_f32 v91, v91, v109
	s_clause 0x2
	buffer_load_u16 v44, v42, s[12:15], 0 offen
	buffer_load_u16 v41, v41, s[12:15], 0 offen
	buffer_load_u16 v40, v40, s[12:15], 0 offen
	.loc	1 760 36                        ; ragged.py:760:36
	v_add_lshl_u32 v43, s16, v0, 1
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v42, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 760 36                        ; ragged.py:760:36
	v_cndmask_b32_e64 v39, 0x80000000, v43, s3
	buffer_load_u16 v39, v39, s[12:15], 0 offen
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v110, 16, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v73, v73, v110 :: v_dual_lshlrev_b32 v44, 16, v44
	v_dual_mul_f32 v86, v86, v44 :: v_dual_and_b32 v43, 0x70, v79
	v_dual_mul_f32 v90, v90, v109 :: v_dual_and_b32 v45, 0xf0, v0
	v_mul_f32_e32 v88, v88, v109
	v_dual_mul_f32 v89, v89, v109 :: v_dual_lshlrev_b32 v0, 1, v0
	v_dual_mul_f32 v87, v87, v109 :: v_dual_lshlrev_b32 v46, 5, v78
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v48, v42, 1, v43
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshl_add_u32 v43, v45, 2, 0
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v85, v85, v44
	v_dual_mul_f32 v75, v75, v110 :: v_dual_and_b32 v42, 28, v0
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshl_add_u32 v45, v45, 1, 0
	.loc	1 758 17                        ; ragged.py:758:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v83, v83, v44 :: v_dual_lshlrev_b32 v38, 16, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 765 17                        ; ragged.py:765:17
	v_add3_u32 v46, v43, v46, v42
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v74, v74, v110 :: v_dual_lshlrev_b32 v111, 16, v40
	v_mul_f32_e32 v76, v76, v44
	v_dual_mul_f32 v84, v84, v44 :: v_dual_mul_f32 v37, v37, v110
	.loc	1 765 17                        ; ragged.py:765:17
	ds_store_b32 v46, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v45
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v46, v80, v44
	v_mul_f32_e32 v80, v35, v110
	v_mul_f32_e32 v112, v34, v110
	v_mul_f32_e32 v34, v31, v111
	v_mul_f32_e32 v35, v30, v111
	v_mul_f32_e32 v113, v29, v111
	v_mul_f32_e32 v114, v28, v111
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[28:31], v45 offset:16
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v82, v82, v44 :: v_dual_mul_f32 v33, v33, v111
	v_dual_mul_f32 v81, v81, v44 :: v_dual_mul_f32 v72, v72, v110
	v_mul_f32_e32 v32, v32, v111
	v_dual_mul_f32 v36, v36, v110 :: v_dual_mul_f32 v27, v27, v111
	v_mul_f32_e32 v26, v26, v111
	v_dual_mul_f32 v70, v70, v109 :: v_dual_mul_f32 v21, v21, v110
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v115, v15, v111 :: v_dual_mul_f32 v94, v94, v38
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v85, v85, v39
	v_dual_mul_f32 v93, v93, v39 :: v_dual_mul_f32 v92, v92, v40
	v_dual_mul_f32 v91, v91, v41 :: v_dual_mul_f32 v84, v84, v40
	v_dual_mul_f32 v83, v83, v41 :: v_dual_mul_f32 v86, v86, v38
	v_dual_mul_f32 v75, v75, v38 :: v_dual_mul_f32 v74, v74, v39
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v81, v81, v29
	v_dual_mul_f32 v73, v73, v40 :: v_dual_mul_f32 v72, v72, v41
	v_mul_f32_e32 v37, v37, v28
	v_dual_mul_f32 v38, v33, v38 :: v_dual_mul_f32 v39, v32, v39
	v_dual_mul_f32 v40, v34, v40 :: v_dual_mul_f32 v27, v27, v30
	v_mul_f32_e32 v41, v35, v41
	ds_load_b128 v[32:35], v45 offset:512
	v_dual_mul_f32 v90, v90, v28 :: v_dual_mul_f32 v89, v89, v29
	v_dual_mul_f32 v87, v87, v31 :: v_dual_mul_f32 v82, v82, v28
	v_dual_mul_f32 v76, v76, v31 :: v_dual_mul_f32 v25, v25, v44
	v_dual_mul_f32 v36, v36, v29 :: v_dual_mul_f32 v23, v23, v44
	v_mul_f32_e32 v80, v80, v30
	v_dual_mul_f32 v112, v112, v31 :: v_dual_mul_f32 v19, v19, v110
	v_dual_mul_f32 v28, v113, v28 :: v_dual_mul_f32 v29, v114, v29
	v_dual_mul_f32 v26, v26, v31 :: v_dual_mul_f32 v31, v71, v109
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v71, v18, v111
	v_mul_f32_e32 v113, v17, v111
	v_mul_f32_e32 v114, v16, v111
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[15:18], v45 offset:528
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v49, s22, v48
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v0, s17, s22, v47
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v60, 8, v48
	v_or_b32_e32 v61, 6, v48
	v_or_b32_e32 v62, 4, v48
	v_or_b32_e32 v63, 2, v48
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v88, v88, v30 :: v_dual_mul_f32 v69, v69, v109
	.loc	1 758 17                        ; ragged.py:758:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v24, v24, v44 :: v_dual_mul_f32 v45, v70, v33
	v_dual_mul_f32 v20, v20, v110 :: v_dual_mul_f32 v25, v25, v33
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s21, v49
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v47, 0x80, v48
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[42:43], null, s21, 48, v[0:1]
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v58, 12, v48
	v_or_b32_e32 v59, 10, v48
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v43, v0, v48, 2
	v_add_lshl_u32 v49, v0, v63, 2
	v_add_lshl_u32 v79, v0, v62, 2
	v_add_lshl_u32 v95, v0, v61, 2
	v_add_lshl_u32 v96, v0, v60, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v68, v68, v109 :: v_dual_mul_f32 v69, v69, v34
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v24, v24, v34 :: v_dual_mul_f32 v23, v23, v35
	v_dual_mul_f32 v21, v21, v33 :: v_dual_mul_f32 v20, v20, v34
	v_dual_mul_f32 v34, v114, v34 :: v_dual_mul_f32 v13, v13, v109
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v14, v14, v109 :: v_dual_mul_f32 v9, v9, v44
	v_dual_mul_f32 v10, v10, v44 :: v_dual_mul_f32 v5, v5, v110
	v_dual_mul_f32 v6, v6, v110 :: v_dual_mul_f32 v1, v1, v111
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v2, v2, v111 :: v_dual_mul_f32 v13, v13, v18
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v57, 14, v48
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s4, s0, s3
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v78, s22, v47
	.loc	1 827 22                        ; ragged.py:827:22
	v_lshl_add_u32 v64, s21, 4, v0
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	v_add_lshl_u32 v97, v0, v59, 2
	v_add_lshl_u32 v98, v0, v58, 2
	.loc	1 765 17 is_stmt 1              ; ragged.py:765:17
	v_dual_mul_f32 v46, v46, v30 :: v_dual_mul_f32 v67, v67, v44
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v22, v22, v110
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v14, v14, v17 :: v_dual_mul_f32 v9, v9, v18
	v_dual_mul_f32 v10, v10, v17 :: v_dual_mul_f32 v5, v5, v18
	v_dual_mul_f32 v6, v6, v17 :: v_dual_mul_f32 v1, v1, v18
	v_mul_f32_e32 v2, v2, v17
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v17, 0x80000000, v43, s4
	v_cndmask_b32_e64 v49, 0x80000000, v49, s4
	v_cndmask_b32_e64 v79, 0x80000000, v79, s4
	v_cndmask_b32_e64 v95, 0x80000000, v95, s4
	v_cndmask_b32_e64 v96, 0x80000000, v96, s4
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v56, 0x82, v48
	v_or_b32_e32 v55, 0x84, v48
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v99, v0, v57, 2
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v50, 0x8e, v48
	v_or_b32_e32 v51, 0x8c, v48
	v_or_b32_e32 v52, 0x8a, v48
	v_or_b32_e32 v53, 0x88, v48
	v_or_b32_e32 v54, 0x86, v48
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s5, s21, v78
	.loc	1 827 22                        ; ragged.py:827:22
	v_lshl_add_u32 v77, s21, 5, v0
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	v_add_lshl_u32 v107, v64, v48, 2
	v_add_lshl_u32 v108, v64, v63, 2
	v_add_lshl_u32 v30, v64, v62, 2
	.loc	1 765 17 is_stmt 1              ; ragged.py:765:17
	v_dual_mul_f32 v31, v31, v32 :: v_dual_mul_f32 v68, v68, v35
	v_mul_f32_e32 v33, v113, v33
	v_mul_f32_e32 v67, v67, v32
	v_dual_mul_f32 v22, v22, v32 :: v_dual_mul_f32 v19, v19, v35
	v_dual_mul_f32 v32, v71, v32 :: v_dual_mul_f32 v65, v65, v109
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v70, v64, v61, 2
	v_add_lshl_u32 v71, v64, v60, 2
	v_add_lshl_u32 v113, v64, v59, 2
	v_add_lshl_u32 v114, v64, v58, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v66, v66, v109 :: v_dual_mul_f32 v11, v11, v44
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v109, v64, v57, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v12, v12, v44 :: v_dual_mul_f32 v7, v7, v110
	v_dual_mul_f32 v8, v8, v110 :: v_dual_mul_f32 v3, v3, v111
	v_dual_mul_f32 v4, v4, v111 :: v_dual_mul_f32 v65, v65, v16
	.loc	1 827 13                        ; ragged.py:827:13
	s_clause 0x3
	buffer_store_b32 v94, v17, s[8:11], 0 offen
	buffer_store_b32 v93, v49, s[8:11], 0 offen
	buffer_store_b32 v92, v79, s[8:11], 0 offen
	buffer_store_b32 v91, v95, s[8:11], 0 offen
	v_cndmask_b32_e64 v97, 0x80000000, v97, s4
	buffer_store_b32 v90, v96, s[8:11], 0 offen
	v_cndmask_b32_e64 v96, 0x80000000, v98, s4
	v_add_lshl_u32 v100, v0, v47, 2
	v_add_lshl_u32 v101, v0, v56, 2
	v_add_lshl_u32 v102, v0, v55, 2
	v_cndmask_b32_e64 v99, 0x80000000, v99, s4
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s4, s2, s3
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v103, v0, v54, 2
	v_add_lshl_u32 v104, v0, v53, 2
	v_add_lshl_u32 v105, v0, v52, 2
	v_add_lshl_u32 v106, v0, v51, 2
	v_add_lshl_u32 v0, v0, v50, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s0, s0, s5
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v44, v64, v47, 2
	v_add_lshl_u32 v110, v64, v56, 2
	v_add_lshl_u32 v111, v64, v55, 2
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v66, v66, v15 :: v_dual_mul_f32 v11, v11, v16
	v_dual_mul_f32 v12, v12, v15 :: v_dual_mul_f32 v7, v7, v16
	v_dual_mul_f32 v8, v8, v15 :: v_dual_mul_f32 v3, v3, v16
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v16, v64, v53, 2
	v_add_lshl_u32 v18, v64, v52, 2
	v_add_lshl_u32 v43, v64, v51, 2
	v_add_lshl_u32 v17, v77, v48, 2
	v_add_lshl_u32 v94, v77, v63, 2
	v_add_lshl_u32 v49, v77, v62, 2
	v_add_lshl_u32 v93, v77, v61, 2
	v_add_lshl_u32 v79, v77, v60, 2
	v_add_lshl_u32 v92, v77, v59, 2
	v_add_lshl_u32 v91, v77, v58, 2
	v_add_lshl_u32 v95, v77, v57, 2
	v_add_lshl_u32 v90, v77, v47, 2
	v_add_lshl_u32 v98, v77, v56, 2
	buffer_store_b32 v89, v97, s[8:11], 0 offen
	v_add_lshl_u32 v89, v77, v55, 2
	v_add_lshl_u32 v97, v77, v54, 2
	buffer_store_b32 v88, v96, s[8:11], 0 offen
	v_add_lshl_u32 v88, v77, v53, 2
	v_add_lshl_u32 v96, v77, v52, 2
	v_add_lshl_u32 v78, v77, v51, 2
	v_add_lshl_u32 v77, v77, v50, 2
	v_add_lshl_u32 v48, v42, v48, 2
	v_add_lshl_u32 v63, v42, v63, 2
	v_add_lshl_u32 v62, v42, v62, 2
	v_cndmask_b32_e64 v107, 0x80000000, v107, s4
	v_cndmask_b32_e64 v108, 0x80000000, v108, s4
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	v_cndmask_b32_e64 v70, 0x80000000, v70, s4
	v_cndmask_b32_e64 v71, 0x80000000, v71, s4
	v_cndmask_b32_e64 v113, 0x80000000, v113, s4
	v_cndmask_b32_e64 v114, 0x80000000, v114, s4
	v_cndmask_b32_e64 v109, 0x80000000, v109, s4
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s4, s1, s3
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v4, v4, v15
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v15, v64, v54, 2
	v_add_lshl_u32 v64, v64, v50, 2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s2, s2, s5
	s_and_b32 s1, s1, s5
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_add_lshl_u32 v61, v42, v61, 2
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v35, v115, v35
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v94, 0x80000000, v94, s4
	v_cndmask_b32_e64 v49, 0x80000000, v49, s4
	v_cndmask_b32_e64 v93, 0x80000000, v93, s4
	v_cndmask_b32_e64 v79, 0x80000000, v79, s4
	v_cndmask_b32_e64 v92, 0x80000000, v92, s4
	v_cndmask_b32_e64 v91, 0x80000000, v91, s4
	v_cndmask_b32_e64 v95, 0x80000000, v95, s4
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	v_cndmask_b32_e64 v63, 0x80000000, v63, s3
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s1
	v_cndmask_b32_e64 v89, 0x80000000, v89, s1
	v_cndmask_b32_e64 v97, 0x80000000, v97, s1
	v_cndmask_b32_e64 v88, 0x80000000, v88, s1
	v_cndmask_b32_e64 v96, 0x80000000, v96, s1
	v_cndmask_b32_e64 v78, 0x80000000, v78, s1
	v_cndmask_b32_e64 v77, 0x80000000, v77, s1
	s_clause 0x1f
	buffer_store_b32 v87, v99, s[8:11], 0 offen
	buffer_store_b32 v31, v100, s[8:11], 0 offen
	buffer_store_b32 v45, v101, s[8:11], 0 offen
	buffer_store_b32 v69, v102, s[8:11], 0 offen
	buffer_store_b32 v68, v103, s[8:11], 0 offen
	buffer_store_b32 v66, v104, s[8:11], 0 offen
	buffer_store_b32 v65, v105, s[8:11], 0 offen
	buffer_store_b32 v14, v106, s[8:11], 0 offen
	buffer_store_b32 v13, v0, s[8:11], 0 offen
	buffer_store_b32 v86, v107, s[8:11], 0 offen
	buffer_store_b32 v85, v108, s[8:11], 0 offen
	buffer_store_b32 v84, v30, s[8:11], 0 offen
	buffer_store_b32 v83, v70, s[8:11], 0 offen
	buffer_store_b32 v82, v71, s[8:11], 0 offen
	buffer_store_b32 v81, v113, s[8:11], 0 offen
	buffer_store_b32 v46, v114, s[8:11], 0 offen
	buffer_store_b32 v76, v109, s[8:11], 0 offen
	buffer_store_b32 v67, v44, s[8:11], 0 offen
	buffer_store_b32 v25, v110, s[8:11], 0 offen
	buffer_store_b32 v24, v111, s[8:11], 0 offen
	buffer_store_b32 v23, v15, s[8:11], 0 offen
	buffer_store_b32 v12, v16, s[8:11], 0 offen
	buffer_store_b32 v11, v18, s[8:11], 0 offen
	buffer_store_b32 v10, v43, s[8:11], 0 offen
	buffer_store_b32 v9, v64, s[8:11], 0 offen
	buffer_store_b32 v75, v17, s[8:11], 0 offen
	buffer_store_b32 v74, v94, s[8:11], 0 offen
	buffer_store_b32 v73, v49, s[8:11], 0 offen
	buffer_store_b32 v72, v93, s[8:11], 0 offen
	buffer_store_b32 v37, v79, s[8:11], 0 offen
	buffer_store_b32 v36, v92, s[8:11], 0 offen
	buffer_store_b32 v80, v91, s[8:11], 0 offen
	s_clause 0x9
	buffer_store_b32 v112, v95, s[8:11], 0 offen
	buffer_store_b32 v22, v90, s[8:11], 0 offen
	buffer_store_b32 v21, v98, s[8:11], 0 offen
	buffer_store_b32 v20, v89, s[8:11], 0 offen
	buffer_store_b32 v19, v97, s[8:11], 0 offen
	buffer_store_b32 v8, v88, s[8:11], 0 offen
	buffer_store_b32 v7, v96, s[8:11], 0 offen
	buffer_store_b32 v6, v78, s[8:11], 0 offen
	buffer_store_b32 v5, v77, s[8:11], 0 offen
	buffer_store_b32 v38, v48, s[8:11], 0 offen
	v_add_lshl_u32 v0, v42, v60, 2
	v_cndmask_b32_e64 v6, 0x80000000, v62, s3
	v_add_lshl_u32 v5, v42, v59, 2
	v_cndmask_b32_e64 v7, 0x80000000, v61, s3
	buffer_store_b32 v39, v63, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	buffer_store_b32 v40, v6, s[8:11], 0 offen
	v_add_lshl_u32 v6, v42, v58, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_clause 0x2
	buffer_store_b32 v41, v7, s[8:11], 0 offen
	buffer_store_b32 v28, v0, s[8:11], 0 offen
	buffer_store_b32 v29, v5, s[8:11], 0 offen
	v_add_lshl_u32 v0, v42, v57, 2
	v_cndmask_b32_e64 v5, 0x80000000, v6, s3
	v_add_lshl_u32 v6, v42, v47, 2
	v_add_lshl_u32 v7, v42, v56, 2
	v_add_lshl_u32 v8, v42, v55, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v5, s[8:11], 0 offen
	buffer_store_b32 v26, v0, s[8:11], 0 offen
	buffer_store_b32 v32, v6, s[8:11], 0 offen
	buffer_store_b32 v33, v7, s[8:11], 0 offen
	buffer_store_b32 v34, v8, s[8:11], 0 offen
	v_add_lshl_u32 v0, v42, v54, 2
	v_add_lshl_u32 v5, v42, v53, 2
	v_add_lshl_u32 v6, v42, v52, 2
	v_add_lshl_u32 v7, v42, v51, 2
	v_add_lshl_u32 v8, v42, v50, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b32 v35, v0, s[8:11], 0 offen
	buffer_store_b32 v4, v5, s[8:11], 0 offen
	buffer_store_b32 v3, v6, s[8:11], 0 offen
	buffer_store_b32 v2, v7, s[8:11], 0 offen
	buffer_store_b32 v1, v8, s[8:11], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 116
		.amdhsa_next_free_sgpr 29
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 116
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7512
; TotalNumSgprs: 31
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 116
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
