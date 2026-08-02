	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 679 0                         ; ragged.py:679:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[26:27], s[0:1], 0x54
.Ltmp0:
	.loc	1 707 25 prologue_end           ; ragged.py:707:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v68, 16, v0
	.loc	1 718 18                        ; ragged.py:718:18
	v_mov_b32_e32 v10, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:705:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:705:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 707 25 is_stmt 1              ; ragged.py:707:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 709 33                        ; ragged.py:709:33
	s_sub_i32 s4, s27, s8
	.loc	1 710 24                        ; ragged.py:710:24
	s_mul_i32 s3, s8, s3
	.loc	1 709 22                        ; ragged.py:709:22
	s_min_i32 s9, s4, 1
	.loc	1 710 24                        ; ragged.py:710:24
	s_sub_i32 s2, s2, s3
	.loc	1 712 17                        ; ragged.py:712:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 718 32                        ; ragged.py:718:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 712 17                        ; ragged.py:712:17
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s12, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 34                        ; ragged.py:711:34
	s_mul_i32 s3, s12, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 711 20 is_stmt 0              ; ragged.py:711:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_ashr_i32 s3, s2, 31
	.loc	1 715 23                        ; ragged.py:715:23
	s_lshl_b64 s[30:31], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s30
	s_addc_u32 s3, s5, s31
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 716 24                        ; ragged.py:716:24
	s_add_u32 s2, s6, s30
	s_addc_u32 s3, s7, s31
	.loc	1 717 22                        ; ragged.py:717:22
	s_add_u32 s4, s8, s30
	s_addc_u32 s5, s9, s31
	.loc	1 716 24                        ; ragged.py:716:24
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 717 22                        ; ragged.py:717:22
	s_load_b64 s[28:29], s[4:5], 0x0
	.loc	1 718 18                        ; ragged.py:718:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s2
	.loc	1 799 25                        ; ragged.py:799:25
	v_add_nc_u32_e32 v34, s10, v1
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e32 vcc_lo, s[20:21], v[2:3]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s2, s[28:29], v[2:3]
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s3, s[20:21], v[4:5]
	v_cmp_le_i64_e64 s6, s[20:21], v[6:7]
	v_cmp_le_i64_e64 s7, s[20:21], v[8:9]
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s4, s[28:29], v[4:5]
	v_cmp_gt_i64_e64 s8, s[28:29], v[6:7]
	v_cmp_gt_i64_e64 s9, s[28:29], v[8:9]
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 769 19 is_stmt 1              ; ragged.py:769:19
	s_cmp_gt_i32 s26, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v86, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; ragged.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr86
