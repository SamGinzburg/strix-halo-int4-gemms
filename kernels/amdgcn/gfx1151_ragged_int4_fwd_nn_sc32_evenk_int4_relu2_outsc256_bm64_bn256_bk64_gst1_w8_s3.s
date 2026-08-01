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
	s_load_b64 s[44:45], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 4, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v31, 0x80, v0
	v_and_b32_e32 v30, 8, v0
	v_lshlrev_b32_e32 v32, 4, v0
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
	s_sub_i32 s4, s45, s8
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
	s_sub_i32 s45, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s9
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
	s_load_b64 s[42:43], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s42, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s43, 0, s2
	v_add_nc_u32_e32 v33, s42, v24
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[40:41], v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[3:4]
	v_cmp_le_i64_e64 s6, s[34:35], v[7:8]
	v_cmp_le_i64_e64 s7, s[34:35], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[3:4]
	v_cmp_gt_i64_e64 s8, s[40:41], v[7:8]
	v_cmp_gt_i64_e64 s9, s[40:41], v[9:10]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s42, v24
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
.LBB0_3:                                ; %Flow
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v29, 0xf0, v0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v25, 15, v0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v87, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s12, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s42, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s43, 0, s0
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v9, s42, v25
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
	s_load_b32 s11, s[0:1], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[40:41], v[1:2]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v35, v9, s44
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v1, 16, v9
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v2, 32, v9
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v9, 48, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[40:41], v[7:8]
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[3:4]
	v_cmp_le_i64_e64 s6, s[34:35], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[40:41], v[3:4]
	v_cmp_gt_i64_e64 s9, s[40:41], v[5:6]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v38, v9, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v9, s45, 8, v0
	v_lshrrev_b32_e32 v10, 1, v0
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v11, 2, v29
	v_dual_mov_b32 v107, 0 :: v_dual_and_b32 v8, 32, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_and_b32 s0, s1, s8
	s_and_b32 s1, s6, s9
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s9, s12, s33
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v13, 1, v0
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v14, 0x70, v10
	v_add3_u32 v8, 0, v11, v8
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s9, s11, v[9:10]
	v_or_b32_e32 v12, 0xf00, v0
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v13, 28, v13
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v4, 0, v25
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v36, v1, s44
	v_mul_lo_u32 v37, v2, s44
	v_bfe_i32 v1, v0, 7, 1
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v2, 0x70, v32
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v15, 1, v29
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v102, 0, v12
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v109, v8, v13
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[12:13], null, s33, 3, v[10:11]
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v103, v4, v14
	v_mad_u64_u32 v[13:14], null, s33, 5, v[10:11]
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v5, 0x7f, v0
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_and_or_b32 v2, 0x88, v3, v2
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v110, 0, v15
	v_mad_u64_u32 v[14:15], null, s33, 6, v[10:11]
	v_mad_u64_u32 v[15:16], null, s33, 7, v[10:11]
	v_mad_u64_u32 v[16:17], null, s33, 9, v[10:11]
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v26, 16, v33
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v27, 32, v33
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v28, 48, v33
	v_mad_u64_u32 v[17:18], null, s33, 10, v[10:11]
	v_mad_u64_u32 v[18:19], null, s33, 11, v[10:11]
	v_xor_b32_e32 v1, v1, v5
	v_xor_b32_e32 v3, 8, v2
	v_or_b32_e32 v5, 0x300, v0
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v7, 0xb00, v0
	v_mad_u64_u32 v[19:20], null, s33, 12, v[10:11]
	v_mad_u64_u32 v[20:21], null, s33, 13, v[10:11]
	s_mov_b32 s8, 0
	v_mad_u64_u32 v[21:22], null, s33, 14, v[10:11]
	v_mul_lo_u32 v68, v33, s12
	v_mul_lo_u32 v70, v26, s12
	v_mul_lo_u32 v72, v27, s12
	v_mul_lo_u32 v74, v28, s12
	v_mad_u64_u32 v[22:23], null, s33, 15, v[10:11]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s7, s10
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s44, s11
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v90, 0, v1
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v91, 0, v2
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v92, 0, v3
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v96, 0, v5
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v98, 0, v6
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v100, 0, v7
	v_dual_mov_b32 v1, s8 :: v_dual_add_nc_u32 v76, s33, v10
	v_mov_b32_e32 v97, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v77, s33, 1, v10
	v_lshl_add_u32 v78, s33, 2, v10
	v_lshl_add_u32 v83, s33, 3, v10
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v94, 0, v0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v3, s10
	v_mov_b32_e32 v5, s12
	v_mov_b32_e32 v7, s14
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
	s_mov_b32 s36, s20
	s_mov_b32 s37, s21
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s9, s8, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v119, s9, v25
	s_mul_i32 s10, s9, s33
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s9, s8, s7
	v_add_nc_u32_e32 v120, s10, v10
	v_add_nc_u32_e32 v121, s10, v76
	v_add_nc_u32_e32 v136, v68, v119
	v_add_nc_u32_e32 v137, v70, v119
	v_add_nc_u32_e32 v138, v72, v119
	v_add_nc_u32_e32 v119, v74, v119
	v_add_nc_u32_e32 v122, s10, v77
	v_cndmask_b32_e64 v136, 0x80000000, v136, s5
	v_cndmask_b32_e64 v137, 0x80000000, v137, s4
	v_cndmask_b32_e64 v138, 0x80000000, v138, s3
	v_add_nc_u32_e32 v123, s10, v12
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_add_nc_u32_e32 v124, s10, v78
	v_add_nc_u32_e32 v125, s10, v13
	v_add_nc_u32_e32 v126, s10, v14
	v_add_nc_u32_e32 v127, s10, v15
	v_add_nc_u32_e32 v128, s10, v83
	v_add_nc_u32_e32 v129, s10, v16
	v_add_nc_u32_e32 v130, s10, v17
	v_add_nc_u32_e32 v131, s10, v18
	v_add_nc_u32_e32 v132, s10, v19
	v_add_nc_u32_e32 v133, s10, v20
	v_add_nc_u32_e32 v134, s10, v21
	v_add_nc_u32_e32 v135, s10, v22
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v120, v120, s[16:19], 0 offen
	buffer_load_u8 v121, v121, s[16:19], 0 offen
	buffer_load_u8 v122, v122, s[16:19], 0 offen
	buffer_load_u8 v123, v123, s[16:19], 0 offen
	buffer_load_u8 v124, v124, s[16:19], 0 offen
	buffer_load_u8 v125, v125, s[16:19], 0 offen
	buffer_load_u8 v126, v126, s[16:19], 0 offen
	buffer_load_u8 v127, v127, s[16:19], 0 offen
	buffer_load_u8 v128, v128, s[16:19], 0 offen
	buffer_load_u8 v129, v129, s[16:19], 0 offen
	buffer_load_u8 v130, v130, s[16:19], 0 offen
	buffer_load_u8 v131, v131, s[16:19], 0 offen
	buffer_load_u8 v132, v132, s[16:19], 0 offen
	buffer_load_u8 v133, v133, s[16:19], 0 offen
	buffer_load_u8 v134, v134, s[16:19], 0 offen
	buffer_load_u8 v135, v135, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v136, v136, s[28:31], 0 offen
	buffer_load_u8 v137, v137, s[28:31], 0 offen
	buffer_load_u8 v138, v138, s[28:31], 0 offen
	buffer_load_u8 v119, v119, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s9, s9, s33
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	ds_store_b8 v90, v136
	s_waitcnt vmcnt(2)
	ds_store_b8 v90, v137 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v90, v138 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v90, v119 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[149:152], v91 offset1:32
	ds_load_2addr_b64 v[159:162], v91 offset0:64 offset1:96
	ds_load_2addr_b64 v[163:166], v92 offset1:32
	ds_load_2addr_b64 v[167:170], v92 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v94, v120
	ds_store_b8 v94, v121 offset:256
	ds_store_b8 v94, v122 offset:512
	ds_store_b8 v94, v124 offset:1024
	ds_store_b8 v94, v125 offset:1280
	ds_store_b8 v94, v126 offset:1536
	ds_store_b8 v94, v128 offset:2048
	ds_store_b8 v94, v129 offset:2304
	ds_store_b8 v94, v130 offset:2560
	ds_store_b8 v94, v132 offset:3072
	ds_store_b8 v94, v133 offset:3328
	ds_store_b8 v96, v123
	ds_store_b8 v98, v127
	ds_store_b8 v100, v131
	ds_store_b8 v94, v134 offset:3584
	ds_store_b8 v102, v135
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v119, v103 offset:1280
	ds_load_u8 v120, v103 offset:1024
	ds_load_u8 v121, v103 offset:1920
	ds_load_u8 v122, v103 offset:1664
	ds_load_u8 v123, v103 offset:1408
	ds_load_u8 v124, v103 offset:1792
	ds_load_u8 v125, v103 offset:1536
	ds_load_u8 v126, v103 offset:1152
	ds_load_u8 v127, v103 offset:256
	ds_load_u8 v128, v103
	ds_load_u8 v129, v103 offset:896
	ds_load_u8 v130, v103 offset:640
	ds_load_u8 v131, v103 offset:384
	ds_load_u8 v132, v103 offset:768
	ds_load_u8 v133, v103 offset:512
	ds_load_u8 v134, v103 offset:128
	ds_load_u8 v135, v103 offset:3328
	ds_load_u8 v136, v103 offset:3072
	ds_load_u8 v137, v103 offset:3840
	ds_load_u8 v138, v103 offset:3584
	ds_load_u8 v139, v103 offset:2304
	ds_load_u8 v140, v103 offset:2048
	ds_load_u8 v141, v103 offset:2816
	ds_load_u8 v142, v103 offset:2560
	ds_load_u8 v143, v103 offset:3968
	ds_load_u8 v144, v103 offset:3712
	ds_load_u8 v145, v103 offset:3456
	ds_load_u8 v146, v103 offset:3200
	ds_load_u8 v147, v103 offset:2944
	ds_load_u8 v148, v103 offset:2688
	ds_load_u8 v153, v103 offset:2432
	ds_load_u8 v154, v103 offset:2176
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
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v127, v127
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[177:178], v[167:168], v[119:126] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v159, v119
	v_cvt_f32_i32_e32 v160, v120
	v_cvt_f32_i32_e32 v167, v121
	v_cvt_f32_i32_e32 v168, v122
	v_cvt_f32_i32_e32 v183, v123
	v_cvt_f32_i32_e32 v184, v124
	v_cvt_f32_i32_e32 v185, v125
	v_cvt_f32_i32_e32 v186, v126
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[171:172], v[161:162], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v135, v135
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[173:174], v[169:170], v[119:126] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
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
	v_add_lshl_u32 v175, v9, s9, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[177:178], v[169:170], v[119:126] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v161, v119
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v119, s8, v35, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v120
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v120, s8, v36, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v169, v121
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v121, s8, v37, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v170, v122
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v122, s8, v38, 1
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v122, 0x80000000, v122, s6
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v175, v175, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v119, v119, s[36:39], 0 offen
	buffer_load_u16 v176, v120, s[36:39], 0 offen
	buffer_load_u16 v177, v121, s[36:39], 0 offen
	buffer_load_u16 v178, v122, s[36:39], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v122, 16, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v191, v128, v122 :: v_dual_lshlrev_b32 v120, 16, v175
	v_mul_f32_e32 v163, v163, v122
	v_mul_f32_e32 v175, v179, v122
	v_mul_f32_e32 v179, v180, v122
	v_mul_f32_e32 v180, v181, v122
	v_mul_f32_e32 v181, v182, v122
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v182, v127, v122 :: v_dual_lshlrev_b32 v127, 16, v176
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v109, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v164, v164, v122
	v_mul_f32_e32 v165, v165, v122
	v_mul_f32_e32 v166, v166, v122
	v_mul_f32_e32 v192, v129, v122
	v_mul_f32_e32 v193, v130, v122
	v_dual_mul_f32 v119, v131, v122 :: v_dual_mul_f32 v140, v140, v127
	v_mul_f32_e32 v120, v132, v122
	v_dual_mul_f32 v121, v133, v122 :: v_dual_mul_f32 v142, v142, v127
	v_dual_mul_f32 v122, v134, v122 :: v_dual_mul_f32 v131, v135, v127
	v_mul_f32_e32 v132, v136, v127
	v_mul_f32_e32 v133, v137, v127
	v_mul_f32_e32 v134, v138, v127
	v_mul_f32_e32 v139, v139, v127
	v_mul_f32_e32 v141, v141, v127
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v143, v143, v127 :: v_dual_lshlrev_b32 v128, 16, v178
	v_mul_f32_e32 v144, v144, v127
	v_mul_f32_e32 v145, v145, v127
	v_mul_f32_e32 v146, v146, v127
	v_mul_f32_e32 v147, v147, v127
	v_mul_f32_e32 v148, v148, v127
	v_dual_mul_f32 v149, v149, v127 :: v_dual_mul_f32 v162, v162, v128
	v_dual_mul_f32 v150, v150, v127 :: v_dual_lshlrev_b32 v127, 16, v177
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v161, v161, v128
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v169, v169, v128 :: v_dual_mul_f32 v138, v154, v127
	v_dual_mul_f32 v135, v151, v127 :: v_dual_mul_f32 v170, v170, v128
	v_mul_f32_e32 v136, v152, v127
	v_mul_f32_e32 v137, v153, v127
	v_mul_f32_e32 v151, v171, v128
	v_mul_f32_e32 v152, v172, v128
	v_mul_f32_e32 v153, v173, v128
	v_dual_mul_f32 v154, v174, v128 :: v_dual_mul_f32 v155, v155, v127
	v_mul_f32_e32 v156, v156, v127
	v_mul_f32_e32 v157, v157, v127
	v_dual_mul_f32 v158, v158, v127 :: v_dual_mul_f32 v171, v187, v128
	v_mul_f32_e32 v172, v188, v128
	v_mul_f32_e32 v173, v189, v128
	v_dual_mul_f32 v174, v190, v128 :: v_dual_mul_f32 v159, v159, v127
	v_mul_f32_e32 v160, v160, v127
	v_mul_f32_e32 v168, v168, v127
	v_mul_f32_e32 v176, v183, v127
	v_mul_f32_e32 v177, v184, v127
	v_mul_f32_e32 v178, v185, v127
	v_dual_mul_f32 v183, v186, v127 :: v_dual_mul_f32 v184, v123, v128
	v_mul_f32_e32 v167, v167, v127
	v_mul_f32_e32 v185, v124, v128
	v_mul_f32_e32 v186, v125, v128
	v_mul_f32_e32 v187, v126, v128
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[123:126], v110
	ds_load_b128 v[127:130], v110 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v97, v131, v123 :: v_dual_fmac_f32 v112, v181, v130
	v_fmac_f32_e32 v95, v132, v124
	v_fmac_f32_e32 v93, v133, v125
	v_fmac_f32_e32 v89, v134, v126
	v_dual_fmac_f32 v69, v135, v123 :: v_dual_fmac_f32 v86, v141, v129
	v_dual_fmac_f32 v67, v136, v124 :: v_dual_fmac_f32 v52, v151, v123
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[131:134], v110 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v66, v137, v125 :: v_dual_fmac_f32 v65, v138, v126
	v_fmac_f32_e32 v88, v139, v127
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[135:138], v110 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v34, v163, v123
	v_dual_fmac_f32 v118, v164, v124 :: v_dual_fmac_f32 v117, v165, v125
	v_dual_fmac_f32 v116, v166, v126 :: v_dual_fmac_f32 v51, v152, v124
	v_fmac_f32_e32 v64, v155, v127
	v_dual_fmac_f32 v50, v153, v125 :: v_dual_fmac_f32 v49, v154, v126
	v_dual_fmac_f32 v62, v157, v129 :: v_dual_fmac_f32 v115, v175, v127
	v_fmac_f32_e32 v46, v173, v129
	v_dual_fmac_f32 v114, v179, v128 :: v_dual_fmac_f32 v113, v180, v129
	v_dual_fmac_f32 v48, v171, v127 :: v_dual_fmac_f32 v87, v140, v128
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v106, v193, v134
	v_dual_fmac_f32 v85, v142, v130 :: v_dual_fmac_f32 v108, v191, v132
	v_dual_fmac_f32 v63, v156, v128 :: v_dual_fmac_f32 v84, v143, v131
	v_dual_fmac_f32 v61, v158, v130 :: v_dual_fmac_f32 v82, v144, v132
	v_dual_fmac_f32 v47, v172, v128 :: v_dual_fmac_f32 v80, v146, v134
	v_dual_fmac_f32 v45, v174, v130 :: v_dual_fmac_f32 v60, v159, v131
	v_dual_fmac_f32 v111, v182, v131 :: v_dual_fmac_f32 v58, v167, v133
	v_dual_fmac_f32 v107, v192, v133 :: v_dual_fmac_f32 v44, v161, v131
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v81, v145, v133 :: v_dual_fmac_f32 v104, v120, v136
	v_dual_fmac_f32 v59, v160, v132 :: v_dual_fmac_f32 v42, v169, v133
	v_dual_fmac_f32 v57, v168, v134 :: v_dual_fmac_f32 v54, v178, v137
	v_dual_fmac_f32 v43, v162, v132 :: v_dual_fmac_f32 v56, v176, v135
	v_dual_fmac_f32 v41, v170, v134 :: v_dual_fmac_f32 v40, v184, v135
	v_fmac_f32_e32 v105, v119, v135
	v_fmac_f32_e32 v101, v121, v137
	v_fmac_f32_e32 v99, v122, v138
	v_fmac_f32_e32 v79, v147, v135
	v_fmac_f32_e32 v75, v148, v136
	v_fmac_f32_e32 v73, v149, v137
	v_fmac_f32_e32 v71, v150, v138
	v_fmac_f32_e32 v55, v177, v136
	v_fmac_f32_e32 v53, v183, v138
	v_fmac_f32_e32 v39, v185, v136
	v_fmac_f32_e32 v23, v186, v137
	v_fmac_f32_e32 v11, v187, v138
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v1, v34, v34 :: v_dual_max_f32 v4, v116, v116
	v_dual_max_f32 v34, v87, v87 :: v_dual_max_f32 v37, v84, v84
	v_dual_max_f32 v18, v97, v97 :: v_dual_max_f32 v19, v95, v95
	v_max_f32_e32 v20, v93, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v71, v71, v71
	v_dual_max_f32 v38, v82, v82 :: v_dual_max_f32 v67, v67, v67
	v_max_f32_e32 v68, v81, v81
	v_dual_max_f32 v70, v80, v80 :: v_dual_max_f32 v5, v115, v115
	v_dual_max_f32 v6, v114, v114 :: v_dual_max_f32 v7, v113, v113
	v_dual_max_f32 v8, v112, v112 :: v_dual_max_f32 v9, v111, v111
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v35, v86, v86 :: v_dual_max_f32 v36, v85, v85
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v65, v65, v65
	v_dual_max_f32 v91, 0, v71 :: v_dual_max_f32 v74, 0, v68
	v_max_f32_e32 v63, v63, v63
	v_dual_max_f32 v68, v75, v75 :: v_dual_max_f32 v61, v61, v61
	v_dual_max_f32 v93, 0, v67 :: v_dual_max_f32 v84, 0, v70
	v_max_f32_e32 v95, 0, v65
	v_dual_max_f32 v70, v73, v73 :: v_dual_max_f32 v59, v59, v59
	v_max_f32_e32 v66, v66, v66
	v_dual_max_f32 v60, v60, v60 :: v_dual_max_f32 v51, v51, v51
	v_dual_max_f32 v58, v58, v58 :: v_dual_max_f32 v49, v49, v49
	v_max_f32_e32 v56, v56, v56
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v41, v41, v41
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v2, v118, v118 :: v_dual_max_f32 v3, v117, v117
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v108, v108 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v107, v107 :: v_dual_max_f32 v13, v106, v106
	v_dual_max_f32 v14, v105, v105 :: v_dual_max_f32 v15, v104, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v10, 0, v10
	v_dual_max_f32 v16, v101, v101 :: v_dual_max_f32 v17, v99, v99
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, v89, v89
	v_dual_max_f32 v22, v88, v88 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v69, v69, v69
	v_dual_max_f32 v72, v79, v79 :: v_dual_max_f32 v89, 0, v68
	v_dual_max_f32 v90, 0, v70 :: v_dual_max_f32 v57, v57, v57
	v_max_f32_e32 v64, v64, v64
	v_dual_max_f32 v62, v62, v62 :: v_dual_max_f32 v55, v55, v55
	v_dual_max_f32 v99, 0, v61 :: v_dual_max_f32 v94, 0, v66
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v100, 0, v60
	v_dual_max_f32 v47, v47, v47 :: v_dual_max_f32 v54, v54, v54
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v45, v45, v45
	v_dual_max_f32 v110, 0, v50 :: v_dual_max_f32 v23, v23, v23
	v_dual_max_f32 v111, 0, v49 :: v_dual_max_f32 v104, 0, v56
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v112, 0, v48
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v46, v46, v46
	v_dual_max_f32 v119, 0, v41 :: v_dual_max_f32 v44, v44, v44
	v_dual_max_f32 v121, 0, v39 :: v_dual_max_f32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v123, 0, v11 :: v_dual_max_f32 v40, v40, v40
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v65, v7, v7
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v88, 0, v72
	v_dual_max_f32 v97, 0, v63 :: v_dual_max_f32 v92, 0, v69
	v_dual_max_f32 v101, 0, v59 :: v_dual_max_f32 v98, 0, v62
	v_dual_max_f32 v107, 0, v53 :: v_dual_max_f32 v102, 0, v58
	v_max_f32_e32 v109, 0, v51
	v_dual_max_f32 v103, 0, v57 :: v_dual_max_f32 v96, 0, v64
	v_dual_max_f32 v105, 0, v55 :: v_dual_max_f32 v108, 0, v52
	v_max_f32_e32 v117, 0, v43
	v_dual_max_f32 v113, 0, v47 :: v_dual_max_f32 v106, 0, v54
	v_dual_max_f32 v115, 0, v45 :: v_dual_max_f32 v114, 0, v46
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v87, v1, v1 :: v_dual_max_f32 v116, 0, v44
	v_dual_mul_f32 v85, v3, v3 :: v_dual_max_f32 v118, 0, v42
	v_dual_mul_f32 v61, v5, v5 :: v_dual_max_f32 v120, 0, v40
	v_dual_mul_f32 v69, v9, v9 :: v_dual_max_f32 v122, 0, v23
	v_dual_mul_f32 v75, v13, v13 :: v_dual_mul_f32 v86, v2, v2
	v_dual_mul_f32 v79, v15, v15 :: v_dual_mul_f32 v58, v4, v4
	v_dual_mul_f32 v83, v17, v17 :: v_dual_mul_f32 v62, v6, v6
	v_mul_f32_e32 v77, v20, v20
	v_dual_mul_f32 v66, v8, v8 :: v_dual_mul_f32 v81, v18, v18
	v_dual_mul_f32 v70, v10, v10 :: v_dual_mul_f32 v67, v36, v36
	v_dual_mul_f32 v72, v12, v12 :: v_dual_mul_f32 v73, v22, v22
	v_dual_mul_f32 v78, v14, v14 :: v_dual_mul_f32 v59, v84, v84
	v_dual_mul_f32 v82, v16, v16 :: v_dual_mul_f32 v71, v34, v34
	v_dual_mul_f32 v80, v19, v19 :: v_dual_mul_f32 v63, v38, v38
	v_dual_mul_f32 v76, v21, v21 :: v_dual_mul_f32 v57, v88, v88
	v_dual_mul_f32 v68, v35, v35 :: v_dual_mul_f32 v55, v90, v90
	v_dual_mul_f32 v64, v37, v37 :: v_dual_mul_f32 v53, v92, v92
	v_dual_mul_f32 v60, v74, v74 :: v_dual_mul_f32 v49, v96, v96
	v_dual_mul_f32 v56, v89, v89 :: v_dual_mul_f32 v51, v94, v94
	v_dual_mul_f32 v54, v91, v91 :: v_dual_mul_f32 v47, v98, v98
	v_dual_mul_f32 v52, v93, v93 :: v_dual_mul_f32 v45, v100, v100
	v_dual_mul_f32 v50, v95, v95 :: v_dual_mul_f32 v43, v102, v102
	v_dual_mul_f32 v48, v97, v97 :: v_dual_mul_f32 v41, v104, v104
	v_dual_mul_f32 v46, v99, v99 :: v_dual_mul_f32 v39, v106, v106
	v_dual_mul_f32 v44, v101, v101 :: v_dual_mul_f32 v37, v108, v108
	v_dual_mul_f32 v42, v103, v103 :: v_dual_mul_f32 v35, v110, v110
	v_dual_mul_f32 v40, v105, v105 :: v_dual_mul_f32 v23, v112, v112
	v_dual_mul_f32 v38, v107, v107 :: v_dual_mul_f32 v21, v114, v114
	v_dual_mul_f32 v36, v109, v109 :: v_dual_mul_f32 v19, v116, v116
	v_dual_mul_f32 v34, v111, v111 :: v_dual_mul_f32 v17, v118, v118
	v_dual_mul_f32 v22, v113, v113 :: v_dual_mul_f32 v11, v120, v120
	v_dual_mul_f32 v20, v115, v115 :: v_dual_mul_f32 v9, v122, v122
	v_dual_mul_f32 v18, v117, v117 :: v_dual_mov_b32 v1, v30
	v_dual_mul_f32 v12, v119, v119 :: v_dual_mov_b32 v3, v32
	v_mul_f32_e32 v10, v121, v121
	v_dual_mul_f32 v6, v123, v123 :: v_dual_mov_b32 v5, v33
	v_mov_b32_e32 v2, v31
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v86, v86 :: v_dual_max_f32 v7, v87, v87
	v_max3_f32 v8, v58, v61, v62
	v_max3_f32 v13, v70, v72, v75
	v_max3_f32 v14, v78, v79, v82
	v_dual_max_f32 v15, v81, v81 :: v_dual_max_f32 v4, v7, v4
	v_max_f32_e32 v7, v80, v80
	v_max3_f32 v16, v65, v66, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v13, v13, v14, v83
	v_max_f32_e32 v14, v53, v53
	v_max3_f32 v4, v4, v85, v8
	v_dual_max_f32 v7, v15, v7 :: v_dual_max_f32 v8, v52, v52
	v_max3_f32 v15, v76, v73, v71
	v_max3_f32 v31, v63, v60, v59
	v_max3_f32 v32, v57, v56, v55
	v_max3_f32 v33, v44, v43, v42
	v_max_f32_e32 v8, v14, v8
	v_max3_f32 v14, v50, v49, v48
	v_max3_f32 v74, v41, v40, v39
	v_max3_f32 v7, v7, v77, v15
	v_max3_f32 v15, v31, v32, v54
	v_max3_f32 v31, v47, v46, v45
	v_max3_f32 v8, v8, v51, v14
	v_max3_f32 v14, v33, v74, v38
	v_max3_f32 v4, v4, v16, v13
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v30, v68, v67, v64
	v_max_f32_e32 v33, v37, v37
	v_max3_f32 v8, v8, v31, v14
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v31, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v32, v36, v36
	v_max3_f32 v7, v7, v30, v15
	v_max3_f32 v14, v34, v23, v22
	v_max3_f32 v15, v18, v17, v12
	v_max3_f32 v16, v11, v10, v9
	v_max_f32_e32 v13, v33, v32
	v_max3_f32 v30, v21, v20, v19
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v74, 3, v0
	v_lshrrev_b32_e32 v88, 3, v2
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v13, v35, v14
	v_max3_f32 v14, v15, v16, v6
	v_max_f32_e32 v15, v31, v31
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v32, v7, s0, 0xfedcba98 op_sel:[1,0]
	s_barrier
