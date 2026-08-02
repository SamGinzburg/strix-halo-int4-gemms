	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 718 18                        ; ragged.py:718:18
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v72, 16, v0
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
	s_ashr_i32 s28, s4, 31
	s_sub_i32 s11, s5, s6
	s_add_i32 s12, s3, 1
	s_sub_i32 s13, s11, s10
	s_cmp_ge_u32 s11, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s11, s13, s11
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s11, s10
	s_cselect_b32 s3, s12, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s29, s3, s28
	s_sub_i32 s10, s29, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 34                        ; ragged.py:711:34
	s_mul_i32 s3, s10, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 711 20 is_stmt 0              ; ragged.py:711:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_ashr_i32 s3, s2, 31
	.loc	1 715 23                        ; ragged.py:715:23
	s_lshl_b64 s[16:17], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s16
	s_addc_u32 s3, s5, s17
	s_load_b64 s[18:19], s[2:3], 0x0
	.loc	1 716 24                        ; ragged.py:716:24
	s_add_u32 s2, s6, s16
	s_addc_u32 s3, s7, s17
	.loc	1 717 22                        ; ragged.py:717:22
	s_add_u32 s4, s8, s16
	s_addc_u32 s5, s9, s17
	.loc	1 716 24                        ; ragged.py:716:24
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 717 22                        ; ragged.py:717:22
	s_load_b64 s[22:23], s[4:5], 0x0
	.loc	1 718 18                        ; ragged.py:718:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s18, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s19, 0, s2
	.loc	1 799 25                        ; ragged.py:799:25
	v_add_nc_u32_e32 v37, s18, v1
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
	v_cmp_gt_i64_e64 s2, s[22:23], v[2:3]
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s3, s[20:21], v[4:5]
	v_cmp_le_i64_e64 s6, s[20:21], v[6:7]
	v_cmp_le_i64_e64 s7, s[20:21], v[8:9]
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s4, s[22:23], v[4:5]
	v_cmp_gt_i64_e64 s8, s[22:23], v[6:7]
	v_cmp_gt_i64_e64 s9, s[22:23], v[8:9]
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
.LBB0_3:                                ; %Flow116
	s_load_b64 s[24:25], s[0:1], 0x40
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v64, 0xf0, v0
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v43, 16, v37
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v44, 32, v37
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v45, 48, v37
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v84, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s27, s10, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b64 s[30:31], s[0:1], 0x20
	.loc	1 719 36 is_stmt 1              ; ragged.py:719:36
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 718 32                        ; ragged.py:718:32
	v_lshrrev_b32_e32 v5, 2, v0
	s_clause 0x1
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s35, s[0:1], 0x50
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, s27, v0
	.loc	1 718 18                        ; ragged.py:718:18
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v8, 1, v0
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v6, s27, v4
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v2, s0, s18, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s19, 0, s0
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 0x80, v6
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v7
	v_cmp_gt_i32_e64 s0, s33, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s6, s[20:21], v[2:3]
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s33, v9
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	.loc	1 714 20                        ; ragged.py:714:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s16, s30, s16
	s_addc_u32 s17, s31, s17
	.loc	1 769 19                        ; ragged.py:769:19
	s_lshl_b32 s20, s29, 8
	.loc	1 806 25                        ; ragged.py:806:25
	s_load_b32 s17, s[16:17], 0x0
	v_bfe_u32 v9, v0, 4, 1
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v11, 24, v4
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s7, s[22:23], v[2:3]
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v2, 4, v8
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v12, 2, v64
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v8, 5, v8
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v10, 24, v7
	.loc	1 769 19                        ; ragged.py:769:19
	v_mul_lo_u32 v13, s26, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v8, 0, v12, v8
	v_mul_lo_u32 v12, s26, v45
	v_mul_lo_u32 v14, s26, v43
	v_mul_lo_u32 v15, s26, v37
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v3, 24, v6
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s17, s33, s17
	v_and_or_b32 v9, v7, 30, v9
	s_mul_i32 s19, s17, s26
	v_add3_u32 v4, s17, s20, v4
	v_add3_u32 v0, s19, s20, v0
	s_lshl_b32 s19, s28, 8
	v_lshl_or_b32 v1, v1, 5, v10
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v5, s18, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v0, s19, v0
	v_xor_b32_e32 v6, v6, v11
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v7, 28, v7
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v85, 2, v9
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v87, 1, v0
	v_subrev_nc_u32_e32 v0, s19, v4
	v_xor_b32_e32 v9, 8, v1
	v_xor_b32_e32 v10, 16, v1
	v_xor_b32_e32 v11, 24, v1
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v16, 1, v64
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v4, 0x80, v0
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v88, 1, v12
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v89, 1, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[12:13], null, v5, s35, v[3:4]
	s_mov_b32 s16, 0
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v90, 1, v14
	v_mad_u64_u32 v[13:14], null, s35, v4, v[2:3]
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v91, 1, v15
	v_mad_u64_u32 v[14:15], null, s35, v0, v[2:3]
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v92, 0, v6
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v93, 0, v1
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v97, v8, v7
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v5, s21
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s6, s6, s7
	v_xor_b32_e32 v86, 4, v85
	v_cmp_eq_u32_e64 s7, 0, v72
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v94, 0, v9
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v95, 0, v10
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v96, 0, v11
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v98, 0, v16
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v1, s17
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v2, s18 :: v_dual_mov_b32 v7, s23
	v_mov_b32_e32 v4, s20
	v_mov_b32_e32 v6, s22
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 769 19                        ; ragged.py:769:19
	s_lshl_b32 s34, s33, 1
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s30
	s_mov_b32 s11, s31
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cndmask_b32_e64 v8, 0x80000000, v14, s0
	v_cndmask_b32_e64 v100, 0x80000000, v12, s6
	v_cndmask_b32_e64 v99, 0x80000000, v13, s1
	.loc	1 769 19                        ; ragged.py:769:19
	s_add_i32 s26, s26, -1
	.loc	1 784 34 is_stmt 1              ; ragged.py:784:34
	buffer_load_b128 v[8:11], v8, s[8:11], 0 offen
	.loc	1 783 34                        ; ragged.py:783:34
	buffer_load_b64 v[103:104], v100, s[28:31], 0 offen
	.loc	1 784 34                        ; ragged.py:784:34
	buffer_load_b128 v[99:102], v99, s[8:11], 0 offen
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lg_u32 s26, 0
	v_add_nc_u32_e32 v13, 32, v13
	v_add_nc_u32_e32 v12, 32, v12
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v105, v85, v8
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt vmcnt(1)
	ds_store_b64 v92, v[103:104]
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v103, v85, v99
	ds_bpermute_b32 v99, v86, v99
	ds_bpermute_b32 v104, v85, v100
	ds_bpermute_b32 v100, v86, v100
	ds_bpermute_b32 v106, v85, v9
	ds_bpermute_b32 v107, v85, v10
	ds_bpermute_b32 v108, v85, v11
	ds_bpermute_b32 v109, v86, v8
	ds_bpermute_b32 v110, v86, v9
	ds_bpermute_b32 v111, v86, v10
	ds_bpermute_b32 v112, v86, v11
	ds_bpermute_b32 v113, v85, v101
	ds_bpermute_b32 v101, v86, v101
	ds_bpermute_b32 v114, v85, v102
	ds_bpermute_b32 v102, v86, v102
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[8:11], v93 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v94 offset1:1
	ds_load_2addr_stride64_b64 v[135:138], v93 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[139:142], v95 offset1:1
	ds_load_2addr_stride64_b64 v[143:146], v96 offset1:1
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v155, v99, v103, s7
	v_cndmask_b32_e64 v157, v103, v99, s7
	v_cndmask_b32_e64 v156, v100, v104, s7
	v_cndmask_b32_e64 v158, v104, v100, s7
	v_cndmask_b32_e64 v147, v109, v105, s7
	v_cndmask_b32_e64 v149, v105, v109, s7
	v_cndmask_b32_e64 v148, v110, v106, s7
	v_cndmask_b32_e64 v150, v106, v110, s7
	v_cndmask_b32_e64 v151, v111, v107, s7
	v_cndmask_b32_e64 v153, v107, v111, s7
	v_cndmask_b32_e64 v152, v112, v108, s7
	v_cndmask_b32_e64 v154, v108, v112, s7
	v_cndmask_b32_e64 v159, v101, v113, s7
	v_cndmask_b32_e64 v161, v113, v101, s7
	v_cndmask_b32_e64 v160, v102, v114, s7
	v_cndmask_b32_e64 v162, v114, v102, s7
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[155:156], v[8:9], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[147:148], v[8:9], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[147:148], v[10:11], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[155:156], v[10:11], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[159:160], v[131:132], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[151:152], v[131:132], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[151:152], v[133:134], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[159:160], v[133:134], v[123:130] neg_lo:[1,1,0]
	.loc	1 783 34                        ; ragged.py:783:34
	ds_load_2addr_stride64_b64 v[8:11], v94 offset0:2 offset1:3
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[157:158], v[139:140], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[149:150], v[139:140], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[149:150], v[141:142], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[157:158], v[141:142], v[123:130] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[161:162], v[143:144], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[153:154], v[143:144], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[153:154], v[145:146], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[161:162], v[145:146], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v143, v107
	v_cvt_f32_i32_e32 v144, v108
	v_cvt_f32_i32_e32 v145, v109
	v_cvt_f32_i32_e32 v146, v110
	.loc	1 783 34                        ; ragged.py:783:34
	ds_load_2addr_stride64_b64 v[107:110], v95 offset0:2 offset1:3
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v163, v111
	v_cvt_f32_i32_e32 v164, v112
	v_cvt_f32_i32_e32 v165, v113
	v_cvt_f32_i32_e32 v166, v114
	.loc	1 783 34                        ; ragged.py:783:34
	ds_load_2addr_stride64_b64 v[111:114], v96 offset0:2 offset1:3
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v131, v99
	v_cvt_f32_i32_e32 v132, v100
	v_cvt_f32_i32_e32 v133, v101
	v_cvt_f32_i32_e32 v134, v102
	v_cvt_f32_i32_e32 v139, v103
	v_cvt_f32_i32_e32 v140, v104
	v_cvt_f32_i32_e32 v141, v105
	v_cvt_f32_i32_e32 v142, v106
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[147:148], v[135:136], v[0:7] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v170, v126
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[151:152], v[8:9], v[99:106] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[149:150], v[107:108], v[99:106] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v169, v125
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[153:154], v[111:112], v[99:106] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v168, v124
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v167, v123
	v_cvt_f32_i32_e32 v171, v99
	v_cvt_f32_i32_e32 v172, v100
	v_cvt_f32_i32_e32 v173, v101
	v_cvt_f32_i32_e32 v174, v102
	v_cvt_f32_i32_e32 v175, v103
	v_cvt_f32_i32_e32 v176, v104
	v_cvt_f32_i32_e32 v177, v105
	v_cvt_f32_i32_e32 v178, v106
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[155:156], v[135:136], v[0:7] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v130, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[159:160], v[8:9], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[157:158], v[107:108], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[161:162], v[111:112], v[99:106] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v8, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v100
	v_cvt_f32_i32_e32 v179, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v180, v102
	v_cvt_f32_i32_e32 v181, v103
	v_cvt_f32_i32_e32 v182, v104
	v_cvt_f32_i32_e32 v183, v105
	v_cvt_f32_i32_e32 v184, v106
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[147:148], v[137:138], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[151:152], v[10:11], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[149:150], v[109:110], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[153:154], v[113:114], v[99:106] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v148, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v154, v100
	v_cvt_f32_i32_e32 v185, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v186, v102
	v_cvt_f32_i32_e32 v187, v103
	v_cvt_f32_i32_e32 v188, v104
	v_cvt_f32_i32_e32 v189, v105
	v_cvt_f32_i32_e32 v190, v106
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[155:156], v[137:138], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[159:160], v[10:11], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[157:158], v[109:110], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[161:162], v[113:114], v[99:106] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v11, v100
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v100, 0x80000000, v91, s5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v156, v101
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v101, 0x80000000, v90, s4
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v10, v99
	v_cvt_f32_i32_e32 v157, v102
	.loc	1 798 40                        ; ragged.py:798:40
	buffer_load_u16 v100, v100, s[36:39], 0 offen
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v158, v103
	.loc	1 798 40                        ; ragged.py:798:40
	buffer_load_u16 v107, v101, s[36:39], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v89, s3
	.loc	1 805 40                        ; ragged.py:805:40
	v_cndmask_b32_e32 v99, 0x80000000, v87, vcc_lo
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v159, v104
	v_cvt_f32_i32_e32 v160, v105
	v_cvt_f32_i32_e32 v161, v106
	.loc	1 798 40                        ; ragged.py:798:40
	buffer_load_u16 v135, v101, s[36:39], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v88, s2
	.loc	1 769 19                        ; ragged.py:769:19
	v_add_nc_u32_e32 v87, s34, v87
	v_add_nc_u32_e32 v91, 2, v91
	v_add_nc_u32_e32 v88, 2, v88
	v_add_nc_u32_e32 v89, 2, v89
	.loc	1 798 40                        ; ragged.py:798:40
	buffer_load_u16 v153, v101, s[36:39], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v102, 16, v100
	.loc	1 805 40                        ; ragged.py:805:40
	buffer_load_u16 v99, v99, s[12:15], 0 offen
	.loc	1 798 40                        ; ragged.py:798:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v110, 16, v107
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v191, v132, v102
	v_mul_f32_e32 v193, v134, v102
	v_mul_f32_e32 v126, v122, v110
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v111, v139, v102 :: v_dual_lshlrev_b32 v122, 16, v135
	v_mul_f32_e32 v107, v127, v110
	v_mul_f32_e32 v162, v131, v102
	v_mul_f32_e32 v108, v128, v110
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v127, v8, v122 :: v_dual_lshlrev_b32 v8, 16, v153
	v_mul_f32_e32 v192, v133, v102
	v_mul_f32_e32 v112, v140, v102
	v_mul_f32_e32 v113, v141, v102
	v_mul_f32_e32 v114, v142, v102
	v_mul_f32_e32 v103, v143, v102
	v_mul_f32_e32 v104, v144, v102
	v_dual_mul_f32 v105, v145, v102 :: v_dual_mul_f32 v144, v188, v8
	v_dual_mul_f32 v106, v146, v102 :: v_dual_mul_f32 v141, v156, v8
	v_dual_mul_f32 v100, v164, v102 :: v_dual_mul_f32 v139, v10, v8
	v_dual_mul_f32 v101, v165, v102 :: v_dual_mul_f32 v140, v11, v8
	v_dual_mul_f32 v164, v116, v110 :: v_dual_mul_f32 v131, v158, v8
	v_dual_mul_f32 v165, v117, v110 :: v_dual_mul_f32 v132, v159, v8
	v_dual_mul_f32 v147, v118, v110 :: v_dual_mul_f32 v134, v161, v8
	v_mul_f32_e32 v153, v148, v8
	v_mul_f32_e32 v154, v154, v8
	v_mul_f32_e32 v128, v9, v122
	v_mul_f32_e32 v155, v185, v8
	v_mul_f32_e32 v148, v186, v8
	v_mul_f32_e32 v143, v187, v8
	v_mul_f32_e32 v145, v189, v8
	v_mul_f32_e32 v146, v190, v8
	v_mul_f32_e32 v142, v157, v8
	v_dual_mul_f32 v133, v160, v8 :: v_dual_mul_f32 v118, v170, v110
	v_mul_f32_e32 v123, v119, v110
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v116, v168, v110 :: v_dual_lshlrev_b32 v99, 16, v99
	.loc	1 810 21                        ; ragged.py:810:21
	ds_store_b32 v97, v99
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v99, v163, v102
	v_mul_f32_e32 v102, v166, v102
	v_mul_f32_e32 v163, v115, v110
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v98
	ds_load_b128 v[156:159], v98 offset:16
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v151, v172, v122
	v_mul_f32_e32 v152, v173, v122
	v_mul_f32_e32 v149, v174, v122
	v_mul_f32_e32 v124, v120, v110
	v_mul_f32_e32 v117, v169, v110
	v_mul_f32_e32 v125, v121, v110
	v_mul_f32_e32 v115, v167, v110
	v_mul_f32_e32 v135, v175, v122
	v_mul_f32_e32 v138, v178, v122
	v_mul_f32_e32 v120, v182, v122
	.loc	1 811 17                        ; ragged.py:811:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v59, v162, v8 :: v_dual_add_nc_u32 v90, 2, v90
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v80, v112, v157
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v150, v171, v122 :: v_dual_fmac_f32 v47, v149, v11
	v_dual_mul_f32 v109, v129, v110 :: v_dual_fmac_f32 v68, v163, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v65, v147, v11 :: v_dual_fmac_f32 v50, v150, v8
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[160:163], v98 offset:512
	.loc	1 811 17                        ; ragged.py:811:17
	v_fmac_f32_e32 v48, v152, v10
	v_fmac_f32_e32 v30, v153, v8
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v136, v176, v122 :: v_dual_fmac_f32 v49, v151, v9
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[149:152], v98 offset:528
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v110, v130, v110 :: v_dual_fmac_f32 v67, v164, v9
	v_dual_mul_f32 v137, v177, v122 :: v_dual_fmac_f32 v62, v124, v157
	v_dual_mul_f32 v129, v179, v122 :: v_dual_fmac_f32 v42, v136, v157
	v_dual_mul_f32 v130, v180, v122 :: v_dual_fmac_f32 v81, v111, v156
	.loc	1 811 17                        ; ragged.py:811:17
	v_fmac_f32_e32 v27, v148, v11
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v121, v183, v122 :: v_dual_fmac_f32 v40, v138, v159
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v78, v114, v159 :: v_dual_mul_f32 v119, v181, v122
	v_fmac_f32_e32 v46, v135, v156
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v122, v184, v122 :: v_dual_fmac_f32 v23, v146, v159
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v84, v191, v9 :: v_dual_fmac_f32 v83, v192, v10
	v_fmac_f32_e32 v26, v143, v156
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v77, v103, v160 :: v_dual_add_nc_u32 v14, 32, v14
	v_fmac_f32_e32 v82, v193, v11
	v_dual_fmac_f32 v66, v165, v10 :: v_dual_fmac_f32 v57, v116, v161
	v_dual_fmac_f32 v29, v154, v9 :: v_dual_fmac_f32 v28, v155, v10
	v_fmac_f32_e32 v35, v130, v163
	v_dual_fmac_f32 v79, v113, v158 :: v_dual_fmac_f32 v76, v104, v161
	v_fmac_f32_e32 v63, v123, v156
	v_dual_fmac_f32 v61, v125, v158 :: v_dual_fmac_f32 v74, v106, v163
	v_dual_fmac_f32 v60, v126, v159 :: v_dual_fmac_f32 v41, v137, v158
	v_dual_fmac_f32 v58, v115, v160 :: v_dual_fmac_f32 v25, v144, v157
	v_dual_fmac_f32 v24, v145, v158 :: v_dual_fmac_f32 v39, v127, v160
	v_dual_fmac_f32 v75, v105, v162 :: v_dual_fmac_f32 v38, v128, v161
	v_dual_fmac_f32 v56, v117, v162 :: v_dual_fmac_f32 v21, v140, v161
	v_dual_fmac_f32 v55, v118, v163 :: v_dual_fmac_f32 v36, v129, v162
	v_dual_fmac_f32 v19, v142, v163 :: v_dual_fmac_f32 v22, v139, v160
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v71, v100, v150
	v_dual_fmac_f32 v20, v141, v162 :: v_dual_fmac_f32 v73, v99, v149
	v_dual_fmac_f32 v70, v101, v151 :: v_dual_fmac_f32 v69, v102, v152
	v_dual_fmac_f32 v54, v107, v149 :: v_dual_fmac_f32 v53, v108, v150
	v_dual_fmac_f32 v52, v109, v151 :: v_dual_fmac_f32 v51, v110, v152
	v_dual_fmac_f32 v34, v119, v149 :: v_dual_fmac_f32 v33, v120, v150
	v_dual_fmac_f32 v32, v121, v151 :: v_dual_fmac_f32 v31, v122, v152
	v_dual_fmac_f32 v18, v131, v149 :: v_dual_fmac_f32 v17, v132, v150
	v_dual_fmac_f32 v16, v133, v151 :: v_dual_fmac_f32 v15, v134, v152
	.loc	1 769 19                        ; ragged.py:769:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v86, v72
