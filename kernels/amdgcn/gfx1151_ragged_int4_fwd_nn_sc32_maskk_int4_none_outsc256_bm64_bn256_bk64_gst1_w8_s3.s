	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[48:49], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 4, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v92, 8, v0
	v_and_b32_e32 v93, 0x80, v0
	v_lshlrev_b32_e32 v94, 4, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	s_sub_i32 s4, s49, s8
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
	s_sub_i32 s49, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s49, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[10:11], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s10
	s_addc_u32 s3, s5, s11
	s_load_b64 s[46:47], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[44:45], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s46, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s47, 0, s2
	v_add_nc_u32_e32 v95, s46, v24
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[44:45], v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[3:4]
	v_cmp_le_i64_e64 s6, s[34:35], v[5:6]
	v_cmp_le_i64_e64 s7, s[34:35], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[44:45], v[3:4]
	v_cmp_gt_i64_e64 s8, s[44:45], v[5:6]
	v_cmp_gt_i64_e64 s9, s[44:45], v[7:8]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s48, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s46, v24
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v2, 0x80, v0
	v_lshlrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp4:
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v26, 16, v5
	v_add_nc_u32_e32 v27, 32, v5
	v_add_nc_u32_e32 v28, 48, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr28
.LBB0_3:                                ; %Flow394
	s_load_b128 s[28:31], s[0:1], 0x40
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v29, 0xf0, v0
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v25, 15, v0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v79, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b32 s50, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s46, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s47, 0, s0
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v9, s46, v25
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s10
	s_addc_u32 s1, s7, s11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s13, s[0:1], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[44:45], v[1:2]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v96, v9, s48
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v1, 16, v9
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v2, 32, v9
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v9, 48, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[44:45], v[7:8]
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[3:4]
	v_cmp_le_i64_e64 s6, s[34:35], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[44:45], v[3:4]
	v_cmp_gt_i64_e64 s9, s[44:45], v[5:6]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v99, v9, s48
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v9, s49, 8, v0
	v_lshrrev_b32_e32 v10, 1, v0
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v11, 2, v29
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v8, 32, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_and_b32 s0, s1, s8
	s_and_b32 s1, s6, s9
	s_and_b32 s6, s7, s10
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s7, s50, s33
	v_dual_mov_b32 v32, 0 :: v_dual_lshlrev_b32 v13, 1, v0
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v14, 0x70, v10
	v_add3_u32 v8, 0, v11, v8
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s7, s13, v[9:10]
	v_or_b32_e32 v12, 0xf00, v0
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v13, 28, v13
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v4, 0, v25
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v97, v1, s48
	v_mul_lo_u32 v98, v2, s48
	v_bfe_i32 v1, v0, 7, 1
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v2, 0x70, v94
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v15, 1, v29
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v115, 0, v12
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v117, v8, v13
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[12:13], null, s33, 3, v[10:11]
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v116, v4, v14
	v_mad_u64_u32 v[13:14], null, s33, 5, v[10:11]
	v_dual_mov_b32 v60, 0 :: v_dual_and_b32 v5, 0x7f, v0
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_and_or_b32 v2, 0x88, v3, v2
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v118, 0, v15
	v_mad_u64_u32 v[14:15], null, s33, 6, v[10:11]
	v_mad_u64_u32 v[15:16], null, s33, 7, v[10:11]
	v_mad_u64_u32 v[16:17], null, s33, 9, v[10:11]
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v26, 16, v95
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v27, 32, v95
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v28, 48, v95
	v_mad_u64_u32 v[17:18], null, s33, 10, v[10:11]
	v_mad_u64_u32 v[18:19], null, s33, 11, v[10:11]
	v_xor_b32_e32 v1, v1, v5
	v_xor_b32_e32 v3, 8, v2
	v_or_b32_e32 v5, 0x300, v0
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v7, 0xb00, v0
	v_mad_u64_u32 v[19:20], null, s33, 12, v[10:11]
	v_mad_u64_u32 v[20:21], null, s33, 13, v[10:11]
	s_mov_b32 s12, 0
	v_mad_u64_u32 v[21:22], null, s33, 14, v[10:11]
	v_mul_lo_u32 v100, v95, s50
	v_mul_lo_u32 v101, v26, s50
	v_mul_lo_u32 v102, v27, s50
	v_mul_lo_u32 v103, v28, s50
	v_mad_u64_u32 v[22:23], null, s33, 15, v[10:11]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s11, s48, s13
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v108, 0, v1
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v109, 0, v2
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v110, 0, v3
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v112, 0, v5
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v113, 0, v6
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v114, 0, v7
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v104, s33, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v105, s33, 1, v10
	v_lshl_add_u32 v106, s33, 2, v10
	v_lshl_add_u32 v107, s33, 3, v10
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v111, 0, v0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s27, s27, 0xffff
	s_mov_b32 s36, s20
	s_mov_b32 s37, s21
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s38
	s_mov_b32 s23, s39
	s_mov_b32 s40, s24
	s_mov_b32 s41, s25
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s7, s12, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s8, s7, 1
	s_or_b32 s9, s7, 2
	s_or_b32 s56, s7, 3
	s_or_b32 s55, s7, 4
	s_or_b32 s54, s7, 5
	s_or_b32 s53, s7, 6
	s_or_b32 s52, s7, 7
	s_or_b32 s51, s7, 8
	s_or_b32 s19, s7, 9
	s_or_b32 s18, s7, 10
	s_or_b32 s17, s7, 11
	s_or_b32 s16, s7, 12
	s_or_b32 s15, s7, 13
	s_or_b32 s14, s7, 14
	s_or_b32 s13, s7, 15
	s_cmp_lt_i32 s7, s50
	s_mul_i32 s10, s7, s33
	v_or_b32_e32 v119, s7, v25
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s8, s50
	v_add_nc_u32_e32 v120, s10, v10
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s9, s50
	v_add_nc_u32_e32 v123, s10, v12
	v_add_nc_u32_e32 v121, s10, v104
	v_add_nc_u32_e32 v122, s10, v105
	v_add_nc_u32_e32 v124, s10, v106
	v_add_nc_u32_e32 v125, s10, v13
	v_add_nc_u32_e32 v126, s10, v14
	v_add_nc_u32_e32 v127, s10, v15
	v_add_nc_u32_e32 v128, s10, v107
	v_add_nc_u32_e32 v129, s10, v16
	v_add_nc_u32_e32 v130, s10, v17
	v_add_nc_u32_e32 v131, s10, v18
	v_add_nc_u32_e32 v132, s10, v19
	v_add_nc_u32_e32 v133, s10, v20
	v_add_nc_u32_e32 v134, s10, v21
	v_add_nc_u32_e32 v135, s10, v22
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s56, s50
	v_cndmask_b32_e64 v120, 0x80000000, v120, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s55, s50
	v_cndmask_b32_e64 v123, 0x80000000, v123, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s54, s50
	v_cndmask_b32_e64 v124, 0x80000000, v124, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s53, s50
	v_cndmask_b32_e64 v125, 0x80000000, v125, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s52, s50
	v_cndmask_b32_e64 v126, 0x80000000, v126, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s51, s50
	v_cndmask_b32_e64 v127, 0x80000000, v127, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s19, s50
	v_cndmask_b32_e64 v128, 0x80000000, v128, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s18, s50
	v_cndmask_b32_e64 v129, 0x80000000, v129, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s17, s50
	v_cndmask_b32_e64 v130, 0x80000000, v130, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s16, s50
	v_cndmask_b32_e64 v131, 0x80000000, v131, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s15, s50
	v_cmp_gt_i32_e64 s9, s50, v119
	v_cndmask_b32_e64 v132, 0x80000000, v132, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s14, s50
	v_add_nc_u32_e32 v136, v100, v119
	v_cndmask_b32_e64 v133, 0x80000000, v133, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s13, s50
	v_add_nc_u32_e32 v137, v101, v119
	v_cndmask_b32_e64 v121, 0x80000000, v121, s8
	v_cndmask_b32_e64 v134, 0x80000000, v134, s7
	s_cselect_b32 s7, -1, 0
	s_and_b32 s8, s5, s9
	v_add_nc_u32_e32 v138, v102, v119
	v_cndmask_b32_e64 v136, 0x80000000, v136, s8
	s_and_b32 s8, s4, s9
	v_add_nc_u32_e32 v119, v103, v119
	v_cndmask_b32_e64 v137, 0x80000000, v137, s8
	s_and_b32 s8, s3, s9
	v_cndmask_b32_e64 v122, 0x80000000, v122, s10
	v_cndmask_b32_e64 v138, 0x80000000, v138, s8
	s_and_b32 s8, s2, s9
	v_cndmask_b32_e64 v135, 0x80000000, v135, s7
	v_cndmask_b32_e64 v119, 0x80000000, v119, s8
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x4
	buffer_load_u8 v120, v120, s[20:23], 0 offen
	buffer_load_u8 v121, v121, s[20:23], 0 offen
	buffer_load_u8 v122, v122, s[20:23], 0 offen
	buffer_load_u8 v133, v133, s[20:23], 0 offen
	buffer_load_u8 v134, v134, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v136, v136, s[36:39], 0 offen
	buffer_load_u8 v137, v137, s[36:39], 0 offen
	buffer_load_u8 v138, v138, s[36:39], 0 offen
	buffer_load_u8 v119, v119, s[36:39], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xa
	buffer_load_u8 v135, v135, s[20:23], 0 offen
	buffer_load_u8 v123, v123, s[20:23], 0 offen
	buffer_load_u8 v124, v124, s[20:23], 0 offen
	buffer_load_u8 v125, v125, s[20:23], 0 offen
	buffer_load_u8 v126, v126, s[20:23], 0 offen
	buffer_load_u8 v127, v127, s[20:23], 0 offen
	buffer_load_u8 v128, v128, s[20:23], 0 offen
	buffer_load_u8 v129, v129, s[20:23], 0 offen
	buffer_load_u8 v130, v130, s[20:23], 0 offen
	buffer_load_u8 v131, v131, s[20:23], 0 offen
	buffer_load_u8 v132, v132, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s12, s11
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(14)
	ds_store_b8 v108, v136
	s_waitcnt vmcnt(13)
	ds_store_b8 v108, v137 offset:256
	s_waitcnt vmcnt(12)
	ds_store_b8 v108, v138 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v108, v119 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[149:152], v109 offset1:32
	ds_load_2addr_b64 v[159:162], v109 offset0:64 offset1:96
	ds_load_2addr_b64 v[163:166], v110 offset1:32
	ds_load_2addr_b64 v[167:170], v110 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v111, v120
	ds_store_b8 v111, v121 offset:256
	ds_store_b8 v111, v122 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v111, v124 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b8 v111, v125 offset:1280
	s_waitcnt vmcnt(6)
	ds_store_b8 v111, v126 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v111, v128 offset:2048
	s_waitcnt vmcnt(3)
	ds_store_b8 v111, v129 offset:2304
	s_waitcnt vmcnt(2)
	ds_store_b8 v111, v130 offset:2560
	s_waitcnt vmcnt(0)
	ds_store_b8 v111, v132 offset:3072
	ds_store_b8 v111, v133 offset:3328
	ds_store_b8 v112, v123
	ds_store_b8 v113, v127
	ds_store_b8 v114, v131
	ds_store_b8 v111, v134 offset:3584
	ds_store_b8 v115, v135
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v119, v116 offset:1280
	ds_load_u8 v120, v116 offset:1024
	ds_load_u8 v121, v116 offset:1920
	ds_load_u8 v122, v116 offset:1664
	ds_load_u8 v123, v116 offset:1408
	ds_load_u8 v124, v116 offset:1792
	ds_load_u8 v125, v116 offset:1536
	ds_load_u8 v126, v116 offset:1152
	ds_load_u8 v127, v116 offset:256
	ds_load_u8 v128, v116
	ds_load_u8 v129, v116 offset:896
	ds_load_u8 v130, v116 offset:640
	ds_load_u8 v131, v116 offset:384
	ds_load_u8 v132, v116 offset:768
	ds_load_u8 v133, v116 offset:512
	ds_load_u8 v134, v116 offset:128
	ds_load_u8 v135, v116 offset:3328
	ds_load_u8 v136, v116 offset:3072
	ds_load_u8 v137, v116 offset:3840
	ds_load_u8 v138, v116 offset:3584
	ds_load_u8 v139, v116 offset:2304
	ds_load_u8 v140, v116 offset:2048
	ds_load_u8 v141, v116 offset:2816
	ds_load_u8 v142, v116 offset:2560
	ds_load_u8 v143, v116 offset:3968
	ds_load_u8 v144, v116 offset:3712
	ds_load_u8 v145, v116 offset:3456
	ds_load_u8 v146, v116 offset:3200
	ds_load_u8 v147, v116 offset:2944
	ds_load_u8 v148, v116 offset:2688
	ds_load_u8 v153, v116 offset:2432
	ds_load_u8 v154, v116 offset:2176
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v120, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v124, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v125, v133, v132, 0xc0c0004
	v_perm_b32 v123, v126, v123, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v127, v136, v135, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v128, v138, v137, 0xc0c0004
	v_perm_b32 v122, v134, v131, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v132, v140, v139, 0xc0c0004
	v_perm_b32 v126, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v133, v142, v141, 0xc0c0004
	v_lshl_or_b32 v172, v120, 16, v119
	v_lshl_or_b32 v171, v125, 16, v124
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v129, v146, v145, 0xc0c0004
	v_lshl_or_b32 v174, v128, 16, v127
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v134, v148, v147, 0xc0c0004
	v_lshl_or_b32 v173, v133, 16, v132
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v154, v153, 0xc0c0004
	v_lshl_or_b32 v176, v121, 16, v123
	v_lshl_or_b32 v175, v126, 16, v122
	v_wmma_i32_16x16x16_iu4 v[119:126], v[171:172], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v178, v130, 16, v129
	v_lshl_or_b32 v177, v134, 16, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[175:176], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[171:172], v[151:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[175:176], v[151:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[173:174], v[163:164], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[177:178], v[163:164], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[173:174], v[165:166], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[177:178], v[165:166], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[171:172], v[159:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v163, v119
	v_cvt_f32_i32_e32 v164, v120
	v_cvt_f32_i32_e32 v165, v121
	v_cvt_f32_i32_e32 v166, v122
	v_cvt_f32_i32_e32 v179, v123
	v_cvt_f32_i32_e32 v180, v124
	v_cvt_f32_i32_e32 v181, v125
	v_cvt_f32_i32_e32 v182, v126
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[175:176], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[173:174], v[167:168], v[151:158] neg_lo:[1,1,0]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s7, s33
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v137, v137
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[177:178], v[167:168], v[119:126] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v159, v119
	v_cvt_f32_i32_e32 v160, v124
	v_cvt_f32_i32_e32 v167, v125
	v_cvt_f32_i32_e32 v168, v126
	v_cvt_f32_i32_e32 v183, v120
	v_cvt_f32_i32_e32 v184, v121
	v_cvt_f32_i32_e32 v185, v122
	v_cvt_f32_i32_e32 v186, v123
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[171:172], v[161:162], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v138, v138
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[173:174], v[169:170], v[119:126] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v171, v119
	v_cvt_f32_i32_e32 v172, v120
	v_cvt_f32_i32_e32 v173, v121
	v_cvt_f32_i32_e32 v174, v122
	v_cvt_f32_i32_e32 v187, v123
	v_cvt_f32_i32_e32 v188, v124
	v_cvt_f32_i32_e32 v189, v125
	v_cvt_f32_i32_e32 v190, v126
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[175:176], v[161:162], v[1:8] neg_lo:[1,1,0]
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v175, v9, s7, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v132, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[177:178], v[169:170], v[119:126] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v170, s12, v99, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v161, v119
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v119, s12, v96, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v120
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v120, s12, v97, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v169, v121
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v121, s12, v98, 1
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	v_cndmask_b32_e64 v170, 0x80000000, v170, s6
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v135, v135
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v175, v175, s[24:27], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v119, v119, s[40:43], 0 offen
	buffer_load_u16 v176, v120, s[40:43], 0 offen
	buffer_load_u16 v177, v121, s[40:43], 0 offen
	buffer_load_u16 v170, v170, s[40:43], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s12, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s12, s48
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v120, 16, v175
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v175, 16, v119
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v117, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v178, v175, v179
	v_mul_f32_e32 v179, v175, v180
	v_mul_f32_e32 v180, v175, v181
	v_mul_f32_e32 v181, v175, v182
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v182, v127, v175 :: v_dual_lshlrev_b32 v127, 16, v176
	v_mul_f32_e32 v120, v133, v175
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v133, v127, v138
	v_mul_f32_e32 v138, v127, v139
	v_mul_f32_e32 v139, v127, v140
	v_mul_f32_e32 v140, v127, v141
	v_mul_f32_e32 v141, v127, v142
	v_mul_f32_e32 v142, v143, v127
	v_mul_f32_e32 v143, v127, v144
	v_mul_f32_e32 v144, v127, v145
	v_mul_f32_e32 v191, v175, v128
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v121, v134, v175 :: v_dual_lshlrev_b32 v128, 16, v170
	v_mul_f32_e32 v163, v175, v163
	v_mul_f32_e32 v164, v175, v164
	v_mul_f32_e32 v165, v175, v165
	v_mul_f32_e32 v166, v175, v166
	v_mul_f32_e32 v192, v175, v129
	v_mul_f32_e32 v193, v175, v130
	v_mul_f32_e32 v119, v132, v175
	v_mul_f32_e32 v175, v175, v131
	v_dual_mul_f32 v145, v127, v146 :: v_dual_mul_f32 v146, v148, v127
	v_mul_f32_e32 v148, v149, v127
	v_mul_f32_e32 v149, v150, v127
	v_mul_f32_e32 v150, v128, v171
	v_mul_f32_e32 v130, v127, v135
	v_mul_f32_e32 v131, v127, v136
	v_mul_f32_e32 v132, v127, v137
	v_dual_mul_f32 v147, v127, v147 :: v_dual_mul_f32 v170, v128, v188
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v127, 16, v177
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v171, v128, v189
	v_dual_mul_f32 v161, v161, v128 :: v_dual_mul_f32 v162, v128, v162
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v169, v128, v169 :: v_dual_mul_f32 v134, v127, v151
	v_mul_f32_e32 v135, v127, v152
	v_mul_f32_e32 v136, v127, v153
	v_dual_mul_f32 v137, v127, v154 :: v_dual_mul_f32 v160, v160, v127
	v_mul_f32_e32 v151, v128, v172
	v_mul_f32_e32 v152, v128, v173
	v_dual_mul_f32 v153, v128, v174 :: v_dual_mul_f32 v154, v127, v155
	v_mul_f32_e32 v155, v127, v156
	v_mul_f32_e32 v156, v127, v157
	v_dual_mul_f32 v157, v127, v158 :: v_dual_mul_f32 v168, v168, v127
	v_mul_f32_e32 v158, v128, v187
	v_dual_mul_f32 v172, v128, v190 :: v_dual_mul_f32 v159, v159, v127
	v_mul_f32_e32 v173, v127, v183
	v_mul_f32_e32 v174, v127, v184
	v_dual_mul_f32 v176, v127, v185 :: v_dual_mul_f32 v177, v128, v122
	v_mul_f32_e32 v167, v167, v127
	v_dual_mul_f32 v183, v127, v186 :: v_dual_mul_f32 v184, v124, v128
	v_mul_f32_e32 v185, v125, v128
	v_dual_mul_f32 v186, v126, v128 :: v_dual_mul_f32 v187, v128, v123
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[122:125], v118
	ds_load_b128 v[126:129], v118 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v91, v163, v122 :: v_dual_fmac_f32 v56, v137, v125
	v_dual_fmac_f32 v89, v165, v124 :: v_dual_fmac_f32 v58, v135, v123
	v_dual_fmac_f32 v76, v130, v122 :: v_dual_fmac_f32 v75, v131, v123
	v_dual_fmac_f32 v40, v153, v125 :: v_dual_fmac_f32 v73, v132, v124
	v_fmac_f32_e32 v42, v151, v123
	v_dual_fmac_f32 v72, v133, v125 :: v_dual_fmac_f32 v59, v134, v122
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v86, v179, v127
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[130:133], v118 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v57, v136, v124 :: v_dual_fmac_f32 v84, v181, v129
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[134:137], v118 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v164, v123
	v_fmac_f32_e32 v88, v166, v125
	v_dual_fmac_f32 v43, v150, v122 :: v_dual_fmac_f32 v70, v139, v127
	v_dual_fmac_f32 v41, v152, v124 :: v_dual_fmac_f32 v68, v141, v129
	v_dual_fmac_f32 v87, v178, v126 :: v_dual_fmac_f32 v54, v155, v127
	v_dual_fmac_f32 v85, v180, v128 :: v_dual_fmac_f32 v52, v157, v129
	v_dual_fmac_f32 v71, v138, v126 :: v_dual_fmac_f32 v36, v172, v129
	v_dual_fmac_f32 v69, v140, v128 :: v_dual_fmac_f32 v38, v170, v127
	v_fmac_f32_e32 v55, v154, v126
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v53, v156, v128 :: v_dual_fmac_f32 v74, v182, v130
	v_dual_fmac_f32 v39, v158, v126 :: v_dual_fmac_f32 v66, v143, v131
	v_dual_fmac_f32 v37, v171, v128 :: v_dual_fmac_f32 v64, v145, v133
	v_dual_fmac_f32 v83, v191, v131 :: v_dual_fmac_f32 v48, v176, v133
	v_dual_fmac_f32 v82, v192, v132 :: v_dual_fmac_f32 v81, v193, v133
	v_fmac_f32_e32 v34, v162, v131
	v_dual_fmac_f32 v67, v142, v130 :: v_dual_fmac_f32 v50, v173, v131
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v65, v144, v132 :: v_dual_fmac_f32 v80, v175, v134
	v_dual_fmac_f32 v51, v159, v130 :: v_dual_fmac_f32 v78, v120, v136
	v_dual_fmac_f32 v49, v174, v132 :: v_dual_fmac_f32 v60, v149, v137
	v_dual_fmac_f32 v35, v161, v130 :: v_dual_fmac_f32 v62, v146, v135
	v_dual_fmac_f32 v33, v169, v132 :: v_dual_fmac_f32 v46, v160, v135
	v_dual_fmac_f32 v23, v177, v133 :: v_dual_fmac_f32 v32, v184, v135
	v_dual_fmac_f32 v79, v119, v135 :: v_dual_fmac_f32 v44, v168, v137
	v_fmac_f32_e32 v77, v121, v137
	v_dual_fmac_f32 v63, v147, v134 :: v_dual_fmac_f32 v30, v186, v137
	v_fmac_f32_e32 v61, v148, v136
	v_fmac_f32_e32 v47, v183, v134
	v_fmac_f32_e32 v45, v167, v136
	v_fmac_f32_e32 v11, v187, v134
	v_fmac_f32_e32 v31, v185, v136
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, v92 :: v_dual_mov_b32 v2, v93
	v_mov_b32_e32 v3, v94
	v_mov_b32_e32 v5, v95
.LBB0_7:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v90|, |v90|
	v_max_f32_e64 v6, |v91|, |v91|
	v_max3_f32 v8, |v83|, |v82|, |v81|
	v_max3_f32 v9, |v80|, |v79|, |v78|
	v_max3_f32 v7, |v88|, |v87|, |v86|
	v_max_f32_e64 v10, |v76|, |v76|
	v_max3_f32 v14, |v66|, |v65|, |v64|
	v_max3_f32 v15, |v63|, |v62|, |v61|
	v_max3_f32 v8, v8, v9, |v77|
	v_max_f32_e64 v9, |v59|, |v59|
	v_max_f32_e32 v4, v6, v4
	v_max_f32_e64 v6, |v75|, |v75|
	v_max3_f32 v16, |v50|, |v49|, |v48|
	v_max3_f32 v17, |v47|, |v46|, |v45|
	v_max3_f32 v12, |v85|, |v84|, |v74|
	v_max3_f32 v4, v4, |v89|, v7
	v_max_f32_e64 v7, |v58|, |v58|
	v_max_f32_e32 v6, v10, v6
	v_max3_f32 v10, |v72|, |v71|, |v70|
	v_max3_f32 v13, |v69|, |v68|, |v67|
	v_max3_f32 v4, v4, v12, v8
	v_max_f32_e32 v7, v9, v7
	v_max3_f32 v9, |v56|, |v55|, |v54|
	v_max3_f32 v12, |v11|, |v32|, |v31|
	s_mov_b32 s0, 0x76543210
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v19, 3, v2
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, v7, |v57|, v9
	v_max3_f32 v9, v16, v17, |v44|
	v_max_f32_e64 v16, |v43|, |v43|
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v17, 3, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v73|, v10
	v_max3_f32 v10, v14, v15, |v60|
	v_max3_f32 v14, |v53|, |v52|, |v51|
	v_max_f32_e64 v15, |v42|, |v42|
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp11:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v97.h, 0
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v13, v10
	v_max3_f32 v7, v7, v14, v9
	v_max_f32_e32 v8, v16, v15
	v_max3_f32 v9, |v40|, |v39|, |v38|
	v_max3_f32 v10, |v34|, |v33|, |v23|
	v_max3_f32 v13, |v37|, |v36|, |v35|
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v6, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, |v41|, v9
	v_max3_f32 v9, v10, v12, |v30|
.Ltmp15:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s29, 0xffff
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v14, v14
	v_max_f32_e32 v12, v15, v15
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v15, v7, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, v13, v9
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v9, 5, v17
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v4, v10 :: v_dual_max_f32 v14, v6, v12
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v6, 4, v0
	v_lshl_add_u32 v10, v17, 9, 0
	v_permlanex16_b32 v16, v8, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v15, v15
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v12, 0x60, v0
	v_and_or_b32 v3, 0x680, v3, v9
	v_lshl_add_u32 v20, v6, 6, 0
	s_mov_b32 s11, 0x31027000
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v7, v4
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v4, v6, 2, v10
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v7, v16, v16 :: v_dual_lshlrev_b32 v10, 1, v2
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v18, v9, v12
	v_xor_b32_e32 v3, v3, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v4, v1, 4, v4
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v8, v7
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v2, 0, v2
	s_mov_b32 s10, 0x7ffffffe
	v_add3_u32 v3, v20, v19, v3
	v_add3_u32 v4, v4, v10, v18
.Ltmp30:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s8, s28
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 3, v1
	ds_store_b128 v4, v[13:16]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v7, v15
	v_mov_b32_e32 v3, v13
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v8, v13, v13 :: v_dual_max_f32 v13, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v4, v14
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v16, v16
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v7, v7
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	v_max_f32_e32 v4, v13, v4
	v_max_f32_e32 v13, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v3, v8, v3
	v_max_f32_e32 v8, v15, v15
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v8, v7
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v4 :: v_dual_max_f32 v15, v15, v15
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v8, v14, v13 :: v_dual_mov_b32 v13, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v15 :: v_dual_mov_b32 v14, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v7, v7, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v16 :: v_dual_max_f32 v13, v15, v15
	v_max_f32_e32 v8, v8, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v18, v7
	v_dual_mov_b32 v16, v4 :: v_dual_max_f32 v13, v3, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v19, v8
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v18, v18 :: v_dual_max_f32 v14, v16, v16
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v18, 1, v12
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v15, v7, v3 :: v_dual_max_f32 v14, v4, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v4, v19, v19 :: v_dual_lshlrev_b32 v3, 5, v6
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v6, v17, 4, 0
	v_add3_u32 v2, v2, v18, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v8, v4
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v6, v3, v1
	ds_store_b128 v2, v[13:16]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
.Ltmp56:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v7, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v18, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v13, v6
	v_rcp_f32_e32 v15, v7
	v_div_scale_f32 v20, s0, v3, 0x40e00000, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v19, -v6, v13, 1.0
	v_max_f32_e32 v4, v4, v4
	v_fma_f32 v21, -v7, v15, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_fmac_f32 v13, v19, v13
	v_dual_max_f32 v4, 0x2b8cbccc, v4 :: v_dual_fmac_f32 v15, v21, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v2
	v_mul_f32_e32 v21, v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v4
	v_rcp_f32_e32 v16, v8
	v_div_scale_f32 v19, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v17, v14
	v_fma_f32 v22, -v8, v16, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v14, v17, 1.0
	v_fmac_f32_e32 v16, v22, v16
	v_div_scale_f32 v22, s6, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, v92, v17
	v_fma_f32 v92, -v6, v21, v18
	v_dual_mul_f32 v93, v20, v15 :: v_dual_mul_f32 v94, v19, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v92, v13
	v_fma_f32 v92, -v7, v93, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v8, v94, v19
	v_mul_f32_e32 v95, v22, v17
	v_fma_f32 v6, -v6, v21, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v92, v15
	v_fmac_f32_e32 v94, v96, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v14, v95, v22
	v_div_fmas_f32 v6, v6, v13, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v7, v93, v20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v95, v98, v17
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v13.h, v97.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v6, 0x40e00000, v1
	v_div_fmas_f32 v7, v7, v15, v93
	v_fma_f32 v8, -v8, v94, v19
	v_fma_f32 v6, -v14, v95, v22
	s_mov_b32 vcc_lo, s1
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v13.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v3, v7, 0x40e00000, v3
	v_div_fmas_f32 v8, v8, v16, v94
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v7, 1, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v13, v6, v17, v95
	v_div_fixup_f32 v2, v8, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v97.l, v3.h
	v_mov_b16_e32 v8.h, v97.h
	v_add3_u32 v6, v1, v7, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v13, v13, 0x40e00000, v4
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v8.l, v2.h
	v_and_b32_e32 v1, 1, v97
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_and_b32_e32 v7, 63, v0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v94, 0xffff0000, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v97.l, v13.h
	v_and_b32_e32 v4, 1, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v14, null, v94, v94, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v15, 1, v97
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v16, null, v94, v94, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v17, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v8, v2, v4, 0x7fff
	v_add3_u32 v2, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v15, v16
	v_div_scale_f32 v13, vcc_lo, v91, v94, v91
	v_div_scale_f32 v20, null, v94, v94, v89
	v_div_scale_f32 v95, s1, v89, v94, v89
	v_fma_f32 v18, -v14, v17, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v22, v20
	v_div_scale_f32 v99, s6, v88, v94, v88
	v_fma_f32 v21, -v16, v15, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, null, v94, v94, v88
	v_fmac_f32_e32 v15, v21, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v21, v13, v17
	v_rcp_f32_e32 v96, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v100, -v20, v22, 1.0
	v_fma_f32 v98, -v14, v21, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v22, v100, v22 :: v_dual_fmac_f32 v21, v98, v17
	v_div_scale_f32 v98, null, v94, v94, v87
	v_fma_f32 v102, -v18, v96, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v14, v21, v13
	v_rcp_f32_e32 v100, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v96, v102, v96
	v_div_fmas_f32 v14, v13, v17, v21
	v_mul_f32_e32 v17, v95, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v21, v99, v96
	v_div_fixup_f32 v14, v14, v94, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v102, -v98, v100, 1.0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v102, v100
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v1, v3, v1, 0x7fff
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s46, v7
	v_add_co_ci_u32_e64 v4, null, s47, 0, s0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v19, s0, v90, v94, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v92, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v97, v19, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v16, v97, v19
	v_fmac_f32_e32 v97, v101, v15
	v_div_scale_f32 v101, null, v94, v94, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v97, v19
	v_rcp_f32_e32 v91, v101
	v_fma_f32 v19, -v20, v17, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v16, v15, v97
	v_fma_f32 v16, -v18, v21, v99
	v_fmac_f32_e32 v17, v19, v22
	v_div_scale_f32 v19, s0, v87, v94, v87
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v101, v91, 1.0
	v_fma_f32 v20, -v20, v17, v95
	v_fmac_f32_e32 v21, v16, v96
	v_div_fixup_f32 v15, v15, v94, v90
	v_dual_mul_f32 v90, v19, v100 :: v_dual_fmac_f32 v91, v97, v91
	v_div_scale_f32 v97, null, v94, v94, v85
	v_div_scale_f32 v95, s7, v86, v94, v86
	v_div_fmas_f32 v16, v20, v22, v17
	v_fma_f32 v17, -v18, v21, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v20, v97
	v_div_scale_f32 v99, null, v94, v94, v84
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v18, -v98, v90, v19
	v_mul_f32_e32 v22, v95, v91
	v_div_fmas_f32 v17, v17, v96, v21
	v_rcp_f32_e32 v21, v99
	v_div_fixup_f32 v16, v16, v94, v89
	v_fmac_f32_e32 v90, v18, v100
	v_fma_f32 v18, -v101, v22, v95
	v_fma_f32 v96, -v97, v20, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v93, 0xffff0000, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v17, v94, v88
	v_fma_f32 v19, -v98, v90, v19
	v_fmac_f32_e32 v22, v18, v91
	v_fmac_f32_e32 v20, v96, v20
	v_div_scale_f32 v88, s1, v85, v94, v85
	v_fma_f32 v18, -v99, v21, 1.0
	v_div_scale_f32 v89, null, v94, v94, v74
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v98, s0, v84, v94, v84
	v_div_fmas_f32 v19, v19, v100, v90
	v_fma_f32 v90, -v101, v22, v95
	v_mul_f32_e32 v95, v88, v20
	v_fmac_f32_e32 v21, v18, v21
	v_rcp_f32_e32 v96, v89
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v100, null, v94, v94, v83
	v_div_fmas_f32 v22, v90, v91, v22
	v_fma_f32 v90, -v97, v95, v88
	v_mul_f32_e32 v91, v98, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v102, v100
	v_div_fixup_f32 v18, v19, v94, v87
	v_div_fixup_f32 v19, v22, v94, v86
	v_fma_f32 v101, -v89, v96, 1.0
	v_fmac_f32_e32 v95, v90, v20
	v_fma_f32 v22, -v99, v91, v98
	v_div_scale_f32 v86, s6, v74, v94, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v96, v101, v96
	v_div_scale_f32 v87, null, v94, v94, v82
	v_fma_f32 v88, -v97, v95, v88
	v_fmac_f32_e32 v91, v22, v21
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v90, -v100, v102, 1.0
	v_mul_f32_e32 v22, v86, v96
	v_rcp_f32_e32 v97, v87
	v_div_fmas_f32 v20, v88, v20, v95
	v_fma_f32 v88, -v99, v91, v98
	v_div_scale_f32 v101, null, v94, v94, v81
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v102, v90, v102
	v_div_scale_f32 v90, s7, v83, v94, v83
	v_fma_f32 v95, -v89, v22, v86
	v_div_fmas_f32 v21, v88, v21, v91
	v_rcp_f32_e32 v88, v101
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v13, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v90, v102
	v_fma_f32 v99, -v87, v97, 1.0
	v_fmac_f32_e32 v22, v95, v96
	v_div_scale_f32 v95, s0, v82, v94, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v100, v98, v90
	v_fmac_f32_e32 v97, v99, v97
	v_div_fixup_f32 v21, v21, v94, v84
	v_fma_f32 v84, -v89, v22, v86
	v_fma_f32 v86, -v101, v88, 1.0
	v_div_scale_f32 v89, null, v94, v94, v80
	v_div_fixup_f32 v20, v20, v94, v85
	v_fmac_f32_e32 v98, v91, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v85, v95, v97 :: v_dual_fmac_f32 v88, v86, v88
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v91, s1, v81, v94, v81
	v_div_fmas_f32 v22, v84, v96, v22
	v_fma_f32 v84, -v100, v98, v90
	v_fma_f32 v90, -v87, v85, v95
	v_div_scale_f32 v96, null, v94, v94, v79
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v89, v86, 1.0
	v_div_fmas_f32 v84, v84, v102, v98
	v_fmac_f32_e32 v85, v90, v97
	v_rcp_f32_e32 v90, v96
	v_mul_f32_e32 v98, v91, v88
	v_div_fixup_f32 v22, v22, v94, v74
	v_div_fixup_f32 v74, v84, v94, v83
	v_fma_f32 v83, -v87, v85, v95
	v_fmac_f32_e32 v86, v99, v86
	v_div_scale_f32 v99, null, v94, v94, v78
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v84, -v101, v98, v91
	v_div_scale_f32 v87, s6, v80, v94, v80
	v_fma_f32 v95, -v96, v90, 1.0
	v_div_fmas_f32 v83, v83, v97, v85
	v_rcp_f32_e32 v85, v99
	v_fmac_f32_e32 v98, v84, v88
	v_mul_f32_e32 v84, v87, v86
	v_fmac_f32_e32 v90, v95, v90
	v_div_scale_f32 v95, s0, v79, v94, v79
	v_div_scale_f32 v97, null, v94, v94, v77
	v_div_fixup_f32 v82, v83, v94, v82
	v_fma_f32 v83, -v101, v98, v91
	v_fma_f32 v91, -v89, v84, v87
	v_mul_f32_e32 v100, v95, v90
	v_rcp_f32_e32 v101, v97
	v_fma_f32 v102, -v99, v85, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v84, v91, v86
	v_div_fmas_f32 v83, v83, v88, v98
	v_fma_f32 v88, -v96, v100, v95
	v_fmac_f32_e32 v85, v102, v85
	v_div_scale_f32 v91, s1, v78, v94, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v81, v83, v94, v81
	v_fma_f32 v98, -v97, v101, 1.0
	v_fma_f32 v83, -v89, v84, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v100, v88, v90 :: v_dual_mul_f32 v87, v91, v85
	v_div_scale_f32 v89, null, v93, v93, v76
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v101, v98, v101
	v_div_scale_f32 v88, s7, v77, v94, v77
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v96, v100, v95
	v_fma_f32 v86, -v99, v87, v91
	v_rcp_f32_e32 v95, v89
	v_div_scale_f32 v98, null, v93, v93, v75
	v_mul_f32_e32 v96, v88, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v86, v85
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v86, v98
	v_div_fmas_f32 v84, v84, v90, v100
	v_fma_f32 v90, -v97, v96, v88
	v_div_fixup_f32 v80, v83, v94, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v100, -v89, v95, 1.0
	v_fma_f32 v83, -v99, v87, v91
	v_div_fixup_f32 v79, v84, v94, v79
	v_fmac_f32_e32 v96, v90, v101
	v_div_scale_f32 v84, s0, v76, v93, v76
	v_fmac_f32_e32 v95, v100, v95
	v_fma_f32 v90, -v98, v86, 1.0
	v_div_scale_f32 v91, null, v93, v93, v73
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v80, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v85, v87
	v_fma_f32 v85, -v97, v96, v88
	v_dual_mul_f32 v87, v84, v95 :: v_dual_fmac_f32 v86, v90, v86
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v90, s1, v75, v93, v75
	v_div_scale_f32 v97, null, v93, v93, v72
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v99, v90, v86
	v_div_fmas_f32 v85, v85, v101, v96
	v_fma_f32 v96, -v89, v87, v84
	v_rcp_f32_e32 v101, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v100, -v91, v88, 1.0
	v_div_fixup_f32 v78, v83, v94, v78
	v_div_fixup_f32 v77, v85, v94, v77
	v_fmac_f32_e32 v87, v96, v95
	v_fma_f32 v83, -v98, v99, v90
	v_div_scale_f32 v94, null, v93, v93, v71
	v_fmac_f32_e32 v88, v100, v88
	v_div_scale_f32 v85, s6, v73, v93, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v97, v101, 1.0
	v_fma_f32 v84, -v89, v87, v84
	v_fmac_f32_e32 v99, v83, v86
	v_rcp_f32_e32 v89, v94
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v83, v85, v88
	v_fmac_f32_e32 v101, v96, v101
	v_div_scale_f32 v96, s7, v72, v93, v72
	v_div_fmas_f32 v84, v84, v95, v87
	v_fma_f32 v87, -v98, v99, v90
	v_div_scale_f32 v100, null, v93, v93, v70
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v90, -v91, v83, v85
	v_mul_f32_e32 v95, v96, v101
	v_fma_f32 v98, -v94, v89, 1.0
	v_div_fmas_f32 v86, v87, v86, v99
	v_rcp_f32_e32 v87, v100
	v_fmac_f32_e32 v83, v90, v88
	v_fma_f32 v90, -v97, v95, v96
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v98, s0, v71, v93, v71
	v_div_fixup_f32 v76, v84, v93, v76
	v_div_fixup_f32 v75, v86, v93, v75
	v_fma_f32 v84, -v91, v83, v85
	v_fmac_f32_e32 v95, v90, v101
	v_mul_f32_e32 v85, v98, v89
	v_fma_f32 v86, -v100, v87, 1.0
	v_div_scale_f32 v90, null, v93, v93, v69
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v91, s1, v70, v93, v70
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v97, v95, v96
	v_fma_f32 v88, -v94, v85, v98
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v96, null, v93, v93, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v88, v89
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v73, v83, v93, v73
	v_rcp_f32_e32 v88, v96
	v_div_fmas_f32 v84, v84, v101, v95
	v_mul_f32_e32 v95, v91, v87
	v_fma_f32 v83, -v94, v85, v98
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v86, 1.0
	v_div_scale_f32 v98, null, v93, v93, v67
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v72, v84, v93, v72
	v_fma_f32 v84, -v100, v95, v91
	v_fmac_f32_e32 v86, v97, v86
	v_div_scale_f32 v94, s6, v69, v93, v69
	v_fma_f32 v97, -v96, v88, 1.0
	v_div_fmas_f32 v83, v83, v89, v85
	v_rcp_f32_e32 v85, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v84, v87 :: v_dual_mul_f32 v84, v94, v86
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v89, s0, v68, v93, v68
	v_div_scale_f32 v97, null, v93, v93, v66
	v_div_fixup_f32 v71, v83, v93, v71
	v_fma_f32 v83, -v100, v95, v91
	v_fma_f32 v91, -v90, v84, v94
	v_mul_f32_e32 v99, v89, v88
	v_rcp_f32_e32 v100, v97
	v_fma_f32 v101, -v98, v85, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v84, v91, v86
	v_div_fmas_f32 v83, v83, v87, v95
	v_fma_f32 v87, -v96, v99, v89
	v_fmac_f32_e32 v85, v101, v85
	v_div_scale_f32 v91, s1, v67, v93, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v70, v83, v93, v70
	v_fma_f32 v95, -v97, v100, 1.0
	v_fma_f32 v83, -v90, v84, v94
	v_fmac_f32_e32 v99, v87, v88
	v_mul_f32_e32 v87, v91, v85
	v_div_scale_f32 v94, null, v93, v93, v65
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v100, v95, v100
	v_div_scale_f32 v90, s7, v66, v93, v66
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v96, v99, v89
	v_fma_f32 v86, -v98, v87, v91
	v_rcp_f32_e32 v89, v94
	v_div_scale_f32 v96, null, v93, v93, v64
	v_mul_f32_e32 v95, v90, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v86, v85
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v86, v96
	v_div_fmas_f32 v84, v84, v88, v99
	v_fma_f32 v88, -v97, v95, v90
	v_div_fixup_f32 v69, v83, v93, v69
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v94, v89, 1.0
	v_fma_f32 v83, -v98, v87, v91
	v_div_fixup_f32 v68, v84, v93, v68
	v_fmac_f32_e32 v95, v88, v100
	v_div_scale_f32 v84, s0, v65, v93, v65
	v_fmac_f32_e32 v89, v99, v89
	v_fma_f32 v88, -v96, v86, 1.0
	v_div_scale_f32 v91, null, v93, v93, v63
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v101, null, v93, v93, v60
	v_div_fmas_f32 v83, v83, v85, v87
	v_fma_f32 v85, -v97, v95, v90
	v_mul_f32_e32 v87, v84, v89
	v_fmac_f32_e32 v86, v88, v86
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v90, s1, v64, v93, v64
	v_div_scale_f32 v97, null, v93, v93, v62
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v98, v90, v86
	v_div_fmas_f32 v85, v85, v100, v95
	v_fma_f32 v95, -v94, v87, v84
	v_rcp_f32_e32 v100, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v91, v88, 1.0
	v_div_fixup_f32 v67, v83, v93, v67
	v_fma_f32 v83, -v96, v98, v90
	v_fmac_f32_e32 v87, v95, v89
	v_div_scale_f32 v95, null, v93, v93, v61
	v_div_fixup_f32 v66, v85, v93, v66
	v_fmac_f32_e32 v88, v99, v88
	v_div_scale_f32 v85, s6, v63, v93, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v97, v100, 1.0
	v_fma_f32 v84, -v94, v87, v84
	v_fmac_f32_e32 v98, v83, v86
	v_rcp_f32_e32 v94, v95
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v83, v85, v88
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s7, v62, v93, v62
	v_div_fmas_f32 v84, v84, v89, v87
	v_fma_f32 v87, -v96, v98, v90
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v89, -v91, v83, v85
	v_mul_f32_e32 v90, v99, v100
	v_fma_f32 v96, -v95, v94, 1.0
	v_div_fmas_f32 v86, v87, v86, v98
	v_rcp_f32_e32 v87, v101
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v89, -v97, v90, v99
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s0, v61, v93, v61
	v_div_fixup_f32 v65, v84, v93, v65
	v_div_fixup_f32 v64, v86, v93, v64
	v_fma_f32 v84, -v91, v83, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v90, v89, v100 :: v_dual_mul_f32 v85, v96, v94
	v_fma_f32 v86, -v101, v87, 1.0
	v_div_scale_f32 v89, null, v92, v92, v59
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v91, s1, v60, v93, v60
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v97, v90, v99
	v_fma_f32 v88, -v95, v85, v96
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v97, null, v92, v92, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v88, v94
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v63, v83, v93, v63
	v_rcp_f32_e32 v88, v97
	v_div_fmas_f32 v84, v84, v100, v90
	v_mul_f32_e32 v90, v91, v87
	v_fma_f32 v83, -v95, v85, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v89, v86, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v62, v84, v93, v62
	v_fma_f32 v84, -v101, v90, v91
	v_div_scale_f32 v95, s6, v59, v92, v59
	v_fmac_f32_e32 v86, v98, v86
	v_fma_f32 v96, -v97, v88, 1.0
	v_div_scale_f32 v98, null, v92, v92, v57
	v_div_fmas_f32 v83, v83, v94, v85
	v_fmac_f32_e32 v90, v84, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v96, v88
	v_rcp_f32_e32 v85, v98
	v_div_scale_f32 v96, null, v92, v92, v56
	v_mul_f32_e32 v84, v95, v86
	v_div_scale_f32 v94, s0, v58, v92, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v100, v96
	v_div_fixup_f32 v61, v83, v93, v61
	v_fma_f32 v83, -v101, v90, v91
	v_fma_f32 v91, -v89, v84, v95
	v_mul_f32_e32 v99, v94, v88
	v_fma_f32 v101, -v98, v85, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v90
	v_fmac_f32_e32 v84, v91, v86
	v_fma_f32 v87, -v97, v99, v94
	v_fmac_f32_e32 v85, v101, v85
	v_div_scale_f32 v90, s1, v57, v92, v57
	v_fma_f32 v91, -v96, v100, 1.0
	v_div_fixup_f32 v60, v83, v93, v60
	v_fma_f32 v83, -v89, v84, v95
	v_fmac_f32_e32 v99, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v87, v90, v85 :: v_dual_fmac_f32 v100, v91, v100
	v_div_scale_f32 v91, null, v92, v92, v55
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v89, s7, v56, v92, v56
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v86, -v98, v87, v90
	v_rcp_f32_e32 v93, v91
	v_div_scale_f32 v95, null, v92, v92, v54
	v_fma_f32 v84, -v97, v99, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v94, v89, v100 :: v_dual_fmac_f32 v87, v86, v85
	v_rcp_f32_e32 v86, v95
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v59, v83, v92, v59
	v_div_fmas_f32 v84, v84, v88, v99
	v_fma_f32 v88, -v96, v94, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v91, v93, 1.0
	v_fma_f32 v83, -v98, v87, v90
	v_div_scale_f32 v90, null, v92, v92, v53
	v_div_fixup_f32 v58, v84, v92, v58
	v_dual_fmac_f32 v94, v88, v100 :: v_dual_fmac_f32 v93, v97, v93
	v_div_scale_f32 v84, s0, v55, v92, v55
	v_fma_f32 v88, -v95, v86, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v85, v87
	v_fma_f32 v85, -v96, v94, v89
	v_mul_f32_e32 v87, v84, v93
	v_fmac_f32_e32 v86, v88, v86
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v89, s1, v54, v92, v54
	v_div_scale_f32 v96, null, v92, v92, v52
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v97, v89, v86
	v_div_fmas_f32 v85, v85, v100, v94
	v_fma_f32 v94, -v91, v87, v84
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v90, v88, 1.0
	v_div_fixup_f32 v57, v83, v92, v57
	v_fma_f32 v83, -v95, v97, v89
	v_fmac_f32_e32 v87, v94, v93
	v_div_scale_f32 v94, null, v92, v92, v51
	v_div_fixup_f32 v56, v85, v92, v56
	v_fmac_f32_e32 v88, v98, v88
	v_div_scale_f32 v85, s6, v53, v92, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v84, -v91, v87, v84
	v_fmac_f32_e32 v97, v83, v86
	v_rcp_f32_e32 v91, v94
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v83, v85, v88
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s7, v52, v92, v52
	v_div_fmas_f32 v84, v84, v93, v87
	v_fma_f32 v87, -v95, v97, v89
	v_div_scale_f32 v100, null, v92, v92, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v89, -v90, v83, v85
	v_mul_f32_e32 v93, v98, v99
	v_fma_f32 v95, -v94, v91, 1.0
	v_div_fmas_f32 v86, v87, v86, v97
	v_rcp_f32_e32 v87, v100
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v89, -v96, v93, v98
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s0, v51, v92, v51
	v_div_fixup_f32 v55, v84, v92, v55
	v_div_fixup_f32 v54, v86, v92, v54
	v_fma_f32 v84, -v90, v83, v85
	v_fmac_f32_e32 v93, v89, v99
	v_mul_f32_e32 v85, v95, v91
	v_fma_f32 v86, -v100, v87, 1.0
	v_div_scale_f32 v89, null, v92, v92, v49
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v90, s1, v50, v92, v50
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v96, v93, v98
	v_fma_f32 v88, -v94, v85, v95
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v96, null, v92, v92, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v88, v91
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v53, v83, v92, v53
	v_rcp_f32_e32 v88, v96
	v_div_fmas_f32 v84, v84, v99, v93
	v_mul_f32_e32 v93, v90, v87
	v_fma_f32 v83, -v94, v85, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v89, v86, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v52, v84, v92, v52
	v_fma_f32 v84, -v100, v93, v90
	v_div_scale_f32 v94, s6, v49, v92, v49
	v_fmac_f32_e32 v86, v97, v86
	v_fma_f32 v95, -v96, v88, 1.0
	v_div_scale_f32 v97, null, v92, v92, v47
	v_div_fmas_f32 v83, v83, v91, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v84, v87 :: v_dual_fmac_f32 v88, v95, v88
	v_rcp_f32_e32 v85, v97
	v_div_scale_f32 v95, null, v92, v92, v46
	v_mul_f32_e32 v84, v94, v86
	v_div_scale_f32 v91, s0, v48, v92, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v99, v95
	v_div_fixup_f32 v51, v83, v92, v51
	v_fma_f32 v83, -v100, v93, v90
	v_fma_f32 v90, -v89, v84, v94
	v_mul_f32_e32 v98, v91, v88
	v_fma_f32 v100, -v97, v85, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v93
	v_fmac_f32_e32 v84, v90, v86
	v_fma_f32 v87, -v96, v98, v91
	v_fmac_f32_e32 v85, v100, v85
	v_div_scale_f32 v90, s1, v47, v92, v47
	v_fma_f32 v93, -v95, v99, 1.0
	v_div_fixup_f32 v50, v83, v92, v50
	v_fma_f32 v83, -v89, v84, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v98, v87, v88 :: v_dual_mul_f32 v87, v90, v85
	v_fmac_f32_e32 v99, v93, v99
	v_div_scale_f32 v93, null, v92, v92, v45
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v89, s7, v46, v92, v46
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v96, v98, v91
	v_fma_f32 v86, -v97, v87, v90
	v_rcp_f32_e32 v91, v93
	v_div_scale_f32 v96, null, v92, v92, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v94, v89, v99 :: v_dual_fmac_f32 v87, v86, v85
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v86, v96
	v_div_fmas_f32 v84, v84, v88, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v88, -v95, v94, v89
	v_div_fixup_f32 v49, v83, v92, v49
	v_fma_f32 v98, -v93, v91, 1.0
	v_fma_f32 v83, -v97, v87, v90
	v_div_fixup_f32 v48, v84, v92, v48
	v_fmac_f32_e32 v94, v88, v99
	v_div_scale_f32 v84, s0, v45, v92, v45
	v_fmac_f32_e32 v91, v98, v91
	v_fma_f32 v88, -v96, v86, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v97, null, v13, v13, v42
	v_div_fmas_f32 v83, v83, v85, v87
	v_fma_f32 v85, -v95, v94, v89
	v_mul_f32_e32 v87, v84, v91
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, null, v13, v13, v43
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v89, s1, v44, v92, v44
	v_div_fmas_f32 v85, v85, v99, v94
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v94, -v93, v87, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v95, v89, v86
	v_div_fixup_f32 v47, v83, v92, v47
	v_div_fixup_f32 v46, v85, v92, v46
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v87, v94, v91
	v_fma_f32 v83, -v96, v95, v89
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v99, null, v13, v13, v40
	v_fma_f32 v94, -v88, v90, 1.0
	v_fma_f32 v84, -v93, v87, v84
	v_div_scale_f32 v93, null, v13, v13, v41
	v_fmac_f32_e32 v95, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v94, v90
	v_fma_f32 v98, -v97, v85, 1.0
	v_rcp_f32_e32 v94, v93
	v_div_fmas_f32 v84, v84, v91, v87
	v_fma_f32 v87, -v96, v95, v89
	v_div_scale_f32 v91, s0, v42, v13, v42
	v_fmac_f32_e32 v85, v98, v85
	v_div_scale_f32 v83, s6, v43, v13, v43
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v101, v99
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v93, v94, 1.0
	v_mul_f32_e32 v100, v91, v85
	v_mul_f32_e32 v89, v83, v90
	v_div_fmas_f32 v86, v87, v86, v95
	v_div_fixup_f32 v45, v84, v92, v45
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s7, v41, v13, v41
	v_fma_f32 v87, -v97, v100, v91
	v_fma_f32 v98, -v88, v89, v83
	v_div_fixup_f32 v44, v86, v92, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v96, v94
	v_fma_f32 v86, -v99, v101, 1.0
	v_fmac_f32_e32 v100, v87, v85
	v_div_scale_f32 v87, null, v13, v13, v39
	v_fma_f32 v84, -v93, v95, v96
	v_fmac_f32_e32 v89, v98, v90
	v_fmac_f32_e32 v101, v86, v101
	v_div_scale_f32 v86, s1, v40, v13, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v95, v84, v94
	v_rcp_f32_e32 v84, v87
	v_fma_f32 v83, -v88, v89, v83
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v88, -v97, v100, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v90, v89
	v_mul_f32_e32 v89, v86, v101
	v_div_scale_f32 v90, null, v13, v13, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v43, v83, v13, v43
	v_div_fmas_f32 v85, v88, v85, v100
	v_fma_f32 v88, -v93, v95, v96
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v93, -v99, v89, v86
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s0, v39, v13, v39
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v89, v93, v101
	v_div_fmas_f32 v88, v88, v94, v95
	v_mul_f32_e32 v83, v91, v84
	v_div_fixup_f32 v42, v85, v13, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v90, v92, 1.0
	v_fma_f32 v86, -v99, v89, v86
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v93, -v87, v83, v91
	v_div_fixup_f32 v41, v88, v13, v41
	v_div_scale_f32 v88, null, v13, v13, v37
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, s6, v38, v13, v38
	v_div_fmas_f32 v86, v86, v101, v89
	v_fmac_f32_e32 v83, v93, v84
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v85, v92
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v40, v86, v13, v40
	v_fma_f32 v86, -v87, v83, v91
	v_div_scale_f32 v93, null, v13, v13, v36
	v_fma_f32 v87, -v90, v89, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v86, v84, v83
	v_div_scale_f32 v84, null, v13, v13, v35
	v_fma_f32 v91, -v88, v94, 1.0
	v_rcp_f32_e32 v95, v93
	v_fmac_f32_e32 v89, v87, v92
	v_rcp_f32_e32 v87, v84
	v_div_scale_f32 v86, s0, v37, v13, v37
	v_fmac_f32_e32 v94, v91, v94
	v_div_scale_f32 v91, null, v13, v13, v34
	v_div_fixup_f32 v39, v83, v13, v39
	v_fma_f32 v85, -v90, v89, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v93, v95, 1.0
	v_rcp_f32_e32 v97, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v84, v87, 1.0
	v_mul_f32_e32 v90, v86, v94
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v95, v83, v95
	v_div_scale_f32 v83, s1, v36, v13, v36
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v96, null, v13, v13, v33
	v_div_fmas_f32 v85, v85, v92, v89
	v_fma_f32 v89, -v88, v90, v86
	v_mul_f32_e32 v92, v83, v95
	v_div_scale_f32 v98, s6, v35, v13, v35
	v_fma_f32 v99, -v91, v97, 1.0
	v_rcp_f32_e32 v100, v96
	v_fmac_f32_e32 v90, v89, v94
	v_fma_f32 v89, -v93, v92, v83
	v_mul_f32_e32 v101, v98, v87
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, s7, v34, v13, v34
	v_div_fixup_f32 v38, v85, v13, v38
	v_fma_f32 v85, -v88, v90, v86
	v_fmac_f32_e32 v92, v89, v95
	v_fma_f32 v86, -v84, v101, v98
	v_mul_f32_e32 v88, v99, v97
	v_fma_f32 v89, -v96, v100, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v83, -v93, v92, v83
	v_fmac_f32_e32 v101, v86, v87
	v_fma_f32 v86, -v91, v88, v99
	v_fmac_f32_e32 v100, v89, v100
	v_div_scale_f32 v89, s0, v33, v13, v33
	v_div_fmas_f32 v85, v85, v94, v90
	v_fma_f32 v84, -v84, v101, v98
	v_fmac_f32_e32 v88, v86, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v86, v89, v100
	v_div_scale_f32 v90, null, v13, v13, v23
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v37, v85, v13, v37
	v_div_fmas_f32 v83, v83, v95, v92
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v84, v84, v87, v101
	v_fma_f32 v87, -v91, v88, v99
	v_fma_f32 v91, -v96, v86, v89
	v_div_fixup_f32 v36, v83, v13, v36
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v35, v84, v13, v35
	v_div_fmas_f32 v87, v87, v97, v88
	v_fmac_f32_e32 v86, v91, v100
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v85, -v90, v92, 1.0
	v_div_scale_f32 v84, null, v13, v13, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v86, v89
	v_div_fixup_f32 v34, v87, v13, v34
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v13, v13, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v83, v100, v86
	v_div_scale_f32 v88, vcc_lo, v23, v13, v23
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v87, null, v13, v13, v31
	v_mul_f32_e32 v93, v88, v92
	v_div_scale_f32 v94, null, v13, v13, v30
	v_rcp_f32_e32 v89, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v97, -v90, v93, v88
	v_div_fixup_f32 v33, v83, v13, v33
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v83, -v84, v86, 1.0
	v_rcp_f32_e32 v96, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v97, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, s0, v11, v13, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v90, v93, v88
	v_fma_f32 v95, -v85, v89, 1.0
	v_fma_f32 v98, -v87, v91, 1.0
	v_mul_f32_e32 v99, v83, v86
	v_fma_f32 v100, -v94, v96, 1.0
	v_div_fmas_f32 v88, v88, v92, v93
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v89, v95, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v95, s1, v32, v13, v32
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v80, v80, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v104, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v98, v91
	v_div_scale_f32 v98, s6, v31, v13, v31
	v_fma_f32 v97, -v84, v99, v83
	v_fmac_f32_e32 v96, v100, v96
	v_div_scale_f32 v100, s7, v30, v13, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v106, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v101, v95, v89 :: v_dual_mul_f32 v102, v98, v91
	v_fmac_f32_e32 v99, v97, v86
	v_mul_f32_e32 v103, v100, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v105, v34
	v_and_b32_e32 v34, 15, v80
	v_and_b32_e32 v80, 15, v106
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v85, v101, v95
	v_fma_f32 v97, -v87, v102, v98
	v_fma_f32 v83, -v84, v99, v83
	v_fma_f32 v84, -v94, v103, v100
	v_div_fixup_f32 v23, v88, v13, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v101, v90, v89 :: v_dual_fmac_f32 v102, v97, v91
	v_div_fmas_f32 v83, v83, v86, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v103, v84, v96
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v85, -v85, v101, v95
	v_fma_f32 v84, -v87, v102, v98
	v_div_fixup_f32 v11, v83, v13, v11
	v_fma_f32 v86, -v94, v103, v100
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v89, v101
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v91, v102
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v32, v85, v13, v32
	v_div_fmas_f32 v86, v86, v96, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v81, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v84, v13, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v86, v13, v30
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v74
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v81, v81, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v82, v30
	v_cvt_i32_f32_e32 v81, v81
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v83, v56
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v109, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v30, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v21, 10, v0
	v_and_b32_e32 v22, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v108, v31
	v_and_b32_e32 v31, 15, v82
	v_and_b32_e32 v33, 15, v81
	v_and_b32_e32 v56, 15, v57
	v_and_b32_e32 v57, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v82, 4, v25
	v_and_b32_e32 v21, 0x1800, v21
	v_lshlrev_b32_e32 v83, 6, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v81, 15, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v23, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v12, v82, v12
	v_add3_u32 v21, 0, v21, v83
	v_and_or_b32 v9, 0x1b00, v23, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v79
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s0, 0x40e00000
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v21, v21, v12, v10
	v_xad_u32 v23, v9, v29, 0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v79, v79, s0, 0x40e00000
	v_med3_f32 v78, v78, s0, 0x40e00000
	v_med3_f32 v77, v77, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_cvt_i32_f32_e32 v107, v32
	v_and_b32_e32 v32, 15, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v96, v43
	v_cvt_i32_f32_e32 v97, v42
	v_cvt_i32_f32_e32 v98, v41
	v_cvt_i32_f32_e32 v99, v40
	v_and_b32_e32 v82, 15, v11
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v21, v[13:16]
	ds_store_b128 v21, v[30:33] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v23
	ds_load_b128 v[13:16], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v88, v51
	v_cvt_i32_f32_e32 v89, v50
	v_cvt_i32_f32_e32 v90, v49
	v_cvt_i32_f32_e32 v91, v48
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v84, v55
	v_cvt_i32_f32_e32 v85, v54
	v_cvt_i32_f32_e32 v100, v39
	v_cvt_i32_f32_e32 v101, v38
	v_and_b32_e32 v38, 15, v76
	v_and_b32_e32 v39, 15, v75
	v_and_b32_e32 v40, 15, v73
	v_and_b32_e32 v41, 15, v72
	v_and_b32_e32 v42, 15, v71
	v_and_b32_e32 v43, 15, v70
	v_and_b32_e32 v54, 15, v59
	v_and_b32_e32 v55, 15, v58
	v_and_b32_e32 v70, 15, v96
	v_and_b32_e32 v71, 15, v97
	v_and_b32_e32 v72, 15, v98
	v_and_b32_e32 v73, 15, v99
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v92, v47
	v_cvt_i32_f32_e32 v93, v46
	v_cvt_i32_f32_e32 v102, v37
	v_cvt_i32_f32_e32 v103, v36
	v_and_b32_e32 v35, 15, v79
	v_and_b32_e32 v36, 15, v78
	v_and_b32_e32 v37, 15, v77
	v_and_b32_e32 v46, 15, v67
	v_and_b32_e32 v47, 15, v66
	v_and_b32_e32 v48, 15, v65
	v_and_b32_e32 v49, 15, v64
	v_and_b32_e32 v50, 15, v63
	v_and_b32_e32 v51, 15, v62
	v_and_b32_e32 v62, 15, v88
	v_and_b32_e32 v63, 15, v89
	v_and_b32_e32 v64, 15, v90
	v_and_b32_e32 v65, 15, v91
	v_and_b32_e32 v78, 15, v104
	v_and_b32_e32 v79, 15, v105
	v_cvt_i32_f32_e32 v86, v53
	v_cvt_i32_f32_e32 v87, v52
	v_cvt_i32_f32_e32 v94, v45
	v_cvt_i32_f32_e32 v95, v44
	v_and_b32_e32 v44, 15, v69
	v_and_b32_e32 v45, 15, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[38:41]
	ds_store_b128 v21, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v23
	ds_load_b128 v[38:41], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[54:57]
	ds_store_b128 v21, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v23
	ds_load_b128 v[54:57], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[70:73]
	ds_store_b128 v21, v[78:81] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v23
	ds_load_b128 v[70:73], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[17:20]
	ds_store_b128 v21, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v23
	ds_load_b128 v[33:36], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v52, 15, v61
	v_and_b32_e32 v53, 15, v60
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v60, 15, v86
	v_and_b32_e32 v61, 15, v87
	v_and_b32_e32 v74, 15, v100
	v_and_b32_e32 v75, 15, v101
	v_and_b32_e32 v76, 15, v102
	v_and_b32_e32 v77, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[42:45]
	ds_store_b128 v21, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v23
	ds_load_b128 v[50:53], v23 offset:1024
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v25, 3, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v92
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v68, 15, v94
	v_and_b32_e32 v69, 15, v95
	v_and_b32_e32 v83, 15, v107
	v_and_b32_e32 v84, 15, v108
	v_and_b32_e32 v85, 15, v109
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s0, s33, 31
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[58:61]
	ds_store_b128 v21, v[66:69] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v23
	ds_load_b128 v[66:69], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[74:77]
	ds_store_b128 v21, v[82:85] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v13, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v9, s49, 7, v25
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s0, s33, s0
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s0, 1
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[74:77], v23
	ds_load_b128 v[78:81], v23 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v14, 4, v10
	v_lshl_or_b32 v15, v15, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v5, s0, v[9:10]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v16, 4, v12
	v_lshl_or_b32 v17, v33, 4, v17
	v_lshl_or_b32 v18, v34, 4, v18
	v_lshl_or_b32 v19, v35, 4, v19
	v_lshl_or_b32 v20, v36, 4, v20
	v_lshl_or_b32 v33, v50, 4, v42
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v26, s0, v[9:10]
	v_mad_u64_u32 v[12:13], null, v27, s0, v[9:10]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v34, v51, 4, v43
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v28, s0, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v21.l
	v_lshlrev_b16 v6.l, 8, v20.l
	v_and_b16 v8.l, 0xff, v19.l
	v_lshlrev_b16 v9.l, 8, v18.l
	v_and_b16 v9.h, 0xff, v17.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v38, 4, v29
	v_lshl_or_b32 v30, v39, 4, v30
	v_lshl_or_b32 v31, v40, 4, v31
	v_lshl_or_b32 v32, v41, 4, v32
	v_lshl_or_b32 v35, v52, 4, v44
	v_lshl_or_b32 v36, v53, 4, v45
	v_lshl_or_b32 v41, v66, 4, v58
	v_lshl_or_b32 v42, v67, 4, v59
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.h, v5.l
	v_or_b16 v15.h, v8.l, v6.l
	v_or_b16 v15.l, v9.h, v9.l
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	v_lshlrev_b16 v9.l, 8, v34.l
	v_and_b16 v9.h, 0xff, v33.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v54, 4, v46
	v_lshl_or_b32 v38, v55, 4, v47
	v_lshl_or_b32 v39, v56, 4, v48
	v_lshl_or_b32 v40, v57, 4, v49
	v_lshl_or_b32 v43, v68, 4, v60
	v_lshl_or_b32 v44, v69, 4, v61
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v49, v78, 4, v74
	v_lshl_or_b32 v50, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v5.h, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v8.l, 0xff, v35.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v15.l, v9.h, v9.l
	v_lshlrev_b16 v9.l, 8, v42.l
	v_and_b16 v9.h, 0xff, v41.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v70, 4, v62
	v_lshl_or_b32 v46, v71, 4, v63
	v_lshl_or_b32 v47, v72, 4, v64
	v_lshl_or_b32 v48, v73, 4, v65
	v_lshl_or_b32 v51, v80, 4, v76
	v_lshl_or_b32 v52, v81, 4, v77
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.h, v5.l
	v_or_b16 v15.h, v8.l, v6.l
	v_cndmask_b32_e64 v10, 0x80000000, v11, s4
	v_lshlrev_b16 v1.l, 8, v40.l
	v_and_b16 v2.l, 0xff, v39.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v5.h, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v44.l
	v_and_b16 v8.l, 0xff, v43.l
	v_or_b16 v11.l, v9.h, v9.l
	v_lshlrev_b16 v9.l, 8, v50.l
	v_and_b16 v9.h, 0xff, v49.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v5.h, v5.l
	v_or_b16 v11.h, v8.l, v6.l
	v_lshlrev_b16 v1.l, 8, v48.l
	v_and_b16 v2.l, 0xff, v47.l
	v_lshlrev_b16 v5.l, 8, v46.l
	v_and_b16 v5.h, 0xff, v45.l
	v_lshlrev_b16 v6.l, 8, v52.l
	v_and_b16 v8.l, 0xff, v51.l
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_or_b16 v15.l, v9.h, v9.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v9, 2, v22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.h, v5.l
	v_or_b16 v15.h, v8.l, v6.l
	v_cndmask_b32_e64 v5, 0x80000000, v13, s2
	buffer_store_b64 v[10:11], v12, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v10, 2, v24
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[14:15], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v25
	v_mov_b16_e32 v2.l, v8.h
	v_mov_b16_e32 v1.l, v6.h
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v6, s46, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v7, v9, v10, v25
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v7
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v6, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[44:45], v[3:4]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s31, 0xffff
	s_mov_b32 s8, s30
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v2, s49, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp57:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 194
		.amdhsa_next_free_sgpr 57
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 194
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 57
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14464
; TotalNumSgprs: 59
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 59
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     59
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
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