.Ltmp11:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v97.h, 0
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v13, v30, v14
	v_max_f32_e32 v30, v4, v15
	v_max_f32_e32 v16, v32, v32
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v32, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v15, v74, 9, 0
	v_permlanex16_b32 v33, v13, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v31, v7, v16 :: v_dual_lshlrev_b32 v14, 5, v74
	v_max_f32_e32 v4, v32, v32
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v7, 4, v0
	v_and_b32_e32 v16, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v3, 0x680, v3, v14
.Ltmp16:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s25, 0xffff
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v32, v8, v4
	v_max_f32_e32 v8, v33, v33
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v4, v7, 2, v15
	v_lshlrev_b32_e32 v15, 1, v2
	v_xor_b32_e32 v84, v14, v16
	v_xor_b32_e32 v3, v3, v16
	v_lshl_add_u32 v89, v7, 6, 0
	v_lshl_add_u32 v4, v1, 4, v4
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v33, v13, v8 :: v_dual_add_nc_u32 v2, 0, v2
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v3, v89, v88, v3
	v_add3_u32 v4, v4, v15, v84
	s_mov_b32 s10, 0x7ffffffe
.Ltmp21:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s8, s24
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 3, v1
	ds_store_b128 v4, v[30:33]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v3, v30 :: v_dual_mov_b32 v4, v31
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v30, v30 :: v_dual_max_f32 v30, v31, v31
	v_max_f32_e32 v31, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v33, v33 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_mov_b32 v8, v32
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v3, v13, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v32, v32
	v_max_f32_e32 v4, v30, v4
	v_max_f32_e32 v30, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v8, v8, v8
	v_dual_max_f32 v8, v13, v8 :: v_dual_max_f32 v13, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v31, v13
	v_mov_b32_e32 v33, v4
	v_mov_b32_dpp v31, v31 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v33, v33 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v33
	v_dual_max_f32 v13, v13, v31 :: v_dual_max_f32 v4, v4, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v32, v3 :: v_dual_mov_b32 v33, v4
	v_mov_b32_dpp v32, v32 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v30, v8 :: v_dual_max_f32 v31, v33, v33
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v30, v30 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v32, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v30, v30
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v32, v32 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v30
	v_max_f32_e32 v30, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v84, v8
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v3, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v88, v13 :: v_dual_max_f32 v3, v84, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v84, 1, v16
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v32, v8, v3
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v3, 5, v7
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v4, v31
	v_max_f32_e32 v4, v88, v88
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v7, v74, 4, 0
	v_add3_u32 v2, v2, v84, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v13, v4
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v7, v3, v1
	ds_store_b128 v2, v[30:33]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
