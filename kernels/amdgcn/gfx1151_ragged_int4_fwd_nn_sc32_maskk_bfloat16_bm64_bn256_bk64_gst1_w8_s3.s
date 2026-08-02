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
	s_load_b64 s[26:27], s[0:1], 0x54
.Ltmp0:
	.loc	1 865 25 prologue_end           ; ragged.py:865:25
	s_abs_i32 s7, s2
	.loc	1 876 32                        ; ragged.py:876:32
	v_and_b32_e32 v68, 15, v0
	.loc	1 876 18 is_stmt 0              ; ragged.py:876:18
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v63, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:863:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:863:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 865 25 is_stmt 1              ; ragged.py:865:25
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
	.loc	1 867 33                        ; ragged.py:867:33
	s_sub_i32 s4, s27, s8
	.loc	1 868 24                        ; ragged.py:868:24
	s_mul_i32 s3, s8, s3
	.loc	1 867 22                        ; ragged.py:867:22
	s_min_i32 s9, s4, 1
	.loc	1 868 24                        ; ragged.py:868:24
	s_sub_i32 s2, s2, s3
	.loc	1 870 17                        ; ragged.py:870:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
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
	.loc	1 869 34                        ; ragged.py:869:34
	s_mul_i32 s3, s12, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 869 20 is_stmt 0              ; ragged.py:869:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 872 20 is_stmt 1              ; ragged.py:872:20
	s_ashr_i32 s3, s2, 31
	.loc	1 873 23                        ; ragged.py:873:23
	s_lshl_b64 s[10:11], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s10
	s_addc_u32 s3, s5, s11
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 874 24                        ; ragged.py:874:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 875 22                        ; ragged.py:875:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 874 24                        ; ragged.py:874:24
	s_load_b64 s[28:29], s[2:3], 0x0
	.loc	1 875 22                        ; ragged.py:875:22
	s_load_b64 s[22:23], s[4:5], 0x0
	.loc	1 876 18                        ; ragged.py:876:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s20, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s21, 0, s2
	.loc	1 959 25                        ; ragged.py:959:25
	v_add_nc_u32_e32 v29, s20, v68
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
	v_cmp_gt_i64_e64 s2, s[22:23], v[1:2]
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s3, s[28:29], v[3:4]
	v_cmp_le_i64_e64 s6, s[28:29], v[5:6]
	v_cmp_le_i64_e64 s7, s[28:29], v[7:8]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s4, s[22:23], v[3:4]
	v_cmp_gt_i64_e64 s8, s[22:23], v[5:6]
	v_cmp_gt_i64_e64 s9, s[22:23], v[7:8]
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 928 19 is_stmt 1              ; ragged.py:928:19
	s_cmp_gt_i32 s26, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v21, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; ragged.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr21
