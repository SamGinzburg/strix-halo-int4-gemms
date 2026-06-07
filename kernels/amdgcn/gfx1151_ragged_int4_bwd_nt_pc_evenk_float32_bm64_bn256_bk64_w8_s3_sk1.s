	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_lshlrev_b32_e32 v72, 1, v0
	s_mov_b32 s15, 0
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
	s_sub_i32 s9, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s7, s9
	s_xor_b32 s11, s9, s12
	s_ashr_i32 s26, s11, 31
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
	s_mul_hi_u32 s8, s7, s8
	s_mul_i32 s14, s8, s6
	s_add_i32 s11, s8, 1
	s_sub_i32 s7, s7, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s14, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s7, s14, s7
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s11, s8
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s11, s10, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s27, s6, s26
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[6:7], s[10:11], 2
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s8, s27, s26
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s14, s8, s12
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s23, s8, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s9, s9, s14
	.loc	1 725 35                        ; ragged.py:725:35
	s_mul_i32 s14, s10, s20
	.loc	1 707 18                        ; ragged.py:707:18
	s_lshl_b32 s22, s9, 8
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 719 22                        ; ragged.py:719:22
	s_lshl_b32 s24, s3, 5
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s4, s[4:5], 0x0
	.loc	1 727 35                        ; ragged.py:727:35
	s_mul_i32 s3, s10, s21
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 26 is_stmt 0              ; ragged.py:711:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s25, s4, 1
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	s_cmp_lt_i32 s24, s25
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshlrev_b32_e32 v38, 1, v0
	.loc	1 754 21                        ; ragged.py:754:21
	s_add_i32 s11, s23, s14
	.loc	1 761 21                        ; ragged.py:761:21
	s_add_i32 s16, s22, s3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s15, -1
                                        ; implicit-def: $sgpr11
                                        ; implicit-def: $sgpr16
                                        ; implicit-def: $vgpr38
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v69, 15, v0
	v_lshrrev_b32_e32 v71, 1, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v70, 1, v0
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
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v95, 0
	s_and_not1_b32 vcc_lo, exec_lo, s15
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	s_mul_i32 s13, s13, s10
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x0
	s_load_b32 s28, s[0:1], 0x38
	.loc	1 706 36                        ; ragged.py:706:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_bfe_u32 v7, v0, 4, 1
	.loc	1 720 19                        ; ragged.py:720:19
	s_sub_i32 s10, s26, s13
	s_add_i32 s11, s23, s14
	s_sub_i32 s10, s10, s27
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v3, s22, v71
	.loc	1 720 19                        ; ragged.py:720:19
	s_mul_i32 s12, s12, s10
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v8, s23, v1
	v_add_nc_u32_e32 v10, s11, v1
	v_and_or_b32 v1, v72, 30, v7
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s10, s12, 8
	s_lshl_b32 s2, s2, 8
	s_add_i32 s10, s10, s3
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v9, 0x80, v3
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s20, v8
	v_lshlrev_b32_e32 v73, 2, v1
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v8, s10, s2, v71
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v6, 24, v72
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshlrev_b32_e32 v2, 4, v70
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s21, v3
	.loc	1 714 18                        ; ragged.py:714:18
	v_and_b32_e32 v3, 24, v4
	v_and_b32_e32 v5, 24, v71
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s1, s21, v9
	v_lshl_or_b32 v6, v69, 5, v6
	v_and_b32_e32 v9, 16, v0
	.loc	1 720 19                        ; ragged.py:720:19
	v_add_nc_u32_e32 v12, 0x80, v8
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s28, v8, v[2:3]
	v_xor_b32_e32 v7, 16, v6
	v_mov_b32_e32 v8, v1
	v_cmp_eq_u32_e64 s2, 0, v9
	v_mov_b32_e32 v9, v1
	v_mad_u64_u32 v[66:67], null, s28, v12, v[2:3]
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v4, v4, v5
	v_xor_b32_e32 v5, 8, v6
	v_xor_b32_e32 v11, 24, v6
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v77, 0, v7
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[67:68], null, v10, s28, v[3:4]
	v_add_nc_u32_e32 v68, 0, v4
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v75, 0, v6
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v76, 0, v5
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v78, 0, v11
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v74, 4, v73
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v14, v1
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
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_add_nc_u32_e32 v79, s24, v65
	.loc	1 732 34 is_stmt 1              ; ragged.py:732:34
	v_add_nc_u32_e32 v81, s24, v66
	.loc	1 731 34                        ; ragged.py:731:34
	v_add_nc_u32_e32 v80, s24, v67
	.loc	1 750 17                        ; ragged.py:750:17
	s_add_i32 s24, s24, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 720 19                        ; ragged.py:720:19
	s_cmp_lt_i32 s24, s25
	.loc	1 732 34                        ; ragged.py:732:34
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	v_cndmask_b32_e64 v83, 0x80000000, v81, s1
	.loc	1 731 34                        ; ragged.py:731:34
	v_cndmask_b32_e64 v87, 0x80000000, v80, s0
	.loc	1 732 34                        ; ragged.py:732:34
	s_clause 0x1
	buffer_load_b128 v[79:82], v79, s[16:19], 0 offen
	buffer_load_b128 v[83:86], v83, s[16:19], 0 offen
	.loc	1 731 34                        ; ragged.py:731:34
	buffer_load_b64 v[87:88], v87, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 34                        ; ragged.py:732:34
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v101, v73, v79
	ds_bpermute_b32 v102, v73, v80
	ds_bpermute_b32 v103, v74, v79
	ds_bpermute_b32 v104, v74, v80
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v105, v73, v83
	ds_bpermute_b32 v106, v73, v84
	ds_bpermute_b32 v107, v74, v83
	ds_bpermute_b32 v108, v74, v84
	.loc	1 731 34                        ; ragged.py:731:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v68, v[87:88]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[87:90], v75 offset1:1
	ds_load_2addr_stride64_b64 v[91:94], v75 offset0:2 offset1:3
	.loc	1 732 34                        ; ragged.py:732:34
	ds_bpermute_b32 v109, v73, v81
	ds_bpermute_b32 v110, v73, v82
	ds_bpermute_b32 v111, v74, v81
	ds_bpermute_b32 v112, v74, v82
	ds_bpermute_b32 v113, v73, v85
	ds_bpermute_b32 v114, v73, v86
	ds_bpermute_b32 v115, v74, v85
	ds_bpermute_b32 v116, v74, v86
	.loc	1 731 34                        ; ragged.py:731:34
	ds_load_2addr_stride64_b64 v[79:82], v76 offset1:1
	ds_load_2addr_stride64_b64 v[83:86], v76 offset0:2 offset1:3
	.loc	1 732 34                        ; ragged.py:732:34
	v_cndmask_b32_e64 v95, v103, v101, s2
	v_cndmask_b32_e64 v96, v104, v102, s2
	v_cndmask_b32_e64 v103, v101, v103, s2
	v_cndmask_b32_e64 v104, v102, v104, s2
	v_cndmask_b32_e64 v99, v107, v105, s2
	v_cndmask_b32_e64 v100, v108, v106, s2
	v_cndmask_b32_e64 v105, v105, v107, s2
	v_cndmask_b32_e64 v106, v106, v108, s2
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[89:90], v[25:32] neg_lo:[1,1,0]
	.loc	1 731 34                        ; ragged.py:731:34
	ds_load_2addr_stride64_b64 v[87:90], v77 offset1:1
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[95:96], v[93:94], v[49:56] neg_lo:[1,1,0]
	.loc	1 731 34                        ; ragged.py:731:34
	ds_load_2addr_stride64_b64 v[95:98], v77 offset0:2 offset1:3
	.loc	1 740 27                        ; ragged.py:740:27
	v_wmma_i32_16x16x16_iu4 v[41:48], v[99:100], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[99:100], v[93:94], v[57:64] neg_lo:[1,1,0]
	.loc	1 731 34                        ; ragged.py:731:34
	ds_load_2addr_stride64_b64 v[91:94], v78 offset1:1
	ds_load_2addr_stride64_b64 v[99:102], v78 offset0:2 offset1:3
	.loc	1 732 34                        ; ragged.py:732:34
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v107, v111, v109, s2
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v108, v112, v110, s2
	v_cndmask_b32_e64 v109, v109, v111, s2
	v_cndmask_b32_e64 v110, v110, v112, s2
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v111, v115, v113, s2
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v112, v116, v114, s2
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[81:82], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[107:108], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[107:108], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[85:86], v[57:64] neg_lo:[1,1,0]
	.loc	1 732 34                        ; ragged.py:732:34
	v_cndmask_b32_e64 v113, v113, v115, s2
	v_cndmask_b32_e64 v114, v114, v116, s2
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[105:106], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[105:106], v[89:90], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[95:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[103:104], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[105:106], v[95:96], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[105:106], v[97:98], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[91:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[113:114], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[113:114], v[93:94], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[109:110], v[99:100], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[113:114], v[99:100], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[109:110], v[101:102], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[113:114], v[101:102], v[57:64] neg_lo:[1,1,0]
	.loc	1 720 19                        ; ragged.py:720:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 751 19                        ; ragged.py:751:19
	v_cvt_f32_i32_e32 v95, v1
	v_cvt_f32_i32_e32 v94, v2
	v_cvt_f32_i32_e32 v93, v3
	v_cvt_f32_i32_e32 v92, v4
	v_cvt_f32_i32_e32 v91, v5
	v_cvt_f32_i32_e32 v90, v6
	v_cvt_f32_i32_e32 v89, v7
	v_cvt_f32_i32_e32 v88, v8
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v74, v10
	v_cvt_f32_i32_e32 v73, v11
	v_cvt_f32_i32_e32 v68, v12
	v_cvt_f32_i32_e32 v66, v13
	v_cvt_f32_i32_e32 v65, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v13, v16
	v_cvt_f32_i32_e32 v87, v17
	v_cvt_f32_i32_e32 v86, v18
	v_cvt_f32_i32_e32 v85, v19
	v_cvt_f32_i32_e32 v84, v20
	v_cvt_f32_i32_e32 v83, v21
	v_cvt_f32_i32_e32 v82, v22
	v_cvt_f32_i32_e32 v81, v23
	v_cvt_f32_i32_e32 v80, v24
	v_cvt_f32_i32_e32 v67, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v24, v27
	v_cvt_f32_i32_e32 v23, v28
	v_cvt_f32_i32_e32 v12, v29
	v_cvt_f32_i32_e32 v11, v30
	v_cvt_f32_i32_e32 v10, v31
	v_cvt_f32_i32_e32 v9, v32
	v_cvt_f32_i32_e32 v79, v33
	v_cvt_f32_i32_e32 v78, v34
	v_cvt_f32_i32_e32 v77, v35
	v_cvt_f32_i32_e32 v76, v36
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
	v_mov_b32_e32 v38, v72
	s_add_i32 s16, s22, s3
.LBB0_7:                                ; %._crit_edge
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v39, s23, v69
	.loc	1 754 21                        ; ragged.py:754:21
	v_add_lshl_u32 v41, s11, v69, 1
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s20, v39
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v42, 48, v39
	v_or_b32_e32 v43, 32, v39
	v_or_b32_e32 v44, 16, v39
	.loc	1 753 36                        ; ragged.py:753:36
	s_mov_b32 s12, s4
	v_cndmask_b32_e64 v39, 0x80000000, v41, s0
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e32 vcc_lo, s20, v42
	v_cmp_gt_i32_e64 s1, s20, v43
	v_cmp_gt_i32_e64 s2, s20, v44
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v40, s22, v0
	.loc	1 753 36                        ; ragged.py:753:36
	buffer_load_u16 v39, v39, s[12:15], 0 offen
	.loc	1 760 36                        ; ragged.py:760:36
	v_add_lshl_u32 v42, s16, v0, 1
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v47, s21, v69
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_and_b32 s9, s9, 0xffff
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s21, v40
	.loc	1 827 13                        ; ragged.py:827:13
	s_mov_b32 s10, s14
	.loc	1 765 17                        ; ragged.py:765:17
	v_and_b32_e32 v38, 28, v38
	.loc	1 760 36                        ; ragged.py:760:36
	v_cndmask_b32_e64 v40, 0x80000000, v42, s3
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v42, 4, v0
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s3, s11, s21
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_mov_b32 s11, s15
	.loc	1 753 36 is_stmt 1              ; ragged.py:753:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v108, 16, v39
	v_add_nc_u32_e32 v45, 32, v41
	v_add_nc_u32_e32 v46, 64, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v92, v92, v108 :: v_dual_add_nc_u32 v41, 0x60, v41
	v_mul_f32_e32 v94, v94, v108
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v44, 0x80000000, v45, s2
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v95, v95, v108
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v43, 0x80000000, v46, s1
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x2
	buffer_load_u16 v44, v44, s[12:15], 0 offen
	buffer_load_u16 v45, v43, s[12:15], 0 offen
	buffer_load_u16 v41, v41, s[12:15], 0 offen
	.loc	1 760 36                        ; ragged.py:760:36
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	buffer_load_u16 v40, v40, s[12:15], 0 offen
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v77, v77, v45 :: v_dual_lshlrev_b32 v44, 16, v44
	v_mul_f32_e32 v87, v87, v44
	v_dual_mul_f32 v90, v90, v108 :: v_dual_and_b32 v43, 0x70, v71
	v_mul_f32_e32 v88, v88, v108
	v_dual_mul_f32 v79, v79, v45 :: v_dual_and_b32 v0, 0xf0, v0
	v_dual_mul_f32 v93, v93, v108 :: v_dual_lshlrev_b32 v46, 5, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v48, v42, 1, v43
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshl_add_u32 v42, v0, 2, 0
	v_lshl_add_u32 v49, v0, 1, 0
	.loc	1 758 17                        ; ragged.py:758:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v76, v76, v45 :: v_dual_lshlrev_b32 v39, 16, v40
	v_dual_mul_f32 v91, v91, v108 :: v_dual_lshlrev_b32 v110, 16, v41
	.loc	1 765 17                        ; ragged.py:765:17
	v_add3_u32 v38, v42, v46, v38
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v85, v85, v44 :: v_dual_mul_f32 v36, v36, v45
	v_dual_mul_f32 v84, v84, v44 :: v_dual_mul_f32 v111, v35, v45
	.loc	1 765 17                        ; ragged.py:765:17
	ds_store_b32 v38, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v49
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v83, v83, v44 :: v_dual_mul_f32 v112, v34, v45
	v_dual_mul_f32 v80, v80, v44 :: v_dual_mul_f32 v35, v30, v110
	v_mul_f32_e32 v34, v31, v110
	v_mul_f32_e32 v113, v29, v110
	v_mul_f32_e32 v114, v28, v110
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[28:31], v49 offset:16
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v89, v89, v108 :: v_dual_mul_f32 v78, v78, v45
	v_dual_mul_f32 v86, v86, v44 :: v_dual_mul_f32 v37, v37, v45
	v_dual_mul_f32 v82, v82, v44 :: v_dual_mul_f32 v33, v33, v110
	v_dual_mul_f32 v81, v81, v44 :: v_dual_mul_f32 v32, v32, v110
	v_mul_f32_e32 v27, v27, v110
	v_dual_mul_f32 v26, v26, v110 :: v_dual_mul_f32 v73, v73, v108
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v22, v22, v45 :: v_dual_mul_f32 v95, v95, v38
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v86, v86, v39
	v_dual_mul_f32 v94, v94, v39 :: v_dual_mul_f32 v93, v93, v40
	v_dual_mul_f32 v92, v92, v41 :: v_dual_mul_f32 v87, v87, v38
	v_dual_mul_f32 v84, v84, v41 :: v_dual_mul_f32 v85, v85, v40
	v_dual_mul_f32 v79, v79, v38 :: v_dual_mul_f32 v78, v78, v39
	v_dual_mul_f32 v77, v77, v40 :: v_dual_mul_f32 v76, v76, v41
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v91, v91, v28 :: v_dual_mul_f32 v38, v33, v38
	v_dual_mul_f32 v39, v32, v39 :: v_dual_mul_f32 v40, v34, v40
	v_mul_f32_e32 v41, v35, v41
	ds_load_b128 v[32:35], v49 offset:512
	v_dual_mul_f32 v90, v90, v29 :: v_dual_mul_f32 v89, v89, v30
	v_dual_mul_f32 v88, v88, v31 :: v_dual_mul_f32 v83, v83, v28
	v_dual_mul_f32 v82, v82, v29 :: v_dual_mul_f32 v81, v81, v30
	v_dual_mul_f32 v80, v80, v31 :: v_dual_mul_f32 v37, v37, v28
	v_dual_mul_f32 v36, v36, v29 :: v_dual_mul_f32 v111, v111, v30
	v_dual_mul_f32 v112, v112, v31 :: v_dual_mul_f32 v29, v114, v29
	v_dual_mul_f32 v28, v113, v28 :: v_dual_mul_f32 v27, v27, v30
	v_dual_mul_f32 v26, v26, v31 :: v_dual_mul_f32 v31, v75, v108
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v25, v25, v44 :: v_dual_mul_f32 v114, v16, v110
	v_dual_mul_f32 v24, v24, v44 :: v_dual_mul_f32 v75, v18, v110
	v_mul_f32_e32 v113, v17, v110
	v_dual_mul_f32 v115, v15, v110 :: v_dual_mul_f32 v66, v66, v108
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[15:18], v49 offset:528
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v50, s22, v48
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v0, s3, s22, v47
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v61, 8, v48
	v_or_b32_e32 v62, 6, v48
	v_or_b32_e32 v63, 4, v48
	v_or_b32_e32 v64, 2, v48
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v74, v74, v108 :: v_dual_mul_f32 v21, v21, v45
	v_dual_mul_f32 v68, v68, v108 :: v_dual_mul_f32 v19, v19, v45
	v_mul_f32_e32 v23, v23, v44
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s21, v50
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v47, 0x80, v48
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[42:43], null, s21, 48, v[0:1]
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v59, 12, v48
	v_or_b32_e32 v60, 10, v48
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v43, v0, v48, 2
	v_add_lshl_u32 v50, v0, v64, 2
	v_add_lshl_u32 v71, v0, v63, 2
	v_add_lshl_u32 v72, v0, v62, 2
	v_add_lshl_u32 v96, v0, v61, 2
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v68, v68, v35 :: v_dual_mul_f32 v25, v25, v33
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v14, v14, v108 :: v_dual_mul_f32 v23, v23, v35
	v_dual_mul_f32 v12, v12, v44 :: v_dual_mul_f32 v21, v21, v33
	v_dual_mul_f32 v10, v10, v44 :: v_dual_mul_f32 v19, v19, v35
	v_dual_mul_f32 v8, v8, v45 :: v_dual_mul_f32 v35, v115, v35
	v_dual_mul_f32 v6, v6, v45 :: v_dual_mul_f32 v65, v65, v108
	v_mul_f32_e32 v2, v2, v110
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v58, 14, v48
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s4, s0, s3
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v70, s22, v47
	.loc	1 827 22                        ; ragged.py:827:22
	v_lshl_add_u32 v46, s21, 4, v0
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	v_add_lshl_u32 v97, v0, v60, 2
	v_add_lshl_u32 v98, v0, v59, 2
	.loc	1 758 17 is_stmt 1              ; ragged.py:758:17
	v_dual_mul_f32 v67, v67, v44 :: v_dual_mul_f32 v20, v20, v45
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v11, v11, v44 :: v_dual_mul_f32 v14, v14, v17
	v_dual_mul_f32 v3, v3, v110 :: v_dual_mul_f32 v10, v10, v17
	v_dual_mul_f32 v1, v1, v110 :: v_dual_mul_f32 v6, v6, v17
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v65, v65, v16 :: v_dual_mul_f32 v2, v2, v17
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v17, 0x80000000, v43, s4
	v_cndmask_b32_e64 v50, 0x80000000, v50, s4
	v_cndmask_b32_e64 v71, 0x80000000, v71, s4
	v_cndmask_b32_e64 v72, 0x80000000, v72, s4
	v_cndmask_b32_e64 v96, 0x80000000, v96, s4
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v57, 0x82, v48
	v_or_b32_e32 v56, 0x84, v48
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v99, v0, v58, 2
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v51, 0x8e, v48
	v_or_b32_e32 v52, 0x8c, v48
	v_or_b32_e32 v53, 0x8a, v48
	v_or_b32_e32 v54, 0x88, v48
	v_or_b32_e32 v55, 0x86, v48
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s5, s21, v70
	.loc	1 827 22                        ; ragged.py:827:22
	v_lshl_add_u32 v69, s21, 5, v0
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	v_add_lshl_u32 v107, v46, v48, 2
	v_add_lshl_u32 v109, v46, v64, 2
	v_add_lshl_u32 v30, v46, v63, 2
	.loc	1 765 17 is_stmt 1              ; ragged.py:765:17
	v_dual_mul_f32 v31, v31, v32 :: v_dual_mul_f32 v24, v24, v34
	v_dual_mul_f32 v49, v74, v33 :: v_dual_mul_f32 v20, v20, v34
	v_mul_f32_e32 v73, v73, v34
	v_dual_mul_f32 v67, v67, v32 :: v_dual_mul_f32 v34, v114, v34
	v_mul_f32_e32 v22, v22, v32
	v_dual_mul_f32 v32, v75, v32 :: v_dual_mul_f32 v33, v113, v33
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v4, v4, v110
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v74, v46, v62, 2
	v_add_lshl_u32 v75, v46, v61, 2
	v_add_lshl_u32 v113, v46, v60, 2
	v_add_lshl_u32 v114, v46, v59, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v13, v13, v108 :: v_dual_mul_f32 v66, v66, v15
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v108, v46, v58, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v9, v9, v44 :: v_dual_mul_f32 v12, v12, v15
	v_dual_mul_f32 v7, v7, v45 :: v_dual_mul_f32 v8, v8, v15
	v_dual_mul_f32 v5, v5, v45 :: v_dual_mul_f32 v4, v4, v15
	.loc	1 827 13                        ; ragged.py:827:13
	s_clause 0x3
	buffer_store_b32 v95, v17, s[8:11], 0 offen
	buffer_store_b32 v94, v50, s[8:11], 0 offen
	buffer_store_b32 v93, v71, s[8:11], 0 offen
	buffer_store_b32 v92, v72, s[8:11], 0 offen
	v_cndmask_b32_e64 v97, 0x80000000, v97, s4
	buffer_store_b32 v91, v96, s[8:11], 0 offen
	v_cndmask_b32_e64 v96, 0x80000000, v98, s4
	v_add_lshl_u32 v100, v0, v47, 2
	v_add_lshl_u32 v101, v0, v57, 2
	v_add_lshl_u32 v102, v0, v56, 2
	v_cndmask_b32_e64 v99, 0x80000000, v99, s4
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s4, s2, s3
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v103, v0, v55, 2
	v_add_lshl_u32 v104, v0, v54, 2
	v_add_lshl_u32 v105, v0, v53, 2
	v_add_lshl_u32 v106, v0, v52, 2
	v_add_lshl_u32 v0, v0, v51, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s0, s0, s5
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v44, v46, v47, 2
	v_add_lshl_u32 v45, v46, v57, 2
	v_add_lshl_u32 v110, v46, v56, 2
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v3, v3, v16
	v_mul_f32_e32 v1, v1, v18
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v15, v46, v55, 2
	v_add_lshl_u32 v43, v46, v52, 2
	v_add_lshl_u32 v17, v69, v48, 2
	v_add_lshl_u32 v95, v69, v64, 2
	v_add_lshl_u32 v50, v69, v63, 2
	v_add_lshl_u32 v94, v69, v62, 2
	v_add_lshl_u32 v71, v69, v61, 2
	v_add_lshl_u32 v93, v69, v60, 2
	v_add_lshl_u32 v72, v69, v59, 2
	v_add_lshl_u32 v92, v69, v58, 2
	v_add_lshl_u32 v91, v69, v47, 2
	v_add_lshl_u32 v98, v69, v57, 2
	buffer_store_b32 v90, v97, s[8:11], 0 offen
	v_add_lshl_u32 v90, v69, v56, 2
	v_add_lshl_u32 v97, v69, v55, 2
	buffer_store_b32 v89, v96, s[8:11], 0 offen
	v_add_lshl_u32 v89, v69, v54, 2
	v_add_lshl_u32 v96, v69, v53, 2
	v_add_lshl_u32 v70, v69, v52, 2
	v_add_lshl_u32 v69, v69, v51, 2
	v_add_lshl_u32 v48, v42, v48, 2
	v_cndmask_b32_e64 v107, 0x80000000, v107, s4
	v_cndmask_b32_e64 v109, 0x80000000, v109, s4
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	v_cndmask_b32_e64 v74, 0x80000000, v74, s4
	v_cndmask_b32_e64 v75, 0x80000000, v75, s4
	v_cndmask_b32_e64 v113, 0x80000000, v113, s4
	v_cndmask_b32_e64 v114, 0x80000000, v114, s4
	v_cndmask_b32_e64 v108, 0x80000000, v108, s4
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s4, s1, s3
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v13, v13, v18
	v_mul_f32_e32 v11, v11, v16
	v_mul_f32_e32 v9, v9, v18
	v_mul_f32_e32 v7, v7, v16
	v_mul_f32_e32 v5, v5, v18
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v16, v46, v54, 2
	v_add_lshl_u32 v18, v46, v53, 2
	v_add_lshl_u32 v46, v46, v51, 2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_add_lshl_u32 v64, v42, v64, 2
	v_add_lshl_u32 v63, v42, v63, 2
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s2, s2, s5
	s_and_b32 s1, s1, s5
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v95, 0x80000000, v95, s4
	v_cndmask_b32_e64 v50, 0x80000000, v50, s4
	v_cndmask_b32_e64 v94, 0x80000000, v94, s4
	v_cndmask_b32_e64 v71, 0x80000000, v71, s4
	v_cndmask_b32_e64 v93, 0x80000000, v93, s4
	v_cndmask_b32_e64 v72, 0x80000000, v72, s4
	v_cndmask_b32_e64 v92, 0x80000000, v92, s4
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s1
	v_cndmask_b32_e64 v90, 0x80000000, v90, s1
	v_cndmask_b32_e64 v97, 0x80000000, v97, s1
	v_cndmask_b32_e64 v89, 0x80000000, v89, s1
	v_cndmask_b32_e64 v96, 0x80000000, v96, s1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	s_clause 0x1f
	buffer_store_b32 v88, v99, s[8:11], 0 offen
	buffer_store_b32 v31, v100, s[8:11], 0 offen
	buffer_store_b32 v49, v101, s[8:11], 0 offen
	buffer_store_b32 v73, v102, s[8:11], 0 offen
	buffer_store_b32 v68, v103, s[8:11], 0 offen
	buffer_store_b32 v66, v104, s[8:11], 0 offen
	buffer_store_b32 v65, v105, s[8:11], 0 offen
	buffer_store_b32 v14, v106, s[8:11], 0 offen
	buffer_store_b32 v13, v0, s[8:11], 0 offen
	buffer_store_b32 v87, v107, s[8:11], 0 offen
	buffer_store_b32 v86, v109, s[8:11], 0 offen
	buffer_store_b32 v85, v30, s[8:11], 0 offen
	buffer_store_b32 v84, v74, s[8:11], 0 offen
	buffer_store_b32 v83, v75, s[8:11], 0 offen
	buffer_store_b32 v82, v113, s[8:11], 0 offen
	buffer_store_b32 v81, v114, s[8:11], 0 offen
	buffer_store_b32 v80, v108, s[8:11], 0 offen
	buffer_store_b32 v67, v44, s[8:11], 0 offen
	buffer_store_b32 v25, v45, s[8:11], 0 offen
	buffer_store_b32 v24, v110, s[8:11], 0 offen
	buffer_store_b32 v23, v15, s[8:11], 0 offen
	buffer_store_b32 v12, v16, s[8:11], 0 offen
	buffer_store_b32 v11, v18, s[8:11], 0 offen
	buffer_store_b32 v10, v43, s[8:11], 0 offen
	buffer_store_b32 v9, v46, s[8:11], 0 offen
	buffer_store_b32 v79, v17, s[8:11], 0 offen
	buffer_store_b32 v78, v95, s[8:11], 0 offen
	buffer_store_b32 v77, v50, s[8:11], 0 offen
	buffer_store_b32 v76, v94, s[8:11], 0 offen
	buffer_store_b32 v37, v71, s[8:11], 0 offen
	buffer_store_b32 v36, v93, s[8:11], 0 offen
	buffer_store_b32 v111, v72, s[8:11], 0 offen
	s_clause 0x9
	buffer_store_b32 v112, v92, s[8:11], 0 offen
	buffer_store_b32 v22, v91, s[8:11], 0 offen
	buffer_store_b32 v21, v98, s[8:11], 0 offen
	buffer_store_b32 v20, v90, s[8:11], 0 offen
	buffer_store_b32 v19, v97, s[8:11], 0 offen
	buffer_store_b32 v8, v89, s[8:11], 0 offen
	buffer_store_b32 v7, v96, s[8:11], 0 offen
	buffer_store_b32 v6, v70, s[8:11], 0 offen
	buffer_store_b32 v5, v69, s[8:11], 0 offen
	buffer_store_b32 v38, v48, s[8:11], 0 offen
	v_add_lshl_u32 v0, v42, v62, 2
	v_add_lshl_u32 v5, v42, v61, 2
	v_cndmask_b32_e64 v64, 0x80000000, v64, s3
	v_add_lshl_u32 v6, v42, v60, 2
	v_cndmask_b32_e64 v7, 0x80000000, v63, s3
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	buffer_store_b32 v39, v64, s[8:11], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	buffer_store_b32 v40, v7, s[8:11], 0 offen
	v_add_lshl_u32 v7, v42, v59, 2
	s_clause 0x2
	buffer_store_b32 v41, v0, s[8:11], 0 offen
	buffer_store_b32 v28, v5, s[8:11], 0 offen
	buffer_store_b32 v29, v6, s[8:11], 0 offen
	v_add_lshl_u32 v0, v42, v58, 2
	v_add_lshl_u32 v6, v42, v47, 2
	v_add_lshl_u32 v8, v42, v56, 2
	v_cndmask_b32_e64 v5, 0x80000000, v7, s3
	v_add_lshl_u32 v7, v42, v57, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x4
	buffer_store_b32 v27, v5, s[8:11], 0 offen
	buffer_store_b32 v26, v0, s[8:11], 0 offen
	buffer_store_b32 v32, v6, s[8:11], 0 offen
	buffer_store_b32 v33, v7, s[8:11], 0 offen
	buffer_store_b32 v34, v8, s[8:11], 0 offen
	v_add_lshl_u32 v0, v42, v55, 2
	v_add_lshl_u32 v5, v42, v54, 2
	v_add_lshl_u32 v6, v42, v53, 2
	v_add_lshl_u32 v7, v42, v52, 2
	v_add_lshl_u32 v8, v42, v51, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 117
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
		.amdhsa_inst_pref_size 41
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 117
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5240
; TotalNumSgprs: 31
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 117
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
