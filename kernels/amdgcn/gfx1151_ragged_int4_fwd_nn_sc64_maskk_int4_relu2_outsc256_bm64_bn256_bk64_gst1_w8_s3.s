	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[52:53], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v59, 15, v0
	v_and_b32_e32 v62, 0x80, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
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
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s53, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s53, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s53, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s6, s2
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s7, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s52, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v0
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b128 s[36:39], s[0:1], 0x40
	s_load_b64 s[48:49], s[6:7], 0x0
	s_load_b64 s[50:51], s[4:5], 0x0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v60, 0xf0, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v61, 4, v59
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v49, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v25, 5, v0
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s54, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v26, 0xe0, v0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v15, s0, s34, v59
	v_add_co_u32 v3, vcc_lo, v1, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	v_add_co_u32 v11, vcc_lo, v1, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, 0, v2, vcc_lo
	v_add_co_u32 v13, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v16, null, s35, 0, s0
	v_add_co_ci_u32_e64 v14, null, 0, v2, vcc_lo
	v_add_co_u32 v17, vcc_lo, v1, 56
	v_add_co_ci_u32_e64 v18, null, 0, v2, vcc_lo
	v_add_co_u32 v19, vcc_lo, v15, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, 0, v16, vcc_lo
	v_add_co_u32 v21, vcc_lo, v15, 32
	v_add_co_ci_u32_e64 v22, null, 0, v16, vcc_lo
	v_add_co_u32 v23, vcc_lo, v15, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v24, null, 0, v16, vcc_lo
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[48:49], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[50:51], v[1:2]
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v1, s34, v59
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[48:49], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[50:51], v[3:4]
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s40, s4, s2
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v3, 32, v1
	s_addc_u32 s41, s5, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[48:49], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[50:51], v[5:6]
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v68, v3, s52
	v_dual_mov_b32 v150, 0 :: v_dual_lshlrev_b32 v3, 3, v0
	v_dual_mov_b32 v148, 0 :: v_dual_lshlrev_b32 v5, 1, v0
	v_lshrrev_b32_e32 v6, 2, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s55, vcc_lo, s11
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s11, s[40:41], 0x0
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v64, 3, v60
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v67, v2, s52
	v_bfe_i32 v2, v0, 7, 1
	v_dual_mov_b32 v146, 0 :: v_dual_and_b32 v3, 24, v3
	v_xor_b32_e32 v6, v5, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[48:49], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[50:51], v[17:18]
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v18, s34, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[48:49], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[50:51], v[9:10]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[48:49], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[50:51], v[7:8]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v69, v4, s52
	v_dual_mov_b32 v151, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v7, 5, v59
	v_xor_b32_e32 v3, v3, v64
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v8, 4, v26
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v6, 24, v6
	v_dual_mov_b32 v142, 0 :: v_dual_lshlrev_b32 v17, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[48:49], v[19:20]
	v_cmp_le_i64_e64 s9, s[48:49], v[21:22]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[50:51], v[19:20]
	v_cmp_gt_i64_e64 s21, s[50:51], v[21:22]
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v20, 8, v18
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v21, 16, v18
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[48:49], v[11:12]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[50:51], v[11:12]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s15, s3, s15
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s3, s53, 8
	v_xor_b32_e32 v2, v2, v4
	v_and_or_b32 v4, v5, 24, v7
	v_lshl_or_b32 v3, v59, 9, v3
	v_or3_b32 v6, v6, v8, v7
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v19, 2, v60
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v17, 32, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[48:49], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[50:51], v[23:24]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v66, v1, s52
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s3, v61
	v_mul_lo_u32 v100, v18, s54
	v_mul_lo_u32 v101, v20, s54
	v_mul_lo_u32 v102, v21, s54
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v20, 24, v18
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v21, 32, v18
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v22, 40, v18
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v23, 48, v18
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v18, 56, v18
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[48:49], v[13:14]
	v_cmp_le_i64_e64 s7, s[48:49], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[50:51], v[13:14]
	v_cmp_gt_i64_e64 s19, s[50:51], v[15:16]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s57, s4, s16
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s4, s54, s33
	v_xor_b32_e32 v9, 0x110, v2
	v_xor_b32_e32 v10, 8, v4
	v_xor_b32_e32 v11, 16, v4
	v_xor_b32_e32 v7, 24, v4
	v_xor_b32_e32 v8, 0x88, v3
	v_xor_b32_e32 v12, 0x110, v3
	v_xor_b32_e32 v13, 0x198, v3
	v_xor_b32_e32 v14, 8, v6
	v_xor_b32_e32 v15, 16, v6
	v_xor_b32_e32 v16, 24, v6
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v5, 28, v5
	v_add3_u32 v17, 0, v19, v17
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v19, 1, v60
	v_mul_lo_u32 v108, v20, s54
	v_mul_lo_u32 v110, v21, s54
	v_mul_lo_u32 v112, v22, s54
	v_mul_lo_u32 v114, v23, s54
	v_mul_lo_u32 v116, v18, s54
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[57:58], null, s4, s11, v[1:2]
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v65, 31, v0
	v_or_b32_e32 v89, s3, v0
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v118, 0, v2
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v119, 0, v9
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v121, 0, v4
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v123, 0, v10
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v125, 0, v11
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v127, 0, v7
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v129, 0, v3
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v130, 0, v8
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v131, 0, v12
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v132, 0, v13
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v133, 0, v6
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v135, 0, v14
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v137, 0, v15
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v139, 0, v16
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v145, v17, v5
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v147, 0, v19
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v71, 0
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s31, s31, 0xffff
	s_mov_b32 s16, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s56, s0, s12
	s_and_b32 s13, s1, s13
	s_and_b32 s14, s2, s14
	s_and_b32 s58, s5, s17
	s_and_b32 s59, s6, s18
	s_and_b32 vcc_lo, s7, s19
	s_and_b32 s0, s8, s20
	s_and_b32 s1, s9, s21
	s_and_b32 s2, s10, s22
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s60, s52, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s40, s24
	s_mov_b32 s41, s25
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	s_mov_b32 s44, s28
	s_mov_b32 s45, s29
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s61, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s3, s61, 5
	v_or_b32_e32 v2, s3, v65
	v_or_b32_e32 v1, s3, v64
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s5, s54, v2
	v_add_nc_u32_e32 v4, v100, v2
	v_add_nc_u32_e32 v5, v101, v2
	v_add_nc_u32_e32 v6, v102, v2
	v_add_nc_u32_e32 v7, v108, v2
	v_add_nc_u32_e32 v8, v110, v2
	v_add_nc_u32_e32 v9, v112, v2
	v_add_nc_u32_e32 v10, v114, v2
	v_add_nc_u32_e32 v2, v116, v2
	v_or_b32_e32 v3, 1, v1
	s_and_b32 s6, s55, s5
	s_and_b32 s7, s56, s5
	s_and_b32 s8, s13, s5
	s_and_b32 s9, s14, s5
	s_and_b32 s10, s15, s5
	s_and_b32 s11, s57, s5
	s_and_b32 s12, s58, s5
	s_and_b32 s5, s59, s5
	v_cmp_gt_i32_e64 s3, s54, v1
	v_cndmask_b32_e64 v11, 0x80000000, v2, s5
	v_mad_u64_u32 v[1:2], null, v1, s33, v[57:58]
	v_cmp_gt_i32_e64 s4, s54, v3
	v_mad_u64_u32 v[2:3], null, v3, s33, v[57:58]
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	v_cndmask_b32_e64 v5, 0x80000000, v5, s7
	v_cndmask_b32_e64 v6, 0x80000000, v6, s8
	v_cndmask_b32_e64 v7, 0x80000000, v7, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s11
	v_cndmask_b32_e64 v10, 0x80000000, v10, s12
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v12, 0x80000000, v2, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v13, v4, s[40:43], 0 offen
	buffer_load_u8 v14, v5, s[40:43], 0 offen
	buffer_load_u8 v15, v6, s[40:43], 0 offen
	buffer_load_u8 v16, v7, s[40:43], 0 offen
	buffer_load_u8 v17, v8, s[40:43], 0 offen
	buffer_load_u8 v9, v9, s[40:43], 0 offen
	buffer_load_u8 v10, v10, s[40:43], 0 offen
	buffer_load_u8 v11, v11, s[40:43], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v12, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s61, s60
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(9)
	ds_store_b8 v118, v13
	s_waitcnt vmcnt(7)
	ds_store_b8 v118, v15 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v118, v17 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v118, v10 offset:1536
	ds_store_b8 v119, v14
	ds_store_b8 v119, v16 offset:512
	ds_store_b8 v119, v9 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b8 v119, v11 offset:1536
	s_waitcnt vmcnt(0) lgkmcnt(0)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v29, v5, v1, 0x5010400
	v_perm_b32 v30, v6, v2, 0x5010400
	v_perm_b32 v2, v6, v2, 0x7030602
	v_perm_b32 v6, v7, v3, 0x5010400
	v_perm_b32 v3, v7, v3, 0x7030602
	v_perm_b32 v7, v8, v4, 0x5010400
	v_perm_b32 v4, v8, v4, 0x7030602
	v_lshrrev_b32_e32 v8, 8, v29
	v_perm_b32 v5, v5, v1, 0x7030602
	v_and_b16 v1.l, 0xff, v29.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_barrier
	ds_load_2addr_stride64_b64 v[25:28], v121 offset1:1
	ds_load_2addr_stride64_b64 v[21:24], v121 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v123 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v123 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v125 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v125 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[41:44], v127 offset1:1
	ds_load_2addr_stride64_b64 v[9:12], v127 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v1.h, 8, v8.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshrrev_b32_e32 v8, 8, v5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s33
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v129, v1
	v_lshrrev_b32_e32 v1, 24, v29
	v_and_b16 v1.h, 0xff, v29.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v1.h, v1.l
	v_lshlrev_b16 v1.h, 8, v8.l
	ds_store_b16 v129, v1 offset:32
	v_and_b16 v1.l, 0xff, v5.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v129, v1 offset:64
	v_lshrrev_b32_e32 v1, 24, v5
	v_and_b16 v1.h, 0xff, v5.h
	v_lshrrev_b32_e32 v5, 8, v30
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v1.l, v1.h, v1.l
	v_lshlrev_b16 v1.h, 8, v5.l
	v_lshrrev_b32_e32 v5, 8, v2
	ds_store_b16 v129, v1 offset:96
	v_and_b16 v1.l, 0xff, v30.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v130, v1
	v_lshrrev_b32_e32 v1, 24, v30
	v_and_b16 v1.h, 0xff, v30.h
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v1.l, v1.h, v1.l
	v_lshlrev_b16 v1.h, 8, v5.l
	ds_store_b16 v130, v1 offset:32
	v_and_b16 v1.l, 0xff, v2.l
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v130, v1 offset:64
	v_lshrrev_b32_e32 v1, 24, v2
	v_and_b16 v1.h, 0xff, v2.h
	v_lshrrev_b32_e32 v2, 8, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v1.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.h, 8, v2.l
	v_lshrrev_b32_e32 v2, 8, v3
	ds_store_b16 v130, v1 offset:96
	v_and_b16 v1.l, 0xff, v6.l
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v131, v1
	v_lshrrev_b32_e32 v1, 24, v6
	v_and_b16 v1.h, 0xff, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v1.h, v1.l
	v_lshlrev_b16 v1.h, 8, v2.l
	v_lshrrev_b32_e32 v2, 8, v7
	ds_store_b16 v131, v1 offset:32
	v_and_b16 v1.l, 0xff, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v131, v1 offset:64
	v_lshrrev_b32_e32 v1, 24, v3
	v_and_b16 v1.h, 0xff, v3.h
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v1.l, v1.h, v1.l
	v_lshlrev_b16 v1.h, 8, v2.l
	v_lshrrev_b32_e32 v2, 8, v4
	ds_store_b16 v131, v1 offset:96
	v_and_b16 v1.l, 0xff, v7.l
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v132, v1
	v_lshrrev_b32_e32 v1, 24, v7
	v_and_b16 v1.h, 0xff, v7.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v1.h, v1.l
	v_lshlrev_b16 v1.h, 8, v2.l
	ds_store_b16 v132, v1 offset:32
	v_and_b16 v1.l, 0xff, v4.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v132, v1 offset:64
	v_lshrrev_b32_e32 v1, 24, v4
	v_and_b16 v1.h, 0xff, v4.h
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v1.l, v1.h, v1.l
	ds_store_b16 v132, v1 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[53:56], v133 offset1:8
	ds_load_2addr_stride64_b64 v[49:52], v135 offset1:8
	ds_load_2addr_stride64_b64 v[45:48], v137 offset1:8
	ds_load_2addr_stride64_b64 v[29:32], v139 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[53:54], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[55:56], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[53:54], v[27:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[55:56], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[49:50], v[33:34], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[51:52], v[33:34], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[49:50], v[35:36], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[51:52], v[35:36], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[55:56], v[21:22], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[45:46], v[37:38], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[47:48], v[37:38], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[45:46], v[39:40], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[47:48], v[39:40], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[51:52], v[17:18], v[189:196] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[31:32], v[41:42], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[53:54], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[17:18], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[47:48], v[13:14], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[55:56], v[23:24], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[197:204], v[49:50], v[19:20], v[197:204] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[13:14], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[31:32], v[9:10], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[51:52], v[19:20], v[205:212] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[29:30], v[41:42], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[45:46], v[15:16], v[197:204] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[29:30], v[9:10], v[33:40] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v9, v165
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v165, s61, v66, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v10, v166
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v166, s61, v67, 1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[205:212], v[47:48], v[15:16], v[205:212] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[29:30], v[11:12], v[197:204] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v165, 0x80000000, v165, vcc_lo
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v1, v157
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v166, 0x80000000, v166, s0
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[205:212], v[31:32], v[11:12], v[205:212] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v11, v167
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v165, v165, s[44:47], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v12, v168
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v166, v166, s[44:47], 0 offen
	v_add_lshl_u32 v167, s61, v68, 1
	v_add_lshl_u32 v168, s61, v69, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v13, v169
	v_cvt_f32_i32_e32 v3, v159
	v_cvt_f32_i32_e32 v8, v164
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v167, 0x80000000, v167, s1
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v212
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[173:180], v[29:30], v[43:44], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[31:32], v[43:44], v[181:188] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v167, v167, s[44:47], 0 offen
	buffer_load_u16 v168, v168, s[44:47], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v2, v158
	v_cvt_f32_i32_e32 v4, v160
	v_cvt_f32_i32_e32 v5, v161
	v_cvt_f32_i32_e32 v6, v162
	v_cvt_f32_i32_e32 v7, v163
	v_cvt_f32_i32_e32 v14, v170
	v_cvt_f32_i32_e32 v15, v171
	v_cvt_f32_i32_e32 v16, v172
	v_cvt_f32_i32_e32 v17, v173
	v_cvt_f32_i32_e32 v18, v174
	v_cvt_f32_i32_e32 v19, v175
	v_cvt_f32_i32_e32 v20, v176
	v_cvt_f32_i32_e32 v21, v177
	v_cvt_f32_i32_e32 v22, v178
	v_cvt_f32_i32_e32 v23, v179
	v_cvt_f32_i32_e32 v24, v180
	v_cvt_f32_i32_e32 v25, v181
	v_cvt_f32_i32_e32 v26, v182
	v_cvt_f32_i32_e32 v27, v183
	v_cvt_f32_i32_e32 v28, v184
	v_cvt_f32_i32_e32 v30, v186
	v_cvt_f32_i32_e32 v29, v185
	v_cvt_f32_i32_e32 v31, v187
	v_cvt_f32_i32_e32 v32, v188
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v189
	v_cvt_f32_i32_e32 v42, v190
	v_cvt_f32_i32_e32 v43, v191
	v_cvt_f32_i32_e32 v44, v192
	v_cvt_f32_i32_e32 v45, v193
	v_cvt_f32_i32_e32 v46, v194
	v_cvt_f32_i32_e32 v47, v195
	v_cvt_f32_i32_e32 v48, v196
	v_cvt_f32_i32_e32 v49, v197
	v_cvt_f32_i32_e32 v50, v198
	v_cvt_f32_i32_e32 v51, v199
	v_cvt_f32_i32_e32 v52, v200
	v_cvt_f32_i32_e32 v53, v201
	v_cvt_f32_i32_e32 v54, v202
	v_cvt_f32_i32_e32 v55, v203
	v_cvt_f32_i32_e32 v56, v204
	v_cvt_f32_i32_e32 v157, v205
	v_cvt_f32_i32_e32 v158, v206
	v_cvt_f32_i32_e32 v159, v207
	v_cvt_f32_i32_e32 v160, v208
	v_cvt_f32_i32_e32 v161, v209
	v_cvt_f32_i32_e32 v162, v210
	v_cvt_f32_i32_e32 v163, v211
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s61, s61, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s61, s52
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v169, v1, v165 :: v_dual_lshlrev_b32 v166, 16, v166
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v1, v89, s3, 1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v171, v3, v165
	v_mul_f32_e32 v170, v2, v165
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v172, v4, v165 :: v_dual_mul_f32 v17, v17, v166
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v173, v5, v165 :: v_dual_mul_f32 v18, v18, v166
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v174, v6, v165 :: v_dual_lshlrev_b32 v167, 16, v167
	v_mul_f32_e32 v19, v19, v166
	v_dual_mul_f32 v175, v7, v165 :: v_dual_mul_f32 v20, v20, v166
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v164, v164, v168
	v_dual_mul_f32 v176, v8, v165 :: v_dual_mul_f32 v21, v21, v166
	v_dual_mul_f32 v177, v9, v165 :: v_dual_mul_f32 v22, v22, v166
	v_dual_mul_f32 v178, v10, v165 :: v_dual_mul_f32 v23, v23, v166
	v_dual_mul_f32 v179, v11, v165 :: v_dual_mul_f32 v24, v24, v166
	v_dual_mul_f32 v180, v12, v165 :: v_dual_mul_f32 v25, v25, v166
	v_dual_mul_f32 v181, v13, v165 :: v_dual_mul_f32 v26, v26, v166
	v_dual_mul_f32 v182, v14, v165 :: v_dual_mul_f32 v27, v27, v166
	v_dual_mul_f32 v183, v15, v165 :: v_dual_mul_f32 v28, v28, v166
	v_dual_mul_f32 v165, v16, v165 :: v_dual_mul_f32 v30, v30, v166
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v29, v29, v166 :: v_dual_mul_f32 v34, v34, v167
	v_dual_mul_f32 v31, v31, v166 :: v_dual_mul_f32 v36, v36, v167
	v_dual_mul_f32 v32, v32, v166 :: v_dual_mul_f32 v33, v33, v167
	v_dual_mul_f32 v35, v35, v167 :: v_dual_mul_f32 v50, v50, v168
	v_dual_mul_f32 v37, v37, v167 :: v_dual_mul_f32 v52, v52, v168
	v_dual_mul_f32 v38, v38, v167 :: v_dual_mul_f32 v49, v49, v168
	v_dual_mul_f32 v39, v39, v167 :: v_dual_mul_f32 v54, v54, v168
	v_dual_mul_f32 v40, v40, v167 :: v_dual_mul_f32 v51, v51, v168
	v_dual_mul_f32 v41, v41, v167 :: v_dual_mul_f32 v56, v56, v168
	v_dual_mul_f32 v42, v42, v167 :: v_dual_mul_f32 v53, v53, v168
	v_dual_mul_f32 v43, v43, v167 :: v_dual_mul_f32 v158, v158, v168
	v_dual_mul_f32 v44, v44, v167 :: v_dual_mul_f32 v55, v55, v168
	v_dual_mul_f32 v45, v45, v167 :: v_dual_mul_f32 v160, v160, v168
	v_dual_mul_f32 v46, v46, v167 :: v_dual_mul_f32 v157, v157, v168
	v_dual_mul_f32 v47, v47, v167 :: v_dual_mul_f32 v162, v162, v168
	v_dual_mul_f32 v48, v48, v167 :: v_dual_mul_f32 v159, v159, v168
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v145, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v147
	ds_load_b128 v[5:8], v147 offset:16
	ds_load_b128 v[9:12], v147 offset:512
	ds_load_b128 v[13:16], v147 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v161, v161, v168
	v_mul_f32_e32 v163, v163, v168
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v63, v169, v1 :: v_dual_fmac_f32 v154, v172, v4
	v_dual_fmac_f32 v156, v170, v2 :: v_dual_fmac_f32 v155, v171, v3
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v150, v176, v8 :: v_dual_fmac_f32 v153, v173, v5
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v148, v178, v10
	v_dual_fmac_f32 v152, v174, v6 :: v_dual_fmac_f32 v151, v175, v7
	v_dual_fmac_f32 v144, v180, v12 :: v_dual_fmac_f32 v149, v177, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v146, v179, v11 :: v_dual_fmac_f32 v143, v181, v13
	v_dual_fmac_f32 v142, v182, v14 :: v_dual_fmac_f32 v141, v183, v15
	v_fmac_f32_e32 v140, v165, v16
	v_dual_fmac_f32 v138, v17, v1 :: v_dual_fmac_f32 v115, v26, v10
	v_dual_fmac_f32 v136, v18, v2 :: v_dual_fmac_f32 v117, v25, v9
	v_dual_fmac_f32 v134, v19, v3 :: v_dual_fmac_f32 v111, v28, v12
	v_dual_fmac_f32 v128, v20, v4 :: v_dual_fmac_f32 v113, v27, v11
	v_dual_fmac_f32 v126, v21, v5 :: v_dual_fmac_f32 v107, v30, v14
	v_dual_fmac_f32 v124, v22, v6 :: v_dual_fmac_f32 v109, v29, v13
	v_dual_fmac_f32 v122, v23, v7 :: v_dual_fmac_f32 v105, v32, v16
	v_dual_fmac_f32 v120, v24, v8 :: v_dual_fmac_f32 v103, v34, v2
	v_dual_fmac_f32 v106, v31, v15 :: v_dual_fmac_f32 v97, v37, v5
	v_dual_fmac_f32 v104, v33, v1 :: v_dual_fmac_f32 v99, v35, v3
	v_dual_fmac_f32 v98, v36, v4 :: v_dual_fmac_f32 v95, v39, v7
	v_dual_fmac_f32 v96, v38, v6 :: v_dual_fmac_f32 v93, v41, v9
	v_dual_fmac_f32 v94, v40, v8 :: v_dual_fmac_f32 v91, v43, v11
	v_dual_fmac_f32 v92, v42, v10 :: v_dual_fmac_f32 v85, v48, v16
	v_dual_fmac_f32 v90, v44, v12 :: v_dual_fmac_f32 v87, v46, v14
	v_dual_fmac_f32 v88, v45, v13 :: v_dual_fmac_f32 v83, v50, v2
	v_dual_fmac_f32 v86, v47, v15 :: v_dual_fmac_f32 v81, v52, v4
	v_dual_fmac_f32 v84, v49, v1 :: v_dual_fmac_f32 v79, v54, v6
	v_dual_fmac_f32 v82, v51, v3 :: v_dual_fmac_f32 v77, v56, v8
	v_dual_fmac_f32 v80, v53, v5 :: v_dual_fmac_f32 v75, v158, v10
	v_dual_fmac_f32 v78, v55, v7 :: v_dual_fmac_f32 v73, v160, v12
	v_dual_fmac_f32 v76, v157, v9 :: v_dual_fmac_f32 v71, v162, v14
	v_fmac_f32_e32 v74, v159, v11
	v_fmac_f32_e32 v72, v161, v13
	v_fmac_f32_e32 v70, v163, v15
	v_fmac_f32_e32 v58, v164, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v35, v99, v99 :: v_dual_max_f32 v36, v98, v98
	v_dual_max_f32 v37, v97, v97 :: v_dual_max_f32 v38, v96, v96
	v_dual_max_f32 v39, v95, v95 :: v_dual_max_f32 v40, v93, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v41, v92, v92 :: v_dual_max_f32 v42, v91, v91
	v_dual_max_f32 v46, 0, v39 :: v_dual_max_f32 v39, v94, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v43, v90, v90 :: v_dual_max_f32 v90, 0, v40
	v_dual_max_f32 v91, 0, v41 :: v_dual_max_f32 v40, v87, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v89, 0, v39 :: v_dual_max_f32 v92, 0, v42
	v_dual_max_f32 v93, 0, v43 :: v_dual_max_f32 v42, v85, v85
	v_max_f32_e32 v41, v86, v86
	v_max_f32_e32 v39, v88, v88
	v_max_f32_e32 v43, v84, v84
	v_max_f32_e32 v85, 0, v40
	v_dual_max_f32 v87, 0, v42 :: v_dual_max_f32 v42, v80, v80
	v_max_f32_e32 v86, 0, v41
	v_max_f32_e32 v84, 0, v39
	v_max_f32_e32 v40, v82, v82
	v_dual_max_f32 v88, 0, v43 :: v_dual_max_f32 v41, v81, v81
	v_max_f32_e32 v39, v83, v83
	v_max_f32_e32 v43, v79, v79
	v_dual_max_f32 v3, v155, v155 :: v_dual_max_f32 v4, v154, v154
	v_dual_max_f32 v5, v153, v153 :: v_dual_max_f32 v6, v152, v152
	v_dual_max_f32 v7, v151, v151 :: v_dual_max_f32 v8, v150, v150
	v_max_f32_e32 v9, v149, v149
	v_dual_max_f32 v15, v141, v141 :: v_dual_max_f32 v16, v140, v140
	v_dual_max_f32 v17, v138, v138 :: v_dual_max_f32 v18, v136, v136
	v_max_f32_e32 v19, v134, v134
	v_dual_max_f32 v25, v117, v117 :: v_dual_max_f32 v26, v115, v115
	v_dual_max_f32 v27, v113, v113 :: v_dual_max_f32 v28, v111, v111
	v_max_f32_e32 v29, v109, v109
	v_dual_max_f32 v83, 0, v40 :: v_dual_max_f32 v94, 0, v41
	v_dual_max_f32 v82, 0, v39 :: v_dual_max_f32 v95, 0, v42
	v_max_f32_e32 v42, v75, v75
	v_max_f32_e32 v40, v77, v77
	v_dual_max_f32 v96, 0, v43 :: v_dual_max_f32 v41, v76, v76
	v_max_f32_e32 v39, v78, v78
	v_max_f32_e32 v43, v74, v74
	v_dual_max_f32 v1, v63, v63 :: v_dual_max_f32 v2, v156, v156
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v148, v148 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v144, v144 :: v_dual_max_f32 v11, v146, v146
	v_dual_max_f32 v13, v143, v143 :: v_dual_max_f32 v14, v142, v142
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, v128, v128 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, v124, v124 :: v_dual_max_f32 v21, v126, v126
	v_dual_max_f32 v24, v120, v120 :: v_dual_max_f32 v23, v122, v122
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v20, 0, v20
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_max_f32_e32 v32, v105, v105
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v30, v107, v107
	v_dual_max_f32 v31, v106, v106 :: v_dual_max_f32 v34, v103, v103
	v_max_f32_e32 v33, v104, v104
	v_dual_max_f32 v97, 0, v40 :: v_dual_max_f32 v98, 0, v41
	v_dual_max_f32 v74, 0, v39 :: v_dual_max_f32 v39, v73, v73
	v_dual_max_f32 v40, v72, v72 :: v_dual_max_f32 v99, 0, v42
	v_max_f32_e32 v100, 0, v43
	v_dual_max_f32 v42, v70, v70 :: v_dual_max_f32 v41, v71, v71
	v_dual_max_f32 v43, v58, v58 :: v_dual_mul_f32 v54, v4, v4
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_max_f32_e32 v12, 0, v12
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v101, 0, v39
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v50, v2, v2
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v102, 0, v40
	v_dual_max_f32 v104, 0, v42 :: v_dual_max_f32 v103, 0, v41
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v58, v6, v6 :: v_dual_max_f32 v105, 0, v43
	v_dual_mul_f32 v68, v10, v10 :: v_dual_mul_f32 v49, v1, v1
	v_mul_f32_e32 v70, v11, v11
	v_dual_mul_f32 v53, v3, v3 :: v_dual_mul_f32 v76, v14, v14
	v_dual_mul_f32 v57, v5, v5 :: v_dual_mul_f32 v80, v16, v16
	v_dual_mul_f32 v81, v7, v7 :: v_dual_mul_f32 v78, v17, v17
	v_dual_mul_f32 v65, v8, v8 :: v_dual_mul_f32 v72, v19, v19
	v_dual_mul_f32 v67, v9, v9 :: v_dual_mul_f32 v66, v22, v22
	v_dual_mul_f32 v73, v12, v12 :: v_dual_mul_f32 v64, v23, v23
	v_dual_mul_f32 v75, v13, v13 :: v_dual_mul_f32 v52, v27, v27
	v_dual_mul_f32 v79, v15, v15 :: v_dual_mul_f32 v56, v25, v25
	v_dual_mul_f32 v77, v18, v18 :: v_dual_mul_f32 v48, v29, v29
	v_dual_mul_f32 v71, v20, v20 :: v_dual_mul_f32 v42, v34, v34
	v_dual_mul_f32 v69, v21, v21 :: v_dual_mul_f32 v44, v32, v32
	v_dual_mul_f32 v63, v24, v24 :: v_dual_mul_f32 v38, v38, v38
	v_dual_mul_f32 v55, v26, v26 :: v_dual_mul_f32 v40, v36, v36
	v_dual_mul_f32 v51, v28, v28 :: v_dual_mul_f32 v36, v89, v89
	v_dual_mul_f32 v47, v30, v30 :: v_dual_mul_f32 v34, v91, v91
	v_dual_mul_f32 v45, v31, v31 :: v_dual_mul_f32 v32, v93, v93
	v_dual_mul_f32 v43, v33, v33 :: v_dual_mul_f32 v28, v87, v87
	v_dual_mul_f32 v41, v35, v35 :: v_dual_mul_f32 v30, v85, v85
	v_dual_mul_f32 v39, v37, v37 :: v_dual_mul_f32 v26, v82, v82
	v_dual_mul_f32 v37, v46, v46 :: v_dual_mul_f32 v22, v96, v96
	v_dual_mul_f32 v35, v90, v90 :: v_dual_mul_f32 v20, v97, v97
	v_dual_mul_f32 v33, v92, v92 :: v_dual_mul_f32 v24, v94, v94
	v_dual_mul_f32 v31, v84, v84 :: v_dual_mul_f32 v18, v99, v99
	v_dual_mul_f32 v29, v86, v86 :: v_dual_mul_f32 v8, v104, v104
	v_dual_mul_f32 v27, v88, v88 :: v_dual_mul_f32 v10, v102, v102
	v_mul_f32_e32 v25, v83, v83
	v_mul_f32_e32 v23, v95, v95
	v_mul_f32_e32 v21, v74, v74
	v_mul_f32_e32 v19, v98, v98
	v_mul_f32_e32 v15, v100, v100
	v_mul_f32_e32 v11, v101, v101
	v_mul_f32_e32 v9, v103, v103
	v_mul_f32_e32 v7, v105, v105
	v_mov_b32_e32 v1, v62
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v50, v50 :: v_dual_max_f32 v3, v49, v49
	v_max_f32_e32 v12, v78, v78
	v_max3_f32 v4, v54, v57, v58
	v_max3_f32 v5, v68, v70, v73
	v_max3_f32 v6, v75, v76, v79
	v_dual_max_f32 v2, v3, v2 :: v_dual_max_f32 v3, v77, v77
	v_max3_f32 v16, v55, v52, v51
	v_max3_f32 v17, v48, v47, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v5, v5, v6, v80
	v_max3_f32 v2, v2, v53, v4
	v_dual_max_f32 v3, v12, v3 :: v_dual_max_f32 v4, v42, v42
	v_max3_f32 v12, v71, v69, v66
	v_max_f32_e32 v6, v43, v43
	v_max3_f32 v14, v64, v63, v56
	v_max3_f32 v13, v81, v65, v67
	v_max3_f32 v46, v34, v33, v32
	v_max3_f32 v3, v3, v72, v12
	v_max3_f32 v12, v16, v17, v44
	v_max3_f32 v62, v31, v30, v29
	v_max_f32_e32 v17, v26, v26
	v_max3_f32 v16, v37, v36, v35
	v_max3_f32 v2, v2, v13, v5
	v_max3_f32 v3, v3, v14, v12
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, v40, v39, v38
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v13, v18, v15, v11
	v_max3_f32 v14, v10, v9, v8
	v_max3_f32 v12, v21, v20, v19
	v_max3_f32 v4, v4, v41, v6
	v_max3_f32 v6, v46, v62, v28
	v_max_f32_e32 v46, v27, v27
	v_max3_f32 v13, v13, v14, v7
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v62, 8, v0
	v_lshrrev_b32_e32 v83, 3, v1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v16, v6
	v_max3_f32 v6, v24, v23, v22
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v16, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v46, v17 :: v_dual_lshlrev_b32 v46, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v17, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max3_f32 v5, v5, v25, v6
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v16, v17, v17 :: v_dual_and_b32 v17, 0x60, v0
	v_max_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v5, v5, v12, v13
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, v4, v16
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v16, 4, v0
	s_barrier
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v6
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v84, v16, 6, 0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v5, v5, v6 :: v_dual_and_b32 v12, 3, v0
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v14, v12, 9, 0
	v_lshlrev_b32_e32 v13, 5, v12
	v_lshl_add_u32 v12, v12, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v74, v16, 2, v14
	v_and_or_b32 v46, 0x680, v46, v13
	v_lshlrev_b32_e32 v14, 1, v1
	v_xor_b32_e32 v82, v13, v17
	v_add_nc_u32_e32 v1, 0, v1
	v_lshl_add_u32 v74, v62, 4, v74
	v_xor_b32_e32 v46, v46, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v74, v14, v82
	v_add3_u32 v46, v84, v83, v46
	ds_store_b128 v6, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v46
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v74, v4
	v_mov_b32_e32 v46, v3
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v82, v5, v5
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v46, v46 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v5, v5, v5
	v_max_f32_e32 v2, v2, v6
	v_max_f32_e32 v6, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v3, v3, v46
	v_max_f32_e32 v5, v82, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v46, v2
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v74, v3
	v_mov_b32_e32 v82, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v46, v46, v46
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v2, v2, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v46, v82, v82
	v_dual_max_f32 v3, v3, v74 :: v_dual_mov_b32 v74, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v4, v6
	v_dual_max_f32 v5, v5, v46 :: v_dual_mov_b32 v82, v3
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v62, 3, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v46, v5
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v82, v82
	v_max_f32_e32 v2, v2, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v46, v46, v46
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v74, 1, v17
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v4, v4, v6
	v_dual_max_f32 v5, v5, v46 :: v_dual_lshlrev_b32 v6, 5, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v74, v62
	v_add3_u32 v6, v12, v6, v62
.Ltmp35:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v12, 4, v60
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v1, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v6
.Ltmp37:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v5, 63, v0
	v_or_b32_e32 v4, 48, v12
	v_or_b32_e32 v62, 32, v12
	v_or_b32_e32 v74, 16, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, v84, v84 :: v_dual_max_f32 v6, 0x2b8cbccc, v1
	v_max_f32_e32 v82, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v84, vcc_lo, v6, 0x40e00000, v6
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v16
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s34, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v16, v46, 1.0
	v_fmac_f32_e32 v46, v3, v46
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v90, v84, v46
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s0, s34, v62
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v62, v83, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[48:49], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[50:51], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v3, -v16, v90, v84
	v_dual_max_f32 v62, 0x2b8cbccc, v62 :: v_dual_max_f32 v83, v85, v85
	v_fma_f32 v85, -v88, v89, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[48:49], v[86:87]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v90, v3, v46
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v62
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v74
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v74, 0x2b8cbccc, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v16, -v16, v90, v84
	v_fmac_f32_e32 v89, v85, v89
	v_rcp_f32_e32 v83, v91
	v_div_scale_f32 v84, s6, v82, 0x40e00000, v82
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v74
	v_div_fmas_f32 v16, v16, v46, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v84, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v90, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[50:51], v[86:87]
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v86, -v91, v83, 1.0
	v_div_fixup_f32 v6, v16, 0x40e00000, v6
	v_fma_f32 v16, -v88, v46, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v87.h, 0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[48:49], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v86, v83
	v_div_scale_f32 v86, s7, v62, 0x40e00000, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v85, v90, 1.0
	v_fmac_f32_e32 v46, v16, v89
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v16.l, v6.h
	v_mov_b16_e32 v16.h, v87.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v93, v86, v83 :: v_dual_fmac_f32 v90, v92, v90
	v_div_scale_f32 v92, s8, v74, 0x40e00000, v74
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[50:51], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v16
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v3, -v88, v46, v84
	v_fma_f32 v16, -v91, v93, v86
	v_mul_f32_e32 v84, v92, v90
	s_mov_b32 vcc_lo, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v6, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v46, v3, v89, v46
	v_fmac_f32_e32 v93, v16, v83
	v_fma_f32 v16, -v85, v84, v92
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v88, 0xffff0000, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v46, v46, 0x40e00000, v82
	v_fma_f32 v82, -v91, v93, v86
	v_fmac_f32_e32 v84, v16, v90
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v88, v88, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v16, v82, v83, v93
	v_fma_f32 v82, -v85, v84, v92
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v87.l, v46.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v16, v16, 0x40e00000, v62
	v_div_fmas_f32 v62, v82, v90, v84
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v88, v88, v50
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v62, v62, 0x40e00000, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v89, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v86, v83, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v87
	v_mov_b16_e32 v74.l, v16.h
	v_mov_b16_e32 v74.h, v87.h
	v_mov_b16_e32 v87.l, v62.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v49, v88, v49
	v_div_scale_f32 v91, null, v88, v88, v53
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[48:49], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[50:51], v[3:4]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v3, v46, v82, 0x7fff
	v_and_b32_e32 v4, 1, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v85, v83
	v_fma_f32 v46, -v84, v89, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v74, 1, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v93, null, v88, v88, v54
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v16, v16, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v86, v90, v85
	v_fmac_f32_e32 v89, v46, v89
	v_div_scale_f32 v94, s8, v50, v88, v50
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v62, v74, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v62, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v90, v87, v83 :: v_dual_mul_f32 v87, v94, v89
	v_fma_f32 v95, -v91, v92, 1.0
	v_div_scale_f32 v97, null, v88, v88, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v86, v90, v85
	v_fma_f32 v86, -v84, v87, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, s9, v53, v88, v53
	v_fma_f32 v96, -v93, v62, 1.0
	v_div_fmas_f32 v83, v85, v83, v90
	v_fmac_f32_e32 v87, v86, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v95, v92
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v62, v96, v62
	v_div_scale_f32 v90, s10, v54, v88, v54
	v_div_scale_f32 v96, null, v88, v88, v58
	v_div_fixup_f32 v49, v83, v88, v49
	v_fma_f32 v83, -v84, v87, v94
	v_fma_f32 v84, -v91, v85, v95
	v_mul_f32_e32 v94, v90, v62
	v_rcp_f32_e32 v98, v96
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v99, -v97, v86, 1.0
	v_div_fmas_f32 v83, v83, v89, v87
	v_fmac_f32_e32 v85, v84, v92
	v_fma_f32 v84, -v93, v94, v90
	v_div_scale_f32 v87, s8, v57, v88, v57
	v_fmac_f32_e32 v86, v99, v86
	v_div_fixup_f32 v50, v83, v88, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v96, v98, 1.0
	v_fma_f32 v83, -v91, v85, v95
	v_fmac_f32_e32 v94, v84, v62
	v_div_scale_f32 v91, null, v88, v88, v81
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v84, v87, v86
	v_fmac_f32_e32 v98, v89, v98
	v_div_scale_f32 v89, s11, v58, v88, v58
	v_div_fmas_f32 v83, v83, v92, v85
	v_fma_f32 v85, -v93, v94, v90
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v95, null, v88, v88, v65
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v90, -v97, v84, v87
	v_mul_f32_e32 v93, v89, v98
	v_div_fmas_f32 v62, v85, v62, v94
	v_rcp_f32_e32 v85, v95
	v_div_fixup_f32 v53, v83, v88, v53
	v_fmac_f32_e32 v84, v90, v86
	v_fma_f32 v90, -v96, v93, v89
	v_fma_f32 v94, -v91, v92, 1.0
	v_div_fixup_f32 v54, v62, v88, v54
	v_div_scale_f32 v83, s9, v81, v88, v81
	v_fma_f32 v62, -v97, v84, v87
	v_fmac_f32_e32 v93, v90, v98
	v_fmac_f32_e32 v92, v94, v92
	v_fma_f32 v87, -v95, v85, 1.0
	v_div_scale_f32 v90, null, v88, v88, v67
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v88, v88, v68
	v_div_fmas_f32 v62, v62, v86, v84
	v_fma_f32 v84, -v96, v93, v89
	v_mul_f32_e32 v86, v83, v92
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v89, s8, v65, v88, v65
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v57, v62, v88, v57
	v_div_fmas_f32 v84, v84, v98, v93
	v_fma_f32 v93, -v91, v86, v83
	v_mul_f32_e32 v96, v89, v85
	v_rcp_f32_e32 v98, v94
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_fmac_f32_e32 v86, v93, v92
	v_fma_f32 v62, -v95, v96, v89
	v_div_fixup_f32 v58, v84, v88, v58
	v_div_scale_f32 v84, s10, v67, v88, v67
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v93, null, v88, v88, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v94, v98, 1.0
	v_fma_f32 v83, -v91, v86, v83
	v_dual_fmac_f32 v96, v62, v85 :: v_dual_mul_f32 v91, v84, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v99, v93
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s11, v68, v88, v68
	v_div_fmas_f32 v62, v83, v92, v86
	v_fma_f32 v83, -v95, v96, v89
	v_div_scale_f32 v95, null, v88, v88, v73
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v86, -v90, v91, v84
	v_mul_f32_e32 v89, v97, v98
	v_div_fmas_f32 v83, v83, v85, v96
	v_rcp_f32_e32 v85, v95
	v_fma_f32 v92, -v93, v99, 1.0
	v_fmac_f32_e32 v91, v86, v87
	v_fma_f32 v86, -v94, v89, v97
	v_div_fixup_f32 v62, v62, v88, v81
	v_div_fixup_f32 v65, v83, v88, v65
	v_fmac_f32_e32 v99, v92, v99
	v_div_scale_f32 v92, s8, v70, v88, v70
	v_fma_f32 v81, -v90, v91, v84
	v_fmac_f32_e32 v89, v86, v98
	v_fma_f32 v84, -v95, v85, 1.0
	v_div_scale_f32 v86, null, v88, v88, v75
	v_mul_f32_e32 v83, v92, v99
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v86
	v_div_fmas_f32 v81, v81, v87, v91
	v_fma_f32 v87, -v94, v89, v97
	v_fma_f32 v90, -v93, v83, v92
	v_div_scale_f32 v91, s9, v73, v88, v73
	v_div_scale_f32 v94, null, v88, v88, v76
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v90, v99
	v_div_fmas_f32 v87, v87, v98, v89
	v_rcp_f32_e32 v89, v94
	v_mul_f32_e32 v90, v91, v85
	v_fma_f32 v96, -v86, v84, 1.0
	v_div_fixup_f32 v67, v81, v88, v67
	v_div_fixup_f32 v68, v87, v88, v68
	v_fma_f32 v81, -v93, v83, v92
	v_fma_f32 v87, -v95, v90, v91
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v96, null, v88, v88, v79
	v_div_scale_f32 v92, s10, v75, v88, v75
	v_fma_f32 v93, -v94, v89, 1.0
	v_fmac_f32_e32 v90, v87, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v96
	v_div_scale_f32 v97, null, v88, v88, v80
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v89, v93, v89
	v_div_fmas_f32 v81, v81, v99, v83
	v_mul_f32_e32 v83, v92, v84
	v_div_scale_f32 v93, s8, v76, v88, v76
	v_rcp_f32_e32 v98, v97
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v70, v81, v88, v70
	v_fma_f32 v81, -v95, v90, v91
	v_fma_f32 v91, -v86, v83, v92
	v_mul_f32_e32 v95, v93, v89
	v_fma_f32 v99, -v96, v87, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v90
	v_fmac_f32_e32 v83, v91, v84
	v_fma_f32 v85, -v94, v95, v93
	v_fmac_f32_e32 v87, v99, v87
	v_div_scale_f32 v90, s9, v79, v88, v79
	v_fma_f32 v91, -v97, v98, 1.0
	v_div_fixup_f32 v73, v81, v88, v73
	v_fma_f32 v81, -v86, v83, v92
	v_fmac_f32_e32 v95, v85, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v90, v87 :: v_dual_fmac_f32 v98, v91, v98
	v_div_scale_f32 v91, null, v82, v82, v78
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v80, v88, v80
	v_div_fmas_f32 v81, v81, v84, v83
	v_fma_f32 v83, -v94, v95, v93
	v_fma_f32 v84, -v96, v85, v90
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v94, null, v82, v82, v77
	v_mul_f32_e32 v93, v86, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v87
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v94
	v_div_fmas_f32 v83, v83, v89, v95
	v_fma_f32 v89, -v97, v93, v86
	v_div_fixup_f32 v75, v81, v88, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v91, v92, 1.0
	v_fma_f32 v81, -v96, v85, v90
	v_div_fixup_f32 v76, v83, v88, v76
	v_fmac_f32_e32 v93, v89, v98
	v_div_scale_f32 v83, s8, v78, v82, v78
	v_fmac_f32_e32 v92, v95, v92
	v_fma_f32 v89, -v94, v84, 1.0
	v_div_scale_f32 v90, null, v82, v82, v72
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v82, v82, v71
	v_div_fmas_f32 v81, v81, v87, v85
	v_fma_f32 v85, -v97, v93, v86
	v_mul_f32_e32 v86, v83, v92
	v_fmac_f32_e32 v84, v89, v84
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v89, s9, v77, v82, v77
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v79, v81, v88, v79
	v_div_fmas_f32 v85, v85, v98, v93
	v_fma_f32 v93, -v91, v86, v83
	v_mul_f32_e32 v96, v89, v84
	v_rcp_f32_e32 v98, v95
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_fmac_f32_e32 v86, v93, v92
	v_fma_f32 v81, -v94, v96, v89
	v_div_fixup_f32 v80, v85, v88, v80
	v_div_scale_f32 v85, s10, v72, v82, v72
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v88, null, v82, v82, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v83, -v91, v86, v83
	v_fmac_f32_e32 v96, v81, v84
	v_mul_f32_e32 v81, v85, v87
	v_rcp_f32_e32 v91, v88
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s11, v71, v82, v71
	v_div_fmas_f32 v83, v83, v92, v86
	v_fma_f32 v86, -v94, v96, v89
	v_div_scale_f32 v97, null, v82, v82, v66
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v90, v81, v85
	v_mul_f32_e32 v92, v93, v98
	v_div_fmas_f32 v84, v86, v84, v96
	v_rcp_f32_e32 v86, v97
	v_fma_f32 v94, -v88, v91, 1.0
	v_fmac_f32_e32 v81, v89, v87
	v_fma_f32 v89, -v95, v92, v93
	v_div_fixup_f32 v78, v83, v82, v78
	v_div_fixup_f32 v77, v84, v82, v77
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s8, v69, v82, v69
	v_fma_f32 v83, -v90, v81, v85
	v_fmac_f32_e32 v92, v89, v98
	v_fma_f32 v85, -v97, v86, 1.0
	v_div_scale_f32 v89, null, v82, v82, v64
	v_mul_f32_e32 v84, v94, v91
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v89
	v_div_fmas_f32 v81, v83, v87, v81
	v_fma_f32 v83, -v95, v92, v93
	v_fma_f32 v87, -v88, v84, v94
	v_div_scale_f32 v93, null, v82, v82, v63
	v_div_scale_f32 v90, s9, v66, v82, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v87, v91
	v_rcp_f32_e32 v87, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v85, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v72, v81, v82, v72
	v_div_fmas_f32 v83, v83, v98, v92
	v_mul_f32_e32 v92, v90, v86
	v_fma_f32 v81, -v88, v84, v94
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v82, v82, v56
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v71, v83, v82, v71
	v_fma_f32 v83, -v97, v92, v90
	v_div_scale_f32 v88, s10, v64, v82, v64
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v81, v81, v91, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v83, v86 :: v_dual_mul_f32 v83, v88, v85
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v91, s8, v63, v82, v63
	v_div_scale_f32 v94, null, v82, v82, v55
	v_div_fixup_f32 v69, v81, v82, v69
	v_fma_f32 v81, -v97, v92, v90
	v_fma_f32 v90, -v89, v83, v88
	v_mul_f32_e32 v96, v91, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v81, v81, v86, v92
	v_fma_f32 v86, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s9, v56, v82, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v66, v81, v82, v66
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v81, -v89, v83, v88
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v86, v90, v84
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s11, v55, v82, v55
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v83, -v93, v96, v91
	v_fma_f32 v85, -v95, v86, v90
	v_div_scale_f32 v93, null, v82, v82, v51
	v_mul_f32_e32 v92, v88, v97
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	v_rcp_f32_e32 v85, v93
	v_div_scale_f32 v89, null, v82, v82, v52
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v64, v81, v82, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v81, -v95, v86, v90
	v_div_scale_f32 v90, null, v82, v82, v48
	v_fmac_f32_e32 v92, v87, v97
	v_fma_f32 v87, -v93, v85, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v86
	v_fma_f32 v84, -v94, v92, v88
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v90
	v_fma_f32 v96, -v89, v91, 1.0
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v97, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v96, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v90, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v96, v87
	v_div_fixup_f32 v63, v83, v82, v63
	v_div_scale_f32 v83, s8, v52, v82, v52
	v_div_scale_f32 v88, s9, v51, v82, v51
	v_div_scale_f32 v94, null, v82, v82, v47
	v_dual_mul_f32 v86, v83, v91 :: v_dual_mul_f32 v95, v88, v85
	v_div_fixup_f32 v56, v81, v82, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v97, v94
	v_div_fixup_f32 v55, v84, v82, v55
	v_fma_f32 v92, -v89, v86, v83
	v_fma_f32 v81, -v93, v95, v88
	v_div_scale_f32 v84, s10, v48, v82, v48
	s_mov_b32 vcc_lo, s8
	v_dual_fmac_f32 v86, v92, v91 :: v_dual_fmac_f32 v95, v81, v85
	v_dual_mul_f32 v81, v84, v87 :: v_dual_and_b32 v46, 0xffff0000, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v83, -v89, v86, v83
	v_div_scale_f32 v98, null, v82, v82, v44
	v_div_scale_f32 v92, null, v82, v82, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v47, v82, v47
	v_div_fmas_f32 v83, v83, v91, v86
	v_fma_f32 v86, -v93, v95, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v90, v81, v84
	v_mul_f32_e32 v91, v96, v97
	v_rcp_f32_e32 v89, v92
	v_div_fmas_f32 v85, v86, v85, v95
	v_rcp_f32_e32 v86, v98
	v_fmac_f32_e32 v81, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v52, v83, v82, v52
	v_div_fixup_f32 v51, v85, v82, v51
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v83, -v90, v81, v84
	v_fmac_f32_e32 v91, v88, v97
	v_fma_f32 v93, -v92, v89, 1.0
	v_div_scale_f32 v90, s9, v44, v82, v44
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_fmas_f32 v81, v83, v87, v81
	v_fma_f32 v83, -v94, v91, v96
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v89, v93, v89
	v_fmac_f32_e32 v86, v85, v86
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v93, s8, v45, v82, v45
	v_div_fmas_f32 v83, v83, v97, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v90, v86
	v_div_scale_f32 v88, null, v74, v74, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v93, v89
	v_div_scale_f32 v94, null, v74, v74, v42
	v_rcp_f32_e32 v85, v88
	v_div_fixup_f32 v48, v81, v82, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v87, -v92, v84, v93
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v47, v83, v82, v47
	v_fma_f32 v83, -v98, v91, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v88, v85, 1.0
	v_fmac_f32_e32 v91, v83, v86
	v_fma_f32 v81, -v92, v84, v93
	v_div_scale_f32 v92, s10, v43, v74, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v74, v74, v41
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fmas_f32 v81, v81, v89, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v92, v85
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v89, s8, v42, v74, v42
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v93, null, v74, v74, v40
	v_div_fixup_f32 v45, v81, v82, v45
	v_fma_f32 v81, -v98, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v81, v81, v86, v91
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s9, v41, v74, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v44, v81, v82, v44
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v81, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v82, v90, v84
	v_div_scale_f32 v88, null, v74, v74, v39
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s11, v40, v74, v40
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v82, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v74, v74, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v97 :: v_dual_fmac_f32 v82, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v83, v83, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v43, v81, v74, v43
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v81, -v95, v82, v90
	v_div_fixup_f32 v42, v83, v74, v42
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v83, s8, v39, v74, v39
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v74, v74, v37
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v84, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s9, v38, v74, v38
	v_div_scale_f32 v93, null, v74, v74, v36
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v82, v82, v97, v91
	v_fma_f32 v91, -v88, v84, v83
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v41, v81, v74, v41
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v74, v74, v35
	v_div_fixup_f32 v40, v82, v74, v40
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s10, v37, v74, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v83, -v88, v84, v83
	v_fmac_f32_e32 v94, v81, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v81, v82, v86 :: v_dual_fmac_f32 v96, v95, v96
	v_div_scale_f32 v95, s11, v36, v74, v36
	v_div_fmas_f32 v83, v83, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v74, v74, v34
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v90, v81, v82
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v35, v74, v35
	v_div_fixup_f32 v39, v83, v74, v39
	v_div_fixup_f32 v38, v84, v74, v38
	v_fma_f32 v82, -v90, v81, v82
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v74, v74, v33
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v34, v74, v34
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v74, v74, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v37, v81, v74, v37
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v36, v82, v74, v36
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s10, v33, v74, v33
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v74, v74, v31
	v_div_fmas_f32 v81, v81, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v74, v74, v30
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s8, v32, v74, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v35, v81, v74, v35
	v_fma_f32 v81, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v31, v74, v31
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v34, v81, v74, v34
	v_fma_f32 v81, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v74, v74, v29
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s11, v30, v74, v30
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v74, v74, v28
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v33, v81, v74, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v81, -v94, v85, v89
	v_div_fixup_f32 v32, v82, v74, v32
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s8, v29, v74, v29
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v46, v46, v26
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v46, v46, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, s9, v28, v74, v28
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v31, v81, v74, v31
	v_div_fixup_f32 v30, v83, v74, v30
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v81, -v93, v92, v87
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v46, v46, v24
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v46, v46, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_scale_f32 v81, s10, v27, v46, v27
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v95, -v94, v83, 1.0
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v93, v92, v87
	v_mul_f32_e32 v87, v81, v89
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v88, s8, v26, v46, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v86, v87, v81
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v87, v95, v89
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v25, v46, v25
	v_div_fixup_f32 v29, v82, v74, v29
	v_div_fixup_f32 v28, v84, v74, v28
	v_fma_f32 v74, -v86, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	v_div_scale_f32 v84, null, v46, v46, v23
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	v_fma_f32 v81, -v90, v92, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s9, v24, v46, v24
	v_div_fmas_f32 v74, v74, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_div_scale_f32 v87, null, v46, v46, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v82, v98
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v74, v46, v27
	v_fma_f32 v88, -v84, v81, 1.0
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s8, v23, v46, v23
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	v_mul_f32_e32 v74, v88, v81
	v_div_fixup_f32 v26, v83, v46, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v90, -v84, v74, v88
	v_div_fixup_f32 v25, v85, v46, v25
	v_div_scale_f32 v85, null, v46, v46, v21
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s10, v22, v46, v22
	v_div_fmas_f32 v82, v82, v98, v86
	v_fmac_f32_e32 v74, v90, v81
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v24, v82, v46, v24
	v_fma_f32 v82, -v84, v74, v88
	v_div_scale_f32 v90, null, v46, v46, v20
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v82, v81, v74
	v_div_scale_f32 v81, null, v46, v46, v19
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v82, s8, v21, v46, v21
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v46, v46, v18
	v_div_fixup_f32 v23, v74, v46, v23
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v81, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v74, v92
	v_div_scale_f32 v74, s9, v20, v46, v20
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v46, v46, v15
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v74, v92
	v_div_scale_f32 v95, s10, v19, v46, v19
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v74
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s11, v18, v46, v18
	v_div_fixup_f32 v22, v83, v46, v22
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v74, -v90, v89, v74
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s8, v15, v46, v15
	v_div_fmas_f32 v82, v82, v91, v87
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v97
	v_div_scale_f32 v87, null, v46, v46, v11
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v21, v82, v46, v21
	v_div_fmas_f32 v74, v74, v92, v89
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_div_fixup_f32 v20, v74, v46, v20
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v81, v46, v19
	v_div_fmas_f32 v84, v84, v94, v85
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v82, -v87, v89, 1.0
	v_div_scale_f32 v81, null, v46, v46, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v93, v83, v86
	v_div_fixup_f32 v18, v84, v46, v18
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v46, v46, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v74, v74, v97, v83
	v_div_scale_f32 v85, vcc_lo, v11, v46, v11
	v_rcp_f32_e32 v83, v81
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v74, v46, v15
	v_mul_f32_e32 v90, v85, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v46, v46, v8
	v_div_scale_f32 v91, null, v46, v46, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v90, v85
	v_fma_f32 v74, -v81, v83, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v82, v86, 1.0
	v_rcp_f32_e32 v88, v84
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v90, v94, v89
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v74, s8, v10, v46, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v87, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v84, v88, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v91, v93, 1.0
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v85, v46, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v77, v77, s8, 0x40e00000
	v_cvt_i32_f32_e32 v105, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s9, v9, v46, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v101, v22
	v_med3_f32 v11, v11, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v74, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s10, v8, v46, v8
	v_dual_fmac_f32 v98, v87, v86 :: v_dual_fmac_f32 v93, v97, v93
	v_div_scale_f32 v97, s11, v7, v46, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v33
	v_and_b32_e32 v33, 15, v71
	v_and_b32_e32 v71, 15, v101
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v81, v96, v74
	v_fma_f32 v82, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v92, v31
	v_and_b32_e32 v31, 15, v77
	v_and_b32_e32 v77, 15, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v99, v95, v88 :: v_dual_fmac_f32 v96, v94, v83
	v_mul_f32_e32 v100, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v84, v99, v95
	v_fma_f32 v74, -v81, v96, v74
	v_fma_f32 v81, -v91, v100, v97
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v78, v78, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v94, v88
	v_div_fmas_f32 v74, v74, v83, v96
	v_fmac_f32_e32 v100, v81, v93
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v99, v95
	v_div_fmas_f32 v82, v82, v86, v98
	v_fma_f32 v83, -v91, v100, v97
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v10, v74, v46, v10
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v9, v82, v46, v9
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v81, v46, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v83, v46, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v62
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v82, v41
	v_med3_f32 v58, v58, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v65
	v_rndne_f32_e32 v65, v67
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v58, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v81, v42
	v_cvt_i32_f32_e32 v103, v20
	v_cvt_i32_f32_e32 v15, v15
	v_and_b32_e32 v20, 15, v58
	v_and_b32_e32 v42, 15, v48
	v_and_b32_e32 v48, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v58, 10, v0
	v_and_b32_e32 v82, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v73
	v_rndne_f32_e32 v73, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_cvt_i32_f32_e32 v93, v30
	v_cvt_i32_f32_e32 v94, v29
	v_and_b32_e32 v29, 15, v76
	v_and_b32_e32 v30, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v58, 0x1800, v58
	v_lshlrev_b32_e32 v78, 6, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v76, 15, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v15, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v80, v43
	v_cvt_i32_f32_e32 v83, v40
	v_cvt_i32_f32_e32 v96, v27
	v_cvt_i32_f32_e32 v97, v26
	v_cvt_i32_f32_e32 v98, v25
	v_cvt_i32_f32_e32 v99, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v11, v61, v17
	v_add3_u32 v17, 0, v58, v78
	v_and_or_b32 v13, 0x1b00, v15, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v79, v44
	v_cvt_i32_f32_e32 v88, v35
	v_cvt_i32_f32_e32 v89, v34
	v_cvt_i32_f32_e32 v91, v32
	v_cvt_i32_f32_e32 v104, v19
	v_cvt_i32_f32_e32 v86, v37
	v_cvt_i32_f32_e32 v87, v36
	v_cvt_i32_f32_e32 v100, v23
	v_cvt_i32_f32_e32 v102, v21
	v_cvt_i32_f32_e32 v106, v10
	v_cvt_i32_f32_e32 v107, v9
	v_cvt_i32_f32_e32 v108, v8
	v_cvt_i32_f32_e32 v109, v7
	v_and_b32_e32 v7, 15, v46
	v_and_b32_e32 v8, 15, v49
	v_and_b32_e32 v9, 15, v50
	v_and_b32_e32 v10, 15, v53
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v19, 15, v57
	v_and_b32_e32 v21, 15, v62
	v_and_b32_e32 v23, 15, v67
	v_and_b32_e32 v24, 15, v68
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v34, 15, v69
	v_and_b32_e32 v35, 15, v66
	v_and_b32_e32 v36, 15, v64
	v_and_b32_e32 v37, 15, v63
	v_and_b32_e32 v43, 15, v47
	v_and_b32_e32 v46, 15, v80
	v_and_b32_e32 v47, 15, v81
	v_and_b32_e32 v49, 15, v83
	v_and_b32_e32 v66, 15, v96
	v_and_b32_e32 v67, 15, v97
	v_and_b32_e32 v68, 15, v98
	v_and_b32_e32 v69, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v11, v17, v11, v14
	v_xad_u32 v13, v13, v60, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v39
	v_cvt_i32_f32_e32 v85, v38
	v_cvt_i32_f32_e32 v95, v28
	v_and_b32_e32 v22, 15, v65
	v_and_b32_e32 v25, 15, v70
	v_and_b32_e32 v26, 15, v73
	v_and_b32_e32 v27, 15, v74
	v_and_b32_e32 v28, 15, v75
	v_and_b32_e32 v38, 15, v56
	v_and_b32_e32 v39, 15, v55
	v_and_b32_e32 v40, 15, v52
	v_and_b32_e32 v41, 15, v51
	v_and_b32_e32 v44, 15, v45
	v_and_b32_e32 v45, 15, v79
	v_and_b32_e32 v54, 15, v88
	v_and_b32_e32 v55, 15, v89
	v_and_b32_e32 v56, 15, v90
	v_and_b32_e32 v57, 15, v91
	v_and_b32_e32 v74, 15, v104
	v_and_b32_e32 v75, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v11, v[7:10]
	ds_store_b128 v11, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v13
	ds_load_b128 v[22:25], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[30:33]
	ds_store_b128 v11, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v13
	ds_load_b128 v[38:41], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[46:49]
	ds_store_b128 v11, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v13
	ds_load_b128 v[54:57], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[66:69]
	ds_store_b128 v11, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v13
	ds_load_b128 v[74:77], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[18:21]
	ds_store_b128 v11, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v13
	ds_load_b128 v[26:29], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[34:37]
	ds_store_b128 v11, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v13
	ds_load_b128 v[42:45], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v84
	v_and_b32_e32 v51, 15, v85
	v_and_b32_e32 v52, 15, v86
	v_and_b32_e32 v53, 15, v87
	v_and_b32_e32 v62, 15, v92
	v_and_b32_e32 v63, 15, v93
	v_and_b32_e32 v64, 15, v94
	v_and_b32_e32 v65, 15, v95
	v_and_b32_e32 v70, 15, v100
	v_and_b32_e32 v72, 15, v102
	v_and_b32_e32 v73, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[50:53]
	ds_store_b128 v11, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v13
	ds_load_b128 v[60:63], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v106
	v_and_b32_e32 v79, 15, v107
	v_and_b32_e32 v80, 15, v108
	v_and_b32_e32 v81, 15, v109
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v29, 4, v20
	v_lshl_or_b32 v29, v45, 4, v37
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v45, 3, v59
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v25, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, s34, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[70:73]
	ds_store_b128 v11, v[78:81] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v13
	ds_load_b128 v[78:81], v13 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v22, 4, v7
	v_lshl_or_b32 v8, v23, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s53, 7, v45
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v10
	v_add_nc_u32_e32 v13, 32, v10
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v9, v24, 4, v9
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v18, v27, 4, v18
	v_lshl_or_b32 v19, v28, 4, v19
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v10
	v_mad_u64_u32 v[10:11], null, v10, s8, v[7:8]
	v_mad_u64_u32 v[11:12], null, v12, s8, v[7:8]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[7:8]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v26, v42, 4, v34
	v_lshl_or_b32 v27, v43, 4, v35
	v_lshl_or_b32 v28, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s8, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v21.l
	v_and_b16 v4.l, 0xff, v9.l
	v_lshlrev_b16 v6.l, 8, v8.l
	v_and_b16 v7.l, 0xff, v15.l
	v_lshlrev_b16 v7.h, 8, v20.l
	v_and_b16 v8.l, 0xff, v19.l
	v_lshlrev_b16 v8.h, 8, v18.l
	v_and_b16 v9.l, 0xff, v17.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v38, 4, v30
	v_lshl_or_b32 v23, v39, 4, v31
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v34, v60, 4, v50
	v_lshl_or_b32 v35, v61, 4, v51
	v_lshl_or_b32 v36, v62, 4, v52
	v_lshl_or_b32 v37, v63, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v7.h, 8, v29.l
	v_and_b16 v8.l, 0xff, v28.l
	v_lshlrev_b16 v8.h, 8, v27.l
	v_and_b16 v9.l, 0xff, v26.l
	s_and_b32 s9, s37, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s36
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v54, 4, v46
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v78, 4, v70
	v_lshl_or_b32 v43, v79, 4, v71
	v_lshl_or_b32 v44, v80, 4, v72
	v_lshl_or_b32 v46, v81, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v25.l
	v_and_b16 v4.l, 0xff, v24.l
	v_lshlrev_b16 v6.l, 8, v23.l
	v_and_b16 v7.l, 0xff, v22.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v37.l
	v_and_b16 v8.l, 0xff, v36.l
	v_lshlrev_b16 v8.h, 8, v35.l
	v_and_b16 v9.l, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v74, 4, v66
	v_lshl_or_b32 v39, v75, 4, v67
	v_lshl_or_b32 v40, v76, 4, v68
	v_lshl_or_b32 v41, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v3.l, 8, v33.l
	v_and_b16 v4.l, 0xff, v32.l
	v_lshlrev_b16 v6.l, 8, v31.l
	v_and_b16 v7.l, 0xff, v30.l
	v_or_b16 v11.h, v8.l, v7.h
	v_or_b16 v11.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v46.l
	v_and_b16 v8.l, 0xff, v44.l
	v_lshlrev_b16 v8.h, 8, v43.l
	v_and_b16 v9.l, 0xff, v42.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v7.l, v6.l
	v_lshlrev_b16 v3.l, 8, v41.l
	v_and_b16 v4.l, 0xff, v40.l
	v_lshlrev_b16 v6.l, 8, v39.l
	v_and_b16 v7.l, 0xff, v38.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v82
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.l, v7.l, v6.l
	v_dual_cndmask_b32 v7, 0x80000000, v13 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[10:11], v12, s[8:11], 0 offen
	buffer_store_b64 v[14:15], v7, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v45
	v_mov_b16_e32 v4.l, v16.h
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v6, v9, v8, v45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v7, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[48:49], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[50:51], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s39, 0xffff
	s_mov_b32 s8, s38
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s53, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp38:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_next_free_vgpr 213
		.amdhsa_next_free_sgpr 62
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 213
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15420
; TotalNumSgprs: 64
; NumVgprs: 213
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 213
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     213
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
