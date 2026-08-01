	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 837 0                         ; ragged.py:837:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 865 25 prologue_end           ; ragged.py:865:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 876 18                        ; ragged.py:876:18
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v99, 15, v0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v45, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:863:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:863:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
.Ltmp2:
	.loc	1 865 25 is_stmt 1              ; ragged.py:865:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v65, 0
	s_xor_b32 s4, s4, s6
	.loc	1 876 32                        ; ragged.py:876:32
	v_and_b32_e32 v84, 0xf0, v0
	.loc	1 865 25                        ; ragged.py:865:25
	s_sub_i32 s4, s4, s6
	s_mov_b32 s12, 0
	.loc	1 867 33                        ; ragged.py:867:33
	s_sub_i32 s5, s35, s4
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
	s_lshl_b64 s[10:11], s[2:3], 3
	s_add_u32 s2, s20, s10
	s_addc_u32 s3, s21, s11
	s_load_b64 s[14:15], s[2:3], 0x0
	.loc	1 874 24                        ; ragged.py:874:24
	s_add_u32 s2, s22, s10
	s_addc_u32 s3, s23, s11
	.loc	1 875 22                        ; ragged.py:875:22
	s_add_u32 s4, s24, s10
	s_addc_u32 s5, s25, s11
	.loc	1 874 24                        ; ragged.py:874:24
	s_load_b64 s[28:29], s[2:3], 0x0
	.loc	1 875 22                        ; ragged.py:875:22
	s_load_b64 s[24:25], s[4:5], 0x0
	.loc	1 877 18                        ; ragged.py:877:18
	s_lshl_b32 s35, s6, 8
	.loc	1 876 18                        ; ragged.py:876:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s14, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s15, 0, s2
	.loc	1 959 25                        ; ragged.py:959:25
	v_add_nc_u32_e32 v68, s14, v99
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
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[1:2]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s2, s[24:25], v[1:2]
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s3, s[28:29], v[3:4]
	v_cmp_le_i64_e64 s5, s[28:29], v[5:6]
	v_cmp_le_i64_e64 s6, s[28:29], v[7:8]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s7, s[24:25], v[3:4]
	v_cmp_gt_i64_e64 s8, s[24:25], v[5:6]
	v_cmp_gt_i64_e64 s9, s[24:25], v[7:8]
	.loc	1 959 25 is_stmt 1              ; ragged.py:959:25
	v_add_nc_u32_e32 v69, 16, v68
	v_add_nc_u32_e32 v72, 32, v68
	v_add_nc_u32_e32 v73, 48, v68
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lt_i32 s34, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s40, s[0:1], 0x50
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 876 32 is_stmt 1              ; ragged.py:876:32
	v_lshrrev_b32_e32 v9, 4, v84
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v17, s35, v0
	.loc	1 876 18                        ; ragged.py:876:18
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v10, 4, v0
	v_bfe_i32 v12, v0, 7, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, s0, s14, v9
	v_add_co_ci_u32_e64 v2, null, s15, 0, s0
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v9, s14, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v3, s0, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, s0
	v_add_co_u32 v5, s0, v1, 32
	.loc	1 872 20                        ; ragged.py:872:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s10
	s_addc_u32 s7, s7, s11
	.loc	1 942 39                        ; ragged.py:942:39
	s_mul_i32 s15, s40, s33
	.loc	1 966 25                        ; ragged.py:966:25
	s_load_b32 s13, s[6:7], 0x0
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_ci_u32_e64 v6, null, 0, v2, s0
	v_add_co_u32 v7, s0, v1, 48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v8, null, 0, v2, s0
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s1, s[28:29], v[1:2]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s5, s[24:25], v[1:2]
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v1, 0x70, v10
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s8, s[28:29], v[7:8]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s11, s[24:25], v[7:8]
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v7, 5, v0
	v_bfe_i32 v2, v0, 3, 1
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s6, s[28:29], v[3:4]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s9, s[24:25], v[3:4]
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v4, 0x88, v12
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[18:19], null, s15, s13, v[17:18]
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v12, 2, v84
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v7, 32, v7
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s7, s[28:29], v[5:6]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s10, s[24:25], v[5:6]
	.loc	1 928 19 is_stmt 1              ; ragged.py:928:19
	v_mad_u64_u32 v[19:20], null, s33, 3, v[18:19]
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v3, 0x7f, v0
	v_and_or_b32 v1, 0x88, v2, v1
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v90, 0 :: v_dual_lshlrev_b32 v13, 1, v0
	v_mad_u64_u32 v[20:21], null, s33, 5, v[18:19]
	v_mad_u64_u32 v[21:22], null, s33, 6, v[18:19]
	v_mad_u64_u32 v[22:23], null, s33, 7, v[18:19]
	v_mad_u64_u32 v[23:24], null, s33, 9, v[18:19]
	v_add3_u32 v7, 0, v12, v7
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v12, 16, v9
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v14, 32, v9
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v15, 48, v9
	v_mad_u64_u32 v[24:25], null, s33, 10, v[18:19]
	v_mad_u64_u32 v[25:26], null, s33, 11, v[18:19]
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v11, 0, v99
	v_xor_b32_e32 v2, v4, v3
	v_xor_b32_e32 v3, 8, v1
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v5, 0x70, v5
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v13, 28, v13
	v_mad_u64_u32 v[26:27], null, s33, 12, v[18:19]
	v_or_b32_e32 v10, 0xf00, v0
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v16, 1, v84
	v_mad_u64_u32 v[27:28], null, s33, 13, v[18:19]
	v_mad_u64_u32 v[28:29], null, s33, 14, v[18:19]
	v_mul_lo_u32 v100, v9, s40
	v_mul_lo_u32 v101, v12, s40
	v_mul_lo_u32 v102, v14, s40
	v_mul_lo_u32 v103, v15, s40
	v_mad_u64_u32 v[29:30], null, s33, 15, v[18:19]
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s6, s6, s9
	s_and_b32 s25, s8, s11
	s_and_b32 s9, s17, 0xffff
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s41, s34, s13
	s_mov_b32 s8, s16
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v104, 0, v2
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v105, 0, v1
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v106, 0, v3
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v108, 0, v4
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v109, 0, v6
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v110, 0, v8
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v112, v11, v5
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v113, v7, v13
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v8, s19
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s33, v17
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v107, 0, v0
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v111, 0, v10
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v114, 0, v16
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v3, s14
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s24, s1, s5
	s_and_b32 s7, s7, s10
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
	s_mov_b32 s42, s12
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 930 28 is_stmt 1              ; ragged.py:930:28
	s_lshl_b32 s1, s42, 4
	.loc	1 928 19                        ; ragged.py:928:19
	v_add_nc_u32_e32 v115, s33, v18
	v_lshl_add_u32 v116, s33, 1, v18
	v_lshl_add_u32 v117, s33, 2, v18
	v_lshl_add_u32 v118, s33, 3, v18
	s_or_b32 s5, s1, 1
	s_or_b32 s22, s1, 2
	s_or_b32 s23, s1, 3
	s_or_b32 s38, s1, 4
	s_or_b32 s39, s1, 5
	s_or_b32 s43, s1, 6
	s_or_b32 s44, s1, 7
	s_or_b32 s45, s1, 8
	s_or_b32 s46, s1, 9
	s_or_b32 s47, s1, 10
	s_or_b32 s48, s1, 11
	s_or_b32 s49, s1, 12
	s_or_b32 s50, s1, 13
	s_or_b32 s51, s1, 14
	s_or_b32 s52, s1, 15
	s_cmp_lt_i32 s1, s40
	s_mul_i32 s53, s1, s33
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s5, s40
	.loc	1 945 31                        ; ragged.py:945:31
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v12, s15
	v_dual_mov_b32 v10, s13 :: v_dual_mov_b32 v15, s18
	v_add_nc_u32_e32 v120, s53, v18
	v_add_nc_u32_e32 v121, s53, v19
	v_add_nc_u32_e32 v122, s53, v20
	v_add_nc_u32_e32 v123, s53, v21
	v_add_nc_u32_e32 v124, s53, v22
	v_add_nc_u32_e32 v125, s53, v23
	v_add_nc_u32_e32 v126, s53, v24
	v_add_nc_u32_e32 v127, s53, v25
	v_add_nc_u32_e32 v128, s53, v26
	v_add_nc_u32_e32 v129, s53, v27
	v_add_nc_u32_e32 v130, s53, v28
	v_add_nc_u32_e32 v131, s53, v29
	v_add_nc_u32_e32 v115, s53, v115
	v_add_nc_u32_e32 v116, s53, v116
	v_add_nc_u32_e32 v117, s53, v117
	v_add_nc_u32_e32 v118, s53, v118
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s22, s40
	v_or_b32_e32 v119, s1, v99
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s40
	.loc	1 944 34                        ; ragged.py:944:34
	s_mov_b32 s30, s10
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s38, s40
	v_cmp_gt_i32_e64 s1, s40, v119
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s39, s40
	v_add_nc_u32_e32 v132, v100, v119
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s43, s40
	v_add_nc_u32_e32 v133, v101, v119
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s44, s40
	v_add_nc_u32_e32 v134, v102, v119
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s45, s40
	v_add_nc_u32_e32 v119, v103, v119
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s46, s40
	s_mov_b32 s31, s11
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s47, s40
	.loc	1 945 31                        ; ragged.py:945:31
	v_dual_mov_b32 v11, s14 :: v_dual_mov_b32 v14, s17
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s48, s40
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v16, s19
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s49, s40
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s50, s40
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s51, s40
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s52, s40
	s_cselect_b32 s52, -1, 0
	s_and_b32 s5, s24, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v132, 0x80000000, v132, s5
	s_and_b32 s5, s6, s1
	v_cndmask_b32_e64 v133, 0x80000000, v133, s5
	s_and_b32 s5, s7, s1
	s_and_b32 s1, s25, s1
	v_cndmask_b32_e64 v134, 0x80000000, v134, s5
	v_cndmask_b32_e64 v119, 0x80000000, v119, s1
	s_and_b32 s1, s0, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	s_and_b32 s1, s0, s53
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	s_and_b32 s1, s0, s22
	.loc	1 958 40                        ; ragged.py:958:40
	s_mov_b32 s22, s10
	v_cndmask_b32_e64 v116, 0x80000000, v116, s1
	s_and_b32 s1, s0, s23
	s_mov_b32 s23, s11
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	s_and_b32 s1, s0, s38
	.loc	1 965 40                        ; ragged.py:965:40
	s_mov_b32 s38, s10
	v_cndmask_b32_e64 v117, 0x80000000, v117, s1
	s_and_b32 s1, s0, s39
	s_mov_b32 s39, s11
	v_cndmask_b32_e64 v122, 0x80000000, v122, s1
	s_and_b32 s1, s0, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v123, 0x80000000, v123, s1
	s_and_b32 s1, s0, s44
	v_cndmask_b32_e64 v124, 0x80000000, v124, s1
	s_and_b32 s1, s0, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v118, 0x80000000, v118, s1
	s_and_b32 s1, s0, s46
	v_cndmask_b32_e64 v125, 0x80000000, v125, s1
	s_and_b32 s1, s0, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v126, 0x80000000, v126, s1
	s_and_b32 s1, s0, s48
	v_cndmask_b32_e64 v127, 0x80000000, v127, s1
	s_and_b32 s1, s0, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v128, 0x80000000, v128, s1
	s_and_b32 s1, s0, s50
	v_cndmask_b32_e64 v129, 0x80000000, v129, s1
	s_and_b32 s1, s0, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v130, 0x80000000, v130, s1
	s_and_b32 s1, s0, s52
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	.loc	1 943 34                        ; ragged.py:943:34
	s_clause 0x3
	buffer_load_u8 v132, v132, s[8:11], 0 offen
	buffer_load_u8 v133, v133, s[8:11], 0 offen
	buffer_load_u8 v134, v134, s[8:11], 0 offen
	buffer_load_u8 v119, v119, s[8:11], 0 offen
	.loc	1 944 34                        ; ragged.py:944:34
	s_clause 0xf
	buffer_load_u8 v120, v120, s[28:31], 0 offen
	buffer_load_u8 v115, v115, s[28:31], 0 offen
	buffer_load_u8 v116, v116, s[28:31], 0 offen
	buffer_load_u8 v117, v117, s[28:31], 0 offen
	buffer_load_u8 v122, v122, s[28:31], 0 offen
	buffer_load_u8 v123, v123, s[28:31], 0 offen
	buffer_load_u8 v118, v118, s[28:31], 0 offen
	buffer_load_u8 v125, v125, s[28:31], 0 offen
	buffer_load_u8 v126, v126, s[28:31], 0 offen
	buffer_load_u8 v128, v128, s[28:31], 0 offen
	buffer_load_u8 v129, v129, s[28:31], 0 offen
	buffer_load_u8 v124, v124, s[28:31], 0 offen
	buffer_load_u8 v121, v121, s[28:31], 0 offen
	buffer_load_u8 v130, v130, s[28:31], 0 offen
	buffer_load_u8 v131, v131, s[28:31], 0 offen
	buffer_load_u8 v127, v127, s[28:31], 0 offen
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; ragged.py:966:25
	s_add_i32 s1, s42, s41
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt vmcnt(19)
	ds_store_b8 v104, v132
	s_waitcnt vmcnt(18)
	ds_store_b8 v104, v133 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v104, v134 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v104, v119 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[145:148], v105 offset1:32
	ds_load_2addr_b64 v[149:152], v105 offset0:64 offset1:96
	ds_load_2addr_b64 v[153:156], v106 offset1:32
	ds_load_2addr_b64 v[157:160], v106 offset0:64 offset1:96
	.loc	1 944 34                        ; ragged.py:944:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v107, v120
	s_waitcnt vmcnt(14)
	ds_store_b8 v107, v115 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v107, v116 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v107, v117 offset:1024
	s_waitcnt vmcnt(11)
	ds_store_b8 v107, v122 offset:1280
	s_waitcnt vmcnt(10)
	ds_store_b8 v107, v123 offset:1536
	s_waitcnt vmcnt(9)
	ds_store_b8 v107, v118 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b8 v107, v125 offset:2304
	s_waitcnt vmcnt(7)
	ds_store_b8 v107, v126 offset:2560
	s_waitcnt vmcnt(6)
	ds_store_b8 v107, v128 offset:3072
	s_waitcnt vmcnt(5)
	ds_store_b8 v107, v129 offset:3328
	s_waitcnt vmcnt(3)
	ds_store_b8 v108, v121
	ds_store_b8 v109, v124
	s_waitcnt vmcnt(2)
	ds_store_b8 v107, v130 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v110, v127
	ds_store_b8 v111, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 945 31                        ; ragged.py:945:31
	ds_load_u8 v115, v112 offset:1280
	ds_load_u8 v116, v112 offset:1024
	ds_load_u8 v117, v112 offset:1920
	ds_load_u8 v118, v112 offset:1664
	ds_load_u8 v119, v112 offset:1408
	ds_load_u8 v120, v112 offset:1792
	ds_load_u8 v121, v112 offset:1536
	ds_load_u8 v122, v112 offset:1152
	ds_load_u8 v123, v112 offset:256
	ds_load_u8 v124, v112
	ds_load_u8 v125, v112 offset:896
	ds_load_u8 v126, v112 offset:640
	ds_load_u8 v127, v112 offset:384
	ds_load_u8 v128, v112 offset:768
	ds_load_u8 v129, v112 offset:512
	ds_load_u8 v130, v112 offset:128
	ds_load_u8 v131, v112 offset:3328
	ds_load_u8 v132, v112 offset:3072
	ds_load_u8 v133, v112 offset:3840
	ds_load_u8 v134, v112 offset:3584
	ds_load_u8 v135, v112 offset:2304
	ds_load_u8 v136, v112 offset:2048
	ds_load_u8 v137, v112 offset:2816
	ds_load_u8 v138, v112 offset:2560
	ds_load_u8 v139, v112 offset:3968
	ds_load_u8 v140, v112 offset:3712
	ds_load_u8 v141, v112 offset:3456
	ds_load_u8 v142, v112 offset:3200
	ds_load_u8 v143, v112 offset:2944
	ds_load_u8 v144, v112 offset:2688
	ds_load_u8 v161, v112 offset:2432
	ds_load_u8 v162, v112 offset:2176
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v116, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v120, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v121, v129, v128, 0xc0c0004
	v_perm_b32 v119, v122, v119, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v123, v132, v131, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v124, v134, v133, 0xc0c0004
	v_perm_b32 v118, v130, v127, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v128, v136, v135, 0xc0c0004
	v_perm_b32 v122, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v129, v138, v137, 0xc0c0004
	v_lshl_or_b32 v164, v124, 16, v123
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v126, v140, v139, 0xc0c0004
	v_lshl_or_b32 v166, v117, 16, v119
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v125, v142, v141, 0xc0c0004
	v_lshl_or_b32 v163, v129, 16, v128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v130, v144, v143, 0xc0c0004
	v_lshl_or_b32 v165, v122, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v162, v161, 0xc0c0004
	v_lshl_or_b32 v162, v116, 16, v115
	v_lshl_or_b32 v161, v121, 16, v120
	v_lshl_or_b32 v168, v126, 16, v125
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s1, s1, s33
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v167, v130, 16, v127
	v_wmma_i32_16x16x16_iu4 v[123:130], v[165:166], v[145:146], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[161:162], v[145:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[161:162], v[147:148], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[165:166], v[147:148], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[163:164], v[153:154], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[167:168], v[153:154], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[163:164], v[155:156], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[167:168], v[155:156], v[139:146] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v147, v115
	v_cvt_f32_i32_e32 v148, v116
	v_cvt_f32_i32_e32 v153, v117
	v_cvt_f32_i32_e32 v154, v118
	v_cvt_f32_i32_e32 v155, v119
	v_cvt_f32_i32_e32 v156, v120
	v_cvt_f32_i32_e32 v169, v121
	v_cvt_f32_i32_e32 v170, v122
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[161:162], v[149:150], v[9:16] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[163:164], v[157:158], v[115:122] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v171, v115
	v_cvt_f32_i32_e32 v172, v116
	v_cvt_f32_i32_e32 v173, v117
	v_cvt_f32_i32_e32 v174, v118
	v_cvt_f32_i32_e32 v175, v119
	v_cvt_f32_i32_e32 v176, v120
	v_cvt_f32_i32_e32 v177, v121
	v_cvt_f32_i32_e32 v178, v122
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[165:166], v[149:150], v[9:16] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[167:168], v[157:158], v[115:122] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v149, v115
	v_cvt_f32_i32_e32 v150, v116
	v_cvt_f32_i32_e32 v157, v117
	v_cvt_f32_i32_e32 v158, v118
	v_cvt_f32_i32_e32 v179, v119
	v_cvt_f32_i32_e32 v180, v120
	v_cvt_f32_i32_e32 v181, v121
	v_cvt_f32_i32_e32 v182, v122
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[161:162], v[151:152], v[9:16] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[163:164], v[159:160], v[115:122] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v161, v115
	v_cvt_f32_i32_e32 v162, v116
	v_cvt_f32_i32_e32 v163, v117
	v_cvt_f32_i32_e32 v164, v118
	v_cvt_f32_i32_e32 v183, v119
	v_cvt_f32_i32_e32 v184, v120
	v_cvt_f32_i32_e32 v185, v121
	v_cvt_f32_i32_e32 v186, v122
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[165:166], v[151:152], v[9:16] neg_lo:[1,1,0]
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v9, v68, s34
	v_mul_lo_u32 v10, v69, s34
	v_mul_lo_u32 v11, v72, s34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[167:168], v[159:160], v[115:122] neg_lo:[1,1,0]
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v12, v73, s34
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v13, v115
	v_cvt_f32_i32_e32 v115, v119
	.loc	1 965 40                        ; ragged.py:965:40
	v_add_lshl_u32 v119, v17, s1, 1
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v9, s42, v9, 1
	v_add_lshl_u32 v10, s42, v10, 1
	v_add_lshl_u32 v11, s42, v11, 1
	v_add_lshl_u32 v12, s42, v12, 1
	.loc	1 965 40                        ; ragged.py:965:40
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	.loc	1 958 40                        ; ragged.py:958:40
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 965 40                        ; ragged.py:965:40
	buffer_load_u16 v119, v119, s[36:39], 0 offen
	.loc	1 958 40                        ; ragged.py:958:40
	s_clause 0x3
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	buffer_load_u16 v11, v11, s[20:23], 0 offen
	buffer_load_u16 v12, v12, s[20:23], 0 offen
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v15, v117
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v14, v116
	v_cvt_f32_i32_e32 v16, v118
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v118, v122
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 972 17                        ; ragged.py:972:17
	s_add_i32 s42, s42, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lg_u32 s42, s34
	.loc	1 958 40                        ; ragged.py:958:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v138, v138, v10 :: v_dual_lshlrev_b32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v156, v156, v9 :: v_dual_lshlrev_b32 v119, 16, v119
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v122, v148, v9 :: v_dual_lshlrev_b32 v121, 16, v12
	v_mul_f32_e32 v148, v154, v9
	.loc	1 970 21                        ; ragged.py:970:21
	ds_store_b32 v113, v119
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v119, v147, v9
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v147, v153, v9
	v_mul_f32_e32 v160, v162, v121
	v_mul_f32_e32 v162, v164, v121
	v_mul_f32_e32 v155, v155, v9
	v_mul_f32_e32 v164, v170, v9
	v_mul_f32_e32 v159, v161, v121
	v_mul_f32_e32 v161, v163, v121
	v_dual_mul_f32 v163, v169, v9 :: v_dual_lshlrev_b32 v120, 16, v11
	v_mul_f32_e32 v135, v135, v10
	v_mul_f32_e32 v131, v131, v10
	v_mul_f32_e32 v132, v132, v10
	v_mul_f32_e32 v133, v133, v10
	v_mul_f32_e32 v134, v134, v10
	v_mul_f32_e32 v136, v136, v10
	v_dual_mul_f32 v137, v137, v10 :: v_dual_mul_f32 v124, v124, v9
	v_dual_mul_f32 v123, v123, v9 :: v_dual_mul_f32 v140, v140, v10
	v_dual_mul_f32 v125, v125, v9 :: v_dual_mul_f32 v142, v142, v10
	v_dual_mul_f32 v126, v126, v9 :: v_dual_mul_f32 v139, v139, v10
	v_dual_mul_f32 v127, v127, v9 :: v_dual_mul_f32 v144, v144, v10
	v_dual_mul_f32 v128, v128, v9 :: v_dual_mul_f32 v141, v141, v10
	v_dual_mul_f32 v129, v129, v9 :: v_dual_mul_f32 v146, v146, v10
	v_dual_mul_f32 v130, v130, v9 :: v_dual_mul_f32 v143, v143, v10
	v_dual_mul_f32 v145, v145, v10 :: v_dual_mul_f32 v166, v176, v120
	.loc	1 970 21                        ; ragged.py:970:21
	ds_load_b128 v[9:12], v114
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v151, v171, v120
	v_mul_f32_e32 v152, v172, v120
	v_mul_f32_e32 v153, v173, v120
	v_mul_f32_e32 v154, v174, v120
	v_dual_mul_f32 v165, v175, v120 :: v_dual_mul_f32 v170, v184, v121
	v_dual_mul_f32 v167, v177, v120 :: v_dual_mul_f32 v172, v186, v121
	v_dual_mul_f32 v168, v178, v120 :: v_dual_mul_f32 v169, v183, v121
	v_dual_mul_f32 v171, v185, v121 :: v_dual_mul_f32 v150, v150, v120
	v_dual_mul_f32 v149, v149, v120 :: v_dual_mul_f32 v174, v14, v121
	v_dual_mul_f32 v157, v157, v120 :: v_dual_mul_f32 v176, v16, v121
	v_dual_mul_f32 v158, v158, v120 :: v_dual_mul_f32 v173, v13, v121
	v_dual_mul_f32 v175, v15, v121 :: v_dual_mul_f32 v178, v180, v120
	v_mul_f32_e32 v177, v179, v120
	v_dual_mul_f32 v179, v181, v120 :: v_dual_mul_f32 v184, v118, v121
	v_dual_mul_f32 v180, v182, v120 :: v_dual_mul_f32 v181, v115, v121
	v_mul_f32_e32 v182, v116, v121
	.loc	1 970 21                        ; ragged.py:970:21
	ds_load_b128 v[13:16], v114 offset:16
	.loc	1 963 21                        ; ragged.py:963:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v183, v117, v121 :: v_dual_fmac_f32 v98, v122, v10
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v65, v119, v9 :: v_dual_fmac_f32 v96, v148, v12
	.loc	1 970 21                        ; ragged.py:970:21
	ds_load_b128 v[115:118], v114 offset:512
	ds_load_b128 v[119:122], v114 offset:528
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v97, v147, v11 :: v_dual_fmac_f32 v60, v152, v10
	v_dual_fmac_f32 v82, v131, v9 :: v_dual_fmac_f32 v81, v132, v10
	v_dual_fmac_f32 v80, v133, v11 :: v_dual_fmac_f32 v79, v134, v12
	v_dual_fmac_f32 v61, v151, v9 :: v_dual_fmac_f32 v58, v154, v12
	v_dual_fmac_f32 v59, v153, v11 :: v_dual_fmac_f32 v44, v160, v10
	v_dual_fmac_f32 v45, v159, v9 :: v_dual_fmac_f32 v42, v162, v12
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v43, v161, v11 :: v_dual_fmac_f32 v94, v156, v14
	v_dual_fmac_f32 v95, v155, v13 :: v_dual_fmac_f32 v92, v164, v16
	v_dual_fmac_f32 v93, v163, v15 :: v_dual_fmac_f32 v56, v166, v14
	v_dual_fmac_f32 v78, v135, v13 :: v_dual_fmac_f32 v77, v136, v14
	v_dual_fmac_f32 v76, v137, v15 :: v_dual_fmac_f32 v75, v138, v16
	v_dual_fmac_f32 v57, v165, v13 :: v_dual_fmac_f32 v54, v168, v16
	v_dual_fmac_f32 v55, v167, v15 :: v_dual_fmac_f32 v40, v170, v14
	v_dual_fmac_f32 v41, v169, v13 :: v_dual_fmac_f32 v38, v172, v16
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v39, v171, v15 :: v_dual_fmac_f32 v90, v124, v116
	v_dual_fmac_f32 v91, v123, v115 :: v_dual_fmac_f32 v88, v126, v118
	v_dual_fmac_f32 v89, v125, v117 :: v_dual_fmac_f32 v74, v139, v115
	v_dual_fmac_f32 v71, v140, v116 :: v_dual_fmac_f32 v70, v141, v117
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v67, v142, v118 :: v_dual_fmac_f32 v86, v128, v120
	v_dual_fmac_f32 v53, v149, v115 :: v_dual_fmac_f32 v52, v150, v116
	v_dual_fmac_f32 v51, v157, v117 :: v_dual_fmac_f32 v50, v158, v118
	v_dual_fmac_f32 v37, v173, v115 :: v_dual_fmac_f32 v36, v174, v116
	v_dual_fmac_f32 v35, v175, v117 :: v_dual_fmac_f32 v34, v176, v118
	v_dual_fmac_f32 v87, v127, v119 :: v_dual_fmac_f32 v64, v144, v120
	v_dual_fmac_f32 v85, v129, v121 :: v_dual_fmac_f32 v66, v143, v119
	v_fmac_f32_e32 v83, v130, v122
	v_dual_fmac_f32 v63, v145, v121 :: v_dual_fmac_f32 v62, v146, v122
	v_dual_fmac_f32 v49, v177, v119 :: v_dual_fmac_f32 v48, v178, v120
	v_dual_fmac_f32 v47, v179, v121 :: v_dual_fmac_f32 v46, v180, v122
	v_dual_fmac_f32 v33, v181, v119 :: v_dual_fmac_f32 v32, v182, v120
	v_dual_fmac_f32 v31, v183, v121 :: v_dual_fmac_f32 v30, v184, v122
	.loc	1 928 19                        ; ragged.py:928:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 974 9                         ; ragged.py:974:9
	v_bfe_u32 v21, v65, 16, 1
	v_bfe_u32 v22, v98, 16, 1
	v_cmp_o_f32_e64 s19, v65, v65
	v_bfe_u32 v24, v97, 16, 1
	v_cmp_o_f32_e64 s20, v98, v98
	v_add3_u32 v23, v65, v21, 0x7fff
	v_add3_u32 v22, v98, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v97, v97
	v_add3_u32 v24, v97, v24, 0x7fff
	v_bfe_u32 v25, v95, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v96, 16, 1
	v_bfe_u32 v26, v94, 16, 1
	v_cmp_o_f32_e64 s19, v96, v96
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v96, v23, 0x7fff
	v_add3_u32 v25, v95, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v95, v95
	v_add3_u32 v26, v94, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v94, v94
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v93, 16, 1
	v_bfe_u32 v27, v92, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v91, 16, 1
	v_add3_u32 v23, v93, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v93, v93
	v_add3_u32 v27, v92, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v92, v92
	v_bfe_u32 v28, v90, 16, 1
	v_add3_u32 v26, v91, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v91, v91
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v89, 16, 1
	v_bfe_u32 v29, v88, 16, 1
	v_add3_u32 v28, v90, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v90, v90
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v89, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v89, v89
	v_add3_u32 v29, v88, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v88, v88
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v87, 16, 1
	v_bfe_u32 v65, v86, 16, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v20, v68, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v85, 16, 1
	v_add3_u32 v28, v87, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v87, v87
	v_add3_u32 v65, v86, v65, 0x7fff
	v_cmp_o_f32_e64 s20, v86, v86
	v_bfe_u32 v68, v83, 16, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v19, v69, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_add3_u32 v29, v85, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v85, v85
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v65.h, s20
	v_bfe_u32 v65, v82, 16, 1
	v_bfe_u32 v69, v81, 16, 1
	v_add3_u32 v68, v83, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v83, v83
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v18, v72, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v65, v82, v65, 0x7fff
	v_cmp_o_f32_e64 s20, v82, v82
	v_add3_u32 v69, v81, v69, 0x7fff
	v_cmp_o_f32_e64 s21, v81, v81
	v_cndmask_b16 v29.h, 0x7fff, v68.h, s19
	v_bfe_u32 v68, v80, 16, 1
	v_bfe_u32 v72, v79, 16, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v17, v73, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s20
	v_cndmask_b16 v65.h, 0x7fff, v69.h, s21
	v_bfe_u32 v69, v78, 16, 1
	v_add3_u32 v68, v80, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v80, v80
	v_add3_u32 v72, v79, v72, 0x7fff
	v_cmp_o_f32_e64 s20, v79, v79
	v_bfe_u32 v73, v77, 16, 1
	v_add3_u32 v69, v78, v69, 0x7fff
	v_cmp_o_f32_e64 s21, v78, v78
	v_cndmask_b16 v68.l, 0x7fff, v68.h, s19
	v_cndmask_b16 v68.h, 0x7fff, v72.h, s20
	v_bfe_u32 v72, v76, 16, 1
	v_bfe_u32 v78, v75, 16, 1
	v_add3_u32 v73, v77, v73, 0x7fff
	v_cmp_o_f32_e64 s19, v77, v77
	v_cndmask_b16 v69.l, 0x7fff, v69.h, s21
	v_add3_u32 v72, v76, v72, 0x7fff
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v76, v75, v78, 0x7fff
	v_cmp_o_f32_e64 s21, v75, v75
	v_cndmask_b16 v69.h, 0x7fff, v73.h, s19
	v_bfe_u32 v73, v74, 16, 1
	v_bfe_u32 v75, v71, 16, 1
	v_cndmask_b16 v72.l, 0x7fff, v72.h, s20
	v_cndmask_b16 v72.h, 0x7fff, v76.h, s21
	v_bfe_u32 v76, v70, 16, 1
	v_add3_u32 v73, v74, v73, 0x7fff
	v_cmp_o_f32_e64 s19, v74, v74
	v_add3_u32 v74, v71, v75, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_add3_u32 v71, v70, v76, 0x7fff
	v_cmp_o_f32_e64 s21, v70, v70
	v_cndmask_b16 v70.l, 0x7fff, v73.h, s19
	v_bfe_u32 v73, v67, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v74.h, s20
	v_bfe_u32 v74, v66, 16, 1
	v_bfe_u32 v75, v64, 16, 1
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v73, v67, v73, 0x7fff
	v_cmp_o_f32_e64 s20, v66, v66
	v_add3_u32 v67, v66, v74, 0x7fff
	v_add3_u32 v66, v64, v75, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s21
	v_cmp_o_f32_e64 s21, v64, v64
	v_bfe_u32 v64, v63, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s20
	v_bfe_u32 v67, v62, 16, 1
	v_cndmask_b16 v71.h, 0x7fff, v73.h, s19
	v_bfe_u32 v73, v61, 16, 1
	v_add3_u32 v64, v63, v64, 0x7fff
	v_cmp_o_f32_e64 s19, v63, v63
	v_add3_u32 v63, v62, v67, 0x7fff
	v_cmp_o_f32_e64 s20, v62, v62
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s21
	v_add3_u32 v62, v61, v73, 0x7fff
	v_cmp_o_f32_e64 s21, v61, v61
	v_cndmask_b16 v61.l, 0x7fff, v64.h, s19
	v_bfe_u32 v64, v60, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v63.h, s20
	v_bfe_u32 v63, v59, 16, 1
	v_bfe_u32 v67, v58, 16, 1
	v_cmp_o_f32_e64 s19, v60, v60
	v_add3_u32 v64, v60, v64, 0x7fff
	v_cmp_o_f32_e64 s20, v59, v59
	v_add3_u32 v60, v59, v63, 0x7fff
	v_add3_u32 v59, v58, v67, 0x7fff
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s21
	v_cmp_o_f32_e64 s21, v58, v58
	v_bfe_u32 v58, v57, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s20
	v_bfe_u32 v60, v56, 16, 1
	v_cndmask_b16 v62.h, 0x7fff, v64.h, s19
	v_bfe_u32 v63, v55, 16, 1
	v_add3_u32 v58, v57, v58, 0x7fff
	v_cmp_o_f32_e64 s19, v57, v57
	v_add3_u32 v57, v56, v60, 0x7fff
	v_cmp_o_f32_e64 s20, v56, v56
	v_cndmask_b16 v59.h, 0x7fff, v59.h, s21
	v_add3_u32 v56, v55, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v55, v55
	v_cndmask_b16 v55.l, 0x7fff, v58.h, s19
	v_bfe_u32 v58, v54, 16, 1
	v_cndmask_b16 v55.h, 0x7fff, v57.h, s20
	v_bfe_u32 v57, v53, 16, 1
	v_bfe_u32 v60, v52, 16, 1
	v_cmp_o_f32_e64 s19, v54, v54
	v_add3_u32 v58, v54, v58, 0x7fff
	v_cmp_o_f32_e64 s20, v53, v53
	v_add3_u32 v54, v53, v57, 0x7fff
	v_add3_u32 v53, v52, v60, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s21
	v_cmp_o_f32_e64 s21, v52, v52
	v_bfe_u32 v52, v51, 16, 1
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s20
	v_bfe_u32 v54, v50, 16, 1
	v_cndmask_b16 v56.h, 0x7fff, v58.h, s19
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
	v_bfe_u32 v40, v36, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v35, 16, 1
	v_bfe_u32 v42, v34, 16, 1
	v_cmp_o_f32_e64 s19, v36, v36
	v_add3_u32 v40, v36, v40, 0x7fff
	v_cmp_o_f32_e64 s20, v35, v35
	v_add3_u32 v36, v35, v39, 0x7fff
	v_add3_u32 v35, v34, v42, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_cmp_o_f32_e64 s21, v34, v34
	v_bfe_u32 v34, v33, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v32, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v39, v31, 16, 1
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v33, v33
	v_add3_u32 v33, v32, v36, 0x7fff
	v_bfe_u32 v36, v30, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s21
	v_cmp_o_f32_e64 s20, v32, v32
	v_add3_u32 v32, v31, v39, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v31, v31
	v_add3_u32 v31, v30, v36, 0x7fff
	v_cmp_o_f32_e64 s22, v30, v30
	v_cndmask_b16 v30.l, 0x7fff, v34.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v30.h, 0x7fff, v33.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v32.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v45, v55, v62, s19
	v_cndmask_b32_e64 v46, v62, v55, s19
	v_cndmask_b32_e64 v52, v50, v53, s19
	v_cndmask_b32_e64 v50, v53, v50, s19
	v_cndmask_b32_e64 v53, v47, v49, s19
	v_cndmask_b32_e64 v47, v49, v47, s19
	v_cndmask_b32_e64 v49, v41, v43, s19
	v_cndmask_b32_e64 v41, v43, v41, s19
	v_cndmask_b32_e64 v43, v37, v44, s19
	v_cndmask_b32_e64 v37, v44, v37, s19
	v_cndmask_b32_e64 v44, v30, v38, s19
	v_cndmask_b32_e64 v30, v38, v30, s19
	v_cndmask_b32_e64 v38, v0, v35, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v35, v0, s19
	v_cndmask_b32_e64 v35, 0x1054, v54, s19
	.loc	1 877 36                        ; ragged.py:877:36
	v_lshrrev_b32_e32 v1, 1, v84
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v31, v25, v22, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_cndmask_b32_e64 v22, v22, v25, s19
	v_lshl_or_b32 v35, v35, 8, v35
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v11, s35, v1
	s_mov_b32 s20, 0x76543210
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v54, v54, 8, v54
	v_cndmask_b32_e64 v25, v23, v24, s19
	v_and_b32_e32 v35, 0x540054, v35
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v35, v35, 4, v35
	v_cndmask_b32_e64 v23, v24, v23, s19
	v_cndmask_b32_e64 v24, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v32, v65, v69, s19
	v_cndmask_b32_e64 v34, v68, v72, s19
	v_cndmask_b32_e64 v39, v70, v66, s19
	v_cndmask_b32_e64 v42, v71, v61, s19
	v_cndmask_b32_e64 v51, v59, v56, s19
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v35, 0x5040504, v35
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s17, s33, v16
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v84, v11, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b32_e64 v29, v69, v65, s19
	v_cndmask_b32_e64 v33, v72, v68, s19
	v_cndmask_b32_e64 v36, v66, v70, s19
	v_cndmask_b32_e64 v40, v61, v71, s19
	v_cndmask_b32_e64 v48, v56, v59, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v51, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v31, v35
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s18, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s17, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s16, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v22, v22, v31, v54
	v_perm_b32 v31, v23, v25, v35
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v26, v24, v35
	v_perm_b32 v24, v26, v24, v54
	v_perm_b32 v26, v27, v28, v35
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v32, v29, v35
	v_perm_b32 v29, v32, v29, v54
	v_perm_b32 v32, v34, v33, v35
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v39, v36, v35
	v_perm_b32 v36, v39, v36, v54
	v_perm_b32 v39, v42, v40, v35
	v_perm_b32 v40, v42, v40, v54
	v_perm_b32 v42, v46, v45, v35
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v51, v48, v35
	v_perm_b32 v48, v51, v48, v54
	v_perm_b32 v51, v50, v52, v35
	v_perm_b32 v50, v50, v52, v54
	v_perm_b32 v52, v47, v53, v35
	v_perm_b32 v47, v47, v53, v54
	v_perm_b32 v53, v41, v49, v35
	v_perm_b32 v41, v41, v49, v54
	v_perm_b32 v49, v37, v43, v35
	v_perm_b32 v37, v37, v43, v54
	v_perm_b32 v43, v30, v44, v35
	v_perm_b32 v35, v0, v38, v35
	v_perm_b32 v0, v0, v38, v54
	v_mov_b16_e32 v38.l, v55.h
	v_mov_b16_e32 v38.h, v21.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 974 9                         ; ragged.py:974:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s14, s33, v13
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v38, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s15, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v38, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s14, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s13, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s12, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v30, v30, v44, v54
	v_mov_b16_e32 v54.l, v31.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v44.h, v21.h
	v_mov_b16_e32 v56.h, v21.h
	v_mov_b16_e32 v57.h, v21.h
	v_mov_b16_e32 v58.h, v21.h
	v_mov_b16_e32 v59.h, v21.h
	v_mov_b16_e32 v60.h, v21.h
	v_mov_b16_e32 v61.h, v21.h
	v_mov_b16_e32 v62.h, v21.h
	v_mov_b16_e32 v63.h, v21.h
	v_mov_b16_e32 v64.h, v21.h
	v_mov_b16_e32 v65.h, v21.h
	v_mov_b16_e32 v66.h, v21.h
	v_mov_b16_e32 v67.h, v21.h
	v_mov_b16_e32 v68.h, v21.h
	v_mov_b16_e32 v69.h, v21.h
	v_mov_b16_e32 v70.h, v21.h
	v_mov_b16_e32 v71.h, v21.h
	v_mov_b16_e32 v72.h, v21.h
	v_mov_b16_e32 v73.h, v21.h
	v_mov_b16_e32 v74.h, v21.h
	v_mov_b16_e32 v75.h, v21.h
	v_mov_b16_e32 v76.h, v21.h
	v_mov_b16_e32 v77.h, v21.h
	v_mov_b16_e32 v78.h, v21.h
	v_mov_b16_e32 v79.h, v21.h
	v_mov_b16_e32 v80.h, v21.h
	v_mov_b16_e32 v81.h, v21.h
	v_mov_b16_e32 v82.h, v21.h
	v_mov_b16_e32 v83.h, v21.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v21, v38, s[20:23], 0 offen
	buffer_store_b16 v31, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v9, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s11, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v44.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s10, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v31, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s9, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s8, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v31, 0x80000000, v31, s19
	s_clause 0x1
	buffer_store_b16 v44, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s7, s4
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v31, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s6, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s5, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s1, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s0, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s18, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s17, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s16, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s15, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s14, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s13, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v63.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s12, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s11, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s10, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v62.l, v33.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s9, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v65.l, v34.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s8, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s7, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v36, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s6, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v64.l, v36.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s5, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s1, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v67.l, v39.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v39, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s0, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s18, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v66.l, v40.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v40, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s17, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v69.l, v42.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s16, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s15, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v45, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s14, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v68.l, v45.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s13, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v71.l, v46.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s12, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v46, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s11, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v48, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s10, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v70.l, v48.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s9, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v73.l, v51.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s8, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v51, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s7, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v50, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s6, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s5, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v72.l, v50.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v74.l, v47.h
	v_mov_b16_e32 v75.l, v52.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v52, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v47, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v53, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v41.h
	v_mov_b16_e32 v77.l, v53.h
	v_mov_b16_e32 v78.l, v37.h
	v_mov_b16_e32 v79.l, v49.h
	v_mov_b16_e32 v80.l, v30.h
	v_mov_b16_e32 v81.l, v43.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v83.l, v35.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v41, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v49, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v37, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v43, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v30, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v35, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 837 5                         ; ragged.py:837:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 187
		.amdhsa_next_free_sgpr 55
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 187
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10848
; TotalNumSgprs: 57
; NumVgprs: 187
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 57
; NumVGPRsForWavesPerEU: 187
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     187
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