.LBB0_3:                                ; %Flow175
	s_load_b64 s[24:25], s[0:1], 0x40
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v59, 0xf0, v0
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v39, 16, v34
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v40, 32, v34
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v41, 48, v34
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v53, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s7, s12, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[36:37], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s34, s[0:1], 0x50
	s_load_b32 s27, s[0:1], 0x48
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 718 18 is_stmt 1              ; ragged.py:718:18
	v_dual_mov_b32 v53, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	.loc	1 766 28                        ; ragged.py:766:28
	v_lshrrev_b32_e32 v4, 4, v0
	v_bfe_i32 v7, v0, 3, 1
	v_bfe_i32 v8, v0, 4, 1
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v5, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v81, 12, v4
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v7, 0x88, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v4, 0x108, v8
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v8, 0x270, v6
	.loc	1 714 20                        ; ragged.py:714:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s36, s30
	s_addc_u32 s1, s37, s31
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v12, 5, v0
	.loc	1 806 25                        ; ragged.py:806:25
	s_load_b32 s6, s[0:1], 0x0
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v1, s0, s10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s11, 0, s0
	v_and_or_b32 v6, 0x70, v6, v7
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v14, 2, v59
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s0, s[20:21], v[1:2]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s1, s[28:29], v[1:2]
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v2, 0, v8
	v_lshrrev_b32_e32 v8, 1, v0
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v15, 1, v0
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v12, 32, v12
	.loc	1 719 18 is_stmt 1              ; ragged.py:719:18
	v_or_b32_e32 v80, s7, v0
	v_or_b32_e32 v9, 0x300, v0
	v_or_b32_e32 v10, 0x700, v0
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s9, s34, s33
	v_xor3_b32 v1, v4, v81, v7
	v_xor_b32_e32 v4, 8, v6
	v_xor_b32_e32 v7, 0x108, v6
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v16, 0x70, v8
	v_or_b32_e32 v11, 0xb00, v0
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s0, s0, s1
	.loc	1 806 25                        ; ragged.py:806:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s26, s6
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s6, s9, s6
	v_or_b32_e32 v13, 0xf00, v0
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v15, 28, v15
	v_add3_u32 v12, 0, v14, v12
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v14, 1, v59
	s_mov_b32 s8, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v87, 0, v9
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v88, 0, v10
	v_mad_u64_u32 v[9:10], null, v80, s34, s[6:7]
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v8, s10, v3
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v82, v2, v1
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v83, 0, v6
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v84, 0, v4
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v85, 0, v7
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v86, 0, v0
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v91, v5, v16
	v_dual_mov_b32 v0, s8 :: v_dual_add_nc_u32 v89, 0, v11
	v_mov_b32_e32 v58, 0
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v90, 0, v13
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v92, v12, v15
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v93, 0, v14
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v1, s9
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v3, s11
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v5, s13
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v7, s15
	v_mov_b32_e32 v2, s10
	v_mov_b32_e32 v4, s12
	v_mov_b32_e32 v6, s14
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v80
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 766 28                        ; ragged.py:766:28
	v_or_b32_e32 v94, 3, v81
	v_or_b32_e32 v95, 1, v81
	.loc	1 771 28                        ; ragged.py:771:28
	s_lshl_b32 s6, s8, 4
	.loc	1 766 28                        ; ragged.py:766:28
	v_or_b32_e32 v96, 2, v81
	v_or_b32_e32 v98, s6, v81
	v_or_b32_e32 v94, s6, v94
	v_or_b32_e32 v95, s6, v95
	v_add_nc_u32_e32 v97, s6, v9
	v_or_b32_e32 v96, s6, v96
	v_mad_u64_u32 v[98:99], null, v98, s27, v[8:9]
	v_mad_u64_u32 v[99:100], null, v94, s27, v[8:9]
	v_mad_u64_u32 v[100:101], null, v95, s27, v[8:9]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[101:102], null, v96, s27, v[8:9]
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	.loc	1 806 25                        ; ragged.py:806:25
	s_add_i32 s6, s8, s1
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	s_mul_i32 s6, s6, s33
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	.loc	1 783 34                        ; ragged.py:783:34
	s_clause 0x3
	buffer_load_u8 v99, v99, s[20:23], 0 offen
	buffer_load_u8 v100, v100, s[20:23], 0 offen
	buffer_load_u8 v101, v101, s[20:23], 0 offen
	buffer_load_u8 v102, v98, s[20:23], 0 offen
	.loc	1 784 34                        ; ragged.py:784:34
	buffer_load_b128 v[94:97], v97, s[28:31], 0 offen
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v98.l, 8, v99.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v98.h, 8, v100.l
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v103, 8, v94
	.loc	1 783 34                        ; ragged.py:783:34
	v_or_b16 v99.h, v101.l, v98.l
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v99.l, v102.l, v98.h
	.loc	1 784 34                        ; ragged.py:784:34
	v_lshrrev_b32_e32 v104, 8, v95
	v_lshrrev_b32_e32 v105, 8, v96
	v_lshrrev_b32_e32 v106, 8, v97
	v_lshrrev_b32_e32 v107, 24, v94
	v_lshrrev_b32_e32 v108, 24, v95
	v_lshrrev_b32_e32 v109, 24, v96
	v_lshrrev_b32_e32 v110, 24, v97
	.loc	1 783 34                        ; ragged.py:783:34
	ds_store_b32 v82, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[132:135], v83 offset1:32
	ds_load_2addr_b64 v[136:139], v83 offset0:64 offset1:96
	ds_load_2addr_stride64_b64 v[140:143], v84 offset1:1
	ds_load_2addr_stride64_b64 v[144:147], v85 offset1:1
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v86, v94
	ds_store_b8_d16_hi v86, v94 offset:512
	ds_store_b8 v86, v95 offset:1024
	ds_store_b8_d16_hi v86, v95 offset:1536
	ds_store_b8 v86, v96 offset:2048
	ds_store_b8 v86, v103 offset:256
	ds_store_b8 v86, v104 offset:1280
	ds_store_b8 v86, v105 offset:2304
	ds_store_b8_d16_hi v86, v96 offset:2560
	ds_store_b8 v86, v97 offset:3072
	ds_store_b8_d16_hi v86, v97 offset:3584
	ds_store_b8 v86, v106 offset:3328
	ds_store_b8 v87, v107
	ds_store_b8 v88, v108
	ds_store_b8 v89, v109
	ds_store_b8 v90, v110
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 785 31                        ; ragged.py:785:31
	ds_load_u8 v94, v91 offset:1280
	ds_load_u8 v95, v91 offset:1024
	ds_load_u8 v96, v91 offset:1920
	ds_load_u8 v97, v91 offset:1664
	ds_load_u8 v98, v91 offset:1408
	ds_load_u8 v99, v91 offset:1792
	ds_load_u8 v100, v91 offset:1536
	ds_load_u8 v101, v91 offset:1152
	ds_load_u8 v102, v91 offset:256
	ds_load_u8 v103, v91
	ds_load_u8 v104, v91 offset:896
	ds_load_u8 v105, v91 offset:640
	ds_load_u8 v106, v91 offset:384
	ds_load_u8 v107, v91 offset:768
	ds_load_u8 v108, v91 offset:512
	ds_load_u8 v109, v91 offset:128
	ds_load_u8 v110, v91 offset:3328
	ds_load_u8 v111, v91 offset:3072
	ds_load_u8 v112, v91 offset:3840
	ds_load_u8 v113, v91 offset:3584
	ds_load_u8 v114, v91 offset:2304
	ds_load_u8 v115, v91 offset:2048
	ds_load_u8 v116, v91 offset:2816
	ds_load_u8 v117, v91 offset:2560
	ds_load_u8 v118, v91 offset:3968
	ds_load_u8 v119, v91 offset:3712
	ds_load_u8 v120, v91 offset:3456
	ds_load_u8 v121, v91 offset:3200
	ds_load_u8 v122, v91 offset:2944
	ds_load_u8 v123, v91 offset:2688
	ds_load_u8 v124, v91 offset:2432
	ds_load_u8 v125, v91 offset:2176
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v95, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v99, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v100, v108, v107, 0xc0c0004
	v_perm_b32 v98, v101, v98, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v102, v111, v110, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v103, v113, v112, 0xc0c0004
	v_perm_b32 v97, v109, v106, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v107, v115, v114, 0xc0c0004
	v_perm_b32 v101, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v117, v116, 0xc0c0004
	v_lshl_or_b32 v149, v95, 16, v94
	v_lshl_or_b32 v148, v100, 16, v99
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v121, v120, 0xc0c0004
	v_lshl_or_b32 v151, v103, 16, v102
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v109, v123, v122, 0xc0c0004
	v_lshl_or_b32 v150, v108, 16, v107
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v125, v124, 0xc0c0004
	v_lshl_or_b32 v153, v96, 16, v98
	v_lshl_or_b32 v152, v101, 16, v97
	v_wmma_i32_16x16x16_iu4 v[94:101], v[148:149], v[132:133], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v155, v105, 16, v104
	v_lshl_or_b32 v154, v109, 16, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[152:153], v[132:133], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[148:149], v[144:145], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[152:153], v[144:145], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[150:151], v[140:141], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[154:155], v[140:141], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[150:151], v[134:135], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[154:155], v[134:135], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[148:149], v[136:137], v[0:7] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v134, v94
	v_cvt_f32_i32_e32 v135, v95
	v_cvt_f32_i32_e32 v140, v96
	v_cvt_f32_i32_e32 v141, v97
	v_cvt_f32_i32_e32 v144, v98
	v_cvt_f32_i32_e32 v145, v99
	v_cvt_f32_i32_e32 v156, v100
	v_cvt_f32_i32_e32 v157, v101
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[94:101], v[152:153], v[136:137], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[150:151], v[142:143], v[126:133] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[94:101], v[154:155], v[142:143], v[94:101] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v136, v94
	v_cvt_f32_i32_e32 v137, v95
	v_cvt_f32_i32_e32 v142, v96
	v_cvt_f32_i32_e32 v143, v97
	v_cvt_f32_i32_e32 v158, v98
	v_cvt_f32_i32_e32 v159, v99
	v_cvt_f32_i32_e32 v160, v100
	v_cvt_f32_i32_e32 v161, v101
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[94:101], v[148:149], v[146:147], v[0:7] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[94:101], v[150:151], v[138:139], v[94:101] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v148, v94
	v_cvt_f32_i32_e32 v149, v95
	v_cvt_f32_i32_e32 v150, v96
	v_cvt_f32_i32_e32 v151, v97
	v_cvt_f32_i32_e32 v162, v98
	v_cvt_f32_i32_e32 v163, v99
	v_cvt_f32_i32_e32 v164, v100
	v_cvt_f32_i32_e32 v165, v101
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[94:101], v[152:153], v[146:147], v[0:7] neg_lo:[1,1,0]
	.loc	1 805 40                        ; ragged.py:805:40
	v_add_lshl_u32 v152, v80, s6, 1
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[94:101], v[154:155], v[138:139], v[94:101] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 805 40                        ; ragged.py:805:40
	v_cndmask_b32_e32 v152, 0x80000000, v152, vcc_lo
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v138, v94
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v94, v34, s26
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v139, v95
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v95, v39, s26
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v146, v96
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v96, v40, s26
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v147, v97
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v97, v41, s26
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v94, s8, v94, 1
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v95, s8, v95, 1
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v96, s8, v96, 1
	v_cndmask_b32_e64 v94, 0x80000000, v94, s5
	v_add_lshl_u32 v97, s8, v97, 1
	v_cndmask_b32_e64 v95, 0x80000000, v95, s4
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v96, 0x80000000, v96, s3
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	.loc	1 805 40                        ; ragged.py:805:40
	buffer_load_u16 v152, v152, s[16:19], 0 offen
	.loc	1 798 40                        ; ragged.py:798:40
	s_clause 0x3
	buffer_load_u16 v94, v94, s[36:39], 0 offen
	buffer_load_u16 v95, v95, s[36:39], 0 offen
	buffer_load_u16 v96, v96, s[36:39], 0 offen
	buffer_load_u16 v97, v97, s[36:39], 0 offen
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 812 17                        ; ragged.py:812:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lg_u32 s8, s26
	.loc	1 798 40                        ; ragged.py:798:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v95, 16, v95
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v155, v157, v94
	v_mul_f32_e32 v157, v103, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v103, v111, v95 :: v_dual_lshlrev_b32 v152, 16, v152
	v_mul_f32_e32 v135, v135, v94
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v144, v144, v94 :: v_dual_lshlrev_b32 v153, 16, v96
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v141, v141, v94 :: v_dual_lshlrev_b32 v154, 16, v97
	.loc	1 810 21                        ; ragged.py:810:21
	ds_store_b32 v92, v152
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v134, v134, v94
	v_mul_f32_e32 v140, v140, v94
	v_mul_f32_e32 v145, v145, v94
	v_mul_f32_e32 v152, v156, v94
	v_dual_mul_f32 v156, v102, v94 :: v_dual_mul_f32 v111, v115, v95
	v_mul_f32_e32 v166, v104, v94
	v_mul_f32_e32 v167, v105, v94
	v_dual_mul_f32 v168, v106, v94 :: v_dual_mul_f32 v115, v119, v95
	v_mul_f32_e32 v169, v107, v94
	v_mul_f32_e32 v170, v108, v94
	v_dual_mul_f32 v171, v109, v94 :: v_dual_mul_f32 v102, v110, v95
	v_mul_f32_e32 v106, v112, v95
	v_mul_f32_e32 v107, v113, v95
	v_mul_f32_e32 v110, v114, v95
	v_mul_f32_e32 v112, v116, v95
	v_mul_f32_e32 v113, v117, v95
	v_mul_f32_e32 v114, v118, v95
	v_mul_f32_e32 v116, v120, v95
	v_mul_f32_e32 v117, v121, v95
	v_dual_mul_f32 v118, v122, v95 :: v_dual_mul_f32 v109, v127, v153
	v_dual_mul_f32 v119, v123, v95 :: v_dual_mul_f32 v108, v126, v153
	v_dual_mul_f32 v120, v124, v95 :: v_dual_mul_f32 v123, v129, v153
	v_dual_mul_f32 v121, v125, v95 :: v_dual_mul_f32 v122, v128, v153
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[94:97], v93
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v124, v130, v153
	v_mul_f32_e32 v125, v131, v153
	v_mul_f32_e32 v126, v132, v153
	v_mul_f32_e32 v127, v133, v153
	v_mul_f32_e32 v128, v136, v153
	v_mul_f32_e32 v129, v137, v153
	v_mul_f32_e32 v130, v142, v153
	v_mul_f32_e32 v131, v143, v153
	v_dual_mul_f32 v132, v158, v153 :: v_dual_mul_f32 v139, v139, v154
	v_dual_mul_f32 v133, v159, v153 :: v_dual_mul_f32 v138, v138, v154
	v_dual_mul_f32 v136, v160, v153 :: v_dual_mul_f32 v147, v147, v154
	v_dual_mul_f32 v137, v161, v153 :: v_dual_mul_f32 v146, v146, v154
	v_mul_f32_e32 v142, v148, v154
	v_mul_f32_e32 v143, v149, v154
	v_mul_f32_e32 v148, v150, v154
	v_mul_f32_e32 v149, v151, v154
	v_mul_f32_e32 v150, v162, v154
	v_mul_f32_e32 v151, v163, v154
	v_mul_f32_e32 v153, v164, v154
	v_mul_f32_e32 v158, v165, v154
	v_mul_f32_e32 v159, v98, v154
	v_mul_f32_e32 v160, v99, v154
	v_mul_f32_e32 v161, v100, v154
	v_mul_f32_e32 v154, v101, v154
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[98:101], v93 offset:16
	.loc	1 811 17                        ; ragged.py:811:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v53, v134, v94 :: v_dual_fmac_f32 v60, v107, v97
	v_dual_fmac_f32 v63, v102, v94 :: v_dual_fmac_f32 v44, v109, v95
	v_fmac_f32_e32 v62, v103, v95
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[102:105], v93 offset:512
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v61, v106, v96 :: v_dual_fmac_f32 v42, v123, v97
	v_dual_fmac_f32 v45, v108, v94 :: v_dual_fmac_f32 v24, v143, v95
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[106:109], v93 offset:528
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v79, v135, v95 :: v_dual_fmac_f32 v78, v140, v96
	v_fmac_f32_e32 v77, v141, v97
	v_dual_fmac_f32 v43, v122, v96 :: v_dual_fmac_f32 v22, v149, v97
	v_fmac_f32_e32 v25, v142, v94
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v23, v148, v96 :: v_dual_fmac_f32 v58, v110, v98
	v_dual_fmac_f32 v76, v144, v98 :: v_dual_fmac_f32 v75, v145, v99
	v_dual_fmac_f32 v74, v152, v100 :: v_dual_fmac_f32 v73, v155, v101
	v_dual_fmac_f32 v56, v112, v100 :: v_dual_fmac_f32 v57, v111, v99
	v_dual_fmac_f32 v38, v124, v98 :: v_dual_fmac_f32 v55, v113, v101
	v_dual_fmac_f32 v36, v126, v100 :: v_dual_fmac_f32 v37, v125, v99
	v_fmac_f32_e32 v18, v158, v101
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v35, v127, v101 :: v_dual_fmac_f32 v72, v156, v102
	v_dual_fmac_f32 v21, v150, v98 :: v_dual_fmac_f32 v20, v151, v99
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v19, v153, v100 :: v_dual_fmac_f32 v64, v171, v109
	v_dual_fmac_f32 v71, v157, v103 :: v_dual_fmac_f32 v70, v166, v104
	v_dual_fmac_f32 v69, v167, v105 :: v_dual_fmac_f32 v66, v169, v107
	v_dual_fmac_f32 v67, v168, v106 :: v_dual_fmac_f32 v52, v115, v103
	v_dual_fmac_f32 v65, v170, v108 :: v_dual_fmac_f32 v50, v117, v105
	v_dual_fmac_f32 v54, v114, v102 :: v_dual_fmac_f32 v51, v116, v104
	v_dual_fmac_f32 v49, v118, v106 :: v_dual_fmac_f32 v48, v119, v107
	v_dual_fmac_f32 v47, v120, v108 :: v_dual_fmac_f32 v46, v121, v109
	v_dual_fmac_f32 v33, v128, v102 :: v_dual_fmac_f32 v32, v129, v103
	v_dual_fmac_f32 v31, v130, v104 :: v_dual_fmac_f32 v30, v131, v105
	v_dual_fmac_f32 v29, v132, v106 :: v_dual_fmac_f32 v28, v133, v107
	v_dual_fmac_f32 v27, v136, v108 :: v_dual_fmac_f32 v26, v137, v109
	v_dual_fmac_f32 v17, v138, v102 :: v_dual_fmac_f32 v16, v139, v103
	v_dual_fmac_f32 v15, v146, v104 :: v_dual_fmac_f32 v14, v147, v105
	v_dual_fmac_f32 v13, v159, v106 :: v_dual_fmac_f32 v12, v161, v108
	v_dual_fmac_f32 v11, v160, v107 :: v_dual_fmac_f32 v10, v154, v109
	.loc	1 769 19                        ; ragged.py:769:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v86, v68
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 814 9 is_stmt 1               ; ragged.py:814:9
	v_bfe_u32 v87, v53, 16, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v85, v34, s33
	v_mul_lo_u32 v34, v41, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v88, v78, 16, 1
	v_cmp_o_f32_e64 s19, v53, v53
	v_add3_u32 v41, v53, v87, 0x7fff
	v_bfe_u32 v87, v79, 16, 1
	v_bfe_u32 v53, v77, 16, 1
	v_cmp_o_f32_e64 s20, v79, v79
	v_cmp_o_f32_e64 s21, v78, v78
	v_cmp_o_f32_e64 s22, v77, v77
	v_add3_u32 v87, v79, v87, 0x7fff
	v_add3_u32 v79, v78, v88, 0x7fff
	v_add3_u32 v53, v77, v53, 0x7fff
	v_bfe_u32 v77, v76, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s19
	v_bfe_u32 v78, v75, 16, 1
	v_cndmask_b16 v53.l, 0x7fff, v79.h, s21
	v_bfe_u32 v79, v74, 16, 1
	v_add3_u32 v77, v76, v77, 0x7fff
	v_cmp_o_f32_e64 s19, v76, v76
	v_bfe_u32 v76, v73, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v87.h, s20
	v_add3_u32 v78, v75, v78, 0x7fff
	v_cmp_o_f32_e64 s20, v75, v75
	v_add3_u32 v75, v74, v79, 0x7fff
	v_cmp_o_f32_e64 s21, v74, v74
	v_add3_u32 v74, v73, v76, 0x7fff
	v_bfe_u32 v76, v72, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s22
	v_cmp_o_f32_e64 s22, v73, v73
	v_cndmask_b16 v73.l, 0x7fff, v77.h, s19
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s21
	v_bfe_u32 v75, v71, 16, 1
	v_add3_u32 v76, v72, v76, 0x7fff
	v_bfe_u32 v77, v70, 16, 1
	v_cmp_o_f32_e64 s19, v72, v72
	v_bfe_u32 v72, v69, 16, 1
	v_cndmask_b16 v73.h, 0x7fff, v78.h, s20
	v_add3_u32 v75, v71, v75, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_add3_u32 v71, v70, v77, 0x7fff
	v_cmp_o_f32_e64 s21, v70, v70
	v_add3_u32 v70, v69, v72, 0x7fff
	v_bfe_u32 v72, v67, 16, 1
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s22
	v_cmp_o_f32_e64 s22, v69, v69
	v_cndmask_b16 v69.l, 0x7fff, v76.h, s19
	v_cndmask_b16 v69.h, 0x7fff, v75.h, s20
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s21
	v_bfe_u32 v71, v66, 16, 1
	v_add3_u32 v72, v67, v72, 0x7fff
	v_bfe_u32 v75, v65, 16, 1
	v_cmp_o_f32_e64 s19, v67, v67
	v_bfe_u32 v67, v64, 16, 1
	v_add3_u32 v71, v66, v71, 0x7fff
	v_cmp_o_f32_e64 s20, v66, v66
	v_add3_u32 v66, v65, v75, 0x7fff
	v_cmp_o_f32_e64 s21, v65, v65
	v_add3_u32 v65, v64, v67, 0x7fff
	v_bfe_u32 v67, v63, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s22
	v_cmp_o_f32_e64 s22, v64, v64
	v_cndmask_b16 v64.l, 0x7fff, v72.h, s19
	v_cndmask_b16 v64.h, 0x7fff, v71.h, s20
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s21
	v_bfe_u32 v66, v62, 16, 1
	v_add3_u32 v67, v63, v67, 0x7fff
	v_bfe_u32 v71, v61, 16, 1
	v_cmp_o_f32_e64 s19, v63, v63
	v_bfe_u32 v63, v60, 16, 1
	v_add3_u32 v66, v62, v66, 0x7fff
	v_cmp_o_f32_e64 s20, v62, v62
	v_add3_u32 v62, v61, v71, 0x7fff
	v_cmp_o_f32_e64 s21, v61, v61
	v_add3_u32 v61, v60, v63, 0x7fff
	v_bfe_u32 v63, v58, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s22
	v_cmp_o_f32_e64 s22, v60, v60
	v_cndmask_b16 v60.l, 0x7fff, v67.h, s19
	v_cndmask_b16 v60.h, 0x7fff, v66.h, s20
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s21
	v_bfe_u32 v62, v57, 16, 1
	v_add3_u32 v63, v58, v63, 0x7fff
	v_bfe_u32 v66, v56, 16, 1
	v_cmp_o_f32_e64 s19, v58, v58
	v_bfe_u32 v58, v55, 16, 1
	v_add3_u32 v62, v57, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v57, v57
	v_add3_u32 v57, v56, v66, 0x7fff
	v_cmp_o_f32_e64 s21, v56, v56
	v_add3_u32 v56, v55, v58, 0x7fff
	v_bfe_u32 v58, v54, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s22
	v_cmp_o_f32_e64 s22, v55, v55
	v_cndmask_b16 v55.l, 0x7fff, v63.h, s19
	v_cndmask_b16 v55.h, 0x7fff, v62.h, s20
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s21
	v_bfe_u32 v57, v52, 16, 1
	v_add3_u32 v58, v54, v58, 0x7fff
	v_bfe_u32 v62, v51, 16, 1
	v_cmp_o_f32_e64 s19, v54, v54
	v_bfe_u32 v54, v50, 16, 1
	v_add3_u32 v57, v52, v57, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_add3_u32 v52, v51, v62, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_add3_u32 v51, v50, v54, 0x7fff
	v_bfe_u32 v54, v49, 16, 1
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s22
	v_cmp_o_f32_e64 s22, v50, v50
	v_cndmask_b16 v50.l, 0x7fff, v58.h, s19
	v_cndmask_b16 v50.h, 0x7fff, v57.h, s20
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s21
	v_bfe_u32 v52, v48, 16, 1
	v_add3_u32 v54, v49, v54, 0x7fff
	v_bfe_u32 v57, v47, 16, 1
	v_cmp_o_f32_e64 s19, v49, v49
	v_bfe_u32 v49, v46, 16, 1
	v_add3_u32 v52, v48, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v48, v48
	v_add3_u32 v48, v47, v57, 0x7fff
	v_cmp_o_f32_e64 s21, v47, v47
	v_add3_u32 v47, v46, v49, 0x7fff
	v_bfe_u32 v49, v45, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s22
	v_cmp_o_f32_e64 s22, v46, v46
	v_cndmask_b16 v46.l, 0x7fff, v54.h, s19
	v_cndmask_b16 v46.h, 0x7fff, v52.h, s20
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s21
	v_bfe_u32 v48, v44, 16, 1
	v_add3_u32 v49, v45, v49, 0x7fff
	v_bfe_u32 v52, v43, 16, 1
	v_cmp_o_f32_e64 s19, v45, v45
	v_bfe_u32 v45, v42, 16, 1
	v_add3_u32 v48, v44, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v44, v44
	v_add3_u32 v44, v43, v52, 0x7fff
	v_cmp_o_f32_e64 s21, v43, v43
	v_add3_u32 v43, v42, v45, 0x7fff
	v_bfe_u32 v45, v38, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s22
	v_cmp_o_f32_e64 s22, v42, v42
	v_cndmask_b16 v42.l, 0x7fff, v49.h, s19
	v_cndmask_b16 v42.h, 0x7fff, v48.h, s20
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v37, 16, 1
	v_add3_u32 v45, v38, v45, 0x7fff
	v_bfe_u32 v48, v36, 16, 1
	v_cmp_o_f32_e64 s19, v38, v38
	v_bfe_u32 v38, v35, 16, 1
	v_add3_u32 v44, v37, v44, 0x7fff
	v_cmp_o_f32_e64 s20, v37, v37
	v_add3_u32 v37, v36, v48, 0x7fff
	v_cmp_o_f32_e64 s21, v36, v36
	v_add3_u32 v36, v35, v38, 0x7fff
	v_bfe_u32 v38, v33, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s22
	v_cmp_o_f32_e64 s22, v35, v35
	v_cndmask_b16 v35.l, 0x7fff, v45.h, s19
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s20
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s21
	v_bfe_u32 v37, v32, 16, 1
	v_add3_u32 v38, v33, v38, 0x7fff
	v_bfe_u32 v44, v31, 16, 1
	v_cmp_o_f32_e64 s19, v33, v33
	v_bfe_u32 v33, v30, 16, 1
	v_add3_u32 v37, v32, v37, 0x7fff
	v_cmp_o_f32_e64 s20, v32, v32
	v_add3_u32 v32, v31, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v31, v31
	v_add3_u32 v31, v30, v33, 0x7fff
	v_bfe_u32 v33, v29, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s22
	v_cmp_o_f32_e64 s22, v30, v30
	v_cndmask_b16 v30.l, 0x7fff, v38.h, s19
	v_cndmask_b16 v30.h, 0x7fff, v37.h, s20
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v28, 16, 1
	v_add3_u32 v33, v29, v33, 0x7fff
	v_bfe_u32 v37, v27, 16, 1
	v_cmp_o_f32_e64 s19, v29, v29
	v_bfe_u32 v29, v26, 16, 1
	v_add3_u32 v32, v28, v32, 0x7fff
	v_cmp_o_f32_e64 s20, v28, v28
	v_add3_u32 v28, v27, v37, 0x7fff
	v_cmp_o_f32_e64 s21, v27, v27
	v_add3_u32 v27, v26, v29, 0x7fff
	v_bfe_u32 v29, v25, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s22
	v_cmp_o_f32_e64 s22, v26, v26
	v_cndmask_b16 v26.l, 0x7fff, v33.h, s19
	v_cndmask_b16 v26.h, 0x7fff, v32.h, s20
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s21
	v_bfe_u32 v28, v24, 16, 1
	v_add3_u32 v29, v25, v29, 0x7fff
	v_bfe_u32 v32, v23, 16, 1
	v_cmp_o_f32_e64 s19, v25, v25
	v_bfe_u32 v25, v22, 16, 1
	v_add3_u32 v28, v24, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v24, v24
	v_add3_u32 v24, v23, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v23, v23
	v_add3_u32 v23, v22, v25, 0x7fff
	v_bfe_u32 v25, v21, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s22
	v_cmp_o_f32_e64 s22, v22, v22
	v_cndmask_b16 v22.l, 0x7fff, v29.h, s19
	v_cndmask_b16 v22.h, 0x7fff, v28.h, s20
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s21
	v_bfe_u32 v24, v20, 16, 1
	v_add3_u32 v25, v21, v25, 0x7fff
	v_bfe_u32 v28, v19, 16, 1
	v_cmp_o_f32_e64 s19, v21, v21
	v_bfe_u32 v21, v18, 16, 1
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s20, v20, v20
	v_add3_u32 v20, v19, v28, 0x7fff
	v_cmp_o_f32_e64 s21, v19, v19
	v_add3_u32 v19, v18, v21, 0x7fff
	v_bfe_u32 v21, v17, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s22
	v_cmp_o_f32_e64 s22, v18, v18
	v_cndmask_b16 v18.l, 0x7fff, v25.h, s19
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s20
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s21
	v_bfe_u32 v20, v16, 16, 1
	v_add3_u32 v21, v17, v21, 0x7fff
	v_bfe_u32 v24, v15, 16, 1
	v_cmp_o_f32_e64 s19, v17, v17
	v_bfe_u32 v17, v14, 16, 1
	v_add3_u32 v20, v16, v20, 0x7fff
	v_cmp_o_f32_e64 s20, v16, v16
	v_add3_u32 v16, v15, v24, 0x7fff
	v_cmp_o_f32_e64 s21, v15, v15
	v_add3_u32 v15, v14, v17, 0x7fff
	v_bfe_u32 v17, v13, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s22
	v_cmp_o_f32_e64 s22, v14, v14
	v_cndmask_b16 v14.l, 0x7fff, v21.h, s19
	v_cndmask_b16 v14.h, 0x7fff, v20.h, s20
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s21
	v_bfe_u32 v16, v11, 16, 1
	v_add3_u32 v17, v13, v17, 0x7fff
	v_bfe_u32 v20, v12, 16, 1
	v_cmp_o_f32_e64 s19, v13, v13
	v_bfe_u32 v13, v10, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s22
	v_add3_u32 v16, v11, v16, 0x7fff
	v_cmp_o_f32_e64 s20, v11, v11
	v_add3_u32 v11, v12, v20, 0x7fff
	v_cmp_o_f32_e64 s21, v12, v12
	v_add3_u32 v12, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s22, v10, v10
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s19
	v_cmp_eq_u32_e64 s19, 0, v86
	v_cndmask_b16 v10.h, 0x7fff, v16.h, s20
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s21
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s22
	.loc	1 719 36                        ; ragged.py:719:36
	v_lshrrev_b32_e32 v0, 1, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v37, v46, v50, s19
	v_cndmask_b32_e64 v38, v50, v46, s19
	v_mov_b32_e32 v46, 0x5410
	v_cndmask_b32_e64 v12, v73, v41, s19
	v_cndmask_b32_e64 v13, v41, v73, s19
	v_cndmask_b32_e64 v41, v47, v51, s19
	v_cndmask_b32_e64 v44, v51, v47, s19
	v_cndmask_b32_e64 v45, v35, v42, s19
	v_cndmask_b32_e64 v35, v42, v35, s19
	v_cndmask_b32_e64 v42, v36, v43, s19
	v_cndmask_b32_e64 v36, v43, v36, s19
	v_cndmask_b32_e64 v43, v26, v30, s19
	v_cndmask_b32_e64 v26, v30, v26, s19
	v_cndmask_b32_e64 v30, v27, v31, s19
	v_cndmask_b32_e64 v27, v31, v27, s19
	v_cndmask_b32_e64 v31, v18, v22, s19
	v_cndmask_b32_e64 v18, v22, v18, s19
	v_cndmask_b32_e64 v22, v19, v23, s19
	v_cndmask_b32_e64 v19, v23, v19, s19
	v_cndmask_b32_e64 v23, v10, v14, s19
	v_cndmask_b32_e64 v10, v14, v10, s19
	v_cndmask_b32_e64 v14, v11, v15, s19
	v_mov_b32_e32 v47, 0x7632
	v_cndmask_b32_e64 v11, v15, v11, s19
	v_cndmask_b32_e64 v15, 0x1054, v46, s19
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v59, s7, v0
	s_mov_b32 s20, 0x76543210
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v46, 0x3276, v47, s19
	v_cndmask_b32_e64 v17, v53, v74, s19
	v_lshl_or_b32 v15, v15, 8, v15
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v83, 1, v59
	v_or_b32_e32 v82, 2, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_lshl_or_b32 v46, v46, 8, v46
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s18, s33, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v15, 0x540054, v15
	v_cndmask_b32_e64 v21, v69, v64, s19
	v_cndmask_b32_e64 v25, v70, v65, s19
	v_and_b32_e32 v46, 0x760076, v46
	v_cndmask_b32_e64 v29, v60, v55, s19
	v_lshl_or_b32 v15, v15, 4, v15
	v_cndmask_b32_e64 v33, v61, v56, s19
	v_permlanex16_b32 v13, v13, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v46, v46, 4, v46
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s17, s33, v83
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v15, 0x5040504, v15
	v_add_lshl_u32 v78, v59, v85, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s16, s33, v82
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v79, v83, v85, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v84, v39, s33
	v_mul_lo_u32 v39, v40, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v40.h, 0
	v_cndmask_b32_e64 v16, v74, v53, s19
	v_cndmask_b32_e64 v20, v64, v69, s19
	v_cndmask_b32_e64 v24, v65, v70, s19
	v_cndmask_b32_e64 v28, v55, v60, s19
	v_cndmask_b32_e64 v32, v56, v61, s19
	v_permlanex16_b32 v17, v17, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v46, 0x7060706, v46
	v_permlanex16_b32 v19, v19, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v13, v12, v15
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s18, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v81, 3, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v86, v82, v85, 1
	v_cndmask_b32_e64 v78, 0x80000000, v78, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s17, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v80, 4, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v79, 0x80000000, v79, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s16, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v12, v13, v12, v46
	v_perm_b32 v13, v17, v16, v15
	v_perm_b32 v16, v17, v16, v46
	v_perm_b32 v17, v21, v20, v15
	v_perm_b32 v20, v21, v20, v46
	v_perm_b32 v21, v25, v24, v15
	v_perm_b32 v24, v25, v24, v46
	v_perm_b32 v25, v29, v28, v15
	v_perm_b32 v28, v29, v28, v46
	v_perm_b32 v29, v33, v32, v15
	v_perm_b32 v32, v33, v32, v46
	v_perm_b32 v33, v38, v37, v15
	v_perm_b32 v37, v38, v37, v46
	v_perm_b32 v38, v44, v41, v15
	v_perm_b32 v41, v44, v41, v46
	v_perm_b32 v44, v35, v45, v15
	v_perm_b32 v35, v35, v45, v46
	v_perm_b32 v45, v36, v42, v15
	v_perm_b32 v36, v36, v42, v46
	v_perm_b32 v42, v26, v43, v15
	v_perm_b32 v26, v26, v43, v46
	v_perm_b32 v43, v27, v30, v15
	v_perm_b32 v27, v27, v30, v46
	v_perm_b32 v30, v18, v31, v15
	v_perm_b32 v18, v18, v31, v46
	v_perm_b32 v31, v19, v22, v15
	v_perm_b32 v19, v19, v22, v46
	v_perm_b32 v22, v10, v23, v15
	v_perm_b32 v15, v11, v14, v15
	v_perm_b32 v11, v11, v14, v46
	v_mov_b16_e32 v14.l, v47.h
	v_mov_b16_e32 v14.h, v40.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s15, s33, v81
	.loc	1 814 9                         ; ragged.py:814:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v68, 5, v59
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s14, s33, v80
	.loc	1 814 9                         ; ragged.py:814:9
	buffer_store_b16 v47, v78, s[24:27], 0 offen
	v_add_lshl_u32 v47, v81, v85, 1
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 6, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v40.l, v12.h
	s_clause 0x1
	buffer_store_b16 v14, v79, s[24:27], 0 offen
	buffer_store_b16 v12, v86, s[24:27], 0 offen
	v_add_lshl_u32 v12, v80, v85, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s15, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v8, 7, v59
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s13, s33, v68
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v14, 0x80000000, v47, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s14, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, 0x80, v59
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s12, s33, v9
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v47, v68, v85, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s19
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v6, 0x81, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v78, v9, v85, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s11, s33, v8
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s13, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v5, 0x82, v59
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s10, s33, v7
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v47, 0x80000000, v47, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s12, s5
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v40, v14, s[24:27], 0 offen
	buffer_store_b16 v13, v12, s[24:27], 0 offen
	v_add_lshl_u32 v12, v8, v85, 1
	v_perm_b32 v10, v10, v23, v46
	v_mov_b16_e32 v46.l, v13.h
	v_mov_b16_e32 v46.h, v40.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s9, s33, v6
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v78, 0x80000000, v78, s19
	v_add_lshl_u32 v13, v7, v85, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s11, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v4, 0x83, v59
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s8, s33, v5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v14, v6, v85, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s10, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v3, 0x84, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v40.h
	s_clause 0x1
	buffer_store_b16 v46, v47, s[24:27], 0 offen
	buffer_store_b16 v16, v78, s[24:27], 0 offen
	v_add_lshl_u32 v16, v5, v85, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s9, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v2, 0x85, v59
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s7, s33, v4
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s8, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v1, 0x86, v59
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v49.l, v17.h
	v_mov_b16_e32 v49.h, v40.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s6, s33, v3
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s19
	s_clause 0x1
	buffer_store_b16 v23, v12, s[24:27], 0 offen
	buffer_store_b16 v17, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v4, v85, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v13, v3, v85, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s7, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v0, 0x87, v59
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v49, v14, s[24:27], 0 offen
	buffer_store_b16 v20, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v2, v85, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s6, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v48.l, v20.h
	v_mov_b16_e32 v48.h, v40.h
	v_add_lshl_u32 v16, v1, v85, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s1, s5
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v0
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s0, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v51.l, v21.h
	v_mov_b16_e32 v51.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s19
	s_clause 0x1
	buffer_store_b16 v48, v12, s[24:27], 0 offen
	buffer_store_b16 v21, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v0, v85, 1
	v_add_lshl_u32 v13, v59, v84, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v51, v14, s[24:27], 0 offen
	buffer_store_b16 v24, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v83, v84, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s18, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v50.l, v24.h
	v_mov_b16_e32 v50.h, v40.h
	v_add_lshl_u32 v16, v82, v84, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s17, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v53.l, v25.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s16, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v53.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	s_clause 0x1
	buffer_store_b16 v50, v12, s[24:27], 0 offen
	buffer_store_b16 v25, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v81, v84, 1
	v_add_lshl_u32 v13, v80, v84, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s15, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v53, v14, s[24:27], 0 offen
	buffer_store_b16 v28, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v68, v84, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s14, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v52.l, v28.h
	v_mov_b16_e32 v52.h, v40.h
	v_add_lshl_u32 v16, v9, v84, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s13, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v55.l, v29.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s12, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v55.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	s_clause 0x1
	buffer_store_b16 v52, v12, s[24:27], 0 offen
	buffer_store_b16 v29, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v8, v84, 1
	v_add_lshl_u32 v13, v7, v84, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s11, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v55, v14, s[24:27], 0 offen
	buffer_store_b16 v32, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v6, v84, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s10, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v54.l, v32.h
	v_mov_b16_e32 v54.h, v40.h
	v_add_lshl_u32 v16, v5, v84, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s9, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.l, v33.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s8, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	s_clause 0x1
	buffer_store_b16 v54, v12, s[24:27], 0 offen
	buffer_store_b16 v33, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v4, v84, 1
	v_add_lshl_u32 v13, v3, v84, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s7, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v57, v14, s[24:27], 0 offen
	buffer_store_b16 v37, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v2, v84, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s6, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v56.l, v37.h
	v_mov_b16_e32 v56.h, v40.h
	v_add_lshl_u32 v16, v1, v84, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s1, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.l, v38.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s0, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	s_clause 0x1
	buffer_store_b16 v56, v12, s[24:27], 0 offen
	buffer_store_b16 v38, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v0, v84, 1
	v_add_lshl_u32 v13, v59, v39, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v60, v14, s[24:27], 0 offen
	buffer_store_b16 v41, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v83, v39, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s18, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v58.l, v41.h
	v_mov_b16_e32 v58.h, v40.h
	v_add_lshl_u32 v16, v82, v39, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s17, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.l, v44.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s16, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	s_clause 0x1
	buffer_store_b16 v58, v12, s[24:27], 0 offen
	buffer_store_b16 v44, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v81, v39, 1
	v_add_lshl_u32 v13, v80, v39, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s15, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v62, v14, s[24:27], 0 offen
	buffer_store_b16 v35, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v68, v39, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s14, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.l, v35.h
	v_mov_b16_e32 v61.h, v40.h
	v_add_lshl_u32 v16, v9, v39, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s13, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v64.l, v45.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s12, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v64.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	s_clause 0x1
	buffer_store_b16 v61, v12, s[24:27], 0 offen
	buffer_store_b16 v45, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v8, v39, 1
	v_add_lshl_u32 v13, v7, v39, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s11, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v64, v14, s[24:27], 0 offen
	buffer_store_b16 v36, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v6, v39, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s10, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.l, v36.h
	v_mov_b16_e32 v63.h, v40.h
	v_add_lshl_u32 v16, v5, v39, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s9, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.l, v42.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s8, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	s_clause 0x1
	buffer_store_b16 v63, v12, s[24:27], 0 offen
	buffer_store_b16 v42, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v4, v39, 1
	v_add_lshl_u32 v13, v3, v39, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s7, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v66, v14, s[24:27], 0 offen
	buffer_store_b16 v26, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v2, v39, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s6, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v65.l, v26.h
	v_mov_b16_e32 v65.h, v40.h
	v_add_lshl_u32 v16, v1, v39, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s1, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.l, v43.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s0, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	s_clause 0x1
	buffer_store_b16 v65, v12, s[24:27], 0 offen
	buffer_store_b16 v43, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v0, v39, 1
	v_add_lshl_u32 v13, v59, v34, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, vcc_lo, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v69, v14, s[24:27], 0 offen
	buffer_store_b16 v27, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v83, v34, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s18, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v67.l, v27.h
	v_mov_b16_e32 v67.h, v40.h
	v_add_lshl_u32 v16, v82, v34, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s17, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.l, v30.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s16, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.h, v40.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	s_clause 0x1
	buffer_store_b16 v67, v12, s[24:27], 0 offen
	buffer_store_b16 v30, v13, s[24:27], 0 offen
	v_add_lshl_u32 v12, v81, v34, 1
	v_add_lshl_u32 v13, v80, v34, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s15, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v71, v14, s[24:27], 0 offen
	buffer_store_b16 v18, v16, s[24:27], 0 offen
	v_add_lshl_u32 v14, v68, v34, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s14, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v9, v9, v34, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s13, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v8, v8, v34, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s12, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v7, v7, v34, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s11, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v6, v6, v34, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s10, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v5, v5, v34, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s9, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v4, v4, v34, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s8, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v3, v3, v34, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s7, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v2, v2, v34, 1
	v_add_lshl_u32 v1, v1, v34, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s6, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v0, v0, v34, 1
	v_mov_b16_e32 v70.l, v18.h
	v_mov_b16_e32 v70.h, v40.h
	v_mov_b16_e32 v72.l, v19.h
	v_mov_b16_e32 v72.h, v40.h
	v_mov_b16_e32 v73.l, v31.h
	v_mov_b16_e32 v73.h, v40.h
	v_mov_b16_e32 v74.l, v10.h
	v_mov_b16_e32 v74.h, v40.h
	v_mov_b16_e32 v75.l, v22.h
	v_mov_b16_e32 v75.h, v40.h
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s1, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s0, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v77.l, v15.h
	v_mov_b16_e32 v77.h, v40.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b16_e32 v76.l, v11.h
	v_mov_b16_e32 v76.h, v40.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0xc
	buffer_store_b16 v70, v12, s[24:27], 0 offen
	buffer_store_b16 v31, v13, s[24:27], 0 offen
	buffer_store_b16 v73, v14, s[24:27], 0 offen
	buffer_store_b16 v19, v9, s[24:27], 0 offen
	buffer_store_b16 v72, v8, s[24:27], 0 offen
	buffer_store_b16 v22, v7, s[24:27], 0 offen
	buffer_store_b16 v75, v6, s[24:27], 0 offen
	buffer_store_b16 v10, v5, s[24:27], 0 offen
	buffer_store_b16 v74, v4, s[24:27], 0 offen
	buffer_store_b16 v15, v3, s[24:27], 0 offen
	buffer_store_b16 v77, v2, s[24:27], 0 offen
	buffer_store_b16 v11, v1, s[24:27], 0 offen
	buffer_store_b16 v76, v0, s[24:27], 0 offen
	.loc	1 679 5                         ; ragged.py:679:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 112
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 172
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 172
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10024
; TotalNumSgprs: 42
; NumVgprs: 172
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 172
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x4d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x27 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	705                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     172
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