.Ltmp47:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v7, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v31, null, 0x40e00000, 0x40e00000, v4
	v_rcp_f32_e32 v30, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v32, v8
	v_div_scale_f32 v84, vcc_lo, v1, 0x40e00000, v1
	v_rcp_f32_e32 v74, v31
	v_div_scale_f32 v89, s0, v3, 0x40e00000, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v88, -v7, v30, 1.0
	v_fma_f32 v90, -v8, v32, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v31, v74, 1.0
	v_fmac_f32_e32 v30, v88, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v90, v32
	v_max_f32_e32 v2, v2, v2
	v_fmac_f32_e32 v74, v92, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v90, v84, v30 :: v_dual_mul_f32 v93, v89, v32
	v_fma_f32 v92, -v7, v90, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v92, v30
	v_fma_f32 v92, -v8, v93, v89
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v7, v90, v84
	v_fmac_f32_e32 v93, v92, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v88, s1, v2, 0x40e00000, v2
	v_div_fmas_f32 v7, v7, v30, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v13
	v_fma_f32 v8, -v8, v93, v89
	s_mov_b32 vcc_lo, s0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v30.h, v97.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v7, 0x40e00000, v1
	v_div_fmas_f32 v8, v8, v32, v93
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v30.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v91, -v13, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v3, v8, 0x40e00000, v3
	v_dual_fmac_f32 v33, v91, v33 :: v_dual_and_b32 v8, 1, v30
	v_div_scale_f32 v91, s6, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v97.l, v3.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v94, v88, v33 :: v_dual_mul_f32 v95, v91, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v96, -v13, v94, v88
	v_fma_f32 v98, -v31, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v94, v96, v33 :: v_dual_fmac_f32 v95, v98, v74
	v_fma_f32 v13, -v13, v94, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v7, -v31, v95, v91
	v_div_fmas_f32 v13, v13, v33, v94
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v30, v7, v74, v95
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v7, v1, v8, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v13, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v13.h, v97.h
	v_and_b32_e32 v1, 1, v97
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v30, v30, 0x40e00000, v4
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v88, 0xffff0000, v7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v13.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v97.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v31, null, v88, v88, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v33, null, v88, v88, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v32, 1, v97
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v89, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v13, v2, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, null, v88, v88, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v30, v32, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v32, v33
	v_div_scale_f32 v30, vcc_lo, v87, v88, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v94, v92
	v_div_scale_f32 v95, s1, v85, v88, v85
	v_fma_f32 v90, -v31, v89, 1.0
	v_div_scale_f32 v99, s6, v58, v88, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v33, v32, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, null, v88, v88, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v100, -v92, v94, 1.0
	v_dual_fmac_f32 v32, v93, v32 :: v_dual_mul_f32 v93, v30, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v96, v90
	v_fmac_f32_e32 v94, v100, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v31, v93, v30
	v_fmac_f32_e32 v93, v98, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v102, -v90, v96, 1.0
	v_fma_f32 v30, -v31, v93, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v96, v102, v96
	v_div_fmas_f32 v31, v30, v89, v93
	v_mul_f32_e32 v89, v95, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v31, v88, v87
	v_fma_f32 v87, -v92, v89, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v89, v87, v94 :: v_dual_and_b32 v8, 63, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s42, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s43, 0, s0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, s0, v86, v88, v86
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v97, v91, v32
	v_fma_f32 v101, -v33, v97, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v101, v32
	v_fma_f32 v33, -v33, v97, v91
	v_mul_f32_e32 v91, v99, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v33, v32, v97
	v_fma_f32 v33, -v90, v91, v99
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v33, v96
	v_div_scale_f32 v98, null, v88, v88, v61
	v_div_scale_f32 v101, null, v88, v88, v62
	v_div_scale_f32 v87, s0, v61, v88, v61
	v_rcp_f32_e32 v100, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v101
	v_div_fixup_f32 v32, v32, v88, v86
	v_fma_f32 v86, -v92, v89, v95
	v_div_scale_f32 v95, s7, v62, v88, v62
	v_fma_f32 v102, -v98, v100, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v101, v93, 1.0
	v_dual_fmac_f32 v100, v102, v100 :: v_dual_fmac_f32 v93, v97, v93
	v_div_scale_f32 v97, null, v88, v88, v65
	v_div_fmas_f32 v33, v86, v94, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v87, v100
	v_fma_f32 v86, -v90, v91, v99
	v_rcp_f32_e32 v90, v97
	v_div_scale_f32 v99, null, v88, v88, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v89, -v98, v92, v87
	v_mul_f32_e32 v94, v95, v93
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v33, v33, v88, v85
	v_div_fmas_f32 v86, v86, v96, v91
	v_fmac_f32_e32 v92, v89, v100
	v_rcp_f32_e32 v89, v99
	v_fma_f32 v91, -v101, v94, v95
	v_fma_f32 v96, -v97, v90, 1.0
	v_div_fixup_f32 v58, v86, v88, v58
	v_fma_f32 v85, -v98, v92, v87
	v_div_scale_f32 v86, s1, v65, v88, v65
	v_fmac_f32_e32 v94, v91, v93
	v_fmac_f32_e32 v90, v96, v90
	v_div_scale_f32 v91, null, v88, v88, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v99, v89, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v96, s0, v66, v88, v66
	v_div_fmas_f32 v85, v85, v100, v92
	v_fma_f32 v92, -v101, v94, v95
	v_mul_f32_e32 v95, v86, v90
	v_fmac_f32_e32 v89, v87, v89
	v_rcp_f32_e32 v87, v91
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v98, null, v88, v88, v70
	v_div_fmas_f32 v92, v92, v93, v94
	v_fma_f32 v93, -v97, v95, v86
	v_mul_f32_e32 v94, v96, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v101, v98
	v_div_fixup_f32 v61, v85, v88, v61
	v_div_fixup_f32 v62, v92, v88, v62
	v_fma_f32 v100, -v91, v87, 1.0
	v_fmac_f32_e32 v95, v93, v90
	v_div_scale_f32 v93, null, v88, v88, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v87, v100, v87 :: v_dual_and_b32 v74, 0xffff0000, v1
	v_fma_f32 v85, -v99, v94, v96
	v_div_scale_f32 v92, s6, v69, v88, v69
	v_fma_f32 v86, -v97, v95, v86
	v_rcp_f32_e32 v97, v93
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v94, v85, v89 :: v_dual_mul_f32 v85, v92, v87
	v_fma_f32 v100, -v98, v101, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v102, null, v88, v88, v75
	v_div_fmas_f32 v86, v86, v90, v95
	v_fma_f32 v90, -v99, v94, v96
	v_fma_f32 v95, -v91, v85, v92
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v93, v97, 1.0
	v_fmac_f32_e32 v101, v100, v101
	v_div_scale_f32 v100, s7, v70, v88, v70
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v85, v95, v87 :: v_dual_and_b32 v30, 0xffff0000, v2
	v_div_fmas_f32 v89, v90, v89, v94
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v95, s0, v72, v88, v72
	v_mul_f32_e32 v96, v100, v101
	v_div_fixup_f32 v65, v86, v88, v65
	v_div_fixup_f32 v66, v89, v88, v66
	v_fma_f32 v86, -v91, v85, v92
	v_mul_f32_e32 v89, v95, v97
	v_fma_f32 v94, -v98, v96, v100
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v90, v102
	v_div_fmas_f32 v85, v86, v87, v85
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v96, v94, v101
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v92, null, v88, v88, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v87, v97
	v_fma_f32 v86, -v98, v96, v100
	v_div_fixup_f32 v69, v85, v88, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v102, v90, 1.0
	v_div_scale_f32 v98, null, v88, v88, v79
	v_fma_f32 v85, -v93, v89, v95
	v_div_fmas_f32 v86, v86, v101, v96
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v94, s1, v75, v88, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v85, v85, v97, v89
	v_div_scale_f32 v97, null, v88, v88, v83
	v_rcp_f32_e32 v87, v98
	v_div_fixup_f32 v70, v86, v88, v70
	v_div_scale_f32 v93, s6, v78, v88, v78
	v_rcp_f32_e32 v101, v97
	v_fmac_f32_e32 v90, v91, v90
	v_rcp_f32_e32 v91, v92
	v_div_fixup_f32 v72, v85, v88, v72
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v96, v94, v90
	v_fma_f32 v95, -v98, v87, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v86, -v102, v96, v94
	v_fma_f32 v99, -v92, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v95, v87
	v_div_scale_f32 v95, s0, v79, v88, v79
	v_dual_fmac_f32 v96, v86, v90 :: v_dual_fmac_f32 v91, v99, v91
	v_div_scale_f32 v99, null, v88, v88, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v100, v95, v87
	v_fma_f32 v85, -v102, v96, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v93, v91
	v_rcp_f32_e32 v89, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v85, v90, v96
	v_fma_f32 v94, -v92, v86, v93
	v_fma_f32 v90, -v98, v100, v95
	v_fma_f32 v96, -v97, v101, 1.0
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v75, v85, v88, v75
	v_fmac_f32_e32 v86, v94, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v102, -v99, v89, 1.0
	v_div_scale_f32 v94, s1, v82, v88, v82
	v_fmac_f32_e32 v100, v90, v87
	v_fma_f32 v85, -v92, v86, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v102, v89
	v_div_scale_f32 v93, null, v84, v84, v81
	v_fmac_f32_e32 v101, v96, v101
	v_div_scale_f32 v92, s7, v83, v88, v83
	v_mul_f32_e32 v90, v94, v89
	v_div_fmas_f32 v85, v85, v91, v86
	v_fma_f32 v86, -v98, v100, v95
	v_rcp_f32_e32 v95, v93
	v_div_scale_f32 v98, null, v84, v84, v80
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v91, -v99, v90, v94
	v_mul_f32_e32 v96, v92, v101
	v_div_fmas_f32 v86, v86, v87, v100
	v_rcp_f32_e32 v87, v98
	v_div_fixup_f32 v78, v85, v88, v78
	v_fmac_f32_e32 v90, v91, v89
	v_fma_f32 v91, -v97, v96, v92
	v_fma_f32 v100, -v93, v95, 1.0
	v_div_fixup_f32 v79, v86, v88, v79
	v_div_scale_f32 v86, s0, v81, v84, v81
	v_fma_f32 v85, -v99, v90, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v96, v91, v101 :: v_dual_fmac_f32 v95, v100, v95
	v_fma_f32 v91, -v98, v87, 1.0
	v_div_scale_f32 v94, null, v84, v84, v77
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v85, v85, v89, v90
	v_fma_f32 v89, -v97, v96, v92
	v_mul_f32_e32 v90, v86, v95
	v_fmac_f32_e32 v87, v91, v87
	v_rcp_f32_e32 v91, v94
	v_div_scale_f32 v92, s1, v80, v84, v80
	v_div_scale_f32 v97, null, v84, v84, v76
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v99, v92, v87
	v_div_fmas_f32 v89, v89, v101, v96
	v_fma_f32 v96, -v93, v90, v86
	v_rcp_f32_e32 v101, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v100, -v94, v91, 1.0
	v_div_fixup_f32 v82, v85, v88, v82
	v_div_fixup_f32 v83, v89, v88, v83
	v_fmac_f32_e32 v90, v96, v95
	v_fma_f32 v85, -v98, v99, v92
	v_div_scale_f32 v89, null, v84, v84, v73
	v_fmac_f32_e32 v91, v100, v91
	v_div_scale_f32 v88, s6, v77, v84, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v97, v101, 1.0
	v_fma_f32 v86, -v93, v90, v86
	v_fmac_f32_e32 v99, v85, v87
	v_rcp_f32_e32 v93, v89
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v85, v88, v91
	v_fmac_f32_e32 v101, v96, v101
	v_div_scale_f32 v96, s7, v76, v84, v76
	v_div_fmas_f32 v86, v86, v95, v90
	v_fma_f32 v90, -v98, v99, v92
	v_div_scale_f32 v100, null, v84, v84, v71
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v92, -v94, v85, v88
	v_mul_f32_e32 v95, v96, v101
	v_fma_f32 v98, -v89, v93, 1.0
	v_div_fmas_f32 v87, v90, v87, v99
	v_rcp_f32_e32 v90, v100
	v_fmac_f32_e32 v85, v92, v91
	v_fma_f32 v92, -v97, v95, v96
	v_fmac_f32_e32 v93, v98, v93
	v_div_scale_f32 v98, s0, v73, v84, v73
	v_div_fixup_f32 v81, v86, v84, v81
	v_div_fixup_f32 v80, v87, v84, v80
	v_fma_f32 v86, -v94, v85, v88
	v_fmac_f32_e32 v95, v92, v101
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v100, v90, 1.0
	v_mul_f32_e32 v87, v98, v93
	v_div_scale_f32 v92, null, v84, v84, v68
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v90, v88, v90
	v_div_fmas_f32 v85, v86, v91, v85
	v_fma_f32 v86, -v97, v95, v96
	v_fma_f32 v91, -v89, v87, v98
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v96, null, v84, v84, v67
	v_div_scale_f32 v94, s1, v71, v84, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v91, v93
	v_rcp_f32_e32 v91, v96
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v77, v85, v84, v77
	v_div_fmas_f32 v86, v86, v101, v95
	v_mul_f32_e32 v95, v94, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v88, 1.0
	v_fma_f32 v85, -v89, v87, v98
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v76, v86, v84, v76
	v_fma_f32 v86, -v100, v95, v94
	v_fmac_f32_e32 v88, v97, v88
	v_fma_f32 v97, -v96, v91, 1.0
	v_div_scale_f32 v98, null, v84, v84, v64
	v_div_fmas_f32 v85, v85, v93, v87
	v_fmac_f32_e32 v95, v86, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v91, v97, v91
	v_div_scale_f32 v97, null, v84, v84, v63
	v_rcp_f32_e32 v87, v98
	v_div_scale_f32 v93, s0, v67, v84, v67
	v_div_fixup_f32 v73, v85, v84, v73
	v_fma_f32 v85, -v100, v95, v94
	v_rcp_f32_e32 v100, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v99, v93, v91
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v89, s6, v68, v84, v68
	v_fma_f32 v101, -v98, v87, 1.0
	v_div_fmas_f32 v85, v85, v90, v95
	v_fma_f32 v90, -v96, v99, v93
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v97, v100, 1.0
	v_fmac_f32_e32 v87, v101, v87
	v_fmac_f32_e32 v99, v90, v91
	v_div_fixup_f32 v71, v85, v84, v71
	v_div_scale_f32 v90, s7, v63, v84, v63
	v_fmac_f32_e32 v100, v95, v100
	v_mul_f32_e32 v86, v89, v88
	v_div_scale_f32 v101, null, v84, v84, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v90, v100
	v_fma_f32 v94, -v92, v86, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v80, v80
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v94, v88
	v_div_scale_f32 v94, s1, v64, v84, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v92, v86, v89
	v_mul_f32_e32 v89, v94, v87
	v_div_scale_f32 v92, null, v84, v84, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v85, v85, v88, v86
	v_fma_f32 v86, -v96, v99, v93
	v_fma_f32 v88, -v98, v89, v94
	v_div_scale_f32 v96, null, v84, v84, v59
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v93, v92
	v_fmac_f32_e32 v89, v88, v87
	v_rcp_f32_e32 v88, v96
	v_div_fmas_f32 v86, v86, v91, v99
	v_fma_f32 v91, -v97, v95, v90
	v_div_fixup_f32 v68, v85, v84, v68
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v67, v86, v84, v67
	v_fmac_f32_e32 v95, v91, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v99, -v92, v93, 1.0
	v_div_scale_f32 v86, s0, v60, v84, v60
	v_fma_f32 v91, -v96, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v91, v88
	v_fma_f32 v85, -v98, v89, v94
	v_div_scale_f32 v94, null, v84, v84, v57
	v_div_scale_f32 v91, s1, v59, v84, v59
	v_div_fmas_f32 v85, v85, v87, v89
	v_fma_f32 v87, -v97, v95, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v94
	v_div_scale_f32 v97, null, v84, v84, v56
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v98, v91, v88
	v_div_fmas_f32 v87, v87, v100, v95
	v_rcp_f32_e32 v100, v97
	v_div_fixup_f32 v64, v85, v84, v64
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v85, -v96, v98, v91
	v_fmac_f32_e32 v93, v99, v93
	v_fma_f32 v99, -v94, v90, 1.0
	v_div_fixup_f32 v63, v87, v84, v63
	v_div_scale_f32 v87, s6, v57, v84, v57
	v_fmac_f32_e32 v98, v85, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v90, v99, v90
	v_fma_f32 v99, -v97, v100, 1.0
	v_mul_f32_e32 v89, v86, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v87, v90
	v_fmac_f32_e32 v100, v99, v100
	v_fma_f32 v95, -v92, v89, v86
	v_div_scale_f32 v99, s7, v56, v84, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v95, v93
	v_div_scale_f32 v95, null, v84, v84, v55
	v_fma_f32 v86, -v92, v89, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v92, v95
	v_div_fmas_f32 v86, v86, v93, v89
	v_fma_f32 v89, -v96, v98, v91
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v91, -v94, v85, v87
	v_mul_f32_e32 v93, v99, v100
	v_div_fixup_f32 v60, v86, v84, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v95, v92, 1.0
	v_div_fmas_f32 v88, v89, v88, v98
	v_rcp_f32_e32 v89, v101
	v_fmac_f32_e32 v85, v91, v90
	v_fma_f32 v91, -v97, v93, v99
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s0, v55, v84, v55
	v_div_fixup_f32 v59, v88, v84, v59
	v_fma_f32 v86, -v94, v85, v87
	v_fmac_f32_e32 v93, v91, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v87, v96, v92
	v_fma_f32 v88, -v101, v89, 1.0
	v_div_scale_f32 v91, null, v74, v74, v53
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v94, s1, v54, v84, v54
	v_div_fmas_f32 v85, v86, v90, v85
	v_fma_f32 v86, -v97, v93, v99
	v_fma_f32 v90, -v95, v87, v96
	v_fmac_f32_e32 v89, v88, v89
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v97, null, v74, v74, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v90, v92
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v57, v85, v84, v57
	v_rcp_f32_e32 v90, v97
	v_div_fmas_f32 v86, v86, v100, v93
	v_fma_f32 v85, -v95, v87, v96
	v_div_scale_f32 v95, s6, v53, v74, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v91, v88, 1.0
	v_div_fixup_f32 v56, v86, v84, v56
	s_mov_b32 vcc_lo, s0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v92, v87
	v_fmac_f32_e32 v88, v98, v88
	v_mul_f32_e32 v93, v94, v89
	v_fma_f32 v96, -v97, v90, 1.0
	v_div_scale_f32 v92, s0, v52, v74, v52
	v_div_fixup_f32 v55, v85, v84, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v101, v93, v94
	v_fmac_f32_e32 v90, v96, v90
	v_div_scale_f32 v96, null, v74, v74, v50
	v_div_scale_f32 v98, null, v74, v74, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v86, v89 :: v_dual_mul_f32 v86, v95, v88
	v_rcp_f32_e32 v100, v96
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v87, v98
	v_fma_f32 v85, -v101, v93, v94
	v_fma_f32 v94, -v91, v86, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v89, v93
	v_fmac_f32_e32 v86, v94, v88
	v_fma_f32 v94, -v96, v100, 1.0
	v_mul_f32_e32 v99, v92, v90
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v54, v85, v84, v54
	v_fma_f32 v84, -v91, v86, v95
	v_fmac_f32_e32 v100, v94, v100
	v_fma_f32 v89, -v97, v99, v92
	v_fma_f32 v101, -v98, v87, 1.0
	v_div_scale_f32 v93, s1, v51, v74, v51
	v_div_fmas_f32 v84, v84, v88, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v99, v89, v90
	v_div_scale_f32 v89, s7, v50, v74, v50
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v91, null, v74, v74, v49
	v_fma_f32 v86, -v97, v99, v92
	v_mul_f32_e32 v94, v89, v100
	v_div_scale_f32 v95, null, v74, v74, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v91
	v_div_fmas_f32 v86, v86, v90, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v96, v94, v89
	v_fmac_f32_e32 v87, v101, v87
	v_div_fixup_f32 v53, v84, v74, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v52, v86, v74, v52
	v_dual_fmac_f32 v94, v90, v100 :: v_dual_mul_f32 v85, v93, v87
	v_div_scale_f32 v86, s0, v49, v74, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v91, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v98, v85, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v97, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v88, v87
	v_rcp_f32_e32 v88, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v98, v85, v93
	v_div_scale_f32 v93, null, v74, v74, v47
	v_div_fmas_f32 v84, v84, v87, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v95, v88, 1.0
	v_fma_f32 v85, -v96, v94, v89
	v_mul_f32_e32 v87, v86, v92
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v51, v84, v74, v51
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s1, v48, v74, v48
	v_div_fmas_f32 v85, v85, v100, v94
	v_fma_f32 v94, -v91, v87, v86
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v97, v90, v88
	v_rcp_f32_e32 v89, v93
	v_div_scale_f32 v100, null, v74, v74, v44
	v_fmac_f32_e32 v87, v94, v92
	v_fma_f32 v84, -v95, v97, v90
	v_div_scale_f32 v96, null, v74, v74, v46
	v_div_fixup_f32 v50, v85, v74, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v91, v87, v86
	v_fmac_f32_e32 v97, v84, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v93, v89, 1.0
	v_div_scale_f32 v85, s6, v47, v74, v47
	v_div_fmas_f32 v86, v86, v92, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v87, -v95, v97, v90
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v99, v96
	v_div_scale_f32 v94, null, v74, v74, v45
	v_div_fmas_f32 v87, v87, v88, v97
	v_rcp_f32_e32 v88, v100
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v91, v94
	v_div_fixup_f32 v49, v86, v74, v49
	v_div_fixup_f32 v48, v87, v74, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v100, v88, 1.0
	v_fmac_f32_e32 v89, v98, v89
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v95, -v94, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v87, v88
	v_mul_f32_e32 v84, v85, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v93, v84, v85
	v_fmac_f32_e32 v84, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v93, v84, v85
	v_div_scale_f32 v93, s1, v44, v74, v44
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s7, v46, v74, v46
	v_div_fmas_f32 v84, v85, v89, v84
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v92, v98, v99
	v_div_fixup_f32 v47, v84, v74, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v96, v92, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v90, v99
	v_div_scale_f32 v90, null, v74, v74, v43
	v_fma_f32 v85, -v96, v92, v98
	v_div_scale_f32 v96, null, v74, v74, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v87, v90
	v_div_fmas_f32 v85, v85, v99, v92
	v_mul_f32_e32 v92, v93, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v46, v85, v74, v46
	v_fma_f32 v85, -v100, v92, v93
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s0, v45, v74, v45
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v92, v85, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_mul_f32_e32 v86, v95, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v94, v86, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v89, v91
	v_rcp_f32_e32 v89, v96
	v_fma_f32 v84, -v94, v86, v95
	v_div_scale_f32 v94, s6, v43, v74, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v84, v84, v91, v86
	v_fma_f32 v95, -v96, v89, 1.0
	v_div_scale_f32 v91, s0, v42, v74, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v45, v84, v74, v45
	v_fmac_f32_e32 v89, v95, v89
	v_fma_f32 v84, -v100, v92, v93
	v_div_scale_f32 v95, null, v74, v74, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v91, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v84, v84, v88, v92
	v_rcp_f32_e32 v99, v95
	v_div_scale_f32 v92, s1, v41, v74, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v96, v98, v91
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v97, null, v74, v74, v41
	v_div_fixup_f32 v44, v84, v74, v44
	v_fmac_f32_e32 v98, v88, v89
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v100, -v97, v86, 1.0
	v_dual_fmac_f32 v86, v100, v86 :: v_dual_mul_f32 v85, v94, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v88, v92, v86
	v_fma_f32 v93, -v90, v85, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v93, v87
	v_fma_f32 v93, -v95, v99, 1.0
	v_fma_f32 v84, -v90, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v99, v93, v99
	v_div_scale_f32 v90, s7, v40, v74, v40
	v_div_scale_f32 v93, null, v74, v74, v39
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v96, v98, v91
	v_fma_f32 v87, -v97, v88, v92
	v_mul_f32_e32 v94, v90, v99
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v96, null, v74, v74, v38
	v_div_fmas_f32 v85, v85, v89, v98
	v_fmac_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v95, v94, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v96
	v_div_fixup_f32 v43, v84, v74, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v84, -v97, v88, v92
	v_fmac_f32_e32 v94, v89, v99
	v_div_scale_f32 v97, null, v30, v30, v36
	v_rcp_f32_e32 v91, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v84, v84, v86, v88
	v_fma_f32 v86, -v95, v94, v90
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v89, -v96, v87, 1.0
	v_div_scale_f32 v90, s1, v38, v74, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v86, v86, v99, v94
	v_div_fixup_f32 v41, v84, v74, v41
	v_div_fixup_f32 v42, v85, v74, v42
	v_fma_f32 v98, -v93, v91, 1.0
	v_div_scale_f32 v85, s0, v39, v74, v39
	v_div_fixup_f32 v40, v86, v74, v40
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, null, v30, v30, v37
	v_div_scale_f32 v99, null, v30, v30, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v95, v90, v87
	v_rcp_f32_e32 v92, v89
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v101, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v96, v95, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v84, v87
	v_div_scale_f32 v84, s6, v37, v30, v37
	v_fmac_f32_e32 v91, v98, v91
	v_fma_f32 v98, -v97, v86, 1.0
	v_mul_f32_e32 v88, v85, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v98, v86
	v_fma_f32 v94, -v93, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v94, v91
	v_fma_f32 v94, -v89, v92, 1.0
	v_fma_f32 v85, -v93, v88, v85
	v_div_scale_f32 v93, null, v30, v30, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v94, v92
	v_div_fmas_f32 v85, v85, v91, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v93
	v_fma_f32 v88, -v96, v95, v90
	v_mul_f32_e32 v90, v84, v92
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v39, v85, v74, v39
	v_fma_f32 v85, -v99, v101, 1.0
	v_div_scale_f32 v91, s0, v36, v30, v36
	v_fma_f32 v98, -v89, v90, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v101, v85, v101 :: v_dual_mul_f32 v100, v91, v86
	v_fmac_f32_e32 v90, v98, v92
	v_div_fmas_f32 v87, v88, v87, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s7, v35, v30, v35
	v_fma_f32 v88, -v97, v100, v91
	v_div_fixup_f32 v38, v87, v74, v38
	v_fma_f32 v74, -v89, v90, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v95, v96, v94
	v_div_scale_f32 v87, null, v30, v30, v23
	v_div_scale_f32 v85, s1, v34, v30, v34
	v_fma_f32 v84, -v93, v95, v96
	v_fmac_f32_e32 v100, v88, v86
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v85, v101
	v_div_fmas_f32 v74, v74, v92, v90
	v_fmac_f32_e32 v95, v84, v94
	v_rcp_f32_e32 v84, v87
	v_fma_f32 v88, -v97, v100, v91
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v37, v74, v30, v37
	v_div_scale_f32 v90, null, v30, v30, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v86, v88, v86, v100
	v_fma_f32 v88, -v93, v95, v96
	v_fma_f32 v93, -v99, v89, v85
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v91, -v87, v84, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v88, v88, v94, v95
	v_fmac_f32_e32 v89, v93, v101
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s0, v23, v30, v23
	v_div_fixup_f32 v35, v88, v30, v35
	v_fma_f32 v85, -v99, v89, v85
	v_div_scale_f32 v88, null, v30, v30, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, v91, v84
	v_div_fixup_f32 v36, v86, v30, v36
	v_div_fmas_f32 v85, v85, v101, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v94, v88
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v93, -v87, v74, v91
	v_fma_f32 v86, -v90, v92, 1.0
	v_div_fixup_f32 v34, v85, v30, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v74, v93, v84
	v_div_scale_f32 v93, null, v30, v30, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v87, v74, v91
	v_rcp_f32_e32 v95, v93
	v_fma_f32 v91, -v88, v94, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v85, v84, v74
	v_div_scale_f32 v84, null, v30, v30, v19
	v_div_scale_f32 v85, s0, v21, v30, v21
	v_div_fixup_f32 v23, v74, v30, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v93, v95, 1.0
	v_fmac_f32_e32 v94, v91, v94
	v_div_scale_f32 v91, null, v30, v30, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v74, v95
	v_div_scale_f32 v74, s1, v20, v30, v20
	v_rcp_f32_e32 v97, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v91, v97, 1.0
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, s6, v22, v30, v22
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v98, s6, v19, v30, v19
	v_mul_f32_e32 v89, v86, v92
	v_div_scale_f32 v99, s7, v18, v30, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v90, v89, v86
	v_fmac_f32_e32 v89, v87, v92
	v_rcp_f32_e32 v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v86, -v90, v89, v86
	v_mul_f32_e32 v90, v85, v94
	v_div_fmas_f32 v86, v86, v92, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v84, v87, 1.0
	v_fma_f32 v89, -v88, v90, v85
	v_mul_f32_e32 v92, v74, v95
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v22, v86, v30, v22
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v96, null, v30, v30, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v101, v98, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v100, v96
	v_fma_f32 v86, -v84, v101, v98
	v_fmac_f32_e32 v90, v89, v94
	v_fma_f32 v89, -v93, v92, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v101, v86, v87
	v_fma_f32 v85, -v88, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v92, v89, v95
	v_mul_f32_e32 v88, v99, v97
	v_fma_f32 v89, -v96, v100, 1.0
	v_fma_f32 v84, -v84, v101, v98
	v_div_fmas_f32 v85, v85, v94, v90
	v_fma_f32 v74, -v93, v92, v74
	v_div_scale_f32 v90, null, v30, v30, v12
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v91, v88, v99
	v_div_fmas_f32 v74, v74, v95, v92
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v100, v89, v100
	v_div_scale_f32 v89, s0, v17, v30, v17
	v_div_fixup_f32 v21, v85, v30, v21
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v20, v74, v30, v20
	v_div_fmas_f32 v84, v84, v87, v101
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v94, null, v30, v30, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v90, v92, 1.0
	v_div_fixup_f32 v19, v84, v30, v19
	v_div_scale_f32 v84, null, v30, v30, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v85, v92
	v_fmac_f32_e32 v88, v86, v97
	v_mul_f32_e32 v86, v89, v100
	v_div_scale_f32 v85, null, v30, v30, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v91, v88, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v96, v86, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v87, v87, v97, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v91, v100
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v18, v87, v30, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v96, v86, v89
	v_rcp_f32_e32 v89, v85
	v_div_scale_f32 v87, null, v30, v30, v9
	v_rcp_f32_e32 v96, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v91, v87
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v85, v89, 1.0
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v95, s1, v10, v30, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v98, -v87, v91, 1.0
	v_mul_f32_e32 v101, v95, v89
	v_div_fmas_f32 v74, v74, v100, v86
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v88, vcc_lo, v12, v30, v12
	v_fmac_f32_e32 v91, v98, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v74, v30, v17
	v_div_scale_f32 v98, s6, v9, v30, v9
	v_fma_f32 v100, -v94, v96, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v84, v86, 1.0
	v_mul_f32_e32 v93, v88, v92
	v_fmac_f32_e32 v96, v100, v96
	v_div_scale_f32 v100, s7, v6, v30, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v74, v86
	v_div_scale_f32 v74, s0, v11, v30, v11
	v_fma_f32 v97, -v90, v93, v88
	v_mul_f32_e32 v99, v74, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v93, v97, v92
	v_fma_f32 v97, -v84, v99, v74
	v_mul_f32_e32 v102, v98, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v90, v93, v88
	v_fma_f32 v90, -v85, v101, v95
	v_fmac_f32_e32 v99, v97, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v87, v102, v98
	v_mul_f32_e32 v103, v100, v96
	v_fmac_f32_e32 v101, v90, v89
	v_div_fmas_f32 v88, v88, v92, v93
	v_fma_f32 v74, -v84, v99, v74
	v_fmac_f32_e32 v102, v97, v91
	v_fma_f32 v84, -v94, v103, v100
	v_fma_f32 v85, -v85, v101, v95
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v12, v88, v30, v12
	v_div_fmas_f32 v74, v74, v86, v99
	v_fmac_f32_e32 v103, v84, v96
	v_fma_f32 v84, -v87, v102, v98
	s_mov_b32 vcc_lo, s1
	s_mov_b32 s0, 0xc1000000
	v_div_fmas_f32 v85, v85, v89, v101
	v_fma_f32 v86, -v94, v103, v100
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v11, v74, v30, v11
	v_div_fmas_f32 v84, v84, v91, v102
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v10, v85, v30, v10
	v_div_fmas_f32 v86, v86, v96, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v84, v30, v9
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v76, v76, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v86, v30, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v31
	v_rndne_f32_e32 v31, v32
	v_rndne_f32_e32 v32, v33
	v_rndne_f32_e32 v33, v58
	v_rndne_f32_e32 v58, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v69
	v_rndne_f32_e32 v69, v70
	v_rndne_f32_e32 v70, v72
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v75, v79
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v82
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v82, v53
	v_cvt_i32_f32_e32 v94, v41
	v_cvt_i32_f32_e32 v100, v35
	v_cvt_i32_f32_e32 v101, v34
	v_and_b32_e32 v34, 15, v74
	v_and_b32_e32 v35, 15, v75
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v74, 15, v23
	v_and_b32_e32 v75, 15, v22
	v_and_b32_e32 v76, 15, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v21, 10, v0
	v_and_b32_e32 v22, 16, v0
	v_lshlrev_b32_e32 v23, 4, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v83
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v81, v81, s0, 0x40e00000
	v_med3_f32 v80, v80, s0, 0x40e00000
	v_med3_f32 v77, v77, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_and_b32_e32 v53, 15, v54
	v_and_b32_e32 v54, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v21, 0x1800, v21
	v_lshlrev_b32_e32 v82, 6, v22
	v_xor_b32_e32 v16, v23, v16
	v_lshlrev_b32_e32 v23, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v78, v78, s0, 0x40e00000
	v_med3_f32 v79, v79, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v81, v81
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v83, v52
	v_cvt_i32_f32_e32 v84, v51
	v_cvt_i32_f32_e32 v85, v50
	v_cvt_i32_f32_e32 v98, v37
	v_cvt_i32_f32_e32 v99, v36
	v_cvt_i32_f32_e32 v6, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v21, 0, v21, v82
	v_and_or_b32 v14, 0x1b00, v23, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v90, v45
	v_cvt_i32_f32_e32 v91, v44
	v_cvt_i32_f32_e32 v92, v43
	v_cvt_i32_f32_e32 v93, v42
	v_cvt_i32_f32_e32 v103, v19
	v_cvt_i32_f32_e32 v104, v18
	v_cvt_i32_f32_e32 v105, v17
	v_cvt_i32_f32_e32 v106, v12
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v95, v40
	v_cvt_i32_f32_e32 v96, v39
	v_cvt_i32_f32_e32 v97, v38
	v_cvt_i32_f32_e32 v102, v20
	v_cvt_i32_f32_e32 v107, v11
	v_cvt_i32_f32_e32 v108, v10
	v_cvt_i32_f32_e32 v109, v9
	v_and_b32_e32 v9, 15, v30
	v_and_b32_e32 v10, 15, v31
	v_and_b32_e32 v11, 15, v32
	v_and_b32_e32 v12, 15, v33
	v_and_b32_e32 v17, 15, v58
	v_and_b32_e32 v18, 15, v61
	v_and_b32_e32 v19, 15, v62
	v_and_b32_e32 v20, 15, v65
	v_and_b32_e32 v32, 15, v70
	v_and_b32_e32 v33, 15, v72
	v_and_b32_e32 v38, 15, v81
	v_and_b32_e32 v39, 15, v80
	v_and_b32_e32 v40, 15, v77
	v_and_b32_e32 v42, 15, v73
	v_and_b32_e32 v43, 15, v71
	v_and_b32_e32 v50, 15, v57
	v_and_b32_e32 v51, 15, v56
	v_and_b32_e32 v52, 15, v55
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v23, v21, v16, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v85, 15, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v6, v14, v29, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v49
	v_cvt_i32_f32_e32 v87, v48
	v_cvt_i32_f32_e32 v88, v47
	v_cvt_i32_f32_e32 v89, v46
	v_and_b32_e32 v30, 15, v66
	v_and_b32_e32 v31, 15, v69
	v_and_b32_e32 v36, 15, v78
	v_and_b32_e32 v37, 15, v79
	v_and_b32_e32 v46, 15, v64
	v_and_b32_e32 v47, 15, v63
	v_and_b32_e32 v48, 15, v60
	v_and_b32_e32 v49, 15, v59
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v78, 15, v103
	v_and_b32_e32 v79, 15, v104
	v_and_b32_e32 v80, 15, v105
	v_and_b32_e32 v81, 15, v106
	v_and_b32_e32 v44, 15, v68
	v_and_b32_e32 v45, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v23, v[9:12]
	ds_store_b128 v23, v[30:33] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v6
	ds_load_b128 v[29:32], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[38:41]
	ds_store_b128 v23, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v6
	ds_load_b128 v[46:49], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[54:57]
	ds_store_b128 v23, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v6
	ds_load_b128 v[62:65], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[70:73]
	ds_store_b128 v23, v[78:81] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v6
	ds_load_b128 v[78:81], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[17:20]
	ds_store_b128 v23, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[18:21], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[42:45]
	ds_store_b128 v23, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v6
	ds_load_b128 v[42:45], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v77, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[58:61]
	ds_store_b128 v23, v[66:69] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v6
	ds_load_b128 v[58:61], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v82, 15, v107
	v_and_b32_e32 v83, 15, v108
	v_and_b32_e32 v84, 15, v109
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v25, 3, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[74:77]
	ds_store_b128 v23, v[82:85] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v6
	ds_load_b128 v[74:77], v6 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s0, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v6, s45, 7, v25
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s0, s33, s0
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v9, v29, 4, v9
	v_lshl_or_b32 v23, v30, 4, v10
	v_lshl_or_b32 v29, v31, 4, v11
	v_lshl_or_b32 v30, v32, 4, v12
	v_lshl_or_b32 v18, v18, 4, v14
	v_lshl_or_b32 v19, v19, 4, v15
	v_lshl_or_b32 v20, v20, 4, v16
	v_lshl_or_b32 v17, v21, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s0, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v44, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v5, s0, v[6:7]
	v_mad_u64_u32 v[14:15], null, v27, s0, v[6:7]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v45, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v26, s0, v[6:7]
	v_mad_u64_u32 v[15:16], null, v28, s0, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v9.l
	v_lshlrev_b16 v6.l, 8, v17.l
	v_and_b16 v6.h, 0xff, v20.l
	v_lshlrev_b16 v7.l, 8, v19.l
	v_and_b16 v9.l, 0xff, v18.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v48, 4, v40
	v_lshl_or_b32 v37, v49, 4, v41
	v_lshl_or_b32 v33, v42, 4, v33
	v_lshl_or_b32 v34, v43, 4, v34
	v_lshl_or_b32 v44, v60, 4, v52
	v_lshl_or_b32 v45, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.h, v2.l, v1.l
	v_or_b16 v16.l, v5.h, v5.l
	v_or_b16 v17.h, v6.h, v6.l
	v_or_b16 v17.l, v9.l, v7.l
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v35.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	v_lshl_or_b32 v40, v64, 4, v56
	v_lshl_or_b32 v41, v65, 4, v57
	v_lshl_or_b32 v42, v58, 4, v50
	v_lshl_or_b32 v43, v59, 4, v51
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v52, v76, 4, v68
	v_lshl_or_b32 v53, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v37.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v5.l, 8, v31.l
	v_and_b16 v5.h, 0xff, v21.l
	v_lshlrev_b16 v7.l, 8, v34.l
	v_and_b16 v9.l, 0xff, v33.l
	buffer_store_b64 v[16:17], v10, s[8:11], 0 offen
	v_or_b16 v17.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v45.l
	v_and_b16 v6.h, 0xff, v44.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v78, 4, v70
	v_lshl_or_b32 v47, v79, 4, v71
	v_lshl_or_b32 v48, v80, 4, v72
	v_lshl_or_b32 v49, v81, 4, v73
	v_lshl_or_b32 v50, v74, 4, v66
	v_lshl_or_b32 v51, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.h, v2.l, v1.l
	v_or_b16 v16.l, v5.h, v5.l
	v_or_b16 v17.l, v9.l, v7.l
	v_cndmask_b32_e64 v10, 0x80000000, v11, s4
	v_lshlrev_b16 v1.l, 8, v41.l
	v_and_b16 v2.l, 0xff, v40.l
	v_lshlrev_b16 v5.l, 8, v39.l
	v_and_b16 v5.h, 0xff, v38.l
	v_lshlrev_b16 v7.l, 8, v43.l
	v_and_b16 v9.l, 0xff, v42.l
	v_or_b16 v11.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v53.l
	v_and_b16 v6.h, 0xff, v52.l
	buffer_store_b64 v[16:17], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v5.h, v5.l
	v_or_b16 v11.l, v9.l, v7.l
	v_lshlrev_b16 v1.l, 8, v49.l
	v_and_b16 v2.l, 0xff, v48.l
	v_lshlrev_b16 v5.l, 8, v47.l
	v_and_b16 v5.h, 0xff, v46.l
	v_lshlrev_b16 v7.l, 8, v51.l
	v_and_b16 v9.l, 0xff, v50.l
	v_or_b16 v17.h, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v12, 0x80000000, v14, s3
	v_or_b16 v16.h, v2.l, v1.l
	v_or_b16 v16.l, v5.h, v5.l
	v_or_b16 v17.l, v9.l, v7.l
	v_cndmask_b32_e64 v5, 0x80000000, v15, s2
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v9, 2, v24
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[10:11], v12, s[8:11], 0 offen
	buffer_store_b64 v[16:17], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v25
	v_mov_b16_e32 v2.l, v13.h
	v_mov_b16_e32 v1.l, v7.h
	v_add3_u32 v6, v6, v9, v25
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s42, v8
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[40:41], v[3:4]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v2, s45, 1
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
.Ltmp48:
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
		.amdhsa_next_free_vgpr 194
		.amdhsa_next_free_sgpr 46
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 194
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15044
; TotalNumSgprs: 48
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 48
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
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