.LBB0_3:                                ; %Flow128
	s_load_b64 s[24:25], s[0:1], 0x40
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v57, 0xf0, v0
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v34, 16, v29
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v35, 32, v29
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v36, 48, v29
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v90, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s27, s12, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s34, s[0:1], 0x50
	.loc	1 876 32 is_stmt 1              ; ragged.py:876:32
	v_lshrrev_b32_e32 v7, 4, v57
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v8, s27, v0
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v16, 1, v57
	v_mov_b32_e32 v78, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v1, s0, s20, v7
	v_add_co_ci_u32_e64 v2, null, s21, 0, s0
	v_add_nc_u32_e32 v7, s20, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	.loc	1 872 20                        ; ragged.py:872:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s10
	s_addc_u32 s1, s7, s11
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s6, s[28:29], v[3:4]
	.loc	1 966 25                        ; ragged.py:966:25
	s_load_b32 s21, s[0:1], 0x0
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s0, s[28:29], v[1:2]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s1, s[22:23], v[1:2]
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s8, s[28:29], v[9:10]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s9, s[22:23], v[3:4]
	v_cmp_gt_i64_e64 s11, s[22:23], v[9:10]
	v_bfe_i32 v1, v0, 3, 1
	v_bfe_i32 v4, v0, 5, 1
	v_bfe_i32 v9, v0, 7, 1
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s7, s[28:29], v[5:6]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s10, s[22:23], v[5:6]
	v_bfe_i32 v2, v0, 4, 1
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v3, 0x7f, v0
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v5, 4, v0
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v4, 0x108, v4
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v9, 0x88, v9
	.loc	1 876 18 is_stmt 1              ; ragged.py:876:18
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v2, 0x108, v2
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v10, 0x70, v5
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v6, 0x600, v6
	v_xor_b32_e32 v4, v1, v4
	v_xor_b32_e32 v3, v9, v3
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v9, 5, v0
	v_xor_b32_e32 v2, v1, v2
	v_or_b32_e32 v1, v1, v10
	v_or3_b32 v4, v6, v4, v10
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v10, 2, v57
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v9, 32, v9
	.loc	1 942 39                        ; ragged.py:942:39
	s_mul_i32 s28, s34, s33
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v12, 0, v10, v9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[9:10], null, s28, s21, v[8:9]
	v_xor_b32_e32 v11, 8, v4
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v0, 28, v0
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v13, 16, v7
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v14, 32, v7
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v15, 48, v7
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v110, 0, v11
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v111, v12, v0
	.loc	1 928 19                        ; ragged.py:928:19
	v_mad_u64_u32 v[11:12], null, s33, 3, v[9:10]
	v_mul_lo_u32 v97, v13, s34
	v_mad_u64_u32 v[12:13], null, s33, 5, v[9:10]
	v_and_or_b32 v2, 0xe70, v5, v2
	v_mul_lo_u32 v98, v14, s34
	v_mad_u64_u32 v[13:14], null, s33, 6, v[9:10]
	v_mul_lo_u32 v99, v15, s34
	v_mad_u64_u32 v[14:15], null, s33, 7, v[9:10]
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v112, 0, v16
	v_mad_u64_u32 v[15:16], null, s33, 9, v[9:10]
	v_mad_u64_u32 v[16:17], null, s33, 10, v[9:10]
	v_mad_u64_u32 v[17:18], null, s33, 11, v[9:10]
	v_xor_b32_e32 v5, 8, v1
	v_xor_b32_e32 v6, 8, v2
	v_mad_u64_u32 v[18:19], null, s33, 12, v[9:10]
	v_mad_u64_u32 v[19:20], null, s33, 13, v[9:10]
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s40, s8, s11
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s8, 0
	.loc	1 928 19                        ; ragged.py:928:19
	v_mad_u64_u32 v[20:21], null, s33, 14, v[9:10]
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v92, v29, s26
	v_mul_lo_u32 v93, v34, s26
	v_mul_lo_u32 v94, v35, s26
	v_mul_lo_u32 v95, v36, s26
	v_mul_lo_u32 v96, v7, s34
	.loc	1 928 19                        ; ragged.py:928:19
	v_mad_u64_u32 v[21:22], null, s33, 15, v[9:10]
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s6, s6, s9
	s_and_b32 s7, s7, s10
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s41, s26, s21
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
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v104, 0, v3
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v105, 0, v1
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v106, 0, v5
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v107, 0, v2
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v108, 0, v6
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v109, 0, v4
	v_mov_b32_e32 v0, s8
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v100, s33, v9
	.loc	1 928 19                        ; ragged.py:928:19
	v_lshl_add_u32 v101, s33, 1, v9
	v_lshl_add_u32 v102, s33, 2, v9
	v_lshl_add_u32 v103, s33, 3, v9
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v1, s9
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v3, s11
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v5, s13
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v7, s15
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v2, s10
	v_mov_b32_e32 v4, s12
	v_mov_b32_e32 v6, s14
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s35, s0, s1
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
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v8
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 930 28                        ; ragged.py:930:28
	s_lshl_b32 s49, s8, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s47, s49, 1
	s_or_b32 s0, s49, 2
	s_or_b32 s46, s49, 3
	s_or_b32 s45, s49, 4
	s_or_b32 s44, s49, 5
	s_or_b32 s43, s49, 6
	s_or_b32 s42, s49, 7
	s_or_b32 s15, s49, 8
	s_or_b32 s14, s49, 9
	s_or_b32 s13, s49, 10
	s_or_b32 s12, s49, 11
	s_or_b32 s11, s49, 12
	s_or_b32 s10, s49, 13
	s_or_b32 s9, s49, 14
	s_or_b32 s1, s49, 15
	s_mul_i32 s48, s49, s33
	s_cmp_lt_i32 s49, s34
	v_add_nc_u32_e32 v114, s48, v102
	v_add_nc_u32_e32 v115, s48, v12
	v_add_nc_u32_e32 v116, s48, v14
	v_add_nc_u32_e32 v117, s48, v13
	v_add_nc_u32_e32 v118, s48, v11
	v_add_nc_u32_e32 v119, s48, v101
	v_add_nc_u32_e32 v120, s48, v100
	v_add_nc_u32_e32 v121, s48, v9
	v_add_nc_u32_e32 v122, s48, v16
	v_add_nc_u32_e32 v123, s48, v17
	v_add_nc_u32_e32 v124, s48, v18
	v_add_nc_u32_e32 v125, s48, v19
	v_add_nc_u32_e32 v126, s48, v20
	v_add_nc_u32_e32 v127, s48, v21
	v_add_nc_u32_e32 v128, s48, v15
	v_add_nc_u32_e32 v129, s48, v103
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s47, s34
	v_or_b32_e32 v113, s49, v68
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s0, s34
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s46, s34
	v_cmp_gt_i32_e64 s0, s34, v113
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s45, s34
	v_add_nc_u32_e32 v130, v96, v113
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s44, s34
	v_add_nc_u32_e32 v131, v97, v113
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s43, s34
	v_add_nc_u32_e32 v132, v98, v113
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s42, s34
	v_add_nc_u32_e32 v113, v99, v113
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s15, s34
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s14, s34
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s13, s34
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s12, s34
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s11, s34
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s10, s34
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s9, s34
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s1, s34
	s_cselect_b32 s50, -1, 0
	s_and_b32 s1, vcc_lo, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v114, 0x80000000, v114, s1
	s_and_b32 s1, vcc_lo, s44
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	s_and_b32 s1, vcc_lo, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v116, 0x80000000, v116, s1
	s_and_b32 s1, vcc_lo, s43
	v_cndmask_b32_e64 v117, 0x80000000, v117, s1
	s_and_b32 s1, vcc_lo, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v118, 0x80000000, v118, s1
	s_and_b32 s1, vcc_lo, s49
	v_cndmask_b32_e64 v119, 0x80000000, v119, s1
	s_and_b32 s1, vcc_lo, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	s_and_b32 s1, vcc_lo, s48
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	s_and_b32 s1, vcc_lo, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v122, 0x80000000, v122, s1
	s_and_b32 s1, vcc_lo, s12
	v_cndmask_b32_e64 v123, 0x80000000, v123, s1
	s_and_b32 s1, vcc_lo, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v124, 0x80000000, v124, s1
	s_and_b32 s1, vcc_lo, s10
	v_cndmask_b32_e64 v125, 0x80000000, v125, s1
	s_and_b32 s1, vcc_lo, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v126, 0x80000000, v126, s1
	s_and_b32 s1, vcc_lo, s14
	v_cndmask_b32_e64 v128, 0x80000000, v128, s1
	s_and_b32 s1, vcc_lo, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v129, 0x80000000, v129, s1
	s_and_b32 s1, s35, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s1
	s_and_b32 s1, s6, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	s_and_b32 s1, s7, s0
	s_and_b32 s0, s40, s0
	v_cndmask_b32_e64 v132, 0x80000000, v132, s1
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	s_and_b32 s0, vcc_lo, s50
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	.loc	1 943 34                        ; ragged.py:943:34
	s_clause 0x2
	buffer_load_u8 v130, v130, s[20:23], 0 offen
	buffer_load_u8 v131, v131, s[20:23], 0 offen
	buffer_load_u8 v132, v132, s[20:23], 0 offen
	.loc	1 944 34                        ; ragged.py:944:34
	s_clause 0xf
	buffer_load_u8 v116, v116, s[28:31], 0 offen
	buffer_load_u8 v115, v115, s[28:31], 0 offen
	buffer_load_u8 v118, v118, s[28:31], 0 offen
	buffer_load_u8 v120, v120, s[28:31], 0 offen
	buffer_load_u8 v117, v117, s[28:31], 0 offen
	buffer_load_u8 v133, v114, s[28:31], 0 offen
	buffer_load_u8 v119, v119, s[28:31], 0 offen
	buffer_load_u8 v121, v121, s[28:31], 0 offen
	buffer_load_u8 v125, v125, s[28:31], 0 offen
	buffer_load_u8 v123, v123, s[28:31], 0 offen
	buffer_load_u8 v128, v128, s[28:31], 0 offen
	buffer_load_u8 v126, v126, s[28:31], 0 offen
	buffer_load_u8 v127, v127, s[28:31], 0 offen
	buffer_load_u8 v124, v124, s[28:31], 0 offen
	buffer_load_u8 v122, v122, s[28:31], 0 offen
	buffer_load_u8 v129, v129, s[28:31], 0 offen
	.loc	1 943 34                        ; ragged.py:943:34
	buffer_load_u8 v134, v113, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; ragged.py:966:25
	s_add_i32 s0, s8, s41
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt vmcnt(19)
	ds_store_b8 v104, v130
	s_waitcnt vmcnt(18)
	ds_store_b8 v104, v131 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v104, v132 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v104, v134 offset:768
	.loc	1 944 34                        ; ragged.py:944:34
	v_lshlrev_b16 v113.l, 8, v116.l
	v_lshlrev_b16 v113.h, 8, v115.l
	v_lshlrev_b16 v114.l, 8, v118.l
	v_lshlrev_b16 v114.h, 8, v120.l
	v_lshlrev_b16 v115.l, 8, v125.l
	v_lshlrev_b16 v115.h, 8, v123.l
	v_lshlrev_b16 v116.l, 8, v128.l
	v_lshlrev_b16 v116.h, 8, v127.l
	v_or_b16 v118.h, v117.l, v113.l
	v_or_b16 v118.l, v133.l, v113.h
	v_or_b16 v117.h, v119.l, v114.l
	v_or_b16 v117.l, v121.l, v114.h
	v_or_b16 v114.l, v124.l, v115.l
	v_or_b16 v113.h, v122.l, v115.h
	v_or_b16 v113.l, v129.l, v116.l
	v_or_b16 v114.h, v126.l, v116.h
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[143:146], v105 offset1:32
	ds_load_2addr_b64 v[175:178], v105 offset0:64 offset1:96
	ds_load_2addr_b64 v[161:164], v106 offset1:32
	ds_load_2addr_b64 v[179:182], v106 offset0:64 offset1:96
	.loc	1 944 34                        ; ragged.py:944:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v107, v[117:118]
	ds_store_b64 v108, v[113:114]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[183:186], v109 offset1:4
	ds_load_2addr_stride64_b64 v[187:190], v110 offset1:4
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s0, s0, s33
	.loc	1 945 31                        ; ragged.py:945:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[183:184], v[143:144], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[185:186], v[143:144], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[183:184], v[145:146], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[185:186], v[145:146], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[183:184], v[175:176], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[185:186], v[175:176], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[187:188], v[161:162], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[189:190], v[161:162], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[187:188], v[163:164], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[189:190], v[163:164], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[183:184], v[177:178], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[185:186], v[177:178], v[0:7] neg_lo:[1,1,0]
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v177, s8, v92, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[161:168], v[187:188], v[181:182], v[161:168] neg_lo:[1,1,0]
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v178, s8, v93, 1
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[169:176], v[189:190], v[181:182], v[169:176] neg_lo:[1,1,0]
	.loc	1 965 40                        ; ragged.py:965:40
	v_add_lshl_u32 v181, v8, s0, 1
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[145:152], v[187:188], v[179:180], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[189:190], v[179:180], v[153:160] neg_lo:[1,1,0]
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v179, s8, v94, 1
	v_add_lshl_u32 v180, s8, v95, 1
	.loc	1 965 40                        ; ragged.py:965:40
	v_cndmask_b32_e32 v181, 0x80000000, v181, vcc_lo
	.loc	1 958 40                        ; ragged.py:958:40
	v_cndmask_b32_e64 v177, 0x80000000, v177, s5
	v_cndmask_b32_e64 v178, 0x80000000, v178, s4
	v_cndmask_b32_e64 v179, 0x80000000, v179, s3
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	.loc	1 965 40                        ; ragged.py:965:40
	buffer_load_u16 v181, v181, s[16:19], 0 offen
	.loc	1 958 40                        ; ragged.py:958:40
	s_clause 0x3
	buffer_load_u16 v177, v177, s[36:39], 0 offen
	buffer_load_u16 v178, v178, s[36:39], 0 offen
	buffer_load_u16 v179, v179, s[36:39], 0 offen
	buffer_load_u16 v180, v180, s[36:39], 0 offen
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v170, v170
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	.loc	1 972 17                        ; ragged.py:972:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lg_u32 s8, s26
	.loc	1 958 40                        ; ragged.py:958:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v179, 16, v179
	v_lshlrev_b32_e32 v177, 16, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v129, v129, v178 :: v_dual_mul_f32 v152, v152, v179
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v187, v119, v177 :: v_dual_lshlrev_b32 v180, 16, v180
	v_mul_f32_e32 v186, v118, v177
	v_dual_mul_f32 v150, v150, v179 :: v_dual_lshlrev_b32 v181, 16, v181
	v_mul_f32_e32 v182, v114, v177
	v_mul_f32_e32 v183, v115, v177
	v_mul_f32_e32 v184, v116, v177
	.loc	1 970 21                        ; ragged.py:970:21
	ds_store_b32 v111, v181
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v181, v113, v177
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v185, v117, v177
	v_dual_mul_f32 v188, v120, v177 :: v_dual_mul_f32 v135, v135, v178
	v_dual_mul_f32 v165, v165, v180 :: v_dual_mul_f32 v190, v122, v177
	v_dual_mul_f32 v167, v167, v180 :: v_dual_mul_f32 v192, v124, v177
	v_dual_mul_f32 v189, v121, v177 :: v_dual_mul_f32 v138, v138, v178
	v_dual_mul_f32 v191, v123, v177 :: v_dual_mul_f32 v140, v140, v178
	v_dual_mul_f32 v153, v153, v179 :: v_dual_mul_f32 v194, v126, v177
	v_dual_mul_f32 v193, v125, v177 :: v_dual_mul_f32 v144, v144, v178
	v_dual_mul_f32 v195, v127, v177 :: v_dual_mul_f32 v158, v158, v179
	v_dual_mul_f32 v177, v128, v177 :: v_dual_mul_f32 v170, v170, v180
	.loc	1 970 21                        ; ragged.py:970:21
	ds_load_b128 v[113:116], v112
	ds_load_b128 v[117:120], v112 offset:16
	ds_load_b128 v[121:124], v112 offset:512
	ds_load_b128 v[125:128], v112 offset:528
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v130, v130, v178
	v_mul_f32_e32 v131, v131, v178
	v_dual_mul_f32 v132, v132, v178 :: v_dual_mul_f32 v145, v145, v179
	v_mul_f32_e32 v146, v146, v179
	v_mul_f32_e32 v147, v147, v179
	v_dual_mul_f32 v148, v148, v179 :: v_dual_mul_f32 v161, v161, v180
	v_mul_f32_e32 v162, v162, v180
	v_mul_f32_e32 v163, v163, v180
	v_dual_mul_f32 v164, v164, v180 :: v_dual_mul_f32 v133, v133, v178
	v_mul_f32_e32 v134, v134, v178
	v_dual_mul_f32 v136, v136, v178 :: v_dual_mul_f32 v149, v149, v179
	v_dual_mul_f32 v166, v166, v180 :: v_dual_mul_f32 v151, v151, v179
	v_dual_mul_f32 v168, v168, v180 :: v_dual_mul_f32 v137, v137, v178
	v_dual_mul_f32 v154, v154, v179 :: v_dual_mul_f32 v139, v139, v178
	v_mul_f32_e32 v156, v156, v179
	v_dual_mul_f32 v155, v155, v179 :: v_dual_mul_f32 v142, v142, v178
	v_dual_mul_f32 v141, v141, v178 :: v_dual_mul_f32 v160, v160, v179
	v_dual_mul_f32 v143, v143, v178 :: v_dual_mul_f32 v172, v172, v180
	v_dual_mul_f32 v157, v157, v179 :: v_dual_mul_f32 v174, v174, v180
	v_dual_mul_f32 v159, v159, v179 :: v_dual_mul_f32 v176, v176, v180
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v169, v169, v180 :: v_dual_fmac_f32 v90, v183, v115
	v_dual_mul_f32 v171, v171, v180 :: v_dual_fmac_f32 v76, v129, v113
	v_dual_mul_f32 v173, v173, v180 :: v_dual_fmac_f32 v74, v131, v115
	v_dual_mul_f32 v175, v175, v180 :: v_dual_fmac_f32 v58, v145, v113
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v49, v181, v113 :: v_dual_fmac_f32 v56, v146, v114
	v_dual_fmac_f32 v91, v182, v114 :: v_dual_fmac_f32 v54, v148, v116
	v_dual_fmac_f32 v89, v184, v116 :: v_dual_fmac_f32 v40, v161, v113
	v_dual_fmac_f32 v75, v130, v114 :: v_dual_fmac_f32 v38, v163, v115
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v73, v132, v116 :: v_dual_fmac_f32 v88, v185, v117
	v_dual_fmac_f32 v55, v147, v115 :: v_dual_fmac_f32 v72, v133, v117
	v_dual_fmac_f32 v39, v162, v114 :: v_dual_fmac_f32 v86, v187, v119
	v_dual_fmac_f32 v37, v164, v116 :: v_dual_fmac_f32 v70, v135, v119
	v_dual_fmac_f32 v87, v186, v118 :: v_dual_fmac_f32 v50, v152, v120
	v_dual_fmac_f32 v85, v188, v120 :: v_dual_fmac_f32 v52, v150, v118
	v_dual_fmac_f32 v71, v134, v118 :: v_dual_fmac_f32 v30, v168, v120
	v_dual_fmac_f32 v69, v136, v120 :: v_dual_fmac_f32 v32, v166, v118
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v53, v149, v117 :: v_dual_fmac_f32 v82, v191, v123
	v_dual_fmac_f32 v51, v151, v119 :: v_dual_fmac_f32 v84, v189, v121
	v_dual_fmac_f32 v33, v165, v117 :: v_dual_fmac_f32 v66, v138, v122
	v_dual_fmac_f32 v31, v167, v119 :: v_dual_fmac_f32 v64, v140, v124
	v_dual_fmac_f32 v83, v190, v122 :: v_dual_fmac_f32 v48, v153, v121
	v_dual_fmac_f32 v81, v192, v124 :: v_dual_fmac_f32 v46, v155, v123
	v_dual_fmac_f32 v67, v137, v121 :: v_dual_fmac_f32 v26, v171, v123
	v_dual_fmac_f32 v65, v139, v123 :: v_dual_fmac_f32 v28, v169, v121
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v47, v154, v122 :: v_dual_fmac_f32 v80, v193, v125
	v_dual_fmac_f32 v45, v156, v124 :: v_dual_fmac_f32 v78, v195, v127
	v_dual_fmac_f32 v27, v170, v122 :: v_dual_fmac_f32 v62, v141, v125
	v_dual_fmac_f32 v25, v172, v124 :: v_dual_fmac_f32 v60, v143, v127
	v_dual_fmac_f32 v79, v194, v126 :: v_dual_fmac_f32 v44, v157, v125
	v_dual_fmac_f32 v77, v177, v128 :: v_dual_fmac_f32 v42, v159, v127
	v_dual_fmac_f32 v61, v142, v126 :: v_dual_fmac_f32 v24, v173, v125
	v_dual_fmac_f32 v59, v144, v128 :: v_dual_fmac_f32 v22, v175, v127
	v_dual_fmac_f32 v43, v158, v126 :: v_dual_fmac_f32 v10, v176, v128
	v_fmac_f32_e32 v41, v160, v128
	v_fmac_f32_e32 v23, v174, v126
	.loc	1 928 19                        ; ragged.py:928:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v21, v63
