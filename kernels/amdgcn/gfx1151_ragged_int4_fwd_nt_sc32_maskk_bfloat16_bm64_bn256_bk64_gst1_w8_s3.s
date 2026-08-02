	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 837 0                         ; ragged.py:837:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s62, s[0:1], 0x4c
	s_load_b64 s[60:61], s[0:1], 0x54
.Ltmp0:
	.loc	1 865 25 prologue_end           ; ragged.py:865:25
	s_abs_i32 s7, s2
	s_load_b256 s[36:43], s[0:1], 0x28
	.loc	1 876 18                        ; ragged.py:876:18
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v78, 15, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v24, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:863:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s62, 0xff
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:863:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
.Ltmp2:
	.loc	1 865 25 is_stmt 1              ; ragged.py:865:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v39, 0
	s_xor_b32 s4, s4, s6
	.loc	1 876 32                        ; ragged.py:876:32
	v_and_b32_e32 v59, 0xf0, v0
	.loc	1 865 25                        ; ragged.py:865:25
	s_sub_i32 s4, s4, s6
	s_mov_b32 s20, 0
	.loc	1 867 33                        ; ragged.py:867:33
	s_sub_i32 s5, s61, s4
	.loc	1 868 24                        ; ragged.py:868:24
	s_mul_i32 s3, s4, s3
	.loc	1 867 22                        ; ragged.py:867:22
	s_min_i32 s5, s5, 1
	.loc	1 868 24                        ; ragged.py:868:24
	s_sub_i32 s2, s2, s3
	.loc	1 870 17                        ; ragged.py:870:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s21, s7, 31
	s_sub_i32 s7, s8, s9
	s_add_i32 s8, s3, 1
	s_sub_i32 s9, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s3, s8, s3
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s3, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s3, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s24, s3, s21
	s_sub_i32 s6, s24, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 869 34                        ; ragged.py:869:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 869 20 is_stmt 0              ; ragged.py:869:20
	s_add_i32 s2, s2, s4
	.loc	1 872 20 is_stmt 1              ; ragged.py:872:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 873 23                        ; ragged.py:873:23
	s_lshl_b64 s[14:15], s[2:3], 3
	s_add_u32 s2, s36, s14
	s_addc_u32 s3, s37, s15
	s_load_b64 s[22:23], s[2:3], 0x0
	.loc	1 874 24                        ; ragged.py:874:24
	s_add_u32 s2, s38, s14
	s_addc_u32 s3, s39, s15
	.loc	1 875 22                        ; ragged.py:875:22
	s_add_u32 s4, s40, s14
	s_addc_u32 s5, s41, s15
	.loc	1 874 24                        ; ragged.py:874:24
	s_load_b64 s[12:13], s[2:3], 0x0
	.loc	1 875 22                        ; ragged.py:875:22
	s_load_b64 s[10:11], s[4:5], 0x0
	.loc	1 877 18                        ; ragged.py:877:18
	s_lshl_b32 s41, s6, 8
	.loc	1 876 18                        ; ragged.py:876:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s22, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s23, 0, s2
	.loc	1 959 25                        ; ragged.py:959:25
	v_add_nc_u32_e32 v41, s22, v78
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e32 vcc_lo, s[12:13], v[1:2]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s2, s[10:11], v[1:2]
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s3, s[12:13], v[3:4]
	v_cmp_le_i64_e64 s5, s[12:13], v[5:6]
	v_cmp_le_i64_e64 s6, s[12:13], v[7:8]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s7, s[10:11], v[3:4]
	v_cmp_gt_i64_e64 s8, s[10:11], v[5:6]
	v_cmp_gt_i64_e64 s9, s[10:11], v[7:8]
	.loc	1 959 25 is_stmt 1              ; ragged.py:959:25
	v_add_nc_u32_e32 v42, 16, v41
	v_add_nc_u32_e32 v46, 32, v41
	v_add_nc_u32_e32 v47, 48, v41
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lt_i32 s60, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[6:7], s[0:1], 0x20
	.loc	1 876 32 is_stmt 1              ; ragged.py:876:32
	v_lshrrev_b32_e32 v9, 4, v59
	s_clause 0x1
	s_load_b32 s61, s[0:1], 0x50
	s_load_b256 s[44:51], s[0:1], 0x0
	s_mov_b32 s25, s20
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	.loc	1 876 18 is_stmt 0              ; ragged.py:876:18
	v_add_co_u32 v1, s0, s22, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s23, 0, s0
	.loc	1 877 18 is_stmt 1              ; ragged.py:877:18
	v_or_b32_e32 v10, s41, v9
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v3, s0, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, s0
	v_add_co_u32 v5, s0, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, s0
	v_add_co_u32 v7, s0, v1, 48
	.loc	1 872 20                        ; ragged.py:872:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s26, s6, s14
	s_addc_u32 s27, s7, s15
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, s0
	.loc	1 966 25                        ; ragged.py:966:25
	s_load_b32 s23, s[26:27], 0x0
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s0, s[12:13], v[1:2]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s7, s[10:11], v[1:2]
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s1, s[12:13], v[3:4]
	v_cmp_le_i64_e64 s6, s[12:13], v[7:8]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s8, s[10:11], v[3:4]
	v_cmp_gt_i64_e64 s9, s[10:11], v[5:6]
	v_cmp_gt_i64_e64 s10, s[10:11], v[7:8]
	.loc	1 877 18 is_stmt 1              ; ragged.py:877:18
	v_or_b32_e32 v11, 16, v10
	v_or_b32_e32 v12, 32, v10
	v_or_b32_e32 v13, 48, v10
	v_or_b32_e32 v14, 64, v10
	v_or_b32_e32 v15, 0x50, v10
	v_or_b32_e32 v16, 0x60, v10
	v_or_b32_e32 v17, 0x70, v10
	v_or_b32_e32 v18, 0x80, v10
	v_or_b32_e32 v19, 0x90, v10
	v_or_b32_e32 v20, 0xa0, v10
	v_or_b32_e32 v21, 0xb0, v10
	v_or_b32_e32 v22, 0xc0, v10
	v_or_b32_e32 v23, 0xd0, v10
	v_or_b32_e32 v24, 0xe0, v10
	v_or_b32_e32 v1, 0xf0, v10
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s63, s0, s7
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s62, v10
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v10, s22, v9
	.loc	1 928 19                        ; ragged.py:928:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s22, s62, s23
	s_lshl_b32 s24, s24, 8
	s_mul_i32 s23, s22, s60
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v2, s41, v0
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s64, s1, s8
	s_and_b32 s66, s6, s10
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s1, s62, v11
	v_cmp_gt_i32_e64 s6, s62, v13
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v11, 16, v10
	.loc	1 928 19                        ; ragged.py:928:19
	v_add3_u32 v13, s23, s24, v0
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s5, s[12:13], v[5:6]
	.loc	1 928 19                        ; ragged.py:928:19
	s_lshl_b32 s21, s21, 8
	v_add3_u32 v9, s22, s24, v9
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s7, s62, v14
	v_cmp_gt_i32_e64 s18, s62, v1
	v_cmp_gt_i32_e64 s19, s62, v2
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v1, 4, v0
	v_bfe_i32 v2, v0, 3, 1
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v3, 3, v0
	v_mul_lo_u32 v80, v11, s61
	.loc	1 928 19                        ; ragged.py:928:19
	v_subrev_nc_u32_e32 v11, s21, v13
	v_mul_lo_u32 v13, s60, v47
	v_mul_lo_u32 v14, s60, v46
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s65, s5, s9
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s5, s62, v12
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v12, 32, v10
	v_mul_lo_u32 v79, v10, s61
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v10, 48, v10
	.loc	1 928 19                        ; ragged.py:928:19
	v_subrev_nc_u32_e32 v9, s21, v9
	.loc	1 876 18                        ; ragged.py:876:18
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_bfe_i32 v4, v0, 7, 1
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v1, 0x70, v1
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v3, 0x700, v3
	v_mul_lo_u32 v81, v12, s61
	v_mul_lo_u32 v82, v10, s61
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v83, 1, v11
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v84, 1, v13
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v85, 1, v14
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v10, 0xf0, v9
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v11, 0xe0, v9
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v12, 0xd0, v9
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v13, 0xc0, v9
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v14, 0xb0, v9
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v5, 0x7f, v0
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_or_b32_e32 v6, v2, v1
	v_or3_b32 v1, v1, v3, v2
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v2, 5, v0
	.loc	1 928 19                        ; ragged.py:928:19
	v_mul_lo_u32 v88, s61, v10
	v_mul_lo_u32 v89, s61, v11
	v_mul_lo_u32 v90, s61, v12
	v_mul_lo_u32 v91, s61, v13
	v_mul_lo_u32 v92, s61, v14
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v10, 0xa0, v9
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v11, 0x90, v9
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v12, 0x80, v9
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v13, 0x70, v9
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v14, 0x60, v9
	v_xor_b32_e32 v3, v4, v5
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v5, 2, v59
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v2, 32, v2
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s8, s62, v15
	v_cmp_gt_i32_e64 s9, s62, v16
	.loc	1 928 19                        ; ragged.py:928:19
	v_mul_lo_u32 v15, s60, v42
	v_mul_lo_u32 v16, s60, v41
	v_mul_lo_u32 v93, s61, v10
	v_mul_lo_u32 v94, s61, v11
	v_mul_lo_u32 v95, s61, v12
	v_mul_lo_u32 v96, s61, v13
	v_mul_lo_u32 v97, s61, v14
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v10, 0x50, v9
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v11, 64, v9
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v12, 48, v9
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v13, 32, v9
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v14, 16, v9
	v_xor_b32_e32 v4, 8, v6
	v_xor_b32_e32 v8, 8, v1
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v7, 28, v7
	v_add3_u32 v2, 0, v5, v2
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v5, 1, v59
	v_mul_lo_u32 v98, s61, v10
	v_mul_lo_u32 v99, s61, v11
	v_mul_lo_u32 v100, s61, v12
	v_mul_lo_u32 v101, s61, v13
	v_mul_lo_u32 v102, s61, v14
	v_mul_lo_u32 v103, s61, v9
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v104, 0, v3
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v105, 0, v6
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v106, 0, v4
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v107, 0, v1
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v108, 0, v8
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v109, v2, v7
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v110, 0, v5
	v_dual_mov_b32 v1, s20 :: v_dual_mov_b32 v2, s21
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s10, s62, v17
	v_cmp_gt_i32_e64 s11, s62, v18
	v_cmp_gt_i32_e64 s12, s62, v19
	v_cmp_gt_i32_e64 s13, s62, v20
	v_cmp_gt_i32_e64 s14, s62, v21
	v_cmp_gt_i32_e64 s15, s62, v22
	v_cmp_gt_i32_e64 s16, s62, v23
	v_cmp_gt_i32_e64 s17, s62, v24
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v86, 1, v15
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v87, 1, v16
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v3, s22 :: v_dual_mov_b32 v4, s23
	v_dual_mov_b32 v5, s24 :: v_dual_mov_b32 v6, s25
	v_dual_mov_b32 v7, s26 :: v_dual_mov_b32 v8, s27
	s_and_b32 s53, s45, 0xffff
	s_mov_b32 s52, s44
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s45, s47, 0xffff
	s_mov_b32 s44, s46
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s51, 0xffff
	s_mov_b32 s56, s50
	.loc	1 928 19                        ; ragged.py:928:19
	s_lshl_b32 s67, s62, 1
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cmp_gt_i32_e64 s20, s61, v78
	v_add_nc_u32_e32 v111, v79, v78
	v_add_nc_u32_e32 v112, v80, v78
	v_add_nc_u32_e32 v113, v81, v78
	v_add_nc_u32_e32 v114, v82, v78
	s_and_b32 s21, s63, s20
	v_add_nc_u32_e32 v115, v103, v78
	v_add_nc_u32_e32 v116, v102, v78
	v_add_nc_u32_e32 v117, v101, v78
	v_add_nc_u32_e32 v118, v100, v78
	v_add_nc_u32_e32 v127, v91, v78
	v_add_nc_u32_e32 v128, v90, v78
	v_add_nc_u32_e32 v129, v89, v78
	v_add_nc_u32_e32 v130, v88, v78
	s_and_b32 s22, s64, s20
	v_add_nc_u32_e32 v119, v99, v78
	v_add_nc_u32_e32 v120, v98, v78
	v_add_nc_u32_e32 v121, v97, v78
	v_add_nc_u32_e32 v122, v96, v78
	v_add_nc_u32_e32 v123, v95, v78
	v_add_nc_u32_e32 v124, v94, v78
	v_add_nc_u32_e32 v125, v93, v78
	v_add_nc_u32_e32 v126, v92, v78
	s_and_b32 s23, s65, s20
	v_cndmask_b32_e64 v111, 0x80000000, v111, s21
	s_and_b32 s24, s66, s20
	v_cndmask_b32_e64 v112, 0x80000000, v112, s22
	s_and_b32 s25, s0, s20
	s_and_b32 s26, s1, s20
	s_and_b32 s27, s5, s20
	s_and_b32 s28, s6, s20
	s_and_b32 s29, s7, s20
	s_and_b32 s30, s8, s20
	s_and_b32 s31, s9, s20
	s_and_b32 s33, s10, s20
	s_and_b32 s34, s11, s20
	s_and_b32 s35, s12, s20
	s_and_b32 s36, s13, s20
	s_and_b32 s37, s14, s20
	s_and_b32 s38, s15, s20
	s_and_b32 s39, s16, s20
	s_and_b32 s40, s17, s20
	s_and_b32 s20, s18, s20
	v_cndmask_b32_e64 v113, 0x80000000, v113, s23
	v_cndmask_b32_e64 v114, 0x80000000, v114, s24
	v_cndmask_b32_e64 v115, 0x80000000, v115, s25
	v_cndmask_b32_e64 v116, 0x80000000, v116, s26
	v_cndmask_b32_e64 v117, 0x80000000, v117, s27
	v_cndmask_b32_e64 v118, 0x80000000, v118, s28
	v_cndmask_b32_e64 v127, 0x80000000, v127, s38
	v_cndmask_b32_e64 v128, 0x80000000, v128, s39
	v_cndmask_b32_e64 v129, 0x80000000, v129, s40
	v_cndmask_b32_e64 v130, 0x80000000, v130, s20
	.loc	1 944 34 is_stmt 1              ; ragged.py:944:34
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	v_cndmask_b32_e64 v119, 0x80000000, v119, s29
	v_cndmask_b32_e64 v120, 0x80000000, v120, s30
	v_cndmask_b32_e64 v121, 0x80000000, v121, s31
	v_cndmask_b32_e64 v122, 0x80000000, v122, s33
	v_cndmask_b32_e64 v123, 0x80000000, v123, s34
	v_cndmask_b32_e64 v124, 0x80000000, v124, s35
	v_cndmask_b32_e64 v125, 0x80000000, v125, s36
	v_cndmask_b32_e64 v126, 0x80000000, v126, s37
	.loc	1 943 34                        ; ragged.py:943:34
	s_clause 0x3
	buffer_load_u8 v111, v111, s[52:55], 0 offen
	buffer_load_u8 v112, v112, s[52:55], 0 offen
	buffer_load_u8 v113, v113, s[52:55], 0 offen
	buffer_load_u8 v114, v114, s[52:55], 0 offen
	.loc	1 944 34                        ; ragged.py:944:34
	s_clause 0xf
	buffer_load_u8 v115, v115, s[44:47], 0 offen
	buffer_load_u8 v116, v116, s[44:47], 0 offen
	buffer_load_u8 v117, v117, s[44:47], 0 offen
	buffer_load_u8 v118, v118, s[44:47], 0 offen
	buffer_load_u8 v131, v119, s[44:47], 0 offen
	buffer_load_u8 v132, v120, s[44:47], 0 offen
	buffer_load_u8 v133, v121, s[44:47], 0 offen
	buffer_load_u8 v134, v122, s[44:47], 0 offen
	buffer_load_u8 v135, v123, s[44:47], 0 offen
	buffer_load_u8 v136, v124, s[44:47], 0 offen
	buffer_load_u8 v137, v125, s[44:47], 0 offen
	buffer_load_u8 v138, v126, s[44:47], 0 offen
	buffer_load_u8 v127, v127, s[44:47], 0 offen
	buffer_load_u8 v128, v128, s[44:47], 0 offen
	buffer_load_u8 v129, v129, s[44:47], 0 offen
	buffer_load_u8 v130, v130, s[44:47], 0 offen
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 965 40                        ; ragged.py:965:40
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 958 40                        ; ragged.py:958:40
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 928 19                        ; ragged.py:928:19
	s_add_i32 s60, s60, -1
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt vmcnt(19)
	ds_store_b8 v104, v111
	s_waitcnt vmcnt(18)
	ds_store_b8 v104, v112 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v104, v113 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v104, v114 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[119:122], v105 offset1:32
	ds_load_2addr_b64 v[123:126], v105 offset0:64 offset1:96
	ds_load_2addr_b64 v[151:154], v106 offset1:32
	ds_load_2addr_b64 v[183:186], v106 offset0:64 offset1:96
	.loc	1 944 34                        ; ragged.py:944:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v104, v115
	s_waitcnt vmcnt(14)
	ds_store_b8 v104, v116 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v104, v117 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v104, v118 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v104, v131 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v104, v132 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v104, v133 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v104, v134 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v104, v135 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v104, v136 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v104, v137 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v104, v138 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v104, v127 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v104, v128 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v104, v129 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v104, v130 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[187:190], v107 offset1:4
	ds_load_2addr_stride64_b64 v[191:194], v108 offset1:4
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lg_u32 s60, 0
	v_add_nc_u32_e32 v78, 16, v78
	.loc	1 945 31                        ; ragged.py:945:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[187:188], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[189:190], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[187:188], v[119:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[189:190], v[119:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[189:190], v[121:122], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[191:192], v[153:154], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[193:194], v[183:184], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[191:192], v[151:152], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[193:194], v[151:152], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[193:194], v[153:154], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[187:188], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[187:188], v[125:126], v[1:8] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v187, v135
	v_cvt_f32_i32_e32 v135, v139
	v_cvt_f32_i32_e32 v139, v159
	.loc	1 965 40                        ; ragged.py:965:40
	v_cndmask_b32_e64 v159, 0x80000000, v83, s19
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v188, v136
	v_cvt_f32_i32_e32 v136, v140
	v_cvt_f32_i32_e32 v140, v160
	.loc	1 958 40                        ; ragged.py:958:40
	v_cndmask_b32_e64 v160, 0x80000000, v87, s4
	.loc	1 965 40                        ; ragged.py:965:40
	buffer_load_u16 v159, v159, s[56:59], 0 offen
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[175:182], v[189:190], v[125:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[191:192], v[185:186], v[167:174] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v189, v137
	v_cvt_f32_i32_e32 v137, v141
	v_cvt_f32_i32_e32 v141, v161
	.loc	1 958 40                        ; ragged.py:958:40
	buffer_load_u16 v160, v160, s[48:51], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v86, s3
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[151:158], v[191:192], v[183:184], v[151:158] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v183, v111
	v_cvt_f32_i32_e32 v111, v131
	v_cvt_f32_i32_e32 v131, v163
	v_cvt_f32_i32_e32 v163, v167
	.loc	1 958 40                        ; ragged.py:958:40
	buffer_load_u16 v167, v161, s[48:51], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v85, s2
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v184, v112
	v_cvt_f32_i32_e32 v112, v132
	v_cvt_f32_i32_e32 v132, v164
	v_cvt_f32_i32_e32 v164, v168
	.loc	1 958 40                        ; ragged.py:958:40
	buffer_load_u16 v168, v161, s[48:51], 0 offen
	v_cndmask_b32_e32 v161, 0x80000000, v84, vcc_lo
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[175:182], v[193:194], v[185:186], v[175:182] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v185, v113
	v_cvt_f32_i32_e32 v113, v133
	v_cvt_f32_i32_e32 v133, v165
	v_cvt_f32_i32_e32 v165, v169
	.loc	1 958 40                        ; ragged.py:958:40
	buffer_load_u16 v169, v161, s[48:51], 0 offen
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v186, v114
	v_cvt_f32_i32_e32 v114, v134
	v_cvt_f32_i32_e32 v190, v138
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v142, v162
	v_cvt_f32_i32_e32 v134, v166
	v_cvt_f32_i32_e32 v166, v170
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v126, v118
	v_cvt_f32_i32_e32 v119, v147
	v_cvt_f32_i32_e32 v147, v155
	v_cvt_f32_i32_e32 v155, v171
	v_cvt_f32_i32_e32 v118, v130
	v_cvt_f32_i32_e32 v124, v116
	.loc	1 928 19                        ; ragged.py:928:19
	v_add_nc_u32_e32 v84, 2, v84
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v191, v151
	v_cvt_f32_i32_e32 v130, v146
	v_cvt_f32_i32_e32 v116, v128
	v_cvt_f32_i32_e32 v128, v144
	v_cvt_f32_i32_e32 v192, v152
	v_cvt_f32_i32_e32 v193, v153
	v_cvt_f32_i32_e32 v194, v154
	.loc	1 928 19                        ; ragged.py:928:19
	v_add_nc_u32_e32 v86, 2, v86
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v123, v115
	v_cvt_f32_i32_e32 v125, v117
	v_cvt_f32_i32_e32 v115, v127
	v_cvt_f32_i32_e32 v117, v129
	v_cvt_f32_i32_e32 v144, v180
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v120, v148
	v_cvt_f32_i32_e32 v121, v149
	v_cvt_f32_i32_e32 v122, v150
	v_cvt_f32_i32_e32 v150, v158
	v_cvt_f32_i32_e32 v158, v174
	v_cvt_f32_i32_e32 v148, v156
	v_cvt_f32_i32_e32 v156, v172
	v_cvt_f32_i32_e32 v149, v157
	v_cvt_f32_i32_e32 v157, v173
	v_cvt_f32_i32_e32 v151, v175
	v_cvt_f32_i32_e32 v152, v176
	v_cvt_f32_i32_e32 v153, v177
	v_cvt_f32_i32_e32 v154, v178
	v_cvt_f32_i32_e32 v143, v179
	v_cvt_f32_i32_e32 v145, v181
	v_cvt_f32_i32_e32 v146, v182
	.loc	1 965 40                        ; ragged.py:965:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 970 21                        ; ragged.py:970:21
	ds_store_b32 v109, v159
	s_waitcnt vmcnt(3) lgkmcnt(0)
	.loc	1 958 40                        ; ragged.py:958:40
	v_lshlrev_b32_e32 v170, 16, v160
	.loc	1 970 21                        ; ragged.py:970:21
	s_barrier
	ds_load_b128 v[159:162], v110
	.loc	1 963 21                        ; ragged.py:963:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v171, v183, v170 :: v_dual_lshlrev_b32 v168, 16, v168
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v140, v140, v168
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v148, v148, v168 :: v_dual_lshlrev_b32 v169, 16, v169
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v150, v150, v168 :: v_dual_fmac_f32 v39, v171, v159
	v_mul_f32_e32 v142, v142, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v132, v132, v168 :: v_dual_mul_f32 v163, v163, v169
	v_dual_mul_f32 v171, v184, v170 :: v_dual_mul_f32 v134, v134, v168
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v24, v163, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v171, v160
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v171, v185, v170
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v76, v171, v161 :: v_dual_mul_f32 v171, v186, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v171, v162
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v124, v124, v170 :: v_dual_lshlrev_b32 v167, 16, v167
	v_dual_mul_f32 v126, v126, v170 :: v_dual_add_nc_u32 v85, 2, v85
	v_mul_f32_e32 v163, v111, v170
	v_mul_f32_e32 v171, v187, v167
	v_dual_mul_f32 v130, v130, v167 :: v_dual_mul_f32 v125, v125, v170
	v_dual_mul_f32 v136, v136, v167 :: v_dual_mul_f32 v147, v147, v168
	v_mul_f32_e32 v144, v144, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v62, v171, v159
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v171, v188, v167
	v_dual_mul_f32 v123, v123, v170 :: v_dual_mul_f32 v172, v121, v167
	v_mul_f32_e32 v135, v135, v167
	v_mul_f32_e32 v137, v137, v167
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v61, v171, v160
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v171, v189, v167
	v_mul_f32_e32 v138, v138, v167
	v_mul_f32_e32 v128, v128, v167
	v_dual_mul_f32 v152, v152, v169 :: v_dual_add_nc_u32 v83, s67, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v60, v171, v161 :: v_dual_mul_f32 v171, v190, v167
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v154, v154, v169 :: v_dual_add_nc_u32 v87, 2, v87
	v_dual_mul_f32 v149, v149, v168 :: v_dual_mul_f32 v146, v146, v169
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v58, v171, v162
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v171, v191, v168 :: v_dual_mul_f32 v156, v156, v169
	v_mul_f32_e32 v158, v158, v169
	v_mul_f32_e32 v143, v143, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v43, v171, v159
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v159, v164, v169
	v_mul_f32_e32 v171, v192, v168
	v_dual_mul_f32 v164, v112, v170 :: v_dual_fmac_f32 v23, v159, v160
	v_mul_f32_e32 v159, v165, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v165, v113, v170 :: v_dual_fmac_f32 v40, v171, v160
	v_dual_mul_f32 v171, v193, v168 :: v_dual_mul_f32 v160, v116, v170
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v22, v159, v161
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v159, v166, v169
	v_mul_f32_e32 v166, v114, v170
	.loc	1 970 21                        ; ragged.py:970:21
	ds_load_b128 v[111:114], v110 offset:16
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v38, v171, v161 :: v_dual_mul_f32 v171, v194, v168
	v_fmac_f32_e32 v21, v159, v162
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v159, v115, v170
	v_mul_f32_e32 v161, v117, v170
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v37, v171, v162
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v162, v118, v170
	.loc	1 970 21                        ; ragged.py:970:21
	ds_load_b128 v[115:118], v110 offset:512
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v155, v155, v169
	v_mul_f32_e32 v127, v127, v167
	v_mul_f32_e32 v129, v129, v167
	v_dual_mul_f32 v170, v119, v167 :: v_dual_mul_f32 v157, v157, v169
	v_mul_f32_e32 v139, v139, v168
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v151, v151, v169 :: v_dual_fmac_f32 v56, v136, v112
	v_dual_mul_f32 v141, v141, v168 :: v_dual_fmac_f32 v20, v155, v111
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v36, v147, v111
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v171, v120, v167
	v_mul_f32_e32 v167, v122, v167
	.loc	1 970 21                        ; ragged.py:970:21
	ds_load_b128 v[119:122], v110 offset:528
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v74, v123, v111
	v_fmac_f32_e32 v72, v125, v113
	.loc	1 963 21                        ; ragged.py:963:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v153, v153, v169 :: v_dual_fmac_f32 v70, v159, v115
	v_dual_mul_f32 v131, v131, v168 :: v_dual_fmac_f32 v18, v157, v113
	v_dual_mul_f32 v145, v145, v169 :: v_dual_fmac_f32 v50, v130, v118
	v_dual_mul_f32 v133, v133, v168 :: v_dual_fmac_f32 v16, v151, v115
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v57, v135, v111 :: v_dual_fmac_f32 v54, v138, v114
	v_dual_fmac_f32 v34, v149, v113 :: v_dual_fmac_f32 v33, v150, v114
	v_fmac_f32_e32 v17, v158, v114
	v_dual_fmac_f32 v69, v160, v116 :: v_dual_fmac_f32 v68, v161, v117
	v_fmac_f32_e32 v71, v126, v114
	v_fmac_f32_e32 v67, v162, v118
	v_dual_fmac_f32 v53, v127, v115 :: v_dual_fmac_f32 v52, v128, v116
	v_dual_fmac_f32 v51, v129, v117 :: v_dual_fmac_f32 v32, v139, v115
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v73, v124, v112 :: v_dual_fmac_f32 v64, v165, v121
	v_dual_fmac_f32 v31, v140, v116 :: v_dual_fmac_f32 v30, v141, v117
	v_dual_fmac_f32 v55, v137, v113 :: v_dual_fmac_f32 v44, v167, v122
	v_fmac_f32_e32 v29, v142, v118
	v_dual_fmac_f32 v15, v152, v116 :: v_dual_fmac_f32 v14, v153, v117
	v_dual_fmac_f32 v35, v148, v112 :: v_dual_fmac_f32 v28, v131, v119
	v_dual_fmac_f32 v13, v154, v118 :: v_dual_fmac_f32 v66, v163, v119
	v_dual_fmac_f32 v19, v156, v112 :: v_dual_fmac_f32 v10, v145, v121
	v_fmac_f32_e32 v65, v164, v120
	v_fmac_f32_e32 v63, v166, v122
	v_dual_fmac_f32 v49, v170, v119 :: v_dual_fmac_f32 v48, v171, v120
	v_fmac_f32_e32 v45, v172, v121
	v_dual_fmac_f32 v27, v132, v120 :: v_dual_fmac_f32 v26, v133, v121
	v_dual_fmac_f32 v25, v134, v122 :: v_dual_fmac_f32 v12, v143, v119
	v_fmac_f32_e32 v11, v144, v120
	v_fmac_f32_e32 v9, v146, v122
	.loc	1 928 19                        ; ragged.py:928:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 974 9                         ; ragged.py:974:9
	v_bfe_u32 v87, v39, 16, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v86, v41, s62
	v_mul_lo_u32 v41, v47, s62
	.loc	1 974 9                         ; ragged.py:974:9
	v_bfe_u32 v47, v77, 16, 1
	v_bfe_u32 v88, v76, 16, 1
	v_add3_u32 v87, v39, v87, 0x7fff
	v_cmp_o_f32_e64 s19, v39, v39
	v_cmp_o_f32_e64 s20, v77, v77
	v_add3_u32 v39, v77, v47, 0x7fff
	v_add3_u32 v47, v76, v88, 0x7fff
	v_cmp_o_f32_e64 s21, v76, v76
	v_bfe_u32 v76, v75, 16, 1
	v_bfe_u32 v77, v74, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v87.h, s19
	v_bfe_u32 v87, v73, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s20
	v_add3_u32 v76, v75, v76, 0x7fff
	v_cmp_o_f32_e64 s19, v75, v75
	v_add3_u32 v75, v74, v77, 0x7fff
	v_cmp_o_f32_e64 s20, v74, v74
	v_add3_u32 v74, v73, v87, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_cmp_o_f32_e64 s21, v73, v73
	v_bfe_u32 v73, v72, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s20
	v_bfe_u32 v75, v71, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v76.h, s19
	v_bfe_u32 v76, v70, 16, 1
	v_add3_u32 v73, v72, v73, 0x7fff
	v_cmp_o_f32_e64 s19, v72, v72
	v_add3_u32 v72, v71, v75, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s21
	v_add3_u32 v71, v70, v76, 0x7fff
	v_cmp_o_f32_e64 s21, v70, v70
	v_cndmask_b16 v70.l, 0x7fff, v73.h, s19
	v_bfe_u32 v73, v69, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v72.h, s20
	v_bfe_u32 v72, v68, 16, 1
	v_bfe_u32 v75, v67, 16, 1
	v_cmp_o_f32_e64 s19, v69, v69
	v_add3_u32 v73, v69, v73, 0x7fff
	v_cmp_o_f32_e64 s20, v68, v68
	v_add3_u32 v69, v68, v72, 0x7fff
	v_add3_u32 v68, v67, v75, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s21
	v_cmp_o_f32_e64 s21, v67, v67
	v_bfe_u32 v67, v66, 16, 1
	v_cndmask_b16 v68.l, 0x7fff, v69.h, s20
	v_bfe_u32 v69, v65, 16, 1
	v_cndmask_b16 v71.h, 0x7fff, v73.h, s19
	v_bfe_u32 v72, v64, 16, 1
	v_add3_u32 v67, v66, v67, 0x7fff
	v_cmp_o_f32_e64 s19, v66, v66
	v_add3_u32 v66, v65, v69, 0x7fff
	v_cmp_o_f32_e64 s20, v65, v65
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s21
	v_add3_u32 v65, v64, v72, 0x7fff
	v_cmp_o_f32_e64 s21, v64, v64
	v_cndmask_b16 v64.l, 0x7fff, v67.h, s19
	v_bfe_u32 v67, v63, 16, 1
	v_cndmask_b16 v64.h, 0x7fff, v66.h, s20
	v_bfe_u32 v66, v62, 16, 1
	v_bfe_u32 v69, v61, 16, 1
	v_cmp_o_f32_e64 s19, v63, v63
	v_add3_u32 v67, v63, v67, 0x7fff
	v_cmp_o_f32_e64 s20, v62, v62
	v_add3_u32 v63, v62, v66, 0x7fff
	v_add3_u32 v62, v61, v69, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s21
	v_cmp_o_f32_e64 s21, v61, v61
	v_bfe_u32 v61, v60, 16, 1
	v_cndmask_b16 v62.l, 0x7fff, v63.h, s20
	v_bfe_u32 v63, v58, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v67.h, s19
	v_bfe_u32 v66, v57, 16, 1
	v_add3_u32 v61, v60, v61, 0x7fff
	v_cmp_o_f32_e64 s19, v60, v60
	v_add3_u32 v60, v58, v63, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_cndmask_b16 v62.h, 0x7fff, v62.h, s21
	v_add3_u32 v58, v57, v66, 0x7fff
	v_cmp_o_f32_e64 s21, v57, v57
	v_cndmask_b16 v57.l, 0x7fff, v61.h, s19
	v_bfe_u32 v61, v56, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v60.h, s20
	v_bfe_u32 v60, v55, 16, 1
	v_bfe_u32 v63, v54, 16, 1
	v_cmp_o_f32_e64 s19, v56, v56
	v_add3_u32 v61, v56, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_add3_u32 v56, v55, v60, 0x7fff
	v_add3_u32 v55, v54, v63, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s21
	v_cmp_o_f32_e64 s21, v54, v54
	v_bfe_u32 v54, v53, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v56.h, s20
	v_bfe_u32 v56, v52, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s19
	v_bfe_u32 v60, v51, 16, 1
	v_add3_u32 v54, v53, v54, 0x7fff
	v_cmp_o_f32_e64 s19, v53, v53
	v_add3_u32 v53, v52, v56, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s21
	v_add3_u32 v52, v51, v60, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s19
	v_bfe_u32 v54, v50, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s20
	v_bfe_u32 v53, v49, 16, 1
	v_bfe_u32 v56, v48, 16, 1
	v_cmp_o_f32_e64 s19, v50, v50
	v_add3_u32 v54, v50, v54, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_add3_u32 v50, v49, v53, 0x7fff
	v_add3_u32 v49, v48, v56, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s21
	v_cmp_o_f32_e64 s21, v48, v48
	v_bfe_u32 v48, v45, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s20
	v_bfe_u32 v50, v44, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s19
	v_bfe_u32 v53, v43, 16, 1
	v_add3_u32 v48, v45, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v45, v45
	v_add3_u32 v45, v44, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v44, v44
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s21
	v_add3_u32 v44, v43, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v43, v43
	v_cndmask_b16 v43.l, 0x7fff, v48.h, s19
	v_bfe_u32 v48, v40, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v38, 16, 1
	v_bfe_u32 v50, v37, 16, 1
	v_cmp_o_f32_e64 s19, v40, v40
	v_add3_u32 v48, v40, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v38, v38
	v_add3_u32 v40, v38, v45, 0x7fff
	v_add3_u32 v38, v37, v50, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_cmp_o_f32_e64 s21, v37, v37
	v_bfe_u32 v37, v36, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s20
	v_bfe_u32 v40, v35, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v48.h, s19
	v_bfe_u32 v45, v34, 16, 1
	v_add3_u32 v37, v36, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v36, v36
	v_add3_u32 v36, v35, v40, 0x7fff
	v_cmp_o_f32_e64 s20, v35, v35
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s21
	v_add3_u32 v35, v34, v45, 0x7fff
	v_cmp_o_f32_e64 s21, v34, v34
	v_cndmask_b16 v34.l, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v33, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v32, 16, 1
	v_bfe_u32 v40, v31, 16, 1
	v_cmp_o_f32_e64 s19, v33, v33
	v_add3_u32 v37, v33, v37, 0x7fff
	v_cmp_o_f32_e64 s20, v32, v32
	v_add3_u32 v33, v32, v36, 0x7fff
	v_add3_u32 v32, v31, v40, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_cmp_o_f32_e64 s21, v31, v31
	v_bfe_u32 v31, v30, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v29, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v36, v28, 16, 1
	v_add3_u32 v31, v30, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v30, v30
	v_add3_u32 v30, v29, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v29, v29
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s21
	v_add3_u32 v29, v28, v36, 0x7fff
	v_cmp_o_f32_e64 s21, v28, v28
	v_cndmask_b16 v28.l, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v27, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v26, 16, 1
	v_bfe_u32 v33, v25, 16, 1
	v_cmp_o_f32_e64 s19, v27, v27
	v_add3_u32 v31, v27, v31, 0x7fff
	v_cmp_o_f32_e64 s20, v26, v26
	v_add3_u32 v27, v26, v30, 0x7fff
	v_add3_u32 v26, v25, v33, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_cmp_o_f32_e64 s21, v25, v25
	v_bfe_u32 v25, v24, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v23, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v30, v22, 16, 1
	v_add3_u32 v25, v24, v25, 0x7fff
	v_cmp_o_f32_e64 s19, v24, v24
	v_add3_u32 v24, v23, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v23, v23
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s21
	v_add3_u32 v23, v22, v30, 0x7fff
	v_cmp_o_f32_e64 s21, v22, v22
	v_cndmask_b16 v22.l, 0x7fff, v25.h, s19
	v_bfe_u32 v25, v21, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s20
	v_bfe_u32 v24, v20, 16, 1
	v_bfe_u32 v27, v19, 16, 1
	v_cmp_o_f32_e64 s19, v21, v21
	v_add3_u32 v25, v21, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v20, v20
	v_add3_u32 v21, v20, v24, 0x7fff
	v_add3_u32 v20, v19, v27, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s21
	v_cmp_o_f32_e64 s21, v19, v19
	v_bfe_u32 v19, v18, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s20
	v_bfe_u32 v21, v17, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s19
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v19, v18, v19, 0x7fff
	v_cmp_o_f32_e64 s19, v18, v18
	v_add3_u32 v18, v17, v21, 0x7fff
	v_cmp_o_f32_e64 s20, v17, v17
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s21
	v_add3_u32 v17, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s21, v16, v16
	v_cndmask_b16 v16.l, 0x7fff, v19.h, s19
	v_bfe_u32 v19, v15, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s20
	v_bfe_u32 v18, v14, 16, 1
	v_bfe_u32 v21, v13, 16, 1
	v_cmp_o_f32_e64 s19, v15, v15
	v_add3_u32 v19, v15, v19, 0x7fff
	v_cmp_o_f32_e64 s20, v14, v14
	v_add3_u32 v15, v14, v18, 0x7fff
	v_add3_u32 v14, v13, v21, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s21
	v_cmp_o_f32_e64 s21, v13, v13
	v_bfe_u32 v13, v12, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s20
	v_bfe_u32 v15, v11, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s19
	v_bfe_u32 v18, v10, 16, 1
	v_add3_u32 v13, v12, v13, 0x7fff
	v_cmp_o_f32_e64 s19, v12, v12
	v_add3_u32 v12, v11, v15, 0x7fff
	v_bfe_u32 v15, v9, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s21
	v_cmp_o_f32_e64 s20, v11, v11
	v_add3_u32 v11, v10, v18, 0x7fff
	v_cmp_o_f32_e64 s21, v10, v10
	v_add3_u32 v10, v9, v15, 0x7fff
	v_cmp_o_f32_e64 s22, v9, v9
	v_cndmask_b16 v9.l, 0x7fff, v13.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v11.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s22
	.loc	1 877 36                        ; ragged.py:877:36
	v_lshrrev_b32_e32 v1, 1, v59
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v36, v43, v52, s19
	v_cndmask_b32_e64 v37, v52, v43, s19
	v_mov_b32_e32 v43, 0x5410
	v_cndmask_b32_e64 v10, v74, v39, s19
	v_cndmask_b32_e64 v11, v39, v74, s19
	v_cndmask_b32_e64 v39, v34, v44, s19
	v_cndmask_b32_e64 v34, v44, v34, s19
	v_cndmask_b32_e64 v40, v35, v38, s19
	v_cndmask_b32_e64 v35, v38, v35, s19
	v_cndmask_b32_e64 v38, v29, v32, s19
	v_cndmask_b32_e64 v29, v32, v29, s19
	v_cndmask_b32_e64 v32, v26, v28, s19
	v_cndmask_b32_e64 v26, v28, v26, s19
	v_cndmask_b32_e64 v28, v20, v22, s19
	v_cndmask_b32_e64 v20, v22, v20, s19
	v_cndmask_b32_e64 v22, v16, v23, s19
	v_cndmask_b32_e64 v16, v23, v16, s19
	v_cndmask_b32_e64 v23, v9, v17, s19
	v_cndmask_b32_e64 v9, v17, v9, s19
	v_cndmask_b32_e64 v17, v0, v14, s19
	v_mov_b32_e32 v44, 0x7632
	v_cndmask_b32_e64 v0, v14, v0, s19
	v_cndmask_b32_e64 v14, 0x1054, v43, s19
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v79, s41, v1
	s_mov_b32 s20, 0x76543210
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v43, 0x3276, v44, s19
	v_cndmask_b32_e64 v13, v47, v70, s19
	v_lshl_or_b32 v14, v14, 8, v14
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v84, 1, v79
	v_or_b32_e32 v83, 2, v79
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v43, v43, 8, v43
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s18, s62, v79
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v14, 0x540054, v14
	v_cndmask_b32_e64 v18, v71, v64, s19
	v_cndmask_b32_e64 v21, v68, v65, s19
	v_and_b32_e32 v43, 0x760076, v43
	v_cndmask_b32_e64 v25, v62, v58, s19
	v_lshl_or_b32 v14, v14, 4, v14
	v_cndmask_b32_e64 v30, v57, v55, s19
	v_cndmask_b32_e64 v33, v51, v49, s19
	v_permlanex16_b32 v11, v11, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v43, v43, 4, v43
	v_and_b32_e32 v14, 0x5040504, v14
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s17, s62, v84
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v75, v79, v86, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s16, s62, v83
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v76, v84, v86, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v85, v42, s62
	v_mul_lo_u32 v42, v46, s62
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v46.h, 0
	v_cndmask_b32_e64 v12, v70, v47, s19
	v_cndmask_b32_e64 v15, v64, v71, s19
	v_cndmask_b32_e64 v19, v65, v68, s19
	v_cndmask_b32_e64 v24, v58, v62, s19
	v_cndmask_b32_e64 v27, v55, v57, s19
	v_cndmask_b32_e64 v31, v49, v51, s19
	v_permlanex16_b32 v13, v13, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x7060706, v43
	v_permlanex16_b32 v16, v16, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v44, v11, v10, v14
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s18, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v82, 3, v79
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v77, v83, v86, 1
	v_cndmask_b32_e64 v75, 0x80000000, v75, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s17, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v81, 4, v79
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v76, 0x80000000, v76, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s16, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v10, v11, v10, v43
	v_perm_b32 v11, v13, v12, v14
	v_perm_b32 v12, v13, v12, v43
	v_perm_b32 v13, v18, v15, v14
	v_perm_b32 v15, v18, v15, v43
	v_perm_b32 v18, v21, v19, v14
	v_perm_b32 v19, v21, v19, v43
	v_perm_b32 v21, v25, v24, v14
	v_perm_b32 v24, v25, v24, v43
	v_perm_b32 v25, v30, v27, v14
	v_perm_b32 v27, v30, v27, v43
	v_perm_b32 v30, v33, v31, v14
	v_perm_b32 v31, v33, v31, v43
	v_perm_b32 v33, v37, v36, v14
	v_perm_b32 v36, v37, v36, v43
	v_perm_b32 v37, v34, v39, v14
	v_perm_b32 v34, v34, v39, v43
	v_perm_b32 v39, v35, v40, v14
	v_perm_b32 v35, v35, v40, v43
	v_perm_b32 v40, v29, v38, v14
	v_perm_b32 v29, v29, v38, v43
	v_perm_b32 v38, v26, v32, v14
	v_perm_b32 v26, v26, v32, v43
	v_perm_b32 v32, v20, v28, v14
	v_perm_b32 v20, v20, v28, v43
	v_perm_b32 v28, v16, v22, v14
	v_perm_b32 v16, v16, v22, v43
	v_perm_b32 v22, v9, v23, v14
	v_perm_b32 v14, v0, v17, v14
	v_perm_b32 v0, v0, v17, v43
	v_mov_b16_e32 v17.l, v44.h
	v_mov_b16_e32 v17.h, v46.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s15, s62, v82
	.loc	1 974 9                         ; ragged.py:974:9
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s42
	v_cndmask_b32_e64 v77, 0x80000000, v77, s19
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v80, 5, v79
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s14, s62, v81
	.loc	1 974 9                         ; ragged.py:974:9
	buffer_store_b16 v44, v75, s[20:23], 0 offen
	v_add_lshl_u32 v44, v82, v86, 1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v78, 6, v79
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v46.l, v10.h
	s_clause 0x1
	buffer_store_b16 v17, v76, s[20:23], 0 offen
	buffer_store_b16 v10, v77, s[20:23], 0 offen
	v_add_lshl_u32 v10, v81, v86, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s15, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v59, 7, v79
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s13, s62, v80
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v17, 0x80000000, v44, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s14, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v8, 0x80, v79
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s12, s62, v78
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v44, v80, v86, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s19
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s11, s62, v59
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v75, v78, v86, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s13, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v7, 0x81, v79
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s10, s62, v8
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v46, v17, s[20:23], 0 offen
	buffer_store_b16 v11, v10, s[20:23], 0 offen
	v_add_lshl_u32 v10, v59, v86, 1
	v_cndmask_b32_e64 v44, 0x80000000, v44, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s12, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v6, 0x82, v79
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v9, v9, v23, v43
	v_mov_b16_e32 v43.l, v11.h
	v_mov_b16_e32 v43.h, v46.h
	v_add_lshl_u32 v11, v8, v86, 1
	v_cndmask_b32_e64 v75, 0x80000000, v75, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s11, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v5, 0x83, v79
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s9, s62, v7
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s10, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v4, 0x84, v79
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v23.l, v12.h
	v_mov_b16_e32 v23.h, v46.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s8, s62, v6
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v43, v44, s[20:23], 0 offen
	buffer_store_b16 v12, v75, s[20:23], 0 offen
	v_add_lshl_u32 v12, v7, v86, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s19
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s7, s62, v5
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v17, v6, v86, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s9, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v3, 0x85, v79
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s6, s62, v4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v23, v10, s[20:23], 0 offen
	buffer_store_b16 v13, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v5, v86, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s8, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v2, 0x86, v79
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v47.l, v13.h
	v_mov_b16_e32 v47.h, v46.h
	v_add_lshl_u32 v11, v4, v86, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s7, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v1, 0x87, v79
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s5, s62, v3
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s6, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v45.l, v15.h
	v_mov_b16_e32 v45.h, v46.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s1, s62, v2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v47, v12, s[20:23], 0 offen
	buffer_store_b16 v15, v17, s[20:23], 0 offen
	v_add_lshl_u32 v12, v3, v86, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s19
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s62, v1
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v13, v2, v86, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s5, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v45, v10, s[20:23], 0 offen
	buffer_store_b16 v18, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v1, v86, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s1, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v49.l, v18.h
	v_mov_b16_e32 v49.h, v46.h
	v_add_lshl_u32 v11, v79, v85, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s0, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v48.l, v19.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s18, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v48.h, v46.h
	s_clause 0x1
	buffer_store_b16 v49, v12, s[20:23], 0 offen
	buffer_store_b16 v19, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v84, v85, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_add_lshl_u32 v13, v83, v85, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s17, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v48, v10, s[20:23], 0 offen
	buffer_store_b16 v21, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v82, v85, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s16, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v51.l, v21.h
	v_mov_b16_e32 v51.h, v46.h
	v_add_lshl_u32 v11, v81, v85, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s15, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v50.l, v24.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s14, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v50.h, v46.h
	s_clause 0x1
	buffer_store_b16 v51, v12, s[20:23], 0 offen
	buffer_store_b16 v24, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v80, v85, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_add_lshl_u32 v13, v78, v85, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s13, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v50, v10, s[20:23], 0 offen
	buffer_store_b16 v25, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v59, v85, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s12, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v53.l, v25.h
	v_mov_b16_e32 v53.h, v46.h
	v_add_lshl_u32 v11, v8, v85, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s11, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v52.l, v27.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s10, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v52.h, v46.h
	s_clause 0x1
	buffer_store_b16 v53, v12, s[20:23], 0 offen
	buffer_store_b16 v27, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v7, v85, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_add_lshl_u32 v13, v6, v85, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s9, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v52, v10, s[20:23], 0 offen
	buffer_store_b16 v30, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v5, v85, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s8, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v55.l, v30.h
	v_mov_b16_e32 v55.h, v46.h
	v_add_lshl_u32 v11, v4, v85, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s7, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v54.l, v31.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s6, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v54.h, v46.h
	s_clause 0x1
	buffer_store_b16 v55, v12, s[20:23], 0 offen
	buffer_store_b16 v31, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v3, v85, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_add_lshl_u32 v13, v2, v85, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s5, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v54, v10, s[20:23], 0 offen
	buffer_store_b16 v33, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v1, v85, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s1, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v57.l, v33.h
	v_mov_b16_e32 v57.h, v46.h
	v_add_lshl_u32 v11, v79, v42, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s0, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v56.l, v36.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s18, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v56.h, v46.h
	s_clause 0x1
	buffer_store_b16 v57, v12, s[20:23], 0 offen
	buffer_store_b16 v36, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v84, v42, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_add_lshl_u32 v13, v83, v42, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s17, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v56, v10, s[20:23], 0 offen
	buffer_store_b16 v37, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v82, v42, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s16, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v60.l, v37.h
	v_mov_b16_e32 v60.h, v46.h
	v_add_lshl_u32 v11, v81, v42, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s15, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v58.l, v34.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s14, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v58.h, v46.h
	s_clause 0x1
	buffer_store_b16 v60, v12, s[20:23], 0 offen
	buffer_store_b16 v34, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v80, v42, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_add_lshl_u32 v13, v78, v42, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s13, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v58, v10, s[20:23], 0 offen
	buffer_store_b16 v39, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v59, v42, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s12, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v62.l, v39.h
	v_mov_b16_e32 v62.h, v46.h
	v_add_lshl_u32 v11, v8, v42, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s11, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v61.l, v35.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s10, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v61.h, v46.h
	s_clause 0x1
	buffer_store_b16 v62, v12, s[20:23], 0 offen
	buffer_store_b16 v35, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v7, v42, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_add_lshl_u32 v13, v6, v42, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s9, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v61, v10, s[20:23], 0 offen
	buffer_store_b16 v40, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v5, v42, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s8, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v64.l, v40.h
	v_mov_b16_e32 v64.h, v46.h
	v_add_lshl_u32 v11, v4, v42, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s7, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v63.l, v29.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s6, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v63.h, v46.h
	s_clause 0x1
	buffer_store_b16 v64, v12, s[20:23], 0 offen
	buffer_store_b16 v29, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v3, v42, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_add_lshl_u32 v13, v2, v42, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s5, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v63, v10, s[20:23], 0 offen
	buffer_store_b16 v38, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v1, v42, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s1, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v66.l, v38.h
	v_mov_b16_e32 v66.h, v46.h
	v_add_lshl_u32 v11, v79, v41, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s0, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v65.l, v26.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v65.h, v46.h
	s_clause 0x1
	buffer_store_b16 v66, v12, s[20:23], 0 offen
	buffer_store_b16 v26, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v84, v41, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v13, v83, v41, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v65, v10, s[20:23], 0 offen
	buffer_store_b16 v32, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v82, v41, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v68.l, v32.h
	v_mov_b16_e32 v68.h, v46.h
	v_add_lshl_u32 v11, v81, v41, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v67.l, v20.h
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v67.h, v46.h
	s_clause 0x1
	buffer_store_b16 v68, v12, s[20:23], 0 offen
	buffer_store_b16 v20, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v80, v41, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v13, v78, v41, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v67, v10, s[20:23], 0 offen
	buffer_store_b16 v28, v11, s[20:23], 0 offen
	v_add_lshl_u32 v10, v59, v41, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v8, v8, v41, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v7, v7, v41, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v6, v6, v41, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v5, v5, v41, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v4, v4, v41, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v3, v3, v41, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v2, v2, v41, 1
	v_add_lshl_u32 v1, v1, v41, 1
	v_mov_b16_e32 v69.l, v16.h
	v_mov_b16_e32 v69.h, v46.h
	v_mov_b16_e32 v70.l, v28.h
	v_mov_b16_e32 v70.h, v46.h
	v_mov_b16_e32 v71.l, v9.h
	v_mov_b16_e32 v71.h, v46.h
	v_mov_b16_e32 v72.l, v22.h
	v_mov_b16_e32 v72.h, v46.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v74.l, v14.h
	v_mov_b16_e32 v74.h, v46.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v73.l, v0.h
	v_mov_b16_e32 v73.h, v46.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xa
	buffer_store_b16 v70, v12, s[20:23], 0 offen
	buffer_store_b16 v16, v13, s[20:23], 0 offen
	buffer_store_b16 v69, v10, s[20:23], 0 offen
	buffer_store_b16 v22, v8, s[20:23], 0 offen
	buffer_store_b16 v72, v7, s[20:23], 0 offen
	buffer_store_b16 v9, v6, s[20:23], 0 offen
	buffer_store_b16 v71, v5, s[20:23], 0 offen
	buffer_store_b16 v14, v4, s[20:23], 0 offen
	buffer_store_b16 v74, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v73, v1, s[20:23], 0 offen
	.loc	1 837 5                         ; ragged.py:837:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 195
		.amdhsa_next_free_sgpr 68
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 195
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 68
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10404
; TotalNumSgprs: 70
; NumVgprs: 195
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 70
; NumVGPRsForWavesPerEU: 195
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
	.short	863                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     70
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     195
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