.LBB0_7:                                ; %._crit_edge
	.loc	1 814 9 is_stmt 1               ; ragged.py:814:9
	v_bfe_u32 v87, v59, 16, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v85, v37, s33
	v_mul_lo_u32 v37, v45, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v88, v83, 16, 1
	v_cmp_o_f32_e64 s19, v59, v59
	v_add3_u32 v45, v59, v87, 0x7fff
	v_bfe_u32 v87, v84, 16, 1
	v_bfe_u32 v59, v82, 16, 1
	v_cmp_o_f32_e64 s20, v84, v84
	v_cmp_o_f32_e64 s21, v83, v83
	v_cmp_o_f32_e64 s22, v82, v82
	v_add3_u32 v87, v84, v87, 0x7fff
	v_add3_u32 v84, v83, v88, 0x7fff
	v_add3_u32 v59, v82, v59, 0x7fff
	v_bfe_u32 v82, v81, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s19
	v_bfe_u32 v83, v80, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v84.h, s21
	v_bfe_u32 v84, v79, 16, 1
	v_add3_u32 v82, v81, v82, 0x7fff
	v_cmp_o_f32_e64 s19, v81, v81
	v_bfe_u32 v81, v78, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v87.h, s20
	v_add3_u32 v83, v80, v83, 0x7fff
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v80, v79, v84, 0x7fff
	v_cmp_o_f32_e64 s21, v79, v79
	v_add3_u32 v79, v78, v81, 0x7fff
	v_bfe_u32 v81, v77, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v59.h, s22
	v_cmp_o_f32_e64 s22, v78, v78
	v_cndmask_b16 v78.l, 0x7fff, v82.h, s19
	v_cndmask_b16 v79.l, 0x7fff, v80.h, s21
	v_bfe_u32 v80, v76, 16, 1
	v_add3_u32 v81, v77, v81, 0x7fff
	v_bfe_u32 v82, v75, 16, 1
	v_cmp_o_f32_e64 s19, v77, v77
	v_bfe_u32 v77, v74, 16, 1
	v_cndmask_b16 v78.h, 0x7fff, v83.h, s20
	v_add3_u32 v80, v76, v80, 0x7fff
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v76, v75, v82, 0x7fff
	v_cmp_o_f32_e64 s21, v75, v75
	v_add3_u32 v75, v74, v77, 0x7fff
	v_bfe_u32 v77, v73, 16, 1
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s22
	v_cmp_o_f32_e64 s22, v74, v74
	v_cndmask_b16 v74.l, 0x7fff, v81.h, s19
	v_cndmask_b16 v74.h, 0x7fff, v80.h, s20
	v_cndmask_b16 v75.l, 0x7fff, v76.h, s21
	v_bfe_u32 v76, v71, 16, 1
	v_add3_u32 v77, v73, v77, 0x7fff
	v_bfe_u32 v80, v70, 16, 1
	v_cmp_o_f32_e64 s19, v73, v73
	v_bfe_u32 v73, v69, 16, 1
	v_add3_u32 v76, v71, v76, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_add3_u32 v71, v70, v80, 0x7fff
	v_cmp_o_f32_e64 s21, v70, v70
	v_add3_u32 v70, v69, v73, 0x7fff
	v_bfe_u32 v73, v68, 16, 1
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s22
	v_cmp_o_f32_e64 s22, v69, v69
	v_cndmask_b16 v69.l, 0x7fff, v77.h, s19
	v_cndmask_b16 v69.h, 0x7fff, v76.h, s20
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s21
	v_bfe_u32 v71, v67, 16, 1
	v_add3_u32 v73, v68, v73, 0x7fff
	v_bfe_u32 v76, v66, 16, 1
	v_cmp_o_f32_e64 s19, v68, v68
	v_bfe_u32 v68, v65, 16, 1
	v_add3_u32 v71, v67, v71, 0x7fff
	v_cmp_o_f32_e64 s20, v67, v67
	v_add3_u32 v67, v66, v76, 0x7fff
	v_cmp_o_f32_e64 s21, v66, v66
	v_add3_u32 v66, v65, v68, 0x7fff
	v_bfe_u32 v68, v63, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s22
	v_cmp_o_f32_e64 s22, v65, v65
	v_cndmask_b16 v65.l, 0x7fff, v73.h, s19
	v_cndmask_b16 v65.h, 0x7fff, v71.h, s20
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s21
	v_bfe_u32 v67, v62, 16, 1
	v_add3_u32 v68, v63, v68, 0x7fff
	v_bfe_u32 v71, v61, 16, 1
	v_cmp_o_f32_e64 s19, v63, v63
	v_bfe_u32 v63, v60, 16, 1
	v_add3_u32 v67, v62, v67, 0x7fff
	v_cmp_o_f32_e64 s20, v62, v62
	v_add3_u32 v62, v61, v71, 0x7fff
	v_cmp_o_f32_e64 s21, v61, v61
	v_add3_u32 v61, v60, v63, 0x7fff
	v_bfe_u32 v63, v58, 16, 1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s22
	v_cmp_o_f32_e64 s22, v60, v60
	v_cndmask_b16 v60.l, 0x7fff, v68.h, s19
	v_cndmask_b16 v60.h, 0x7fff, v67.h, s20
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s21
	v_bfe_u32 v62, v57, 16, 1
	v_add3_u32 v63, v58, v63, 0x7fff
	v_bfe_u32 v67, v56, 16, 1
	v_cmp_o_f32_e64 s19, v58, v58
	v_bfe_u32 v58, v55, 16, 1
	v_add3_u32 v62, v57, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v57, v57
	v_add3_u32 v57, v56, v67, 0x7fff
	v_cmp_o_f32_e64 s21, v56, v56
	v_add3_u32 v56, v55, v58, 0x7fff
	v_bfe_u32 v58, v54, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s22
	v_cmp_o_f32_e64 s22, v55, v55
	v_cndmask_b16 v55.l, 0x7fff, v63.h, s19
	v_cndmask_b16 v55.h, 0x7fff, v62.h, s20
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s21
	v_bfe_u32 v57, v53, 16, 1
	v_add3_u32 v58, v54, v58, 0x7fff
	v_bfe_u32 v62, v52, 16, 1
	v_cmp_o_f32_e64 s19, v54, v54
	v_bfe_u32 v54, v51, 16, 1
	v_add3_u32 v57, v53, v57, 0x7fff
	v_cmp_o_f32_e64 s20, v53, v53
	v_add3_u32 v53, v52, v62, 0x7fff
	v_cmp_o_f32_e64 s21, v52, v52
	v_add3_u32 v52, v51, v54, 0x7fff
	v_bfe_u32 v54, v50, 16, 1
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s22
	v_cmp_o_f32_e64 s22, v51, v51
	v_cndmask_b16 v51.l, 0x7fff, v58.h, s19
	v_cndmask_b16 v51.h, 0x7fff, v57.h, s20
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s21
	v_bfe_u32 v53, v49, 16, 1
	v_add3_u32 v54, v50, v54, 0x7fff
	v_bfe_u32 v57, v48, 16, 1
	v_cmp_o_f32_e64 s19, v50, v50
	v_bfe_u32 v50, v47, 16, 1
	v_add3_u32 v53, v49, v53, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_add3_u32 v49, v48, v57, 0x7fff
	v_cmp_o_f32_e64 s21, v48, v48
	v_add3_u32 v48, v47, v50, 0x7fff
	v_bfe_u32 v50, v46, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s22
	v_cmp_o_f32_e64 s22, v47, v47
	v_cndmask_b16 v47.l, 0x7fff, v54.h, s19
	v_cndmask_b16 v47.h, 0x7fff, v53.h, s20
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s21
	v_bfe_u32 v49, v42, 16, 1
	v_add3_u32 v50, v46, v50, 0x7fff
	v_bfe_u32 v53, v41, 16, 1
	v_cmp_o_f32_e64 s19, v46, v46
	v_bfe_u32 v46, v40, 16, 1
	v_add3_u32 v49, v42, v49, 0x7fff
	v_cmp_o_f32_e64 s20, v42, v42
	v_add3_u32 v42, v41, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v41, v41
	v_add3_u32 v41, v40, v46, 0x7fff
	v_bfe_u32 v46, v39, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s22
	v_cmp_o_f32_e64 s22, v40, v40
	v_cndmask_b16 v40.l, 0x7fff, v50.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v49.h, s20
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s21
	v_bfe_u32 v42, v38, 16, 1
	v_add3_u32 v46, v39, v46, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	v_cmp_o_f32_e64 s19, v39, v39
	v_bfe_u32 v39, v35, 16, 1
	v_add3_u32 v42, v38, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v38, v38
	v_add3_u32 v38, v36, v49, 0x7fff
	v_cmp_o_f32_e64 s21, v36, v36
	v_add3_u32 v36, v35, v39, 0x7fff
	v_bfe_u32 v39, v34, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s22
	v_cmp_o_f32_e64 s22, v35, v35
	v_cndmask_b16 v35.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v35.h, 0x7fff, v42.h, s20
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v33, 16, 1
	v_add3_u32 v39, v34, v39, 0x7fff
	v_bfe_u32 v42, v32, 16, 1
	v_cmp_o_f32_e64 s19, v34, v34
	v_bfe_u32 v34, v31, 16, 1
	v_add3_u32 v38, v33, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v33, v33
	v_add3_u32 v33, v32, v42, 0x7fff
	v_cmp_o_f32_e64 s21, v32, v32
	v_add3_u32 v32, v31, v34, 0x7fff
	v_bfe_u32 v34, v30, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s22
	v_cmp_o_f32_e64 s22, v31, v31
	v_cndmask_b16 v31.l, 0x7fff, v39.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v38.h, s20
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s21
	v_bfe_u32 v33, v29, 16, 1
	v_add3_u32 v34, v30, v34, 0x7fff
	v_bfe_u32 v38, v28, 16, 1
	v_cmp_o_f32_e64 s19, v30, v30
	v_bfe_u32 v30, v27, 16, 1
	v_add3_u32 v33, v29, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v29, v29
	v_add3_u32 v29, v28, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v28, v28
	v_add3_u32 v28, v27, v30, 0x7fff
	v_bfe_u32 v30, v26, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s22
	v_cmp_o_f32_e64 s22, v27, v27
	v_cndmask_b16 v27.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v27.h, 0x7fff, v33.h, s20
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v25, 16, 1
	v_add3_u32 v30, v26, v30, 0x7fff
	v_bfe_u32 v33, v24, 16, 1
	v_cmp_o_f32_e64 s19, v26, v26
	v_bfe_u32 v26, v23, 16, 1
	v_add3_u32 v29, v25, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v25, v25
	v_add3_u32 v25, v24, v33, 0x7fff
	v_cmp_o_f32_e64 s21, v24, v24
	v_add3_u32 v24, v23, v26, 0x7fff
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s22
	v_cmp_o_f32_e64 s22, v23, v23
	v_cndmask_b16 v23.l, 0x7fff, v30.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s21
	v_bfe_u32 v25, v21, 16, 1
	v_add3_u32 v26, v22, v26, 0x7fff
	v_bfe_u32 v29, v20, 16, 1
	v_cmp_o_f32_e64 s19, v22, v22
	v_bfe_u32 v22, v19, 16, 1
	v_add3_u32 v25, v21, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v21, v21
	v_add3_u32 v21, v20, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v20, v20
	v_add3_u32 v20, v19, v22, 0x7fff
	v_bfe_u32 v22, v18, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s22
	v_cmp_o_f32_e64 s22, v19, v19
	v_cndmask_b16 v19.l, 0x7fff, v26.h, s19
	v_cndmask_b16 v19.h, 0x7fff, v25.h, s20
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s21
	v_bfe_u32 v21, v17, 16, 1
	v_add3_u32 v22, v18, v22, 0x7fff
	v_bfe_u32 v25, v16, 16, 1
	v_cmp_o_f32_e64 s19, v18, v18
	v_bfe_u32 v18, v15, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s22
	v_add3_u32 v21, v17, v21, 0x7fff
	v_cmp_o_f32_e64 s20, v17, v17
	v_add3_u32 v17, v16, v25, 0x7fff
	v_cmp_o_f32_e64 s21, v16, v16
	v_add3_u32 v16, v15, v18, 0x7fff
	v_cmp_o_f32_e64 s22, v15, v15
	v_cndmask_b16 v15.l, 0x7fff, v22.h, s19
	v_cmp_eq_u32_e64 s19, 0, v86
	v_cndmask_b16 v15.h, 0x7fff, v21.h, s20
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s21
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s22
	.loc	1 719 36                        ; ragged.py:719:36
	v_lshrrev_b32_e32 v0, 1, v64
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v17, v78, v45, s19
	v_cndmask_b32_e64 v18, v45, v78, s19
	v_cndmask_b32_e64 v42, v51, v55, s19
	v_cndmask_b32_e64 v45, v55, v51, s19
	v_mov_b32_e32 v51, 0x5410
	v_cndmask_b32_e64 v46, v52, v56, s19
	v_cndmask_b32_e64 v49, v56, v52, s19
	v_cndmask_b32_e64 v50, v40, v47, s19
	v_cndmask_b32_e64 v40, v47, v40, s19
	v_cndmask_b32_e64 v47, v41, v48, s19
	v_cndmask_b32_e64 v41, v48, v41, s19
	v_cndmask_b32_e64 v48, v31, v35, s19
	v_cndmask_b32_e64 v31, v35, v31, s19
	v_cndmask_b32_e64 v35, v32, v36, s19
	v_cndmask_b32_e64 v32, v36, v32, s19
	v_cndmask_b32_e64 v36, v23, v27, s19
	v_cndmask_b32_e64 v23, v27, v23, s19
	v_cndmask_b32_e64 v27, v24, v28, s19
	v_cndmask_b32_e64 v24, v28, v24, s19
	v_cndmask_b32_e64 v28, v15, v19, s19
	v_cndmask_b32_e64 v15, v19, v15, s19
	v_cndmask_b32_e64 v19, v16, v20, s19
	v_mov_b32_e32 v52, 0x7632
	v_cndmask_b32_e64 v16, v20, v16, s19
	v_cndmask_b32_e64 v20, 0x1054, v51, s19
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v10, s27, v0
	s_mov_b32 s20, 0x76543210
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v51, 0x3276, v52, s19
	v_cndmask_b32_e64 v22, v59, v79, s19
	v_lshl_or_b32 v20, v20, 8, v20
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v64, 1, v10
	v_or_b32_e32 v14, 2, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s18, s33, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v20, 0x540054, v20
	v_cndmask_b32_e64 v26, v74, v69, s19
	v_cndmask_b32_e64 v30, v75, v70, s19
	v_and_b32_e32 v51, 0x760076, v51
	v_cndmask_b32_e64 v34, v65, v60, s19
	v_lshl_or_b32 v20, v20, 4, v20
	v_cndmask_b32_e64 v39, v66, v61, s19
	v_permlanex16_b32 v18, v18, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v51, v51, 4, v51
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s17, s33, v64
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v20, 0x5040504, v20
	v_add_lshl_u32 v83, v10, v85, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s16, s33, v14
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v64, v85, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v72, v43, s33
	v_mul_lo_u32 v43, v44, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v44.h, 0
	v_cndmask_b32_e64 v21, v79, v59, s19
	v_cndmask_b32_e64 v25, v69, v74, s19
	v_cndmask_b32_e64 v29, v70, v75, s19
	v_cndmask_b32_e64 v33, v60, v65, s19
	v_cndmask_b32_e64 v38, v61, v66, s19
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v51, 0x7060706, v51
	v_permlanex16_b32 v24, v24, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v52, v18, v17, v20
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s18, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v13, 3, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v86, v14, v85, 1
	v_cndmask_b32_e64 v83, 0x80000000, v83, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s17, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v12, 4, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s16, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v17, v18, v17, v51
	v_perm_b32 v18, v22, v21, v20
	v_perm_b32 v21, v22, v21, v51
	v_perm_b32 v22, v26, v25, v20
	v_perm_b32 v25, v26, v25, v51
	v_perm_b32 v26, v30, v29, v20
	v_perm_b32 v29, v30, v29, v51
	v_perm_b32 v30, v34, v33, v20
	v_perm_b32 v33, v34, v33, v51
	v_perm_b32 v34, v39, v38, v20
	v_perm_b32 v38, v39, v38, v51
	v_perm_b32 v39, v45, v42, v20
	v_perm_b32 v42, v45, v42, v51
	v_perm_b32 v45, v49, v46, v20
	v_perm_b32 v46, v49, v46, v51
	v_perm_b32 v49, v40, v50, v20
	v_perm_b32 v40, v40, v50, v51
	v_perm_b32 v50, v41, v47, v20
	v_perm_b32 v41, v41, v47, v51
	v_perm_b32 v47, v31, v48, v20
	v_perm_b32 v31, v31, v48, v51
	v_perm_b32 v48, v32, v35, v20
	v_perm_b32 v32, v32, v35, v51
	v_perm_b32 v35, v23, v36, v20
	v_perm_b32 v23, v23, v36, v51
	v_perm_b32 v36, v24, v27, v20
	v_perm_b32 v24, v24, v27, v51
	v_perm_b32 v27, v15, v28, v20
	v_perm_b32 v20, v16, v19, v20
	v_perm_b32 v16, v16, v19, v51
	v_mov_b16_e32 v19.l, v52.h
	v_mov_b16_e32 v19.h, v44.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s15, s33, v13
	.loc	1 814 9                         ; ragged.py:814:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v11, 5, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s14, s33, v12
	.loc	1 814 9                         ; ragged.py:814:9
	buffer_store_b16 v52, v83, s[24:27], 0 offen
	v_add_lshl_u32 v52, v13, v85, 1
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 6, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v44.l, v17.h
	s_clause 0x1
	buffer_store_b16 v19, v84, s[24:27], 0 offen
	buffer_store_b16 v17, v86, s[24:27], 0 offen
	v_add_lshl_u32 v17, v12, v85, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s15, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v8, 7, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s13, s33, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v19, 0x80000000, v52, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s14, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, 0x80, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s12, s33, v9
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v52, v11, v85, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s19
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s11, s33, v8
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v83, v9, v85, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s13, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v6, 0x81, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s10, s33, v7
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v44, v19, s[24:27], 0 offen
	buffer_store_b16 v18, v17, s[24:27], 0 offen
	v_add_lshl_u32 v17, v8, v85, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s12, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v5, 0x82, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v15, v15, v28, v51
	v_mov_b16_e32 v51.l, v18.h
	v_add_lshl_u32 v18, v7, v85, 1
	v_cndmask_b32_e64 v83, 0x80000000, v83, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s11, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v4, 0x83, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v51.h, v44.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s9, s33, v6
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s10, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v3, 0x84, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v28.l, v21.h
	v_mov_b16_e32 v28.h, v44.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s8, s33, v5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v19, v6, v85, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s19
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s7, s33, v4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v51, v52, s[24:27], 0 offen
	buffer_store_b16 v21, v83, s[24:27], 0 offen
	v_add_lshl_u32 v21, v5, v85, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s9, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v2, 0x85, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s6, s33, v3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v28, v17, s[24:27], 0 offen
	buffer_store_b16 v22, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v4, v85, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s8, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v1, 0x86, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v54.l, v22.h
	v_mov_b16_e32 v54.h, v44.h
	v_add_lshl_u32 v18, v3, v85, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s7, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v0, 0x87, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s6, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v53.l, v25.h
	v_mov_b16_e32 v53.h, v44.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v54, v19, s[24:27], 0 offen
	buffer_store_b16 v25, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v2, v85, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s19
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v0
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v1, v85, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s1, s5
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v53, v17, s[24:27], 0 offen
	buffer_store_b16 v26, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v0, v85, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s0, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v56.l, v26.h
	v_mov_b16_e32 v56.h, v44.h
	v_add_lshl_u32 v18, v10, v72, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v55.l, v29.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s18, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v55.h, v44.h
	s_clause 0x1
	buffer_store_b16 v56, v19, s[24:27], 0 offen
	buffer_store_b16 v29, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v64, v72, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	v_add_lshl_u32 v21, v14, v72, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s17, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v55, v17, s[24:27], 0 offen
	buffer_store_b16 v30, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v13, v72, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s16, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v58.l, v30.h
	v_mov_b16_e32 v58.h, v44.h
	v_add_lshl_u32 v18, v12, v72, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s15, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.l, v33.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s14, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.h, v44.h
	s_clause 0x1
	buffer_store_b16 v58, v19, s[24:27], 0 offen
	buffer_store_b16 v33, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v11, v72, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	v_add_lshl_u32 v21, v9, v72, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s13, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v57, v17, s[24:27], 0 offen
	buffer_store_b16 v34, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v8, v72, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s12, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.l, v34.h
	v_mov_b16_e32 v60.h, v44.h
	v_add_lshl_u32 v18, v7, v72, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s11, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.l, v38.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s10, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.h, v44.h
	s_clause 0x1
	buffer_store_b16 v60, v19, s[24:27], 0 offen
	buffer_store_b16 v38, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v6, v72, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	v_add_lshl_u32 v21, v5, v72, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s9, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v59, v17, s[24:27], 0 offen
	buffer_store_b16 v39, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v4, v72, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s8, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.l, v39.h
	v_mov_b16_e32 v62.h, v44.h
	v_add_lshl_u32 v18, v3, v72, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s7, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.l, v42.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s6, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.h, v44.h
	s_clause 0x1
	buffer_store_b16 v62, v19, s[24:27], 0 offen
	buffer_store_b16 v42, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v2, v72, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	v_add_lshl_u32 v21, v1, v72, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s1, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v61, v17, s[24:27], 0 offen
	buffer_store_b16 v45, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v0, v72, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s0, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v65.l, v45.h
	v_mov_b16_e32 v65.h, v44.h
	v_add_lshl_u32 v18, v10, v43, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.l, v46.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s18, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.h, v44.h
	s_clause 0x1
	buffer_store_b16 v65, v19, s[24:27], 0 offen
	buffer_store_b16 v46, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v64, v43, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	v_add_lshl_u32 v21, v14, v43, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s17, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v63, v17, s[24:27], 0 offen
	buffer_store_b16 v49, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v13, v43, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s16, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v67.l, v49.h
	v_mov_b16_e32 v67.h, v44.h
	v_add_lshl_u32 v18, v12, v43, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s15, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.l, v40.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s14, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.h, v44.h
	s_clause 0x1
	buffer_store_b16 v67, v19, s[24:27], 0 offen
	buffer_store_b16 v40, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v11, v43, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	v_add_lshl_u32 v21, v9, v43, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s13, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v66, v17, s[24:27], 0 offen
	buffer_store_b16 v50, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v8, v43, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s12, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.l, v50.h
	v_mov_b16_e32 v69.h, v44.h
	v_add_lshl_u32 v18, v7, v43, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s11, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v68.l, v41.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s10, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v68.h, v44.h
	s_clause 0x1
	buffer_store_b16 v69, v19, s[24:27], 0 offen
	buffer_store_b16 v41, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v6, v43, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	v_add_lshl_u32 v21, v5, v43, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s9, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v68, v17, s[24:27], 0 offen
	buffer_store_b16 v47, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v4, v43, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s8, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v18, v3, v43, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s7, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.l, v47.h
	v_mov_b16_e32 v71.h, v44.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s6, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v70.l, v31.h
	v_mov_b16_e32 v70.h, v44.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	s_clause 0x1
	buffer_store_b16 v71, v19, s[24:27], 0 offen
	buffer_store_b16 v31, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v2, v43, 1
	s_clause 0x1
	buffer_store_b16 v70, v17, s[24:27], 0 offen
	buffer_store_b16 v48, v18, s[24:27], 0 offen
	v_add_lshl_u32 v17, v0, v43, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s1, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v1, v43, 1
	v_add_lshl_u32 v10, v10, v37, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s0, s3
	s_and_b32 s3, vcc_lo, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v73.l, v32.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s18, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v73.h, v44.h
	v_mov_b16_e32 v74.l, v48.h
	v_mov_b16_e32 v74.h, v44.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	v_add_lshl_u32 v18, v64, v37, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_add_lshl_u32 v14, v14, v37, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s17, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x3
	buffer_store_b16 v74, v19, s[24:27], 0 offen
	buffer_store_b16 v32, v21, s[24:27], 0 offen
	buffer_store_b16 v73, v17, s[24:27], 0 offen
	buffer_store_b16 v35, v10, s[24:27], 0 offen
	v_add_lshl_u32 v10, v13, v37, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s16, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v12, v12, v37, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s15, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v11, v11, v37, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s14, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v9, v9, v37, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s13, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v8, v8, v37, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s12, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v7, v7, v37, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s11, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v6, v6, v37, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s10, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v5, v5, v37, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s9, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v4, v4, v37, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s8, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v3, v3, v37, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s7, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v2, v2, v37, 1
	v_add_lshl_u32 v1, v1, v37, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s6, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v0, v0, v37, 1
	v_mov_b16_e32 v75.l, v23.h
	v_mov_b16_e32 v75.h, v44.h
	v_mov_b16_e32 v76.l, v35.h
	v_mov_b16_e32 v76.h, v44.h
	v_mov_b16_e32 v77.l, v24.h
	v_mov_b16_e32 v77.h, v44.h
	v_mov_b16_e32 v78.l, v36.h
	v_mov_b16_e32 v78.h, v44.h
	v_mov_b16_e32 v79.l, v15.h
	v_mov_b16_e32 v79.h, v44.h
	v_mov_b16_e32 v80.l, v27.h
	v_mov_b16_e32 v80.h, v44.h
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s1, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s0, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v82.l, v20.h
	v_mov_b16_e32 v82.h, v44.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b16_e32 v81.l, v16.h
	v_mov_b16_e32 v81.h, v44.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0xe
	buffer_store_b16 v76, v18, s[24:27], 0 offen
	buffer_store_b16 v23, v14, s[24:27], 0 offen
	buffer_store_b16 v75, v10, s[24:27], 0 offen
	buffer_store_b16 v36, v12, s[24:27], 0 offen
	buffer_store_b16 v78, v11, s[24:27], 0 offen
	buffer_store_b16 v24, v9, s[24:27], 0 offen
	buffer_store_b16 v77, v8, s[24:27], 0 offen
	buffer_store_b16 v27, v7, s[24:27], 0 offen
	buffer_store_b16 v80, v6, s[24:27], 0 offen
	buffer_store_b16 v15, v5, s[24:27], 0 offen
	buffer_store_b16 v79, v4, s[24:27], 0 offen
	buffer_store_b16 v20, v3, s[24:27], 0 offen
	buffer_store_b16 v82, v2, s[24:27], 0 offen
	buffer_store_b16 v16, v1, s[24:27], 0 offen
	buffer_store_b16 v81, v0, s[24:27], 0 offen
	.loc	1 679 5                         ; ragged.py:679:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 194
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 194
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9612
; TotalNumSgprs: 42
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 194
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
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
