	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 679 0                         ; ragged.py:679:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 707 25 prologue_end           ; ragged.py:707:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 718 18                        ; ragged.py:718:18
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v2, 15, v0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v46, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:705:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:705:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
.Ltmp2:
	.loc	1 707 25 is_stmt 1              ; ragged.py:707:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v58, 0
	s_xor_b32 s4, s4, s6
	.loc	1 719 36                        ; ragged.py:719:36
	v_and_b32_e32 v79, 0xf0, v0
	.loc	1 707 25                        ; ragged.py:707:25
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 709 33                        ; ragged.py:709:33
	s_sub_i32 s5, s35, s4
	.loc	1 710 24                        ; ragged.py:710:24
	s_mul_i32 s3, s4, s3
	.loc	1 709 22                        ; ragged.py:709:22
	s_min_i32 s5, s5, 1
	.loc	1 710 24                        ; ragged.py:710:24
	s_sub_i32 s2, s2, s3
	.loc	1 712 17                        ; ragged.py:712:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s3, 1
	s_sub_i32 s10, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s3, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s6, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 34                        ; ragged.py:711:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 20 is_stmt 0              ; ragged.py:711:20
	s_add_i32 s2, s2, s4
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 715 23                        ; ragged.py:715:23
	s_lshl_b64 s[28:29], s[2:3], 3
	s_add_u32 s2, s20, s28
	s_addc_u32 s3, s21, s29
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 716 24                        ; ragged.py:716:24
	s_add_u32 s2, s22, s28
	s_addc_u32 s3, s23, s29
	.loc	1 717 22                        ; ragged.py:717:22
	s_add_u32 s4, s24, s28
	s_addc_u32 s5, s25, s29
	.loc	1 716 24                        ; ragged.py:716:24
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 717 22                        ; ragged.py:717:22
	s_load_b64 s[24:25], s[4:5], 0x0
	.loc	1 719 18                        ; ragged.py:719:18
	s_lshl_b32 s35, s6, 8
	.loc	1 718 18                        ; ragged.py:718:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v4, s2, s10, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v5, null, s11, 0, s2
	.loc	1 799 25                        ; ragged.py:799:25
	v_add_nc_u32_e32 v60, s10, v2
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v6, vcc_lo, v4, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v5, vcc_lo
	v_add_co_u32 v8, vcc_lo, v4, 32
	v_add_co_ci_u32_e64 v9, null, 0, v5, vcc_lo
	v_add_co_u32 v10, vcc_lo, v4, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v5, vcc_lo
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e32 vcc_lo, s[20:21], v[4:5]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s2, s[24:25], v[4:5]
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s3, s[20:21], v[6:7]
	v_cmp_le_i64_e64 s5, s[20:21], v[8:9]
	v_cmp_le_i64_e64 s6, s[20:21], v[10:11]
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s7, s[24:25], v[6:7]
	v_cmp_gt_i64_e64 s8, s[24:25], v[8:9]
	v_cmp_gt_i64_e64 s9, s[24:25], v[10:11]
	.loc	1 799 25 is_stmt 1              ; ragged.py:799:25
	v_add_nc_u32_e32 v63, 16, v60
	v_add_nc_u32_e32 v64, 32, v60
	v_add_nc_u32_e32 v65, 48, v60
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lt_i32 s34, 1
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b32 s7, s[0:1], 0x50
	s_load_b32 s6, s[0:1], 0x48
	s_load_b256 s[12:19], s[0:1], 0x0
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v4, 63, v0
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v8, 5, v2
	.loc	1 766 28 is_stmt 1              ; ragged.py:766:28
	v_lshrrev_b32_e32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v2, s5, s10, v4
	v_add_co_ci_u32_e64 v3, null, s11, 0, s5
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v6, 1, v0
	v_lshrrev_b32_e32 v7, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s5, s[24:25], v[2:3]
	.loc	1 718 18                        ; ragged.py:718:18
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v103, 24, v5
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v15, 4, v0
	.loc	1 714 20                        ; ragged.py:714:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s30, s28
	s_addc_u32 s1, s31, s29
	v_xor_b32_e32 v5, v6, v7
	.loc	1 806 25                        ; ragged.py:806:25
	s_load_b32 s9, s[0:1], 0x0
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s1, s[20:21], v[2:3]
	v_lshrrev_b32_e32 v3, 2, v0
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v17, 5, v0
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v2, 24, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v3, v6, v3
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v1, s35, v0
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v15, 0xe00, v15
	.loc	1 782 39                        ; ragged.py:782:39
	s_mul_i32 s7, s7, s33
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v3, 24, v3
	v_or_b32_e32 v112, v2, v17
	v_dual_mov_b32 v90, 0 :: v_dual_lshlrev_b32 v27, 2, v79
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v17, 32, v17
	v_and_or_b32 v104, v6, 24, v8
	v_xor_b32_e32 v5, v2, v103
	v_or3_b32 v113, v15, v3, v8
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s7, s9, v[1:2]
	v_lshl_add_u32 v7, v4, 5, 0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v6, 28, v6
	v_add3_u32 v17, 0, v27, v17
	v_xor_b32_e32 v8, 0x608, v104
	v_xor_b32_e32 v9, 8, v104
	v_xor_b32_e32 v10, 16, v104
	v_xor_b32_e32 v11, 24, v104
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v119, v7, v5
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v138, v17, v6
	.loc	1 769 19                        ; ragged.py:769:19
	v_mad_u64_u32 v[5:6], null, s33, 3, v[2:3]
	v_xor_b32_e32 v12, 0x208, v104
	v_mad_u64_u32 v[6:7], null, s33, 5, v[2:3]
	v_xor_b32_e32 v13, 0x218, v104
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v131, 0, v8
	v_mad_u64_u32 v[7:8], null, s33, 6, v[2:3]
	v_xor_b32_e32 v14, 0x210, v104
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v120, 0, v9
	v_mad_u64_u32 v[8:9], null, s33, 7, v[2:3]
	v_xor_b32_e32 v15, 8, v112
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v121, 0, v10
	v_mad_u64_u32 v[9:10], null, s33, 9, v[2:3]
	v_xor_b32_e32 v16, 0x410, v104
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v122, 0, v11
	v_mad_u64_u32 v[10:11], null, s33, 10, v[2:3]
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v123, 0, v12
	v_mad_u64_u32 v[11:12], null, s33, 11, v[2:3]
	v_xor_b32_e32 v18, 0x418, v104
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v124, 0, v13
	v_mad_u64_u32 v[12:13], null, s33, 12, v[2:3]
	v_xor_b32_e32 v19, 0x408, v104
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v125, 0, v14
	v_mad_u64_u32 v[13:14], null, s33, 13, v[2:3]
	v_xor_b32_e32 v20, 0x618, v104
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v132, 0, v15
	v_mad_u64_u32 v[14:15], null, s33, 14, v[2:3]
	v_xor_b32_e32 v21, 0x610, v104
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v126, 0, v16
	v_mad_u64_u32 v[15:16], null, s33, 15, v[2:3]
	v_xor_b32_e32 v22, 16, v112
	v_mad_u64_u32 v[16:17], null, s33, 17, v[2:3]
	v_xor_b32_e32 v23, 24, v112
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v127, 0, v18
	v_mad_u64_u32 v[17:18], null, s33, 18, v[2:3]
	v_xor_b32_e32 v24, 8, v113
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v128, 0, v19
	v_mad_u64_u32 v[18:19], null, s33, 19, v[2:3]
	v_xor_b32_e32 v25, 16, v113
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v129, 0, v20
	v_mad_u64_u32 v[19:20], null, s33, 20, v[2:3]
	v_xor_b32_e32 v26, 24, v113
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v130, 0, v21
	v_mad_u64_u32 v[20:21], null, s33, 21, v[2:3]
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v27, 1, v79
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v133, 0, v22
	v_mad_u64_u32 v[21:22], null, s33, 22, v[2:3]
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v134, 0, v23
	v_mad_u64_u32 v[22:23], null, s33, 23, v[2:3]
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v135, 0, v24
	v_mad_u64_u32 v[23:24], null, s33, 24, v[2:3]
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v136, 0, v25
	v_mad_u64_u32 v[24:25], null, s33, 25, v[2:3]
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v137, 0, v26
	v_mad_u64_u32 v[25:26], null, s33, 26, v[2:3]
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v139, 0, v27
	v_mad_u64_u32 v[26:27], null, s33, 27, v[2:3]
	v_mad_u64_u32 v[27:28], null, s33, 28, v[2:3]
	v_mad_u64_u32 v[28:29], null, s33, 29, v[2:3]
	v_mad_u64_u32 v[29:30], null, s33, 30, v[2:3]
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v99, v60, s34
	v_mul_lo_u32 v100, v63, s34
	v_mul_lo_u32 v101, v64, s34
	v_mul_lo_u32 v102, v65, s34
	.loc	1 769 19                        ; ragged.py:769:19
	v_mad_u64_u32 v[30:31], null, s33, 31, v[2:3]
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 766 28                        ; ragged.py:766:28
	v_or_b32_e32 v105, 1, v103
	v_or_b32_e32 v106, 2, v103
	v_or_b32_e32 v107, 3, v103
	v_or_b32_e32 v108, 4, v103
	v_or_b32_e32 v109, 5, v103
	v_or_b32_e32 v110, 6, v103
	v_or_b32_e32 v111, 7, v103
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v4, s10, v4
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v114, s33, v2
	.loc	1 769 19                        ; ragged.py:769:19
	v_lshl_add_u32 v115, s33, 1, v2
	v_lshl_add_u32 v116, s33, 2, v2
	v_lshl_add_u32 v117, s33, 3, v2
	v_lshl_add_u32 v118, s33, 4, v2
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s1, s1, s5
	s_and_b32 s21, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	.loc	1 806 25                        ; ragged.py:806:25
	s_mul_i32 s5, s34, s9
	s_mov_b32 s28, s14
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s7, s8
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 28 is_stmt 1              ; ragged.py:771:28
	s_lshl_b32 s18, s7, 5
	.loc	1 785 31                        ; ragged.py:785:31
	v_dual_mov_b32 v150, s15 :: v_dual_add_nc_u32 v141, 0, v112
	v_or_b32_e32 v151, s18, v108
	v_or_b32_e32 v153, s18, v109
	v_or_b32_e32 v154, s18, v111
	v_or_b32_e32 v155, s18, v110
	v_or_b32_e32 v156, s18, v107
	v_or_b32_e32 v157, s18, v106
	v_mad_u64_u32 v[151:152], null, v151, s6, v[4:5]
	v_or_b32_e32 v158, s18, v105
	v_mad_u64_u32 v[152:153], null, v153, s6, v[4:5]
	v_mad_u64_u32 v[153:154], null, v154, s6, v[4:5]
	v_or_b32_e32 v159, s18, v103
	v_mad_u64_u32 v[154:155], null, v155, s6, v[4:5]
	v_mad_u64_u32 v[155:156], null, v156, s6, v[4:5]
	s_mul_i32 s19, s18, s33
	v_mad_u64_u32 v[156:157], null, v157, s6, v[4:5]
	v_mad_u64_u32 v[157:158], null, v158, s6, v[4:5]
	v_add_nc_u32_e32 v162, s19, v8
	v_dual_mov_b32 v144, s9 :: v_dual_add_nc_u32 v161, s19, v6
	v_mad_u64_u32 v[158:159], null, v159, s6, v[4:5]
	v_add_nc_u32_e32 v163, s19, v7
	v_add_nc_u32_e32 v164, s19, v5
	v_add_nc_u32_e32 v165, s19, v115
	v_add_nc_u32_e32 v166, s19, v114
	v_add_nc_u32_e32 v160, s19, v116
	v_add_nc_u32_e32 v167, s19, v2
	v_add_nc_u32_e32 v168, s19, v117
	v_add_nc_u32_e32 v169, s19, v9
	v_add_nc_u32_e32 v170, s19, v10
	v_add_nc_u32_e32 v171, s19, v11
	v_add_nc_u32_e32 v172, s19, v12
	v_add_nc_u32_e32 v173, s19, v13
	v_add_nc_u32_e32 v174, s19, v14
	v_add_nc_u32_e32 v175, s19, v15
	v_add_nc_u32_e32 v176, s19, v118
	v_add_nc_u32_e32 v177, s19, v16
	v_add_nc_u32_e32 v178, s19, v17
	v_add_nc_u32_e32 v179, s19, v18
	v_add_nc_u32_e32 v180, s19, v19
	v_add_nc_u32_e32 v181, s19, v20
	v_add_nc_u32_e32 v182, s19, v21
	v_add_nc_u32_e32 v183, s19, v22
	v_add_nc_u32_e32 v184, s19, v23
	v_add_nc_u32_e32 v185, s19, v24
	v_add_nc_u32_e32 v186, s19, v25
	v_add_nc_u32_e32 v187, s19, v26
	v_add_nc_u32_e32 v188, s19, v27
	v_add_nc_u32_e32 v189, s19, v28
	v_add_nc_u32_e32 v190, s19, v29
	v_add_nc_u32_e32 v191, s19, v30
	v_cndmask_b32_e64 v153, 0x80000000, v153, s1
	v_cndmask_b32_e64 v159, 0x80000000, v162, s0
	v_cndmask_b32_e64 v152, 0x80000000, v152, s1
	v_cndmask_b32_e64 v161, 0x80000000, v161, s0
	v_cndmask_b32_e64 v155, 0x80000000, v155, s1
	v_cndmask_b32_e64 v162, 0x80000000, v163, s0
	v_cndmask_b32_e64 v163, 0x80000000, v164, s0
	v_cndmask_b32_e64 v157, 0x80000000, v157, s1
	.loc	1 784 34                        ; ragged.py:784:34
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	v_cndmask_b32_e64 v164, 0x80000000, v165, s0
	v_cndmask_b32_e64 v165, 0x80000000, v166, s0
	v_cndmask_b32_e64 v154, 0x80000000, v154, s1
	v_cndmask_b32_e64 v160, 0x80000000, v160, s0
	v_cndmask_b32_e64 v166, 0x80000000, v167, s0
	v_cndmask_b32_e64 v167, 0x80000000, v168, s0
	v_cndmask_b32_e64 v168, 0x80000000, v169, s0
	v_cndmask_b32_e64 v169, 0x80000000, v170, s0
	v_cndmask_b32_e64 v170, 0x80000000, v171, s0
	v_cndmask_b32_e64 v171, 0x80000000, v172, s0
	v_cndmask_b32_e64 v172, 0x80000000, v173, s0
	v_cndmask_b32_e64 v173, 0x80000000, v174, s0
	v_cndmask_b32_e64 v174, 0x80000000, v175, s0
	v_cndmask_b32_e64 v175, 0x80000000, v176, s0
	v_cndmask_b32_e64 v176, 0x80000000, v177, s0
	v_cndmask_b32_e64 v177, 0x80000000, v178, s0
	v_cndmask_b32_e64 v178, 0x80000000, v179, s0
	v_cndmask_b32_e64 v179, 0x80000000, v180, s0
	v_cndmask_b32_e64 v180, 0x80000000, v181, s0
	v_cndmask_b32_e64 v181, 0x80000000, v182, s0
	v_cndmask_b32_e64 v182, 0x80000000, v183, s0
	v_cndmask_b32_e64 v183, 0x80000000, v184, s0
	v_cndmask_b32_e64 v184, 0x80000000, v185, s0
	v_cndmask_b32_e64 v185, 0x80000000, v186, s0
	v_cndmask_b32_e64 v186, 0x80000000, v187, s0
	v_cndmask_b32_e64 v187, 0x80000000, v188, s0
	v_cndmask_b32_e64 v188, 0x80000000, v189, s0
	v_cndmask_b32_e64 v189, 0x80000000, v190, s0
	v_cndmask_b32_e64 v190, 0x80000000, v191, s0
	v_cndmask_b32_e64 v151, 0x80000000, v151, s1
	v_cndmask_b32_e64 v156, 0x80000000, v156, s1
	v_cndmask_b32_e64 v158, 0x80000000, v158, s1
	.loc	1 783 34                        ; ragged.py:783:34
	s_clause 0x7
	buffer_load_u8 v191, v153, s[20:23], 0 offen
	buffer_load_u8 v192, v152, s[20:23], 0 offen
	buffer_load_u8 v193, v155, s[20:23], 0 offen
	buffer_load_u8 v194, v157, s[20:23], 0 offen
	buffer_load_u8 v195, v154, s[20:23], 0 offen
	buffer_load_u8 v196, v151, s[20:23], 0 offen
	buffer_load_u8 v197, v156, s[20:23], 0 offen
	buffer_load_u8 v198, v158, s[20:23], 0 offen
	.loc	1 784 34                        ; ragged.py:784:34
	s_clause 0x1f
	buffer_load_u8 v159, v159, s[28:31], 0 offen
	buffer_load_u8 v161, v161, s[28:31], 0 offen
	buffer_load_u8 v163, v163, s[28:31], 0 offen
	buffer_load_u8 v165, v165, s[28:31], 0 offen
	buffer_load_u8 v174, v174, s[28:31], 0 offen
	buffer_load_u8 v172, v172, s[28:31], 0 offen
	buffer_load_u8 v170, v170, s[28:31], 0 offen
	buffer_load_u8 v168, v168, s[28:31], 0 offen
	buffer_load_u8 v182, v182, s[28:31], 0 offen
	buffer_load_u8 v180, v180, s[28:31], 0 offen
	buffer_load_u8 v178, v178, s[28:31], 0 offen
	buffer_load_u8 v176, v176, s[28:31], 0 offen
	buffer_load_u8 v190, v190, s[28:31], 0 offen
	buffer_load_u8 v188, v188, s[28:31], 0 offen
	buffer_load_u8 v186, v186, s[28:31], 0 offen
	buffer_load_u8 v184, v184, s[28:31], 0 offen
	buffer_load_u8 v162, v162, s[28:31], 0 offen
	buffer_load_u8 v160, v160, s[28:31], 0 offen
	buffer_load_u8 v164, v164, s[28:31], 0 offen
	buffer_load_u8 v166, v166, s[28:31], 0 offen
	buffer_load_u8 v173, v173, s[28:31], 0 offen
	buffer_load_u8 v171, v171, s[28:31], 0 offen
	buffer_load_u8 v169, v169, s[28:31], 0 offen
	buffer_load_u8 v167, v167, s[28:31], 0 offen
	buffer_load_u8 v181, v181, s[28:31], 0 offen
	buffer_load_u8 v179, v179, s[28:31], 0 offen
	buffer_load_u8 v177, v177, s[28:31], 0 offen
	buffer_load_u8 v175, v175, s[28:31], 0 offen
	buffer_load_u8 v189, v189, s[28:31], 0 offen
	buffer_load_u8 v187, v187, s[28:31], 0 offen
	buffer_load_u8 v185, v185, s[28:31], 0 offen
	buffer_load_u8 v183, v183, s[28:31], 0 offen
	.loc	1 785 31                        ; ragged.py:785:31
	v_dual_mov_b32 v147, s12 :: v_dual_add_nc_u32 v142, 0, v113
	v_dual_mov_b32 v149, s14 :: v_dual_add_nc_u32 v140, 0, v104
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 785 31                        ; ragged.py:785:31
	v_dual_mov_b32 v148, s13 :: v_dual_mov_b32 v145, s10
	v_dual_mov_b32 v146, s11 :: v_dual_mov_b32 v143, s8
	.loc	1 806 25                        ; ragged.py:806:25
	s_add_i32 s24, s7, s5
	.loc	1 805 40                        ; ragged.py:805:40
	s_mov_b32 s38, s22
	.loc	1 806 25                        ; ragged.py:806:25
	s_mul_i32 s24, s24, s33
	.loc	1 805 40                        ; ragged.py:805:40
	s_mov_b32 s39, s23
	.loc	1 798 40                        ; ragged.py:798:40
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(31)
	v_lshlrev_b16 v151.l, 8, v159.l
	s_waitcnt vmcnt(30)
	v_lshlrev_b16 v151.h, 8, v161.l
	s_waitcnt vmcnt(29)
	v_lshlrev_b16 v152.l, 8, v163.l
	s_waitcnt vmcnt(28)
	v_lshlrev_b16 v152.h, 8, v165.l
	s_waitcnt vmcnt(27)
	v_lshlrev_b16 v153.l, 8, v174.l
	s_waitcnt vmcnt(26)
	v_lshlrev_b16 v153.h, 8, v172.l
	s_waitcnt vmcnt(25)
	v_lshlrev_b16 v154.l, 8, v170.l
	s_waitcnt vmcnt(24)
	v_lshlrev_b16 v154.h, 8, v168.l
	s_waitcnt vmcnt(23)
	v_lshlrev_b16 v155.l, 8, v182.l
	s_waitcnt vmcnt(22)
	v_lshlrev_b16 v155.h, 8, v180.l
	s_waitcnt vmcnt(21)
	v_lshlrev_b16 v156.l, 8, v178.l
	s_waitcnt vmcnt(20)
	v_lshlrev_b16 v156.h, 8, v176.l
	s_waitcnt vmcnt(19)
	v_lshlrev_b16 v157.l, 8, v190.l
	s_waitcnt vmcnt(18)
	v_lshlrev_b16 v157.h, 8, v188.l
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v158.l, 8, v186.l
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v158.h, 8, v184.l
	s_waitcnt vmcnt(14)
	v_or_b16 v160.h, v162.l, v151.l
	v_or_b16 v160.l, v160.l, v151.h
	s_waitcnt vmcnt(13)
	v_or_b16 v159.h, v164.l, v152.l
	s_waitcnt vmcnt(12)
	v_or_b16 v159.l, v166.l, v152.h
	s_waitcnt vmcnt(11)
	v_or_b16 v162.h, v173.l, v153.l
	s_waitcnt vmcnt(10)
	v_or_b16 v162.l, v171.l, v153.h
	s_waitcnt vmcnt(9)
	v_or_b16 v161.h, v169.l, v154.l
	.loc	1 783 34                        ; ragged.py:783:34
	v_lshlrev_b16 v151.l, 8, v191.l
	v_lshlrev_b16 v151.h, 8, v192.l
	v_lshlrev_b16 v152.l, 8, v193.l
	v_lshlrev_b16 v152.h, 8, v194.l
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(8)
	v_or_b16 v161.l, v167.l, v154.h
	s_waitcnt vmcnt(7)
	v_or_b16 v154.h, v181.l, v155.l
	s_waitcnt vmcnt(6)
	v_or_b16 v154.l, v179.l, v155.h
	s_waitcnt vmcnt(5)
	v_or_b16 v153.h, v177.l, v156.l
	s_waitcnt vmcnt(4)
	v_or_b16 v153.l, v175.l, v156.h
	s_waitcnt vmcnt(3)
	v_or_b16 v156.h, v189.l, v157.l
	s_waitcnt vmcnt(2)
	v_or_b16 v156.l, v187.l, v157.h
	s_waitcnt vmcnt(1)
	v_or_b16 v155.h, v185.l, v158.l
	s_waitcnt vmcnt(0)
	v_or_b16 v155.l, v183.l, v158.h
	.loc	1 783 34                        ; ragged.py:783:34
	v_or_b16 v158.h, v195.l, v151.l
	v_or_b16 v158.l, v196.l, v151.h
	v_or_b16 v157.h, v197.l, v152.l
	v_or_b16 v157.l, v198.l, v152.h
	ds_store_b64 v119, v[157:158]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[227:228], v120
	ds_load_b64 v[229:230], v121
	ds_load_b64 v[231:232], v122
	ds_load_b64 v[167:168], v123
	ds_load_b64 v[233:234], v124
	ds_load_b64 v[235:236], v125
	ds_load_b64 v[199:200], v126
	ds_load_b64 v[237:238], v127
	ds_load_b64 v[239:240], v128
	ds_load_b64 v[183:184], v129
	ds_load_b64 v[241:242], v130
	ds_load_b64 v[243:244], v131
	ds_load_2addr_stride64_b64 v[215:218], v140 offset1:1
	ds_load_2addr_stride64_b64 v[219:222], v140 offset0:2 offset1:3
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v141, v[159:160]
	ds_store_b64 v132, v[161:162]
	ds_store_b64 v133, v[153:154]
	ds_store_b64 v134, v[155:156]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[223:226], v142 offset1:8
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[223:224], v[167:168], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[225:226], v[167:168], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[223:224], v[183:184], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[225:226], v[183:184], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[223:224], v[199:200], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[225:226], v[199:200], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[223:224], v[215:216], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[225:226], v[215:216], v[143:150] neg_lo:[1,1,0]
	.loc	1 784 34                        ; ragged.py:784:34
	ds_load_2addr_stride64_b64 v[140:143], v135 offset1:8
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v144, s7, v99, 1
	v_add_lshl_u32 v145, s7, v100, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v144, 0x80000000, v144, s4
	v_cndmask_b32_e64 v145, 0x80000000, v145, s3
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[140:141], v[217:218], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[142:143], v[217:218], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[140:141], v[227:228], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[142:143], v[227:228], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[140:141], v[241:242], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[142:143], v[241:242], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[140:141], v[237:238], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[142:143], v[237:238], v[191:198] neg_lo:[1,1,0]
	.loc	1 784 34                        ; ragged.py:784:34
	ds_load_2addr_stride64_b64 v[140:143], v136 offset1:8
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[199:206], v[140:141], v[229:230], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[142:143], v[229:230], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[140:141], v[233:234], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[142:143], v[233:234], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[140:141], v[243:244], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[142:143], v[243:244], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[140:141], v[219:220], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[142:143], v[219:220], v[191:198] neg_lo:[1,1,0]
	.loc	1 784 34                        ; ragged.py:784:34
	ds_load_2addr_stride64_b64 v[140:143], v137 offset1:8
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[175:182], v[142:143], v[221:222], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[142:143], v[231:232], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[142:143], v[235:236], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[142:143], v[239:240], v[191:198] neg_lo:[1,1,0]
	.loc	1 805 40                        ; ragged.py:805:40
	v_add_lshl_u32 v143, v1, s24, 1
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[167:174], v[140:141], v[221:222], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[140:141], v[231:232], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[140:141], v[235:236], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[140:141], v[239:240], v[183:190] neg_lo:[1,1,0]
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v141, s7, v101, 1
	v_add_lshl_u32 v142, s7, v102, 1
	.loc	1 805 40                        ; ragged.py:805:40
	v_cndmask_b32_e64 v143, 0x80000000, v143, s0
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v140, v199
	v_cvt_f32_i32_e32 v146, v200
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	.loc	1 805 40                        ; ragged.py:805:40
	buffer_load_u16 v143, v143, s[36:39], 0 offen
	.loc	1 798 40                        ; ragged.py:798:40
	s_clause 0x3
	buffer_load_u16 v144, v144, s[16:19], 0 offen
	buffer_load_u16 v145, v145, s[16:19], 0 offen
	buffer_load_u16 v141, v141, s[16:19], 0 offen
	buffer_load_u16 v142, v142, s[16:19], 0 offen
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v149, v203
	v_cvt_f32_i32_e32 v150, v204
	v_cvt_f32_i32_e32 v200, v206
	v_cvt_f32_i32_e32 v203, v209
	v_cvt_f32_i32_e32 v204, v210
	v_cvt_f32_i32_e32 v206, v212
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v199, v205
	v_cvt_f32_i32_e32 v205, v211
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v147, v201
	v_cvt_f32_i32_e32 v148, v202
	v_cvt_f32_i32_e32 v201, v207
	v_cvt_f32_i32_e32 v202, v208
	v_cvt_f32_i32_e32 v207, v213
	v_cvt_f32_i32_e32 v208, v214
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v197, v197
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v182, v182
	.loc	1 812 17                        ; ragged.py:812:17
	s_add_i32 s7, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lg_u32 s7, s34
	.loc	1 805 40                        ; ragged.py:805:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 798 40                        ; ragged.py:798:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v209, 16, v141
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 810 21                        ; ragged.py:810:21
	ds_store_b32 v138, v143
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v189, v189, v209
	v_dual_mul_f32 v204, v204, v144 :: v_dual_lshlrev_b32 v145, 16, v145
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v211, v140, v144 :: v_dual_lshlrev_b32 v210, 16, v142
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[140:143], v139
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v152, v152, v145
	v_dual_mul_f32 v153, v153, v145 :: v_dual_mul_f32 v212, v146, v144
	v_mul_f32_e32 v213, v147, v144
	v_dual_mul_f32 v214, v148, v144 :: v_dual_mul_f32 v215, v151, v145
	v_dual_mul_f32 v216, v154, v145 :: v_dual_mul_f32 v217, v149, v144
	v_mul_f32_e32 v218, v150, v144
	v_mul_f32_e32 v199, v199, v144
	v_dual_mul_f32 v200, v200, v144 :: v_dual_mul_f32 v219, v155, v145
	v_mul_f32_e32 v156, v156, v145
	v_mul_f32_e32 v157, v157, v145
	v_dual_mul_f32 v158, v158, v145 :: v_dual_mul_f32 v201, v201, v144
	v_mul_f32_e32 v202, v202, v144
	v_mul_f32_e32 v203, v203, v144
	v_mul_f32_e32 v159, v159, v145
	v_dual_mul_f32 v160, v160, v145 :: v_dual_mul_f32 v207, v207, v144
	v_dual_mul_f32 v161, v161, v145 :: v_dual_mul_f32 v208, v208, v144
	v_dual_mul_f32 v162, v162, v145 :: v_dual_mul_f32 v171, v171, v210
	v_mul_f32_e32 v205, v205, v144
	v_mul_f32_e32 v206, v206, v144
	v_mul_f32_e32 v186, v186, v209
	v_dual_mul_f32 v163, v163, v145 :: v_dual_mul_f32 v172, v172, v210
	v_dual_mul_f32 v164, v164, v145 :: v_dual_mul_f32 v173, v173, v210
	v_dual_mul_f32 v165, v165, v145 :: v_dual_mul_f32 v174, v174, v210
	v_dual_mul_f32 v166, v166, v145 :: v_dual_mul_f32 v175, v175, v210
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[144:147], v139 offset:16
	.loc	1 811 17                        ; ragged.py:811:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v58, v211, v140 :: v_dual_fmac_f32 v81, v153, v142
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[148:151], v139 offset:512
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v82, v152, v141 :: v_dual_fmac_f32 v59, v186, v143
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[152:155], v139 offset:528
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v183, v183, v209
	v_mul_f32_e32 v184, v184, v209
	v_mul_f32_e32 v185, v185, v209
	v_mul_f32_e32 v167, v167, v210
	v_mul_f32_e32 v168, v168, v210
	v_mul_f32_e32 v169, v169, v210
	v_dual_mul_f32 v170, v170, v210 :: v_dual_mul_f32 v187, v187, v209
	v_mul_f32_e32 v188, v188, v209
	v_mul_f32_e32 v190, v190, v209
	v_dual_mul_f32 v191, v191, v209 :: v_dual_mul_f32 v176, v176, v210
	v_dual_mul_f32 v192, v192, v209 :: v_dual_mul_f32 v177, v177, v210
	v_dual_mul_f32 v193, v193, v209 :: v_dual_mul_f32 v178, v178, v210
	v_dual_mul_f32 v194, v194, v209 :: v_dual_mul_f32 v179, v179, v210
	v_dual_mul_f32 v195, v195, v209 :: v_dual_mul_f32 v180, v180, v210
	v_dual_mul_f32 v196, v196, v209 :: v_dual_mul_f32 v181, v181, v210
	v_dual_mul_f32 v197, v197, v209 :: v_dual_mul_f32 v182, v182, v210
	v_dual_mul_f32 v198, v198, v209 :: v_dual_fmac_f32 v97, v213, v142
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v98, v212, v141 :: v_dual_fmac_f32 v83, v215, v140
	v_dual_fmac_f32 v96, v214, v143 :: v_dual_fmac_f32 v61, v185, v142
	v_dual_fmac_f32 v80, v216, v143 :: v_dual_fmac_f32 v45, v167, v140
	v_dual_fmac_f32 v66, v183, v140 :: v_dual_fmac_f32 v43, v169, v142
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v62, v184, v141 :: v_dual_fmac_f32 v95, v217, v144
	v_dual_fmac_f32 v44, v168, v141 :: v_dual_fmac_f32 v93, v199, v146
	v_dual_fmac_f32 v42, v170, v143 :: v_dual_fmac_f32 v77, v156, v145
	v_dual_fmac_f32 v94, v218, v145 :: v_dual_fmac_f32 v57, v187, v144
	v_dual_fmac_f32 v92, v200, v147 :: v_dual_fmac_f32 v55, v189, v146
	v_dual_fmac_f32 v78, v219, v144 :: v_dual_fmac_f32 v75, v158, v147
	v_dual_fmac_f32 v76, v157, v146 :: v_dual_fmac_f32 v41, v171, v144
	v_dual_fmac_f32 v56, v188, v145 :: v_dual_fmac_f32 v39, v173, v146
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v54, v190, v147 :: v_dual_fmac_f32 v91, v201, v148
	v_dual_fmac_f32 v40, v172, v145 :: v_dual_fmac_f32 v89, v203, v150
	v_dual_fmac_f32 v38, v174, v147 :: v_dual_fmac_f32 v73, v160, v149
	v_dual_fmac_f32 v90, v202, v149 :: v_dual_fmac_f32 v53, v191, v148
	v_dual_fmac_f32 v88, v204, v151 :: v_dual_fmac_f32 v51, v193, v150
	v_dual_fmac_f32 v74, v159, v148 :: v_dual_fmac_f32 v71, v162, v151
	v_dual_fmac_f32 v72, v161, v150 :: v_dual_fmac_f32 v37, v175, v148
	v_dual_fmac_f32 v52, v192, v149 :: v_dual_fmac_f32 v33, v178, v151
	v_dual_fmac_f32 v50, v194, v151 :: v_dual_fmac_f32 v35, v176, v149
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v34, v177, v150 :: v_dual_fmac_f32 v69, v164, v153
	v_dual_fmac_f32 v87, v205, v152 :: v_dual_fmac_f32 v86, v206, v153
	v_dual_fmac_f32 v85, v207, v154 :: v_dual_fmac_f32 v84, v208, v155
	v_dual_fmac_f32 v70, v163, v152 :: v_dual_fmac_f32 v67, v166, v155
	v_dual_fmac_f32 v68, v165, v154 :: v_dual_fmac_f32 v49, v195, v152
	v_dual_fmac_f32 v48, v196, v153 :: v_dual_fmac_f32 v47, v197, v154
	v_dual_fmac_f32 v46, v198, v155 :: v_dual_fmac_f32 v31, v181, v154
	v_dual_fmac_f32 v32, v179, v152 :: v_dual_fmac_f32 v3, v182, v155
	v_fmac_f32_e32 v36, v180, v153
	.loc	1 769 19                        ; ragged.py:769:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v22, v58, 16, 1
	v_bfe_u32 v23, v98, 16, 1
	v_cmp_o_f32_e64 s19, v58, v58
	v_bfe_u32 v25, v97, 16, 1
	v_cmp_o_f32_e64 s20, v98, v98
	v_add3_u32 v24, v58, v22, 0x7fff
	v_add3_u32 v23, v98, v23, 0x7fff
	v_cmp_o_f32_e64 s21, v97, v97
	v_add3_u32 v25, v97, v25, 0x7fff
	v_bfe_u32 v26, v95, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s19
	v_bfe_u32 v24, v96, 16, 1
	v_bfe_u32 v27, v94, 16, 1
	v_cmp_o_f32_e64 s19, v96, v96
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s20
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s21
	v_add3_u32 v24, v96, v24, 0x7fff
	v_add3_u32 v26, v95, v26, 0x7fff
	v_cmp_o_f32_e64 s20, v95, v95
	v_add3_u32 v27, v94, v27, 0x7fff
	v_cmp_o_f32_e64 s21, v94, v94
	v_cndmask_b16 v25.h, 0x7fff, v24.h, s19
	v_bfe_u32 v24, v93, 16, 1
	v_bfe_u32 v28, v92, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s20
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s21
	v_bfe_u32 v27, v91, 16, 1
	v_add3_u32 v24, v93, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v93, v93
	v_add3_u32 v28, v92, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v92, v92
	v_bfe_u32 v29, v90, 16, 1
	v_add3_u32 v27, v91, v27, 0x7fff
	v_cmp_o_f32_e64 s21, v91, v91
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_cndmask_b16 v24.h, 0x7fff, v28.h, s20
	v_bfe_u32 v28, v89, 16, 1
	v_bfe_u32 v30, v88, 16, 1
	v_add3_u32 v29, v90, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v90, v90
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s21
	v_add3_u32 v28, v89, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v89, v89
	v_add3_u32 v30, v88, v30, 0x7fff
	v_cmp_o_f32_e64 s21, v88, v88
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v87, 16, 1
	v_bfe_u32 v58, v86, 16, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v21, v60, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s20
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s21
	v_bfe_u32 v30, v85, 16, 1
	v_add3_u32 v29, v87, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v87, v87
	v_add3_u32 v58, v86, v58, 0x7fff
	v_cmp_o_f32_e64 s20, v86, v86
	v_bfe_u32 v60, v84, 16, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v20, v63, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_add3_u32 v30, v85, v30, 0x7fff
	v_cmp_o_f32_e64 s21, v85, v85
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s19
	v_cndmask_b16 v29.h, 0x7fff, v58.h, s20
	v_bfe_u32 v58, v83, 16, 1
	v_bfe_u32 v63, v82, 16, 1
	v_add3_u32 v60, v84, v60, 0x7fff
	v_cmp_o_f32_e64 s19, v84, v84
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v19, v64, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s21
	v_add3_u32 v58, v83, v58, 0x7fff
	v_cmp_o_f32_e64 s20, v83, v83
	v_add3_u32 v63, v82, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_cndmask_b16 v30.h, 0x7fff, v60.h, s19
	v_bfe_u32 v60, v81, 16, 1
	v_bfe_u32 v64, v80, 16, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v18, v65, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s20
	v_cndmask_b16 v58.h, 0x7fff, v63.h, s21
	v_bfe_u32 v63, v78, 16, 1
	v_add3_u32 v60, v81, v60, 0x7fff
	v_cmp_o_f32_e64 s19, v81, v81
	v_add3_u32 v64, v80, v64, 0x7fff
	v_cmp_o_f32_e64 s20, v80, v80
	v_bfe_u32 v65, v77, 16, 1
	v_add3_u32 v63, v78, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v78, v78
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s19
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s20
	v_bfe_u32 v64, v76, 16, 1
	v_bfe_u32 v78, v75, 16, 1
	v_add3_u32 v65, v77, v65, 0x7fff
	v_cmp_o_f32_e64 s19, v77, v77
	v_cndmask_b16 v63.l, 0x7fff, v63.h, s21
	v_add3_u32 v64, v76, v64, 0x7fff
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v76, v75, v78, 0x7fff
	v_cmp_o_f32_e64 s21, v75, v75
	v_cndmask_b16 v63.h, 0x7fff, v65.h, s19
	v_bfe_u32 v65, v74, 16, 1
	v_bfe_u32 v75, v73, 16, 1
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s20
	v_cndmask_b16 v64.h, 0x7fff, v76.h, s21
	v_bfe_u32 v76, v72, 16, 1
	v_add3_u32 v65, v74, v65, 0x7fff
	v_cmp_o_f32_e64 s19, v74, v74
	v_add3_u32 v74, v73, v75, 0x7fff
	v_cmp_o_f32_e64 s20, v73, v73
	v_add3_u32 v73, v72, v76, 0x7fff
	v_cmp_o_f32_e64 s21, v72, v72
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s19
	v_bfe_u32 v72, v71, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v74.h, s20
	v_bfe_u32 v74, v70, 16, 1
	v_bfe_u32 v75, v69, 16, 1
	v_cmp_o_f32_e64 s19, v71, v71
	v_add3_u32 v72, v71, v72, 0x7fff
	v_cmp_o_f32_e64 s20, v70, v70
	v_add3_u32 v71, v70, v74, 0x7fff
	v_add3_u32 v70, v69, v75, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s21
	v_cmp_o_f32_e64 s21, v69, v69
	v_bfe_u32 v69, v68, 16, 1
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s20
	v_bfe_u32 v71, v67, 16, 1
	v_cndmask_b16 v73.h, 0x7fff, v72.h, s19
	v_bfe_u32 v72, v66, 16, 1
	v_add3_u32 v69, v68, v69, 0x7fff
	v_cmp_o_f32_e64 s19, v68, v68
	v_add3_u32 v68, v67, v71, 0x7fff
	v_cmp_o_f32_e64 s20, v67, v67
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s21
	v_add3_u32 v67, v66, v72, 0x7fff
	v_cmp_o_f32_e64 s21, v66, v66
	v_cndmask_b16 v66.l, 0x7fff, v69.h, s19
	v_bfe_u32 v69, v62, 16, 1
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s20
	v_bfe_u32 v68, v61, 16, 1
	v_bfe_u32 v71, v59, 16, 1
	v_cmp_o_f32_e64 s19, v62, v62
	v_add3_u32 v69, v62, v69, 0x7fff
	v_cmp_o_f32_e64 s20, v61, v61
	v_add3_u32 v62, v61, v68, 0x7fff
	v_add3_u32 v61, v59, v71, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v67.h, s21
	v_cmp_o_f32_e64 s21, v59, v59
	v_bfe_u32 v59, v57, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s20
	v_bfe_u32 v62, v56, 16, 1
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s19
	v_bfe_u32 v68, v55, 16, 1
	v_add3_u32 v59, v57, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v57, v57
	v_add3_u32 v57, v56, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v56, v56
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s21
	v_add3_u32 v56, v55, v68, 0x7fff
	v_cmp_o_f32_e64 s21, v55, v55
	v_cndmask_b16 v55.l, 0x7fff, v59.h, s19
	v_bfe_u32 v59, v54, 16, 1
	v_cndmask_b16 v55.h, 0x7fff, v57.h, s20
	v_bfe_u32 v57, v53, 16, 1
	v_bfe_u32 v62, v52, 16, 1
	v_cmp_o_f32_e64 s19, v54, v54
	v_add3_u32 v59, v54, v59, 0x7fff
	v_cmp_o_f32_e64 s20, v53, v53
	v_add3_u32 v54, v53, v57, 0x7fff
	v_add3_u32 v53, v52, v62, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s21
	v_cmp_o_f32_e64 s21, v52, v52
	v_bfe_u32 v52, v51, 16, 1
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s20
	v_bfe_u32 v54, v50, 16, 1
	v_cndmask_b16 v56.h, 0x7fff, v59.h, s19
	v_bfe_u32 v57, v49, 16, 1
	v_add3_u32 v52, v51, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v51, v51
	v_add3_u32 v51, v50, v54, 0x7fff
	v_cmp_o_f32_e64 s20, v50, v50
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s21
	v_add3_u32 v50, v49, v57, 0x7fff
	v_cmp_o_f32_e64 s21, v49, v49
	v_cndmask_b16 v49.l, 0x7fff, v52.h, s19
	v_bfe_u32 v52, v48, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v47, 16, 1
	v_bfe_u32 v54, v46, 16, 1
	v_cmp_o_f32_e64 s19, v48, v48
	v_add3_u32 v52, v48, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v47, v47
	v_add3_u32 v48, v47, v51, 0x7fff
	v_add3_u32 v47, v46, v54, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_cmp_o_f32_e64 s21, v46, v46
	v_bfe_u32 v46, v45, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v44, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s19
	v_bfe_u32 v51, v43, 16, 1
	v_add3_u32 v46, v45, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v45, v45
	v_add3_u32 v45, v44, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v44, v44
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s21
	v_add3_u32 v44, v43, v51, 0x7fff
	v_cmp_o_f32_e64 s21, v43, v43
	v_cndmask_b16 v43.l, 0x7fff, v46.h, s19
	v_bfe_u32 v46, v42, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v41, 16, 1
	v_bfe_u32 v48, v40, 16, 1
	v_cmp_o_f32_e64 s19, v42, v42
	v_add3_u32 v46, v42, v46, 0x7fff
	v_cmp_o_f32_e64 s20, v41, v41
	v_add3_u32 v42, v41, v45, 0x7fff
	v_add3_u32 v41, v40, v48, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_cmp_o_f32_e64 s21, v40, v40
	v_bfe_u32 v40, v39, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v38, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s19
	v_bfe_u32 v45, v37, 16, 1
	v_add3_u32 v40, v39, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v39, v39
	v_add3_u32 v39, v38, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v38, v38
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s21
	v_add3_u32 v38, v37, v45, 0x7fff
	v_cmp_o_f32_e64 s21, v37, v37
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v35, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v34, 16, 1
	v_bfe_u32 v42, v33, 16, 1
	v_cmp_o_f32_e64 s19, v35, v35
	v_add3_u32 v40, v35, v40, 0x7fff
	v_cmp_o_f32_e64 s20, v34, v34
	v_add3_u32 v35, v34, v39, 0x7fff
	v_add3_u32 v34, v33, v42, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_cmp_o_f32_e64 s21, v33, v33
	v_bfe_u32 v33, v32, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s20
	v_bfe_u32 v35, v36, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v39, v31, 16, 1
	v_add3_u32 v33, v32, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v32, v32
	v_add3_u32 v32, v36, v35, 0x7fff
	v_bfe_u32 v35, v3, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s21
	v_cmp_o_f32_e64 s20, v36, v36
	v_add3_u32 v36, v31, v39, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v31, v31
	v_add3_u32 v31, v3, v35, 0x7fff
	v_cmp_o_f32_e64 s22, v3, v3
	v_cndmask_b16 v3.l, 0x7fff, v33.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v3.h, 0x7fff, v32.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v45, v55, v67, s19
	v_cndmask_b32_e64 v46, v67, v55, s19
	v_cndmask_b32_e64 v52, v50, v53, s19
	v_cndmask_b32_e64 v50, v53, v50, s19
	v_cndmask_b32_e64 v53, v47, v49, s19
	v_cndmask_b32_e64 v47, v49, v47, s19
	v_cndmask_b32_e64 v49, v41, v43, s19
	v_cndmask_b32_e64 v41, v43, v41, s19
	v_cndmask_b32_e64 v43, v37, v44, s19
	v_cndmask_b32_e64 v37, v44, v37, s19
	v_cndmask_b32_e64 v44, v3, v38, s19
	v_cndmask_b32_e64 v3, v38, v3, s19
	v_cndmask_b32_e64 v38, v0, v34, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v34, v0, s19
	v_cndmask_b32_e64 v34, 0x1054, v54, s19
	.loc	1 719 36                        ; ragged.py:719:36
	v_lshrrev_b32_e32 v1, 1, v79
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v31, v26, v23, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_cndmask_b32_e64 v23, v23, v26, s19
	v_lshl_or_b32 v34, v34, 8, v34
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v12, s35, v1
	s_mov_b32 s20, 0x76543210
	.loc	1 814 9                         ; ragged.py:814:9
	v_lshl_or_b32 v54, v54, 8, v54
	v_cndmask_b32_e64 v26, v24, v25, s19
	v_and_b32_e32 v34, 0x540054, v34
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v17, 1, v12
	v_or_b32_e32 v16, 2, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s18, s33, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_lshl_or_b32 v34, v34, 4, v34
	v_cndmask_b32_e64 v24, v25, v24, s19
	v_cndmask_b32_e64 v25, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v29, v30, v28, s19
	v_cndmask_b32_e64 v28, v28, v30, s19
	v_cndmask_b32_e64 v32, v58, v63, s19
	v_cndmask_b32_e64 v35, v60, v64, s19
	v_cndmask_b32_e64 v39, v65, v70, s19
	v_cndmask_b32_e64 v42, v73, v66, s19
	v_cndmask_b32_e64 v51, v61, v56, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v34, 0x5040504, v34
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s17, s33, v17
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v12, v21, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s16, s33, v16
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v85, v17, v21, 1
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v15, 3, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v22.h, 0
	v_cndmask_b32_e64 v30, v63, v58, s19
	v_cndmask_b32_e64 v33, v64, v60, s19
	v_cndmask_b32_e64 v36, v70, v65, s19
	v_cndmask_b32_e64 v40, v66, v73, s19
	v_cndmask_b32_e64 v48, v56, v61, s19
	v_permlanex16_b32 v24, v24, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v51, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v23, v31, v34
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s18, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v86, v16, v21, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s17, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v14, 4, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s16, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v13, 5, v12
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s15, s33, v15
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v23, v23, v31, v54
	v_perm_b32 v31, v24, v26, v34
	v_perm_b32 v24, v24, v26, v54
	v_perm_b32 v26, v27, v25, v34
	v_perm_b32 v25, v27, v25, v54
	v_perm_b32 v27, v28, v29, v34
	v_perm_b32 v28, v28, v29, v54
	v_perm_b32 v29, v32, v30, v34
	v_perm_b32 v30, v32, v30, v54
	v_perm_b32 v32, v35, v33, v34
	v_perm_b32 v33, v35, v33, v54
	v_perm_b32 v35, v39, v36, v34
	v_perm_b32 v36, v39, v36, v54
	v_perm_b32 v39, v42, v40, v34
	v_perm_b32 v40, v42, v40, v54
	v_perm_b32 v42, v46, v45, v34
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v51, v48, v34
	v_perm_b32 v48, v51, v48, v54
	v_perm_b32 v51, v50, v52, v34
	v_perm_b32 v50, v50, v52, v54
	v_perm_b32 v52, v47, v53, v34
	v_perm_b32 v47, v47, v53, v54
	v_perm_b32 v53, v41, v49, v34
	v_perm_b32 v41, v41, v49, v54
	v_perm_b32 v49, v37, v43, v34
	v_perm_b32 v37, v37, v43, v54
	v_perm_b32 v43, v3, v44, v34
	v_perm_b32 v34, v0, v38, v34
	v_perm_b32 v0, v0, v38, v54
	v_mov_b16_e32 v38.l, v55.h
	v_mov_b16_e32 v38.h, v22.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v11, 6, v12
	.loc	1 814 9                         ; ragged.py:814:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v15, v21, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s14, s33, v14
	v_cmp_gt_i32_e64 s13, s33, v13
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v22.l, v23.h
	s_clause 0x1
	buffer_store_b16 v38, v85, s[20:23], 0 offen
	buffer_store_b16 v23, v86, s[20:23], 0 offen
	v_add_lshl_u32 v23, v14, v21, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s15, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v10, 7, v12
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s12, s33, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v38, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v13, v21, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s14, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 0x80, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v11, v21, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s13, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v8, 0x81, v12
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s11, s33, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s12, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, 0x82, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v3, v3, v44, v54
	v_mov_b16_e32 v54.l, v31.h
	v_mov_b16_e32 v54.h, v22.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s10, s33, v9
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v44.h, v22.h
	v_mov_b16_e32 v56.h, v22.h
	v_mov_b16_e32 v57.h, v22.h
	v_mov_b16_e32 v58.h, v22.h
	v_mov_b16_e32 v59.h, v22.h
	v_mov_b16_e32 v60.h, v22.h
	v_mov_b16_e32 v61.h, v22.h
	v_mov_b16_e32 v62.h, v22.h
	v_mov_b16_e32 v63.h, v22.h
	v_mov_b16_e32 v64.h, v22.h
	v_mov_b16_e32 v65.h, v22.h
	v_mov_b16_e32 v66.h, v22.h
	v_mov_b16_e32 v67.h, v22.h
	v_mov_b16_e32 v68.h, v22.h
	v_mov_b16_e32 v69.h, v22.h
	v_mov_b16_e32 v70.h, v22.h
	v_mov_b16_e32 v71.h, v22.h
	v_mov_b16_e32 v72.h, v22.h
	v_mov_b16_e32 v73.h, v22.h
	v_mov_b16_e32 v74.h, v22.h
	v_mov_b16_e32 v75.h, v22.h
	v_mov_b16_e32 v76.h, v22.h
	v_mov_b16_e32 v77.h, v22.h
	v_mov_b16_e32 v78.h, v22.h
	v_mov_b16_e32 v79.h, v22.h
	v_mov_b16_e32 v80.h, v22.h
	v_mov_b16_e32 v81.h, v22.h
	v_mov_b16_e32 v82.h, v22.h
	v_mov_b16_e32 v83.h, v22.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v22, v38, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v10, v21, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s9, s33, v8
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v23, v9, v21, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s11, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v6, 0x83, v12
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s8, s33, v7
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v44.l, v24.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v24, v84, s[20:23], 0 offen
	v_add_lshl_u32 v24, v8, v21, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s10, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v5, 0x84, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v31, v7, v21, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s9, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v4, 0x85, v12
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s7, s33, v6
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s8, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v2, 0x86, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.l, v26.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s6, s33, v5
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v31, 0x80000000, v31, s19
	s_clause 0x1
	buffer_store_b16 v44, v22, s[20:23], 0 offen
	buffer_store_b16 v26, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v6, v21, 1
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v1, 0x87, v12
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s5, s33, v4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v23, v5, v21, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s7, s4
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v57, v24, s[20:23], 0 offen
	buffer_store_b16 v25, v31, s[20:23], 0 offen
	v_add_lshl_u32 v24, v4, v21, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s6, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v56.l, v25.h
	v_add_lshl_u32 v25, v2, v21, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s5, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v1, v21, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s1, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.l, v27.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	s_clause 0x1
	buffer_store_b16 v56, v22, s[20:23], 0 offen
	buffer_store_b16 v27, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s0, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v23, v17, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s18, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v58.l, v28.h
	s_clause 0x1
	buffer_store_b16 v59, v24, s[20:23], 0 offen
	buffer_store_b16 v28, v25, s[20:23], 0 offen
	v_add_lshl_u32 v24, v16, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s17, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.l, v29.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s16, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v58, v21, s[20:23], 0 offen
	buffer_store_b16 v29, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v15, v20, 1
	v_add_lshl_u32 v22, v14, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s15, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v61, v23, s[20:23], 0 offen
	buffer_store_b16 v30, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v13, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s14, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.l, v30.h
	v_add_lshl_u32 v24, v11, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s13, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.l, v32.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s12, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v60, v21, s[20:23], 0 offen
	buffer_store_b16 v32, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v10, v20, 1
	v_add_lshl_u32 v22, v9, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s11, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v63, v23, s[20:23], 0 offen
	buffer_store_b16 v33, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v8, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s10, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.l, v33.h
	v_add_lshl_u32 v24, v7, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s9, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v65.l, v35.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s8, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v62, v21, s[20:23], 0 offen
	buffer_store_b16 v35, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v6, v20, 1
	v_add_lshl_u32 v22, v5, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s7, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v65, v23, s[20:23], 0 offen
	buffer_store_b16 v36, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v4, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s6, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v64.l, v36.h
	v_add_lshl_u32 v24, v2, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s5, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s1, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v67.l, v39.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	s_clause 0x1
	buffer_store_b16 v64, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s0, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v17, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s18, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.l, v40.h
	s_clause 0x1
	buffer_store_b16 v67, v23, s[20:23], 0 offen
	buffer_store_b16 v40, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v16, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s17, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.l, v42.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s16, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v66, v20, s[20:23], 0 offen
	buffer_store_b16 v42, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v15, v19, 1
	v_add_lshl_u32 v21, v14, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s15, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v69, v22, s[20:23], 0 offen
	buffer_store_b16 v45, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s14, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v68.l, v45.h
	v_add_lshl_u32 v23, v11, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s13, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.l, v46.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s12, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v68, v20, s[20:23], 0 offen
	buffer_store_b16 v46, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v10, v19, 1
	v_add_lshl_u32 v21, v9, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s11, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v71, v22, s[20:23], 0 offen
	buffer_store_b16 v48, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v8, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s10, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v70.l, v48.h
	v_add_lshl_u32 v23, v7, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s9, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v73.l, v51.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s8, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v70, v20, s[20:23], 0 offen
	buffer_store_b16 v51, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v6, v19, 1
	v_add_lshl_u32 v21, v5, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s7, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v73, v22, s[20:23], 0 offen
	buffer_store_b16 v50, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v4, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s6, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v23, v2, v19, 1
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s5, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v12, v12, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v72.l, v50.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v74.l, v47.h
	v_mov_b16_e32 v75.l, v52.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v17, v17, v18, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_add_lshl_u32 v16, v16, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x5
	buffer_store_b16 v72, v20, s[20:23], 0 offen
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v75, v22, s[20:23], 0 offen
	buffer_store_b16 v47, v23, s[20:23], 0 offen
	buffer_store_b16 v74, v19, s[20:23], 0 offen
	buffer_store_b16 v53, v12, s[20:23], 0 offen
	v_add_lshl_u32 v12, v15, v18, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v14, v14, v18, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v13, v13, v18, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v11, v11, v18, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v10, v10, v18, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v9, v9, v18, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v8, v8, v18, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v7, v7, v18, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v76.l, v41.h
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v77.l, v53.h
	v_mov_b16_e32 v78.l, v37.h
	v_mov_b16_e32 v79.l, v49.h
	v_mov_b16_e32 v81.l, v43.h
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_add_lshl_u32 v6, v6, v18, 1
	v_mov_b16_e32 v80.l, v3.h
	s_clause 0x9
	buffer_store_b16 v77, v17, s[20:23], 0 offen
	buffer_store_b16 v41, v16, s[20:23], 0 offen
	buffer_store_b16 v76, v12, s[20:23], 0 offen
	buffer_store_b16 v49, v14, s[20:23], 0 offen
	buffer_store_b16 v79, v13, s[20:23], 0 offen
	buffer_store_b16 v37, v11, s[20:23], 0 offen
	buffer_store_b16 v78, v10, s[20:23], 0 offen
	buffer_store_b16 v43, v9, s[20:23], 0 offen
	buffer_store_b16 v81, v8, s[20:23], 0 offen
	buffer_store_b16 v3, v7, s[20:23], 0 offen
	v_add_lshl_u32 v3, v5, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v4, v4, v18, 1
	v_cndmask_b32_e64 v5, 0x80000000, v6, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v2, v2, v18, 1
	v_add_lshl_u32 v1, v1, v18, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v83.l, v34.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v34, v3, s[20:23], 0 offen
	buffer_store_b16 v83, v4, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 679 5                         ; ragged.py:679:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 245
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 245
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11124
; TotalNumSgprs: 42
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 245
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