.LBB0_7:                                ; %._crit_edge
	.loc	1 877 36 is_stmt 1              ; ragged.py:877:36
	v_lshrrev_b32_e32 v0, 1, v57
	.loc	1 974 9                         ; ragged.py:974:9
	v_bfe_u32 v57, v49, 16, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v17, v36, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_bfe_u32 v36, v90, 16, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v19, v34, s33
	v_mul_lo_u32 v18, v35, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_add3_u32 v34, v49, v57, 0x7fff
	v_bfe_u32 v35, v91, 16, 1
	v_cmp_o_f32_e64 s19, v49, v49
	v_bfe_u32 v49, v89, 16, 1
	v_add3_u32 v36, v90, v36, 0x7fff
	v_cmp_o_f32_e64 s21, v90, v90
	v_add3_u32 v35, v91, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v91, v91
	v_add3_u32 v49, v89, v49, 0x7fff
	v_cmp_o_f32_e64 s22, v89, v89
	v_bfe_u32 v57, v88, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s21
	v_bfe_u32 v36, v87, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s20
	v_cndmask_b16 v35.h, 0x7fff, v49.h, s22
	v_add3_u32 v49, v88, v57, 0x7fff
	v_bfe_u32 v57, v86, 16, 1
	v_cmp_o_f32_e64 s19, v88, v88
	v_bfe_u32 v63, v85, 16, 1
	v_add3_u32 v36, v87, v36, 0x7fff
	v_cmp_o_f32_e64 s21, v86, v86
	v_add3_u32 v57, v86, v57, 0x7fff
	v_cmp_o_f32_e64 s22, v85, v85
	v_add3_u32 v63, v85, v63, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v84, 16, 1
	v_cmp_o_f32_e64 s20, v87, v87
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s21
	v_cndmask_b16 v57.h, 0x7fff, v63.h, s22
	v_bfe_u32 v63, v83, 16, 1
	v_add3_u32 v49, v84, v49, 0x7fff
	v_bfe_u32 v68, v82, 16, 1
	v_cmp_o_f32_e64 s19, v84, v84
	v_bfe_u32 v84, v81, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s20
	v_add3_u32 v63, v83, v63, 0x7fff
	v_cmp_o_f32_e64 s20, v83, v83
	v_add3_u32 v68, v82, v68, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_add3_u32 v82, v81, v84, 0x7fff
	v_cmp_o_f32_e64 s22, v81, v81
	v_bfe_u32 v81, v80, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	v_cndmask_b16 v63.l, 0x7fff, v68.h, s21
	v_cndmask_b16 v63.h, 0x7fff, v82.h, s22
	v_bfe_u32 v68, v79, 16, 1
	v_add3_u32 v81, v80, v81, 0x7fff
	v_bfe_u32 v82, v78, 16, 1
	v_cmp_o_f32_e64 s19, v80, v80
	v_bfe_u32 v80, v77, 16, 1
	v_add3_u32 v68, v79, v68, 0x7fff
	v_cmp_o_f32_e64 s20, v79, v79
	v_add3_u32 v79, v78, v82, 0x7fff
	v_cmp_o_f32_e64 s21, v78, v78
	v_add3_u32 v78, v77, v80, 0x7fff
	v_cmp_o_f32_e64 s22, v77, v77
	v_bfe_u32 v77, v76, 16, 1
	v_cndmask_b16 v68.l, 0x7fff, v81.h, s19
	v_cndmask_b16 v78.l, 0x7fff, v79.h, s21
	v_bfe_u32 v79, v75, 16, 1
	v_bfe_u32 v80, v74, 16, 1
	v_add3_u32 v77, v76, v77, 0x7fff
	v_cmp_o_f32_e64 s19, v76, v76
	v_bfe_u32 v76, v73, 16, 1
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s20
	v_add3_u32 v79, v75, v79, 0x7fff
	v_cmp_o_f32_e64 s20, v75, v75
	v_add3_u32 v75, v74, v80, 0x7fff
	v_cmp_o_f32_e64 s21, v74, v74
	v_add3_u32 v74, v73, v76, 0x7fff
	v_bfe_u32 v76, v72, 16, 1
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s22
	v_cmp_o_f32_e64 s22, v73, v73
	v_cndmask_b16 v73.l, 0x7fff, v77.h, s19
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s21
	v_bfe_u32 v75, v71, 16, 1
	v_add3_u32 v76, v72, v76, 0x7fff
	v_bfe_u32 v77, v70, 16, 1
	v_cmp_o_f32_e64 s19, v72, v72
	v_bfe_u32 v72, v69, 16, 1
	v_cndmask_b16 v73.h, 0x7fff, v79.h, s20
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
	v_bfe_u32 v67, v62, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s22
	v_cmp_o_f32_e64 s22, v64, v64
	v_cndmask_b16 v64.l, 0x7fff, v72.h, s19
	v_cndmask_b16 v64.h, 0x7fff, v71.h, s20
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s21
	v_bfe_u32 v66, v61, 16, 1
	v_add3_u32 v67, v62, v67, 0x7fff
	v_bfe_u32 v71, v60, 16, 1
	v_cmp_o_f32_e64 s19, v62, v62
	v_bfe_u32 v62, v59, 16, 1
	v_add3_u32 v66, v61, v66, 0x7fff
	v_cmp_o_f32_e64 s20, v61, v61
	v_add3_u32 v61, v60, v71, 0x7fff
	v_cmp_o_f32_e64 s21, v60, v60
	v_add3_u32 v60, v59, v62, 0x7fff
	v_bfe_u32 v62, v58, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s22
	v_cmp_o_f32_e64 s22, v59, v59
	v_cndmask_b16 v59.l, 0x7fff, v67.h, s19
	v_cndmask_b16 v59.h, 0x7fff, v66.h, s20
	v_cndmask_b16 v60.l, 0x7fff, v61.h, s21
	v_bfe_u32 v61, v56, 16, 1
	v_add3_u32 v62, v58, v62, 0x7fff
	v_bfe_u32 v66, v55, 16, 1
	v_cmp_o_f32_e64 s19, v58, v58
	v_bfe_u32 v58, v54, 16, 1
	v_add3_u32 v61, v56, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v56, v56
	v_add3_u32 v56, v55, v66, 0x7fff
	v_cmp_o_f32_e64 s21, v55, v55
	v_add3_u32 v55, v54, v58, 0x7fff
	v_bfe_u32 v58, v53, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s22
	v_cmp_o_f32_e64 s22, v54, v54
	v_cndmask_b16 v54.l, 0x7fff, v62.h, s19
	v_cndmask_b16 v54.h, 0x7fff, v61.h, s20
	v_cndmask_b16 v55.l, 0x7fff, v56.h, s21
	v_bfe_u32 v56, v52, 16, 1
	v_add3_u32 v58, v53, v58, 0x7fff
	v_bfe_u32 v61, v51, 16, 1
	v_cmp_o_f32_e64 s19, v53, v53
	v_bfe_u32 v53, v50, 16, 1
	v_add3_u32 v56, v52, v56, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_add3_u32 v52, v51, v61, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_add3_u32 v51, v50, v53, 0x7fff
	v_bfe_u32 v53, v48, 16, 1
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s22
	v_cmp_o_f32_e64 s22, v50, v50
	v_cndmask_b16 v50.l, 0x7fff, v58.h, s19
	v_cndmask_b16 v50.h, 0x7fff, v56.h, s20
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s21
	v_bfe_u32 v52, v47, 16, 1
	v_add3_u32 v53, v48, v53, 0x7fff
	v_bfe_u32 v56, v46, 16, 1
	v_cmp_o_f32_e64 s19, v48, v48
	v_bfe_u32 v48, v45, 16, 1
	v_add3_u32 v52, v47, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v47, v47
	v_add3_u32 v47, v46, v56, 0x7fff
	v_cmp_o_f32_e64 s21, v46, v46
	v_add3_u32 v46, v45, v48, 0x7fff
	v_bfe_u32 v48, v44, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s22
	v_cmp_o_f32_e64 s22, v45, v45
	v_cndmask_b16 v45.l, 0x7fff, v53.h, s19
	v_cndmask_b16 v45.h, 0x7fff, v52.h, s20
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v43, 16, 1
	v_add3_u32 v48, v44, v48, 0x7fff
	v_bfe_u32 v52, v42, 16, 1
	v_cmp_o_f32_e64 s19, v44, v44
	v_bfe_u32 v44, v41, 16, 1
	v_add3_u32 v47, v43, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v43, v43
	v_add3_u32 v43, v42, v52, 0x7fff
	v_cmp_o_f32_e64 s21, v42, v42
	v_add3_u32 v42, v41, v44, 0x7fff
	v_bfe_u32 v44, v40, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s22
	v_cmp_o_f32_e64 s22, v41, v41
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s19
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s20
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s21
	v_bfe_u32 v43, v39, 16, 1
	v_add3_u32 v44, v40, v44, 0x7fff
	v_bfe_u32 v47, v38, 16, 1
	v_cmp_o_f32_e64 s19, v40, v40
	v_bfe_u32 v40, v37, 16, 1
	v_add3_u32 v43, v39, v43, 0x7fff
	v_cmp_o_f32_e64 s20, v39, v39
	v_add3_u32 v39, v38, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v38, v38
	v_add3_u32 v38, v37, v40, 0x7fff
	v_bfe_u32 v40, v33, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s22
	v_cmp_o_f32_e64 s22, v37, v37
	v_cndmask_b16 v37.l, 0x7fff, v44.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v43.h, s20
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s21
	v_bfe_u32 v39, v32, 16, 1
	v_add3_u32 v40, v33, v40, 0x7fff
	v_bfe_u32 v43, v31, 16, 1
	v_cmp_o_f32_e64 s19, v33, v33
	v_bfe_u32 v33, v30, 16, 1
	v_add3_u32 v39, v32, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v32, v32
	v_add3_u32 v32, v31, v43, 0x7fff
	v_cmp_o_f32_e64 s21, v31, v31
	v_add3_u32 v31, v30, v33, 0x7fff
	v_bfe_u32 v33, v28, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s22
	v_cmp_o_f32_e64 s22, v30, v30
	v_cndmask_b16 v30.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v30.h, 0x7fff, v39.h, s20
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v27, 16, 1
	v_add3_u32 v33, v28, v33, 0x7fff
	v_bfe_u32 v39, v26, 16, 1
	v_cmp_o_f32_e64 s19, v28, v28
	v_bfe_u32 v28, v25, 16, 1
	v_add3_u32 v32, v27, v32, 0x7fff
	v_cmp_o_f32_e64 s20, v27, v27
	v_add3_u32 v27, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s21, v26, v26
	v_add3_u32 v26, v25, v28, 0x7fff
	v_bfe_u32 v28, v24, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s22
	v_cmp_o_f32_e64 s22, v25, v25
	v_cndmask_b16 v25.l, 0x7fff, v33.h, s19
	v_cndmask_b16 v25.h, 0x7fff, v32.h, s20
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s21
	v_bfe_u32 v27, v23, 16, 1
	v_add3_u32 v28, v24, v28, 0x7fff
	v_bfe_u32 v32, v22, 16, 1
	v_cmp_o_f32_e64 s19, v24, v24
	v_bfe_u32 v24, v10, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s22
	v_add3_u32 v27, v23, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v23, v23
	v_add3_u32 v23, v22, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v22, v22
	v_add3_u32 v22, v10, v24, 0x7fff
	v_cmp_o_f32_e64 s22, v10, v10
	v_cndmask_b16 v10.l, 0x7fff, v28.h, s19
	v_cmp_eq_u32_e64 s19, 0, v21
	v_cndmask_b16 v10.h, 0x7fff, v27.h, s20
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s21
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s22
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v11, s27, v0
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v28, v68, v49, s19
	v_cndmask_b32_e64 v32, v49, v68, s19
	v_cndmask_b32_e64 v49, v50, v54, s19
	v_cndmask_b32_e64 v50, v54, v50, s19
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v52, v51, v55, s19
	v_cndmask_b32_e64 v51, v55, v51, s19
	v_cndmask_b32_e64 v53, v41, v45, s19
	v_cndmask_b32_e64 v41, v45, v41, s19
	v_cndmask_b32_e64 v45, v42, v46, s19
	v_cndmask_b32_e64 v42, v46, v42, s19
	v_cndmask_b32_e64 v46, v30, v37, s19
	v_cndmask_b32_e64 v30, v37, v30, s19
	v_cndmask_b32_e64 v37, v31, v38, s19
	v_cndmask_b32_e64 v31, v38, v31, s19
	v_cndmask_b32_e64 v38, v10, v25, s19
	v_cndmask_b32_e64 v10, v25, v10, s19
	v_cndmask_b32_e64 v25, v21, v26, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v21, v26, v21, s19
	v_cndmask_b32_e64 v26, 0x1054, v54, s19
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v20, v29, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v23, v34, v36, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v16, 1, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v26, v26, 8, v26
	s_mov_b32 s20, 0x76543210
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v15, 2, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v26, 0x540054, v26
	v_cndmask_b32_e64 v22, v36, v34, s19
	v_cndmask_b32_e64 v27, v35, v57, s19
	v_and_b32_e32 v54, 0x760076, v54
	v_cndmask_b32_e64 v34, v63, v78, s19
	v_lshl_or_b32 v26, v26, 4, v26
	v_cndmask_b32_e64 v36, v73, v69, s19
	v_cndmask_b32_e64 v40, v74, v70, s19
	v_cndmask_b32_e64 v44, v64, v59, s19
	v_cndmask_b32_e64 v48, v65, v60, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v26, 0x5040504, v26
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
	v_mov_b16_e32 v29.h, 0
	v_cndmask_b32_e64 v24, v57, v35, s19
	v_cndmask_b32_e64 v33, v78, v63, s19
	v_cndmask_b32_e64 v35, v69, v73, s19
	v_cndmask_b32_e64 v39, v70, v74, s19
	v_cndmask_b32_e64 v43, v59, v64, s19
	v_cndmask_b32_e64 v47, v60, v65, s19
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v48, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v51, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v23, v22, v26
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s18, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s17, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s16, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v22, v23, v22, v54
	v_perm_b32 v23, v27, v24, v26
	v_perm_b32 v24, v27, v24, v54
	v_perm_b32 v27, v32, v28, v26
	v_perm_b32 v28, v32, v28, v54
	v_perm_b32 v32, v34, v33, v26
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v36, v35, v26
	v_perm_b32 v35, v36, v35, v54
	v_perm_b32 v36, v40, v39, v26
	v_perm_b32 v39, v40, v39, v54
	v_perm_b32 v40, v44, v43, v26
	v_perm_b32 v43, v44, v43, v54
	v_perm_b32 v44, v48, v47, v26
	v_perm_b32 v47, v48, v47, v54
	v_perm_b32 v48, v50, v49, v26
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v51, v52, v26
	v_perm_b32 v51, v51, v52, v54
	v_perm_b32 v52, v41, v53, v26
	v_perm_b32 v41, v41, v53, v54
	v_perm_b32 v53, v42, v45, v26
	v_perm_b32 v42, v42, v45, v54
	v_perm_b32 v45, v30, v46, v26
	v_perm_b32 v30, v30, v46, v54
	v_perm_b32 v46, v31, v37, v26
	v_perm_b32 v31, v31, v37, v54
	v_perm_b32 v37, v10, v38, v26
	v_perm_b32 v26, v21, v25, v26
	v_perm_b32 v21, v21, v25, v54
	v_mov_b16_e32 v25.l, v55.h
	v_mov_b16_e32 v25.h, v29.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v9, 6, v11
	.loc	1 974 9                         ; ragged.py:974:9
	buffer_store_b16 v55, v84, s[24:27], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s14, s33, v13
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v29.l, v22.h
	s_clause 0x1
	buffer_store_b16 v25, v85, s[24:27], 0 offen
	buffer_store_b16 v22, v86, s[24:27], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s15, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v8, 7, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s12, s33, v9
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v25, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s14, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v7, 0x80, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v84, v9, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s13, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v6, 0x81, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s11, s33, v8
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s12, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v5, 0x82, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v10, v10, v38, v54
	v_mov_b16_e32 v54.l, v23.h
	v_mov_b16_e32 v54.h, v29.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s10, s33, v7
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v29, v25, s[24:27], 0 offen
	buffer_store_b16 v23, v22, s[24:27], 0 offen
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s9, s33, v6
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v23, v7, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s11, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v4, 0x83, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s8, s33, v5
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v38.l, v24.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[24:27], 0 offen
	buffer_store_b16 v24, v84, s[24:27], 0 offen
	v_add_lshl_u32 v24, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s10, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v3, 0x84, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v38.h, v29.h
	v_add_lshl_u32 v25, v5, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s9, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v2, 0x85, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s7, s33, v4
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s8, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v1, 0x86, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v57.l, v27.h
	v_mov_b16_e32 v57.h, v29.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s6, s33, v3
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	s_clause 0x1
	buffer_store_b16 v38, v22, s[24:27], 0 offen
	buffer_store_b16 v27, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v0, 0x87, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v23, v3, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s7, s5
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v57, v24, s[24:27], 0 offen
	buffer_store_b16 v28, v25, s[24:27], 0 offen
	v_add_lshl_u32 v24, v2, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s6, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v56.l, v28.h
	v_mov_b16_e32 v56.h, v29.h
	v_add_lshl_u32 v25, v1, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v0
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s1, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v20, v0, v20, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s0, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v59.l, v32.h
	v_mov_b16_e32 v59.h, v29.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	s_clause 0x1
	buffer_store_b16 v56, v22, s[24:27], 0 offen
	buffer_store_b16 v32, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v11, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v23, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s18, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v58.l, v33.h
	v_mov_b16_e32 v58.h, v29.h
	s_clause 0x1
	buffer_store_b16 v59, v24, s[24:27], 0 offen
	buffer_store_b16 v33, v25, s[24:27], 0 offen
	v_add_lshl_u32 v24, v15, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s17, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v61.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s16, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v61.h, v29.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	s_clause 0x1
	buffer_store_b16 v58, v20, s[24:27], 0 offen
	buffer_store_b16 v34, v22, s[24:27], 0 offen
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v22, v13, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s15, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v61, v23, s[24:27], 0 offen
	buffer_store_b16 v35, v24, s[24:27], 0 offen
	v_add_lshl_u32 v23, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s14, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v60.l, v35.h
	v_mov_b16_e32 v60.h, v29.h
	v_add_lshl_u32 v24, v9, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s13, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v63.l, v36.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s12, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v63.h, v29.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	s_clause 0x1
	buffer_store_b16 v60, v20, s[24:27], 0 offen
	buffer_store_b16 v36, v22, s[24:27], 0 offen
	v_add_lshl_u32 v20, v8, v19, 1
	v_add_lshl_u32 v22, v7, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s11, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v63, v23, s[24:27], 0 offen
	buffer_store_b16 v39, v24, s[24:27], 0 offen
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s10, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v62.l, v39.h
	v_mov_b16_e32 v62.h, v29.h
	v_add_lshl_u32 v24, v5, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s9, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v65.l, v40.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s8, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v65.h, v29.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	s_clause 0x1
	buffer_store_b16 v62, v20, s[24:27], 0 offen
	buffer_store_b16 v40, v22, s[24:27], 0 offen
	v_add_lshl_u32 v20, v4, v19, 1
	v_add_lshl_u32 v22, v3, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s7, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v65, v23, s[24:27], 0 offen
	buffer_store_b16 v43, v24, s[24:27], 0 offen
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s6, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v64.l, v43.h
	v_mov_b16_e32 v64.h, v29.h
	v_add_lshl_u32 v24, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s1, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v19, v0, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s0, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v67.l, v44.h
	v_mov_b16_e32 v67.h, v29.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	s_clause 0x1
	buffer_store_b16 v64, v20, s[24:27], 0 offen
	buffer_store_b16 v44, v22, s[24:27], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s18, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v66.l, v47.h
	v_mov_b16_e32 v66.h, v29.h
	s_clause 0x1
	buffer_store_b16 v67, v23, s[24:27], 0 offen
	buffer_store_b16 v47, v24, s[24:27], 0 offen
	v_add_lshl_u32 v23, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s17, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v69.l, v48.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s16, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v69.h, v29.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v66, v19, s[24:27], 0 offen
	buffer_store_b16 v48, v20, s[24:27], 0 offen
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s15, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v69, v22, s[24:27], 0 offen
	buffer_store_b16 v49, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s14, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v68.l, v49.h
	v_mov_b16_e32 v68.h, v29.h
	v_add_lshl_u32 v23, v9, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s13, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v71.l, v50.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s12, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v71.h, v29.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v68, v19, s[24:27], 0 offen
	buffer_store_b16 v50, v20, s[24:27], 0 offen
	v_add_lshl_u32 v19, v8, v18, 1
	v_add_lshl_u32 v20, v7, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s11, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v71, v22, s[24:27], 0 offen
	buffer_store_b16 v51, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s10, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v70.l, v51.h
	v_mov_b16_e32 v70.h, v29.h
	v_add_lshl_u32 v23, v5, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s9, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v73.l, v52.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s8, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v73.h, v29.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v70, v19, s[24:27], 0 offen
	buffer_store_b16 v52, v20, s[24:27], 0 offen
	v_add_lshl_u32 v19, v4, v18, 1
	v_add_lshl_u32 v20, v3, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s7, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v73, v22, s[24:27], 0 offen
	buffer_store_b16 v41, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v2, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s6, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v23, v1, v18, 1
	v_add_lshl_u32 v18, v0, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s1, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s0, s3
	s_and_b32 s3, vcc_lo, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s18, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v72.h, v29.h
	v_mov_b16_e32 v74.l, v42.h
	v_mov_b16_e32 v74.h, v29.h
	v_mov_b16_e32 v75.l, v53.h
	v_mov_b16_e32 v75.h, v29.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s17, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[24:27], 0 offen
	buffer_store_b16 v53, v20, s[24:27], 0 offen
	buffer_store_b16 v75, v22, s[24:27], 0 offen
	buffer_store_b16 v42, v23, s[24:27], 0 offen
	buffer_store_b16 v74, v18, s[24:27], 0 offen
	buffer_store_b16 v45, v11, s[24:27], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s16, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s15, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s14, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s13, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s12, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s11, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s10, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s9, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s8, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s7, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s6, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v0, v0, v17, 1
	v_mov_b16_e32 v76.l, v30.h
	v_mov_b16_e32 v76.h, v29.h
	v_mov_b16_e32 v77.l, v45.h
	v_mov_b16_e32 v77.h, v29.h
	v_mov_b16_e32 v78.l, v31.h
	v_mov_b16_e32 v78.h, v29.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v79.h, v29.h
	v_mov_b16_e32 v80.l, v10.h
	v_mov_b16_e32 v80.h, v29.h
	v_mov_b16_e32 v81.l, v37.h
	v_mov_b16_e32 v81.h, v29.h
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s1, s1, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s0, s0, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v83.l, v26.h
	v_mov_b16_e32 v83.h, v29.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b16_e32 v82.l, v21.h
	v_mov_b16_e32 v82.h, v29.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[24:27], 0 offen
	buffer_store_b16 v30, v15, s[24:27], 0 offen
	buffer_store_b16 v76, v11, s[24:27], 0 offen
	buffer_store_b16 v46, v13, s[24:27], 0 offen
	buffer_store_b16 v79, v12, s[24:27], 0 offen
	buffer_store_b16 v31, v9, s[24:27], 0 offen
	buffer_store_b16 v78, v8, s[24:27], 0 offen
	buffer_store_b16 v37, v7, s[24:27], 0 offen
	buffer_store_b16 v81, v6, s[24:27], 0 offen
	buffer_store_b16 v10, v5, s[24:27], 0 offen
	buffer_store_b16 v80, v4, s[24:27], 0 offen
	buffer_store_b16 v26, v3, s[24:27], 0 offen
	buffer_store_b16 v83, v2, s[24:27], 0 offen
	buffer_store_b16 v21, v1, s[24:27], 0 offen
	buffer_store_b16 v82, v0, s[24:27], 0 offen
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
		.amdhsa_next_free_vgpr 196
		.amdhsa_next_free_sgpr 51
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 196
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10336
; TotalNumSgprs: 53
; NumVgprs: 196
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 196
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
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     196
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
