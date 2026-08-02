	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v10, 15, v0
	v_and_b32_e32 v15, 8, v0
	v_lshlrev_b32_e32 v14, 4, v0
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
	s_sub_i32 s4, s41, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s11, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s11
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
	s_xor_b32 s4, s2, s11
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s9, s4, 31
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
	s_load_b64 s[12:13], s[0:1], 0x38
	s_xor_b32 s10, s3, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s41, s10, s9
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s41, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_mov_b32 s8, 0
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s12, s2
	s_addc_u32 s7, s13, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[36:37], s[4:5], 0x0
	s_load_b64 s[38:39], s[6:7], 0x0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_lshrrev_b32_e32 v9, 4, v0
	v_dual_mov_b32 v7, 0 :: v_dual_lshlrev_b32 v12, 4, v10
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v13, 3, v0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v53, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s11, s[0:1], 0x58
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v19, 2, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v3, s0, s34, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s24, s4, s2
	s_addc_u32 s25, s5, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v18, null, 0, v2, vcc_lo
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v1, 2, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s5, s[24:25], 0x0
	v_bfe_i32 v2, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v1, 0x37c, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[17:18]
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[5:6]
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v18, v2, v1
	v_lshlrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[38:39], v[5:6]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_mov_b32_e32 v16, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[3:4]
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v22, 28, v1
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v23, 32, v2
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s11, s5, v[9:10]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[3:4]
	v_cmp_gt_i64_e64 s7, s[38:39], v[7:8]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v3, s34, v10
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v8, 0x70, v14
	v_bfe_i32 v17, v0, 3, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s6, s40, s33
	v_mul_lo_u32 v1, s33, v1
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v4, 16, v3
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v5, 32, v3
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v6, 48, v3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s6, s6, s5
	s_lshl_b32 s7, s10, 8
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v19, s34, v19
	v_and_or_b32 v8, 0x88, v17, v8
	v_lshrrev_b32_e32 v17, 1, v0
	v_add3_u32 v2, s6, s7, v0
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v21, 2, v11
	v_mul_lo_u32 v6, s40, v6
	v_mul_lo_u32 v5, s40, v5
	v_mul_lo_u32 v4, s40, v4
	v_mul_lo_u32 v3, s40, v3
	s_lshl_b32 s5, s9, 8
	v_mul_lo_u32 v19, v19, s11
	v_add3_u32 v1, v1, s7, v12
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v7, 0, v10
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v17, 0x70, v17
	v_subrev_nc_u32_e32 v2, s5, v2
	v_xor_b32_e32 v20, 8, v8
	v_add3_u32 v21, 0, v21, v23
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v23, 1, v11
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s4, s8
	s_mov_b32 s4, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v63, s5, v1
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v52, 1, v2
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v54, 1, v6
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v57, 1, v5
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v59, 1, v4
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v61, 1, v3
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v70, 0, v8
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v76, v7, v17
	v_mov_b32_e32 v1, s4
	v_lshl_add_u32 v62, v13, 2, v19
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v69, 0, v18
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v72, 0, v20
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v74, 0, v14
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v83, v21, v22
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v85, 0, v23
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v7, s10
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s42, s33, 1
	s_lshl_b32 s43, s33, 4
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cndmask_b32_e32 v98, 0x80000000, v62, vcc_lo
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s40, s40, -1
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	buffer_load_b128 v[94:97], v63, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_b32 v98, v98, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s40, 0
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b32 v69, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[124:127], v70 offset1:32
	ds_load_2addr_b64 v[128:131], v70 offset0:64 offset1:96
	ds_load_2addr_b64 v[132:135], v72 offset1:32
	ds_load_2addr_b64 v[136:139], v72 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v74, v[94:97]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v94, v76 offset:1280
	ds_load_u8 v95, v76 offset:1024
	ds_load_u8 v96, v76 offset:1920
	ds_load_u8 v97, v76 offset:1664
	ds_load_u8 v98, v76 offset:1408
	ds_load_u8 v99, v76 offset:1152
	ds_load_u8 v100, v76 offset:1792
	ds_load_u8 v101, v76 offset:1536
	ds_load_u8 v102, v76 offset:256
	ds_load_u8 v103, v76
	ds_load_u8 v104, v76 offset:896
	ds_load_u8 v105, v76 offset:640
	ds_load_u8 v106, v76 offset:384
	ds_load_u8 v107, v76 offset:128
	ds_load_u8 v108, v76 offset:768
	ds_load_u8 v109, v76 offset:512
	ds_load_u8 v110, v76 offset:3328
	ds_load_u8 v111, v76 offset:3072
	ds_load_u8 v112, v76 offset:3840
	ds_load_u8 v113, v76 offset:3584
	ds_load_u8 v114, v76 offset:2304
	ds_load_u8 v115, v76 offset:2048
	ds_load_u8 v116, v76 offset:2816
	ds_load_u8 v117, v76 offset:2560
	ds_load_u8 v118, v76 offset:3968
	ds_load_u8 v119, v76 offset:3712
	ds_load_u8 v120, v76 offset:3456
	ds_load_u8 v121, v76 offset:3200
	ds_load_u8 v122, v76 offset:2944
	ds_load_u8 v123, v76 offset:2432
	ds_load_u8 v140, v76 offset:2176
	ds_load_u8 v141, v76 offset:2688
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v95, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v100, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v101, v109, v108, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v97, v107, v106, 0xc0c0004
	v_perm_b32 v99, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v102, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v103, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v108, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v109, v117, v116, 0xc0c0004
	v_lshl_or_b32 v153, v96, 16, v98
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v119, v118, 0xc0c0004
	v_lshl_or_b32 v152, v99, 16, v97
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v121, v120, 0xc0c0004
	v_lshl_or_b32 v151, v103, 16, v102
	v_lshl_or_b32 v150, v109, 16, v108
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v106, v140, v123, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v141, v122, 0xc0c0004
	v_lshl_or_b32 v141, v95, 16, v94
	v_lshl_or_b32 v140, v101, 16, v100
	v_lshl_or_b32 v179, v105, 16, v104
	v_wmma_i32_16x16x16_iu4 v[162:169], v[152:153], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v178, v107, 16, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[154:161], v[140:141], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[152:153], v[124:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[140:141], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[140:141], v[124:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[140:141], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[150:151], v[138:139], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[178:179], v[132:133], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[150:151], v[134:135], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[178:179], v[136:137], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[150:151], v[132:133], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[150:151], v[136:137], v[142:149] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v150, v158
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v158, 0x80000000, v61, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v159
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v159, 0x80000000, v59, s1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[152:153], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[152:153], v[130:131], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v152, v160
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v160, 0x80000000, v57, s2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v153, v161
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v161, 0x80000000, v54, s3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v102
	v_cvt_f32_i32_e32 v102, v114
	v_cvt_f32_i32_e32 v114, v162
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v162, v52, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v158, v158, s[28:31], 0 offen
	buffer_load_u16 v159, v159, s[28:31], 0 offen
	buffer_load_u16 v160, v160, s[28:31], 0 offen
	buffer_load_u16 v161, v161, s[28:31], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[178:179], v[134:135], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[178:179], v[138:139], v[170:177] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v96
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v141, v94
	v_cvt_f32_i32_e32 v126, v95
	v_cvt_f32_i32_e32 v128, v97
	v_cvt_f32_i32_e32 v129, v98
	v_cvt_f32_i32_e32 v130, v99
	v_cvt_f32_i32_e32 v131, v100
	v_cvt_f32_i32_e32 v132, v101
	v_cvt_f32_i32_e32 v134, v103
	v_cvt_f32_i32_e32 v135, v104
	v_cvt_f32_i32_e32 v136, v105
	v_cvt_f32_i32_e32 v137, v106
	v_cvt_f32_i32_e32 v138, v107
	v_cvt_f32_i32_e32 v139, v108
	v_cvt_f32_i32_e32 v140, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v103, v115
	v_cvt_f32_i32_e32 v104, v116
	v_cvt_f32_i32_e32 v105, v117
	v_cvt_f32_i32_e32 v98, v118
	v_cvt_f32_i32_e32 v99, v119
	v_cvt_f32_i32_e32 v100, v120
	v_cvt_f32_i32_e32 v101, v121
	v_cvt_f32_i32_e32 v94, v122
	v_cvt_f32_i32_e32 v95, v123
	v_cvt_f32_i32_e32 v96, v124
	v_cvt_f32_i32_e32 v97, v125
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v118, v146
	v_cvt_f32_i32_e32 v120, v148
	v_cvt_f32_i32_e32 v115, v163
	v_cvt_f32_i32_e32 v116, v164
	v_cvt_f32_i32_e32 v146, v170
	v_cvt_f32_i32_e32 v148, v172
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v119, v147
	v_cvt_f32_i32_e32 v121, v149
	v_cvt_f32_i32_e32 v117, v165
	v_cvt_f32_i32_e32 v106, v166
	v_cvt_f32_i32_e32 v107, v167
	v_cvt_f32_i32_e32 v108, v168
	v_cvt_f32_i32_e32 v109, v169
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v147, v171
	v_cvt_f32_i32_e32 v149, v173
	v_cvt_f32_i32_e32 v122, v174
	v_cvt_f32_i32_e32 v123, v175
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v124, v176
	v_cvt_f32_i32_e32 v125, v177
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v57, 2, v57
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v160, 16, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v145, v145, v160 :: v_dual_lshlrev_b32 v158, 16, v158
	v_dual_mul_f32 v132, v132, v158 :: v_dual_lshlrev_b32 v159, 16, v159
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v134, v134, v158 :: v_dual_lshlrev_b32 v161, 16, v161
	v_mul_f32_e32 v163, v127, v158
	v_dual_mul_f32 v143, v143, v160 :: v_dual_lshlrev_b32 v162, 16, v162
	v_dual_mul_f32 v111, v111, v159 :: v_dual_add_nc_u32 v54, 2, v54
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v59, 2, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v164, v128, v158 :: v_dual_add_nc_u32 v61, 2, v61
	v_dual_mul_f32 v113, v113, v159 :: v_dual_add_nc_u32 v62, 16, v62
	v_dual_mul_f32 v130, v130, v158 :: v_dual_add_nc_u32 v63, s43, v63
	v_dual_mul_f32 v141, v141, v158 :: v_dual_add_nc_u32 v52, s42, v52
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v83, v162
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v162, v126, v158
	v_dual_mul_f32 v165, v129, v158 :: v_dual_mul_f32 v110, v110, v159
	v_dual_mul_f32 v131, v131, v158 :: v_dual_mul_f32 v112, v112, v159
	v_dual_mul_f32 v133, v133, v158 :: v_dual_mul_f32 v142, v142, v160
	v_dual_mul_f32 v135, v135, v158 :: v_dual_mul_f32 v144, v144, v160
	v_dual_mul_f32 v136, v136, v158 :: v_dual_mul_f32 v155, v155, v161
	v_dual_mul_f32 v137, v137, v158 :: v_dual_mul_f32 v154, v154, v161
	v_dual_mul_f32 v138, v138, v158 :: v_dual_mul_f32 v157, v157, v161
	v_dual_mul_f32 v139, v139, v158 :: v_dual_mul_f32 v156, v156, v161
	v_dual_mul_f32 v140, v140, v158 :: v_dual_mul_f32 v119, v119, v160
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[126:129], v85
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v158, v102, v159 :: v_dual_mul_f32 v121, v121, v160
	v_dual_mul_f32 v166, v103, v159 :: v_dual_mul_f32 v153, v153, v161
	v_dual_mul_f32 v167, v104, v159 :: v_dual_mul_f32 v118, v118, v160
	v_dual_mul_f32 v168, v105, v159 :: v_dual_mul_f32 v151, v151, v161
	v_dual_mul_f32 v120, v120, v160 :: v_dual_mul_f32 v169, v98, v159
	v_dual_mul_f32 v150, v150, v161 :: v_dual_mul_f32 v171, v100, v159
	v_dual_mul_f32 v170, v99, v159 :: v_dual_mul_f32 v117, v117, v160
	v_dual_mul_f32 v172, v101, v159 :: v_dual_mul_f32 v147, v147, v161
	v_dual_mul_f32 v116, v116, v160 :: v_dual_mul_f32 v173, v94, v159
	v_dual_mul_f32 v146, v146, v161 :: v_dual_mul_f32 v175, v96, v159
	v_mul_f32_e32 v148, v148, v161
	v_dual_mul_f32 v174, v95, v159 :: v_dual_mul_f32 v109, v109, v160
	v_mul_f32_e32 v159, v97, v159
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[94:97], v85 offset:16
	ds_load_b128 v[98:101], v85 offset:512
	ds_load_b128 v[102:105], v85 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v152, v152, v161 :: v_dual_mul_f32 v115, v115, v160
	v_dual_mul_f32 v114, v114, v160 :: v_dual_mul_f32 v149, v149, v161
	v_dual_mul_f32 v106, v106, v160 :: v_dual_mul_f32 v123, v123, v161
	v_dual_mul_f32 v107, v107, v160 :: v_dual_mul_f32 v122, v122, v161
	v_dual_mul_f32 v108, v108, v160 :: v_dual_mul_f32 v125, v125, v161
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v124, v124, v161 :: v_dual_fmac_f32 v93, v162, v127
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v16, v141, v126 :: v_dual_fmac_f32 v91, v164, v129
	v_dual_fmac_f32 v92, v163, v128 :: v_dual_fmac_f32 v75, v110, v126
	v_dual_fmac_f32 v73, v111, v127 :: v_dual_fmac_f32 v68, v113, v129
	v_dual_fmac_f32 v71, v112, v128 :: v_dual_fmac_f32 v48, v142, v126
	v_dual_fmac_f32 v47, v143, v127 :: v_dual_fmac_f32 v46, v144, v128
	v_dual_fmac_f32 v45, v145, v129 :: v_dual_fmac_f32 v32, v154, v126
	v_dual_fmac_f32 v31, v155, v127 :: v_dual_fmac_f32 v30, v156, v128
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v29, v157, v129 :: v_dual_fmac_f32 v88, v131, v96
	v_dual_fmac_f32 v90, v165, v94 :: v_dual_fmac_f32 v89, v130, v95
	v_dual_fmac_f32 v87, v132, v97 :: v_dual_fmac_f32 v66, v166, v95
	v_dual_fmac_f32 v67, v158, v94 :: v_dual_fmac_f32 v64, v168, v97
	v_dual_fmac_f32 v65, v167, v96 :: v_dual_fmac_f32 v44, v118, v94
	v_dual_fmac_f32 v43, v119, v95 :: v_dual_fmac_f32 v42, v120, v96
	v_dual_fmac_f32 v41, v121, v97 :: v_dual_fmac_f32 v28, v150, v94
	v_dual_fmac_f32 v27, v151, v95 :: v_dual_fmac_f32 v26, v152, v96
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v25, v153, v97 :: v_dual_fmac_f32 v84, v134, v99
	v_dual_fmac_f32 v86, v133, v98 :: v_dual_fmac_f32 v81, v136, v101
	v_dual_fmac_f32 v82, v135, v100 :: v_dual_fmac_f32 v55, v172, v101
	v_dual_fmac_f32 v60, v169, v98 :: v_dual_fmac_f32 v39, v115, v99
	v_dual_fmac_f32 v58, v170, v99 :: v_dual_fmac_f32 v37, v117, v101
	v_dual_fmac_f32 v56, v171, v100 :: v_dual_fmac_f32 v21, v149, v101
	v_dual_fmac_f32 v40, v114, v98 :: v_dual_fmac_f32 v23, v147, v99
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v38, v116, v100 :: v_dual_fmac_f32 v79, v138, v103
	v_dual_fmac_f32 v24, v146, v98 :: v_dual_fmac_f32 v77, v140, v105
	v_dual_fmac_f32 v22, v148, v100 :: v_dual_fmac_f32 v53, v173, v102
	v_dual_fmac_f32 v80, v137, v102 :: v_dual_fmac_f32 v51, v174, v103
	v_dual_fmac_f32 v78, v139, v104 :: v_dual_fmac_f32 v33, v109, v105
	v_dual_fmac_f32 v50, v175, v104 :: v_dual_fmac_f32 v17, v125, v105
	v_dual_fmac_f32 v49, v159, v105 :: v_dual_fmac_f32 v36, v106, v102
	v_dual_fmac_f32 v35, v107, v103 :: v_dual_fmac_f32 v34, v108, v104
	v_dual_fmac_f32 v20, v122, v102 :: v_dual_fmac_f32 v19, v123, v103
	v_fmac_f32_e32 v18, v124, v104
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v7, v88, v88 :: v_dual_max_f32 v8, v87, v87
	v_dual_max_f32 v54, v82, v82 :: v_dual_max_f32 v59, v80, v80
	v_dual_max_f32 v1, v16, v16 :: v_dual_max_f32 v2, v93, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v57, v81, v81
	v_dual_max_f32 v3, v92, v92 :: v_dual_max_f32 v4, v91, v91
	v_dual_max_f32 v5, v90, v90 :: v_dual_max_f32 v6, v89, v89
	v_dual_max_f32 v62, 0, v57 :: v_dual_max_f32 v57, v78, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v16, v86, v86 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v52, v84, v84 :: v_dual_max_f32 v63, 0, v59
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v59, v77, v77
	v_dual_max_f32 v69, v75, v75 :: v_dual_max_f32 v70, v73, v73
	v_max_f32_e32 v73, 0, v57
	v_dual_max_f32 v57, v68, v68 :: v_dual_max_f32 v58, v58, v58
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v56, v56, v56
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v48, v48, v48
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v61, v79, v79
	v_dual_max_f32 v71, v71, v71 :: v_dual_max_f32 v66, v66, v66
	v_dual_max_f32 v74, 0, v59 :: v_dual_max_f32 v69, 0, v69
	v_dual_max_f32 v64, v64, v64 :: v_dual_max_f32 v59, v67, v67
	v_dual_max_f32 v81, 0, v57 :: v_dual_max_f32 v86, 0, v56
	v_dual_max_f32 v83, 0, v65 :: v_dual_max_f32 v50, v50, v50
	v_dual_max_f32 v57, v60, v60 :: v_dual_max_f32 v88, 0, v53
	v_max_f32_e32 v55, v55, v55
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v46, v46, v46
	v_dual_max_f32 v49, v49, v49 :: v_dual_max_f32 v44, v44, v44
	v_dual_max_f32 v47, v47, v47 :: v_dual_max_f32 v42, v42, v42
	v_dual_max_f32 v45, v45, v45 :: v_dual_max_f32 v40, v40, v40
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v38, v38, v38
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v36, v36, v36
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v34, v34, v34
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v32, v32, v32
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v18, v18, v18
	v_dual_max_f32 v21, v21, v21 :: v_dual_mul_f32 v56, v3, v3
	v_max_f32_e32 v19, v19, v19
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v52, 0, v52
	v_max_f32_e32 v61, 0, v61
	v_dual_max_f32 v71, 0, v71 :: v_dual_max_f32 v66, 0, v66
	v_dual_max_f32 v84, 0, v64 :: v_dual_max_f32 v77, 0, v70
	v_max_f32_e32 v82, 0, v59
	v_dual_max_f32 v60, 0, v57 :: v_dual_max_f32 v85, 0, v58
	v_dual_max_f32 v90, 0, v49 :: v_dual_max_f32 v87, 0, v55
	v_dual_max_f32 v48, 0, v48 :: v_dual_max_f32 v51, 0, v51
	v_max_f32_e32 v92, 0, v46
	v_dual_max_f32 v89, 0, v50 :: v_dual_max_f32 v94, 0, v44
	v_dual_max_f32 v91, 0, v47 :: v_dual_max_f32 v96, 0, v42
	v_dual_max_f32 v93, 0, v45 :: v_dual_max_f32 v98, 0, v40
	v_dual_max_f32 v95, 0, v43 :: v_dual_max_f32 v100, 0, v38
	v_dual_max_f32 v97, 0, v41 :: v_dual_max_f32 v102, 0, v36
	v_dual_max_f32 v99, 0, v39 :: v_dual_max_f32 v104, 0, v34
	v_dual_max_f32 v101, 0, v37 :: v_dual_max_f32 v106, 0, v32
	v_dual_max_f32 v103, 0, v35 :: v_dual_max_f32 v108, 0, v30
	v_dual_max_f32 v105, 0, v33 :: v_dual_max_f32 v110, 0, v28
	v_dual_max_f32 v107, 0, v31 :: v_dual_max_f32 v112, 0, v26
	v_dual_max_f32 v109, 0, v29 :: v_dual_max_f32 v114, 0, v24
	v_dual_max_f32 v111, 0, v27 :: v_dual_max_f32 v116, 0, v22
	v_dual_max_f32 v113, 0, v25 :: v_dual_max_f32 v118, 0, v20
	v_dual_max_f32 v117, 0, v21 :: v_dual_mul_f32 v68, v52, v52
	v_dual_max_f32 v119, 0, v18 :: v_dual_mul_f32 v76, v61, v61
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v50, v1, v1 :: v_dual_max_f32 v19, 0, v19
	v_mul_f32_e32 v58, v5, v5
	v_mul_f32_e32 v64, v7, v7
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v115, 0, v23 :: v_dual_max_f32 v120, 0, v17
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v53, v2, v2 :: v_dual_mul_f32 v78, v69, v69
	v_dual_mul_f32 v57, v4, v4 :: v_dual_mul_f32 v70, v54, v54
	v_mul_f32_e32 v59, v6, v6
	v_dual_mul_f32 v65, v8, v8 :: v_dual_mul_f32 v72, v62, v62
	v_dual_mul_f32 v67, v16, v16 :: v_dual_mul_f32 v80, v74, v74
	v_dual_mul_f32 v75, v63, v63 :: v_dual_mul_f32 v66, v66, v66
	v_dual_mul_f32 v79, v73, v73 :: v_dual_mul_f32 v54, v87, v87
	v_dual_mul_f32 v77, v77, v77 :: v_dual_mul_f32 v52, v88, v88
	v_mul_f32_e32 v73, v71, v71
	v_dual_mul_f32 v71, v81, v81 :: v_dual_mul_f32 v46, v48, v48
	v_dual_mul_f32 v69, v82, v82 :: v_dual_mul_f32 v44, v92, v92
	v_dual_mul_f32 v63, v83, v83 :: v_dual_mul_f32 v42, v94, v94
	v_mul_f32_e32 v62, v84, v84
	v_dual_mul_f32 v61, v60, v60 :: v_dual_mul_f32 v38, v98, v98
	v_dual_mul_f32 v60, v85, v85 :: v_dual_mul_f32 v55, v86, v86
	v_dual_mul_f32 v40, v96, v96 :: v_dual_mul_f32 v51, v51, v51
	v_dual_mul_f32 v36, v100, v100 :: v_dual_mul_f32 v49, v89, v89
	v_mul_f32_e32 v34, v102, v102
	v_dual_mul_f32 v47, v90, v90 :: v_dual_mul_f32 v32, v104, v104
	v_dual_mul_f32 v45, v91, v91 :: v_dual_mul_f32 v30, v106, v106
	v_dual_mul_f32 v43, v93, v93 :: v_dual_mul_f32 v28, v108, v108
	v_dual_mul_f32 v41, v95, v95 :: v_dual_mul_f32 v26, v110, v110
	v_dual_mul_f32 v39, v97, v97 :: v_dual_mul_f32 v24, v112, v112
	v_dual_mul_f32 v37, v99, v99 :: v_dual_mul_f32 v22, v114, v114
	v_dual_mul_f32 v35, v101, v101 :: v_dual_mul_f32 v20, v116, v116
	v_dual_mul_f32 v33, v103, v103 :: v_dual_mul_f32 v18, v117, v117
	v_dual_mul_f32 v31, v105, v105 :: v_dual_mul_f32 v16, v19, v19
	v_mul_f32_e32 v29, v107, v107
	v_dual_mul_f32 v27, v109, v109 :: v_dual_mul_f32 v8, v119, v119
	v_mul_f32_e32 v25, v111, v111
	v_mul_f32_e32 v23, v113, v113
	v_mul_f32_e32 v21, v115, v115
	v_mul_f32_e32 v17, v118, v118
	v_mul_f32_e32 v7, v120, v120
	v_mov_b32_e32 v1, v15
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v53, v53 :: v_dual_max_f32 v3, v50, v50
	v_max3_f32 v4, v57, v58, v59
	v_max3_f32 v5, v68, v70, v72
	v_max3_f32 v6, v75, v76, v79
	v_max_f32_e32 v15, v78, v78
	v_dual_max_f32 v2, v3, v2 :: v_dual_max_f32 v3, v77, v77
	v_max3_f32 v74, v60, v55, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v5, v5, v6, v80
	v_max_f32_e32 v6, v46, v46
	v_max3_f32 v2, v2, v56, v4
	v_dual_max_f32 v4, v45, v45 :: v_dual_max_f32 v3, v15, v3
	v_max3_f32 v15, v71, v69, v66
	v_max3_f32 v81, v52, v51, v49
	v_max3_f32 v19, v64, v65, v67
	v_max3_f32 v48, v63, v62, v61
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, v43, v42, v41
	v_max3_f32 v82, v37, v36, v35
	v_max3_f32 v83, v34, v33, v32
	v_max3_f32 v3, v3, v73, v15
	v_max3_f32 v15, v74, v81, v47
	v_max3_f32 v74, v40, v39, v38
	v_max_f32_e32 v81, v29, v29
	v_max3_f32 v4, v4, v44, v6
	v_max3_f32 v6, v82, v83, v31
	v_max3_f32 v2, v2, v19, v5
	v_max3_f32 v3, v3, v48, v15
	v_max_f32_e32 v82, v30, v30
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v4, v4, v74, v6
	v_max3_f32 v6, v27, v26, v25
	v_max3_f32 v19, v21, v20, v18
	v_max_f32_e32 v5, v82, v81
	v_max3_f32 v48, v17, v16, v8
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v81, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, v24, v23, v22
	v_max3_f32 v5, v5, v28, v6
	v_max3_f32 v6, v19, v48, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v19, v74, v74 :: v_dual_max_f32 v48, v81, v81
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v81, 0x80, v0
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v15, v6
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v15, 5, v13
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v48
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v82, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v19
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v48, v13, 9, 0
	v_lshrrev_b32_e32 v84, 3, v81
	s_barrier
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v82, v82
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v82, 0x680, v14, v15
	v_lshlrev_b32_e32 v14, 1, v81
	v_lshl_add_u32 v13, v13, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v74 :: v_dual_add_nc_u32 v81, 0, v81
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_and_b32 v19, 0x60, v0
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v6, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v83, v15, v19
	v_xor_b32_e32 v82, v82, v19
.Ltmp21:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v12, v12, v19
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v74
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v48, v6, 2, v48
	v_lshl_add_u32 v85, v6, 6, 0
	v_lshlrev_b32_e32 v6, 5, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v48, v1, 4, v48
	v_add3_u32 v74, v85, v84, v82
	v_lshlrev_b32_e32 v1, 3, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v48, v48, v14, v83
	ds_store_b128 v48, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v48, v2 :: v_dual_max_f32 v83, v5, v5
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v74, v3
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v5, v83, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v74, v74, v74
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v4
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v48, v48, v48 :: v_dual_mov_b32 v83, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v3, v3, v74
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v48
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v82, v82
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v3
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v82, v82
	v_dual_max_f32 v3, v3, v82 :: v_dual_mov_b32 v74, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v74
	v_max_f32_e32 v74, v83, v83
	v_dual_max_f32 v4, v4, v4 :: v_dual_mov_b32 v83, v3
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v82, v2 :: v_dual_max_f32 v5, v5, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v74, v5 :: v_dual_max_f32 v83, v83, v83
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v48
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v83 :: v_dual_max_f32 v2, v2, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v74, v74, v74
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v48, v4
	v_lshrrev_b32_e32 v82, 1, v19
.Ltmp44:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v19, 6, v0
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v74, 16, v9
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v48
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v48, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v48
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v48, v81, v82, v1
	v_add3_u32 v1, v13, v6, v1
	ds_store_b128 v48, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v1
.Ltmp52:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v5, 63, v0
	v_or_b32_e32 v3, 48, v9
	v_or_b32_e32 v48, 32, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v83, v83 :: v_dual_max_f32 v6, 0x2b8cbccc, v1
	v_max_f32_e32 v83, 0x2b8cbccc, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v88, vcc_lo, v6, 0x40e00000, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v87, v13
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	v_add_co_u32 v85, s0, s34, v48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v48, v82, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s35, 0, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v13, v87, 1.0
	v_max_f32_e32 v48, 0x2b8cbccc, v48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[85:86]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v81, v87
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v81, s0, s34, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v82, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v91, v88, v87
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v84, v84
	v_rcp_f32_e32 v90, v89
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[81:82]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v74, -v13, v91, v88
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[81:82]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v84, 0x2b8cbccc, v3 :: v_dual_add_nc_u32 v5, s34, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v91, v74, v87
	v_div_scale_f32 v74, null, 0x40e00000, 0x40e00000, v48
	v_fma_f32 v4, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v13, v91, v88
	v_rcp_f32_e32 v13, v74
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v4, v90
	v_div_fmas_f32 v3, v3, v87, v91
	v_div_scale_f32 v4, s6, v83, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v88
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v85, -v74, v13, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v4, v90
	v_div_fixup_f32 v3, v3, 0x40e00000, v6
	v_fmac_f32_e32 v13, v85, v13
	v_div_scale_f32 v85, s7, v48, 0x40e00000, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v88, v91, 1.0
	v_fma_f32 v6, -v89, v87, v4
	v_mul_f32_e32 v93, v85, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, s8, v84, 0x40e00000, v84
	v_fma_f32 v81, -v74, v93, v85
	v_fmac_f32_e32 v87, v6, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v6.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v82, v92, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v6.h, v86.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v93, v81, v13
	v_fma_f32 v4, -v89, v87, v4
	v_fma_f32 v81, -v88, v82, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v6, 1, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v74, -v74, v93, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v87, v4, v90, v87
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v82, v81, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v3, v6, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v13, v74, v13, v93
	s_mov_b32 vcc_lo, s8
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v74, -v88, v82, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, 0x40e00000, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v89, 0xffff0000, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v48, v74, v91, v82
	v_div_fixup_f32 v83, v87, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[3:4]
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v89, v89, v50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v48, v48, 0x40e00000, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v13.h
	v_mov_b16_e32 v84.h, v86.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v83.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, vcc_lo, v50, v89, v50
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v89, v89, v56
	v_div_scale_f32 v82, null, v89, v89, v53
	v_div_scale_f32 v97, null, v89, v89, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v84
	v_fma_f32 v81, -v85, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v82
	v_div_scale_f32 v92, null, v89, v89, v57
	v_div_scale_f32 v93, s8, v53, v89, v53
	v_fmac_f32_e32 v87, v81, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v84, v91, 1.0
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s9, v56, v89, v56
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v74, 1, v86
	v_mov_b16_e32 v86.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v83, v74, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v90, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v81, 1, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v82, v88, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v85, v83, v90
	v_fmac_f32_e32 v83, v86, v87
	v_rcp_f32_e32 v86, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v83, v90
	v_div_fmas_f32 v83, v85, v87, v83
	v_rcp_f32_e32 v87, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v92, v86, 1.0
	v_mul_f32_e32 v85, v95, v91
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v50, v83, v89, v50
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v96, null, v89, v89, v59
	v_fma_f32 v83, -v84, v85, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v97, v87, 1.0
	v_fmac_f32_e32 v88, v74, v88
	v_rcp_f32_e32 v98, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v83, v91
	v_dual_fmac_f32 v87, v99, v87 :: v_dual_mul_f32 v94, v93, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v13, v13, v4, 0x7fff
	v_add3_u32 v4, v48, v81, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v99, null, v89, v89, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v94, v93
	v_dual_fmac_f32 v94, v90, v88 :: v_dual_and_b32 v81, 0xffff0000, v13
	v_div_scale_f32 v90, s10, v57, v89, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v82, v94, v93
	v_mul_f32_e32 v93, v90, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v88, v94
	v_fma_f32 v83, -v92, v93, v90
	v_div_scale_f32 v88, s8, v58, v89, v58
	v_fma_f32 v94, -v96, v98, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v53, v82, v89, v53
	v_fma_f32 v82, -v84, v85, v95
	v_fmac_f32_e32 v93, v83, v86
	v_dual_mul_f32 v83, v88, v87 :: v_dual_fmac_f32 v98, v94, v98
	v_div_scale_f32 v84, s11, v59, v89, v59
	v_div_scale_f32 v94, null, v89, v89, v64
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v89, v89, v65
	v_div_fmas_f32 v82, v82, v91, v85
	v_fma_f32 v85, -v92, v93, v90
	v_fma_f32 v90, -v97, v83, v88
	v_rcp_f32_e32 v91, v94
	v_mul_f32_e32 v92, v84, v98
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v48, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v83, v90, v87
	v_div_fmas_f32 v85, v85, v86, v93
	v_fma_f32 v90, -v96, v92, v84
	v_div_fixup_f32 v56, v82, v89, v56
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v82, -v97, v83, v88
	v_fma_f32 v93, -v94, v91, 1.0
	v_fmac_f32_e32 v92, v90, v98
	v_div_scale_f32 v90, null, v89, v89, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v87, v83
	v_fmac_f32_e32 v91, v93, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v92, v84
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v93, null, v89, v89, v68
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v86, v95
	v_div_fmas_f32 v83, v83, v98, v92
	v_rcp_f32_e32 v98, v93
	v_div_fixup_f32 v57, v85, v89, v57
	v_div_scale_f32 v85, s9, v64, v89, v64
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fixup_f32 v58, v82, v89, v58
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v59, v83, v89, v59
	v_fma_f32 v88, -v95, v86, 1.0
	v_fmac_f32_e32 v87, v97, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v93, v98, 1.0
	v_div_scale_f32 v83, s10, v67, v89, v67
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s8, v65, v89, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v98, v97, v98
	v_mul_f32_e32 v84, v85, v91
	v_div_scale_f32 v97, s11, v68, v89, v68
	v_mul_f32_e32 v96, v88, v86
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v94, v84, v85
	v_fma_f32 v82, -v95, v96, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v92, v91
	v_div_scale_f32 v92, null, v89, v89, v70
	v_fmac_f32_e32 v96, v82, v86
	v_mul_f32_e32 v82, v83, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v94, v84, v85
	v_rcp_f32_e32 v94, v92
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v84, v85, v91, v84
	v_fma_f32 v85, -v95, v96, v88
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v88, -v90, v82, v83
	v_mul_f32_e32 v91, v97, v98
	v_div_fixup_f32 v64, v84, v89, v64
	v_div_fmas_f32 v85, v85, v86, v96
	v_rcp_f32_e32 v86, v99
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v95, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v65, v85, v89, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s8, v70, v89, v70
	v_fma_f32 v85, -v99, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v84, v95, v94
	v_fmac_f32_e32 v86, v85, v86
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v93, v91, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v83, -v90, v82, v83
	v_fmac_f32_e32 v91, v88, v98
	v_div_scale_f32 v88, null, v89, v89, v75
	v_div_scale_f32 v90, s9, v72, v89, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v93, v91, v97
	v_fma_f32 v87, -v92, v84, v95
	v_div_scale_f32 v93, null, v89, v89, v76
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v87, v94
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v98, v91
	v_mul_f32_e32 v91, v90, v86
	v_div_fixup_f32 v67, v82, v89, v67
	v_fma_f32 v82, -v92, v84, v95
	v_div_scale_f32 v92, s10, v75, v89, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v88, v85, 1.0
	v_div_fixup_f32 v68, v83, v89, v68
	v_fma_f32 v83, -v99, v91, v90
	v_fma_f32 v95, -v93, v87, 1.0
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v96, v85
	v_div_scale_f32 v96, null, v89, v89, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v87, v95, v87
	v_div_scale_f32 v95, null, v89, v89, v80
	v_div_fmas_f32 v82, v82, v94, v84
	v_fmac_f32_e32 v91, v83, v86
	v_mul_f32_e32 v83, v92, v85
	v_div_scale_f32 v94, s8, v76, v89, v76
	v_rcp_f32_e32 v98, v95
	v_rcp_f32_e32 v84, v96
	v_div_fixup_f32 v70, v82, v89, v70
	v_fma_f32 v82, -v99, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v97, v94, v87
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v86, v91
	v_fmac_f32_e32 v83, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v93, v97, v94
	v_fma_f32 v91, -v95, v98, 1.0
	v_fma_f32 v99, -v96, v84, 1.0
	v_div_fixup_f32 v72, v82, v89, v72
	v_fma_f32 v82, -v88, v83, v92
	v_dual_fmac_f32 v97, v86, v87 :: v_dual_fmac_f32 v98, v91, v98
	v_div_scale_f32 v88, s11, v80, v89, v80
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v84, v99, v84
	v_div_scale_f32 v90, s9, v79, v89, v79
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v93, v97, v94
	v_mul_f32_e32 v93, v88, v98
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v91, null, v81, v81, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v83, v83, v87, v97
	v_fma_f32 v87, -v95, v93, v88
	v_mul_f32_e32 v86, v90, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v94, null, v81, v81, v77
	v_fmac_f32_e32 v93, v87, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v96, v86, v90
	v_div_fixup_f32 v75, v82, v89, v75
	v_div_fixup_f32 v76, v83, v89, v76
	v_div_scale_f32 v83, s8, v78, v81, v78
	v_fmac_f32_e32 v86, v85, v84
	v_rcp_f32_e32 v85, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v97, -v91, v92, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v96, v86, v90
	v_div_scale_f32 v90, null, v81, v81, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v97, v92
	v_div_fmas_f32 v82, v82, v84, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v94, v85, 1.0
	v_fma_f32 v84, -v95, v93, v88
	v_mul_f32_e32 v86, v83, v92
	v_div_scale_f32 v88, s9, v77, v81, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v95, null, v81, v81, v71
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v96, v88, v85
	v_div_fmas_f32 v84, v84, v98, v93
	v_fma_f32 v93, -v91, v86, v83
	v_rcp_f32_e32 v98, v95
	v_div_fixup_f32 v79, v82, v89, v79
	v_fma_f32 v82, -v94, v96, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v90, v87, 1.0
	v_fmac_f32_e32 v86, v93, v92
	v_div_fixup_f32 v80, v84, v89, v80
	v_div_scale_f32 v84, s10, v73, v81, v73
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v89, null, v81, v81, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v83, -v91, v86, v83
	v_fmac_f32_e32 v96, v82, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s11, v71, v81, v71
	v_div_fmas_f32 v83, v83, v92, v86
	v_fma_f32 v86, -v94, v96, v88
	v_div_scale_f32 v97, null, v81, v81, v66
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v90, v82, v84
	v_mul_f32_e32 v92, v93, v98
	v_div_fmas_f32 v85, v86, v85, v96
	v_rcp_f32_e32 v86, v97
	v_fma_f32 v94, -v89, v91, 1.0
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v95, v92, v93
	v_div_fixup_f32 v77, v85, v81, v77
	v_div_fixup_f32 v78, v83, v81, v78
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s8, v69, v81, v69
	v_fmac_f32_e32 v92, v88, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v97, v86, 1.0
	v_div_scale_f32 v88, null, v81, v81, v63
	v_fma_f32 v83, -v90, v82, v84
	v_mul_f32_e32 v84, v94, v91
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v66, v81, v66
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v95, v92, v93
	v_fma_f32 v87, -v89, v84, v94
	v_div_scale_f32 v93, null, v81, v81, v62
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v88, v85, 1.0
	v_fmac_f32_e32 v84, v87, v91
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v98, v92
	v_mul_f32_e32 v92, v90, v86
	v_div_fixup_f32 v73, v82, v81, v73
	v_fma_f32 v82, -v89, v84, v94
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v61
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v71, v83, v81, v71
	v_fma_f32 v83, -v97, v92, v90
	v_div_scale_f32 v89, s10, v63, v81, v63
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v82, v82, v91, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v83, v86 :: v_dual_mul_f32 v83, v89, v85
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v91, s8, v62, v81, v62
	v_div_scale_f32 v94, null, v81, v81, v60
	v_div_fixup_f32 v69, v82, v81, v69
	v_fma_f32 v82, -v97, v92, v90
	v_fma_f32 v90, -v88, v83, v89
	v_mul_f32_e32 v96, v91, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v82, v82, v86, v92
	v_fma_f32 v86, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s9, v61, v81, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v66, v82, v81, v66
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v82, -v88, v83, v89
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v86, v90, v84
	v_div_scale_f32 v89, null, v81, v81, v55
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s11, v60, v81, v60
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v93, v96, v91
	v_fma_f32 v85, -v95, v86, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v81, v81, v54
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v93
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v63, v82, v81, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v82, -v95, v86, v90
	v_div_fixup_f32 v62, v83, v81, v62
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v83, s8, v55, v81, v55
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v85, 1.0
	v_div_scale_f32 v90, null, v81, v81, v52
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v98, null, v81, v81, v47
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v86, v83, v91
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s9, v54, v81, v54
	v_div_scale_f32 v94, null, v81, v81, v51
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v88, v85
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v86, v83
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v61, v82, v81, v61
	v_fma_f32 v82, -v93, v95, v88
	v_fmac_f32_e32 v86, v92, v91
	v_div_fixup_f32 v60, v84, v81, v60
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s10, v52, v81, v52
	v_div_scale_f32 v92, null, v81, v81, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v83, -v89, v86, v83
	v_fmac_f32_e32 v95, v82, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v89, v92
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v51, v81, v51
	v_div_fmas_f32 v83, v83, v91, v86
	v_fma_f32 v86, -v93, v95, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v90, v82, v84
	v_mul_f32_e32 v91, v96, v97
	v_div_fixup_f32 v55, v83, v81, v55
	v_div_fmas_f32 v85, v86, v85, v95
	v_rcp_f32_e32 v86, v98
	v_fma_f32 v93, -v92, v89, 1.0
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v54, v85, v81, v54
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s8, v49, v81, v49
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v74, v74, v46
	v_fma_f32 v83, -v90, v82, v84
	v_mul_f32_e32 v84, v93, v89
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, s9, v47, v81, v47
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v94, v91, v96
	v_fma_f32 v87, -v92, v84, v93
	v_div_scale_f32 v94, null, v74, v74, v45
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v52, v82, v81, v52
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v83, v83, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v82, -v92, v84, v93
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v74, v74, v44
	v_div_fixup_f32 v51, v83, v81, v51
	v_fma_f32 v83, -v98, v91, v90
	v_div_scale_f32 v92, s10, v46, v74, v46
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fmas_f32 v82, v82, v89, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v91, v83, v86
	v_mul_f32_e32 v83, v92, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v89, s8, v45, v74, v45
	v_div_scale_f32 v93, null, v74, v74, v43
	v_div_fixup_f32 v49, v82, v81, v49
	v_fma_f32 v82, -v98, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v82, v82, v86, v91
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s9, v44, v74, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v82, v81, v47
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v81, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v82, v90, v84
	v_div_scale_f32 v88, null, v74, v74, v42
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s11, v43, v74, v43
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v82, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v74, v74, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v97 :: v_dual_fmac_f32 v82, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v83, v83, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v46, v81, v74, v46
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v81, -v95, v82, v90
	v_div_fixup_f32 v45, v83, v74, v45
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v83, s8, v42, v74, v42
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v74, v74, v40
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v84, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s9, v41, v74, v41
	v_div_scale_f32 v93, null, v74, v74, v39
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v82, v82, v97, v91
	v_fma_f32 v91, -v88, v84, v83
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v44, v81, v74, v44
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v74, v74, v38
	v_div_fixup_f32 v43, v82, v74, v43
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s10, v40, v74, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v83, -v88, v84, v83
	v_fmac_f32_e32 v94, v81, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v81, v82, v86 :: v_dual_fmac_f32 v96, v95, v96
	v_div_scale_f32 v95, s11, v39, v74, v39
	v_div_fmas_f32 v83, v83, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v74, v74, v37
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v90, v81, v82
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v38, v74, v38
	v_div_fixup_f32 v42, v83, v74, v42
	v_div_fixup_f32 v41, v84, v74, v41
	v_fma_f32 v82, -v90, v81, v82
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v74, v74, v36
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v37, v74, v37
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v74, v74, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v40, v81, v74, v40
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v39, v82, v74, v39
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s10, v36, v74, v36
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v74, v74, v34
	v_div_fmas_f32 v81, v81, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v74, v74, v33
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s8, v35, v74, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v38, v81, v74, v38
	v_fma_f32 v81, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v34, v74, v34
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v37, v81, v74, v37
	v_fma_f32 v81, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v74, v74, v32
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s11, v33, v74, v33
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v74, v74, v31
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v36, v81, v74, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v81, -v94, v85, v89
	v_div_fixup_f32 v35, v82, v74, v35
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s8, v32, v74, v32
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v48, v48, v29
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v48, v48, v30
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, s9, v31, v74, v31
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v34, v81, v74, v34
	v_div_fixup_f32 v33, v83, v74, v33
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v81, -v93, v92, v87
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v48, v48, v27
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v48, v48, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_scale_f32 v81, s10, v30, v48, v30
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v95, -v94, v83, 1.0
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v93, v92, v87
	v_mul_f32_e32 v87, v81, v89
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v88, s8, v29, v48, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v86, v87, v81
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v87, v95, v89
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v28, v48, v28
	v_div_fixup_f32 v32, v82, v74, v32
	v_div_fixup_f32 v31, v84, v74, v31
	v_fma_f32 v74, -v86, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	v_div_scale_f32 v84, null, v48, v48, v26
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	v_fma_f32 v81, -v90, v92, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s9, v27, v48, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v94, v97, v88
	v_div_fmas_f32 v74, v74, v89, v87
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v86, v82, v98
	v_div_scale_f32 v87, null, v48, v48, v25
	v_div_fmas_f32 v83, v85, v83, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v84, v81, 1.0
	v_fma_f32 v85, -v90, v92, v93
	v_fma_f32 v90, -v96, v86, v82
	v_div_fixup_f32 v30, v74, v48, v30
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s8, v26, v48, v26
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v74, v88, v81
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v82, -v96, v86, v82
	v_div_fixup_f32 v29, v83, v48, v29
	v_div_fixup_f32 v28, v85, v48, v28
	v_fma_f32 v90, -v84, v74, v88
	v_div_scale_f32 v85, null, v48, v48, v24
	v_div_fmas_f32 v82, v82, v98, v86
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v90, v81
	v_div_scale_f32 v90, null, v48, v48, v23
	v_div_fixup_f32 v27, v82, v48, v27
	v_fma_f32 v83, -v87, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v84, v74, v88
	v_rcp_f32_e32 v92, v90
	v_rcp_f32_e32 v91, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v83, v89
	v_div_fmas_f32 v74, v82, v81, v74
	v_div_scale_f32 v83, s10, v25, v48, v25
	v_div_scale_f32 v82, s8, v24, v48, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v26, v74, v48, v26
	v_fma_f32 v74, -v90, v92, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v85, v91, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v81, null, v48, v48, v22
	v_fmac_f32_e32 v92, v74, v92
	v_div_scale_f32 v74, s9, v23, v48, v23
	v_dual_mul_f32 v86, v83, v89 :: v_dual_fmac_f32 v91, v88, v91
	v_div_scale_f32 v88, null, v48, v48, v21
	v_div_scale_f32 v95, s10, v22, v48, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v87, v86, v83
	v_rcp_f32_e32 v94, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v87, v86, v83
	v_mul_f32_e32 v87, v82, v91
	v_fma_f32 v96, -v88, v94, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v78, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v74, v92
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v93, -v81, v84, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v96, v94 :: v_dual_fmac_f32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v74
	v_div_scale_f32 v96, s11, v21, v48, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v93, v84
	v_fma_f32 v82, -v85, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v86, v92
	v_div_scale_f32 v93, null, v48, v48, v20
	v_div_fixup_f32 v25, v83, v48, v25
	v_div_fmas_f32 v82, v82, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v74, -v90, v89, v74
	v_div_scale_f32 v87, null, v48, v48, v18
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v97, v93
	v_div_fmas_f32 v74, v74, v92, v89
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v24, v82, v48, v24
	v_mul_f32_e32 v85, v96, v94
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v23, v74, v48, v23
	v_div_scale_f32 v91, null, v48, v48, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v93, v97, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v87, v89, 1.0
	v_mul_f32_e32 v98, v95, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s8, v20, v48, v20
	v_fmac_f32_e32 v89, v82, v89
	v_fma_f32 v83, -v81, v98, v95
	v_div_scale_f32 v82, null, v48, v48, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	v_mul_f32_e32 v83, v86, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v88, -v93, v83, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v22, v81, v48, v22
	v_div_fmas_f32 v84, v84, v94, v85
	v_div_scale_f32 v81, null, v48, v48, v17
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v84, v48, v21
	v_div_scale_f32 v84, null, v48, v48, v8
	v_fma_f32 v74, -v93, v83, v86
	v_rcp_f32_e32 v86, v82
	v_rcp_f32_e32 v93, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v88, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v97, v83
	v_div_scale_f32 v85, vcc_lo, v18, v48, v18
	v_rcp_f32_e32 v83, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v20, v74, v48, v20
	v_fma_f32 v92, -v82, v86, 1.0
	v_fma_f32 v97, -v91, v93, 1.0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v84, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s9, v16, v48, v16
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s10, v8, v48, v8
	v_fma_f32 v74, -v81, v83, 1.0
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s11, v7, v48, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v99, v95, v88 :: v_dual_mul_f32 v90, v85, v89
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v74, s8, v17, v48, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v87, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v74, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v94, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v81, v96, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v87, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v77, v77, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v94, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v37
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v100, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v37, 15, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v81, v96, v74
	v_fma_f32 v94, -v84, v99, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v91, v100, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v83, v96
	v_fmac_f32_e32 v99, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v81, v93
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v17, v74, v48, v17
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v76
	v_rndne_f32_e32 v76, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v99, v95
	v_div_fixup_f32 v18, v85, v48, v18
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v80, v47
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v78, v78, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v87, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v41
	v_and_b32_e32 v41, 15, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v91, v100, v97
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v16, v82, v48, v16
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v81, v48, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v46
	v_med3_f32 v29, v29, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v83, v48, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v50
	v_rndne_f32_e32 v50, v53
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v64
	v_rndne_f32_e32 v64, v65
	v_rndne_f32_e32 v65, v67
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v70, v72
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v79, v49
	v_cvt_i32_f32_e32 v108, v16
	v_and_b32_e32 v49, 15, v51
	v_and_b32_e32 v51, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v16, 10, v0
	v_and_b32_e32 v80, 16, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v107, v20
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v16, 0x1800, v16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v20, 15, v48
	v_and_b32_e32 v48, 15, v52
	v_and_b32_e32 v52, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v81, 6, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v82, v45
	v_cvt_i32_f32_e32 v83, v44
	v_cvt_i32_f32_e32 v84, v43
	v_cvt_i32_f32_e32 v97, v30
	v_cvt_i32_f32_e32 v98, v29
	v_cvt_i32_f32_e32 v99, v28
	v_cvt_i32_f32_e32 v100, v27
	v_cvt_i32_f32_e32 v106, v21
	v_cvt_i32_f32_e32 v7, v7
	v_and_b32_e32 v21, 15, v50
	v_and_b32_e32 v50, 15, v79
	v_and_b32_e32 v79, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v81, 0, v16, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v18, 15, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v8, 0x1b00, v19, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v89, v38
	v_cvt_i32_f32_e32 v91, v36
	v_cvt_i32_f32_e32 v92, v35
	v_cvt_i32_f32_e32 v105, v22
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_cvt_i32_f32_e32 v85, v42
	v_cvt_i32_f32_e32 v87, v40
	v_cvt_i32_f32_e32 v88, v39
	v_cvt_i32_f32_e32 v96, v31
	v_cvt_i32_f32_e32 v101, v26
	v_cvt_i32_f32_e32 v102, v25
	v_cvt_i32_f32_e32 v103, v24
	v_cvt_i32_f32_e32 v104, v23
	v_and_b32_e32 v22, 15, v53
	v_and_b32_e32 v23, 15, v56
	v_and_b32_e32 v24, 15, v57
	v_and_b32_e32 v25, 15, v58
	v_and_b32_e32 v26, 15, v59
	v_and_b32_e32 v27, 15, v64
	v_and_b32_e32 v30, 15, v68
	v_and_b32_e32 v31, 15, v70
	v_and_b32_e32 v36, 15, v78
	v_and_b32_e32 v38, 15, v73
	v_and_b32_e32 v39, 15, v71
	v_and_b32_e32 v40, 15, v69
	v_and_b32_e32 v42, 15, v63
	v_and_b32_e32 v43, 15, v62
	v_and_b32_e32 v46, 15, v55
	v_and_b32_e32 v47, 15, v54
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v68, 15, v97
	v_and_b32_e32 v69, 15, v98
	v_and_b32_e32 v70, 15, v99
	v_and_b32_e32 v71, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v12, v81, v12, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v19, 15, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v7, v8, v11, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v93, v34
	v_cvt_i32_f32_e32 v94, v33
	v_cvt_i32_f32_e32 v95, v32
	v_and_b32_e32 v28, 15, v65
	v_and_b32_e32 v29, 15, v67
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v33, 15, v74
	v_and_b32_e32 v34, 15, v75
	v_and_b32_e32 v35, 15, v76
	v_and_b32_e32 v44, 15, v61
	v_and_b32_e32 v45, 15, v60
	v_and_b32_e32 v60, 15, v89
	v_and_b32_e32 v61, 15, v90
	v_and_b32_e32 v62, 15, v91
	v_and_b32_e32 v63, 15, v92
	v_and_b32_e32 v76, 15, v105
	v_and_b32_e32 v77, 15, v106
	v_and_b32_e32 v78, 15, v107
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[20:23]
	ds_store_b128 v12, v[28:31] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v7
	ds_load_b128 v[28:31], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[36:39]
	ds_store_b128 v12, v[44:47] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v7
	ds_load_b128 v[44:47], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[52:55]
	ds_store_b128 v12, v[60:63] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v7
	ds_load_b128 v[60:63], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[68:71]
	ds_store_b128 v12, v[76:79] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v7
	ds_load_b128 v[76:79], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[24:27]
	ds_store_b128 v12, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v7
	ds_load_b128 v[32:35], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[40:43]
	ds_store_b128 v12, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v7
	ds_load_b128 v[48:51], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v58, 15, v87
	v_and_b32_e32 v59, 15, v88
	v_and_b32_e32 v72, 15, v101
	v_and_b32_e32 v73, 15, v102
	v_and_b32_e32 v74, 15, v103
	v_and_b32_e32 v75, 15, v104
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v65, 15, v94
	v_and_b32_e32 v66, 15, v95
	v_and_b32_e32 v67, 15, v96
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v108
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[56:59]
	ds_store_b128 v12, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v7
	ds_load_b128 v[64:67], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[72:75]
	ds_store_b128 v12, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v7
	ds_load_b128 v[72:75], v7 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v29, 4, v21
	v_lshl_or_b32 v29, v48, 4, v40
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v48, 3, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, s34, v9
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v8, v28, 4, v20
	v_lshl_or_b32 v20, v31, 4, v23
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s41, 7, v48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v34, 4, v26
	v_lshl_or_b32 v26, v45, 4, v37
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v47, 4, v39
	v_lshl_or_b32 v19, v30, 4, v22
	v_lshl_or_b32 v21, v32, 4, v24
	v_lshl_or_b32 v22, v33, 4, v25
	v_lshl_or_b32 v24, v35, 4, v27
	v_lshl_or_b32 v30, v49, 4, v41
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v46, 4, v38
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v72, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v10
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v74, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 32, v10
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v75, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 48, v10
	v_mad_u64_u32 v[11:12], null, v10, s8, v[7:8]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v73, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v14, s8, v[7:8]
	v_mad_u64_u32 v[15:16], null, v16, s8, v[7:8]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v44, 4, v36
	v_lshl_or_b32 v31, v50, 4, v42
	v_lshl_or_b32 v32, v51, 4, v43
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[16:17], null, v17, s8, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v7.l, 0xff, v8.l
	v_lshlrev_b16 v7.h, 8, v24.l
	v_and_b16 v8.l, 0xff, v23.l
	v_lshlrev_b16 v8.h, 8, v22.l
	v_and_b16 v10.l, 0xff, v21.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v64, 4, v56
	v_lshl_or_b32 v38, v65, 4, v57
	v_lshl_or_b32 v39, v66, 4, v58
	v_lshl_or_b32 v40, v67, 4, v59
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v17.h, v4.l, v3.l
	v_or_b16 v17.l, v7.l, v6.l
	v_or_b16 v18.h, v8.l, v7.h
	v_or_b16 v18.l, v10.l, v8.h
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v3.l, 8, v28.l
	v_and_b16 v4.l, 0xff, v27.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v7.l, 0xff, v25.l
	v_lshlrev_b16 v7.h, 8, v32.l
	v_and_b16 v8.l, 0xff, v31.l
	v_lshlrev_b16 v8.h, 8, v30.l
	v_and_b16 v10.l, 0xff, v29.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v60, 4, v52
	v_lshl_or_b32 v34, v61, 4, v53
	v_lshl_or_b32 v35, v62, 4, v54
	v_lshl_or_b32 v36, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[17:18], v11, s[8:11], 0 offen
	v_or_b16 v11.h, v4.l, v3.l
	v_or_b16 v11.l, v7.l, v6.l
	v_or_b16 v12.h, v8.l, v7.h
	v_or_b16 v12.l, v10.l, v8.h
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	v_lshlrev_b16 v7.h, 8, v40.l
	v_and_b16 v8.l, 0xff, v39.l
	v_lshlrev_b16 v8.h, 8, v38.l
	v_and_b16 v10.l, 0xff, v37.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v76, 4, v68
	v_lshl_or_b32 v42, v77, 4, v69
	v_lshl_or_b32 v43, v78, 4, v70
	v_lshl_or_b32 v44, v79, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v36.l
	v_and_b16 v4.l, 0xff, v35.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v7.l, 0xff, v33.l
	buffer_store_b64 v[11:12], v14, s[8:11], 0 offen
	v_or_b16 v12.h, v8.l, v7.h
	v_or_b16 v12.l, v10.l, v8.h
	v_lshlrev_b16 v7.h, 8, v49.l
	v_and_b16 v8.l, 0xff, v47.l
	v_lshlrev_b16 v8.h, 8, v46.l
	v_and_b16 v10.l, 0xff, v45.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v4.l, v3.l
	v_or_b16 v11.l, v7.l, v6.l
	v_lshlrev_b16 v3.l, 8, v44.l
	v_and_b16 v4.l, 0xff, v43.l
	v_lshlrev_b16 v6.l, 8, v42.l
	v_and_b16 v7.l, 0xff, v41.l
	v_cndmask_b32_e32 v17, 0x80000000, v15, vcc_lo
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v10.l, v8.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 2, v80
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v16, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v9, 2, v9
	v_add_nc_u32_e32 v8, 0, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[11:12], v17, s[8:11], 0 offen
	buffer_store_b64 v[14:15], v7, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v48
	v_mov_b16_e32 v4.l, v13.h
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v6, v8, v9, v48
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
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s41, 1
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
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 180
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 180
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14256
; TotalNumSgprs: 46
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 180
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
