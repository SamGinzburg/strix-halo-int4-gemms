	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_and_b32_e32 v36, 0x80, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_cmp_gt_i32 s48, 0
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
	s_load_b64 s[44:45], s[6:7], 0x0
	s_load_b64 s[46:47], s[4:5], 0x0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v34, 15, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v35, 0xf0, v0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v51, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v25, 5, v0
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s42, s[0:1], 0x58
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v44, 0x7f, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v15, s0, s34, v34
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
	v_cmp_le_i64_e32 vcc_lo, s[44:45], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[46:47], v[1:2]
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v1, s34, v34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[44:45], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[46:47], v[3:4]
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s40, s4, s2
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v3, 32, v1
	s_addc_u32 s41, s5, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v40, v2, s48
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_mul_lo_u32 v41, v3, s48
	v_bfe_i32 v3, v0, 7, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[44:45], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[46:47], v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s12
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s12, s[40:41], 0x0
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v43, 24, v2
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v3, 0x88, v3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s13
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s13, s49, 8
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v39, v1, s48
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s13, v25
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v25, s34, v25
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v26, 0xe0, v0
	v_lshl_or_b32 v43, v34, 5, v43
	v_xor_b32_e32 v44, v3, v44
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v3, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[44:45], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[46:47], v[7:8]
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v57, 28, v2
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v2, 8, v25
	v_lshl_or_b32 v45, v26, 4, v43
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v26, 2, v35
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v3, 32, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[44:45], v[17:18]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[46:47], v[17:18]
	v_cmp_gt_i64_e64 s19, s[46:47], v[15:16]
	v_mul_lo_u32 v63, v2, s42
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v2, 24, v25
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s14
	.loc	1 1149 29 is_stmt 1             ; ragged.py:1149:29
	s_mul_i32 s14, s42, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v49, 8, v1
	v_add3_u32 v59, 0, v26, v3
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v3, 32, v25
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v42, v4, s48
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 16, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s18
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v5, 24, v1
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s14, s12
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v6, 32, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[44:45], v[9:10]
	v_cmp_le_i64_e64 s4, s[44:45], v[11:12]
	v_cmp_le_i64_e64 s5, s[44:45], v[13:14]
	v_cmp_le_i64_e64 s7, s[44:45], v[15:16]
	v_cmp_le_i64_e64 s8, s[44:45], v[19:20]
	v_cmp_le_i64_e64 s9, s[44:45], v[21:22]
	v_cmp_le_i64_e64 s10, s[44:45], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[46:47], v[9:10]
	v_cmp_gt_i64_e64 s16, s[46:47], v[11:12]
	v_cmp_gt_i64_e64 s17, s[46:47], v[13:14]
	v_cmp_gt_i64_e64 s20, s[46:47], v[19:20]
	v_cmp_gt_i64_e64 s21, s[46:47], v[21:22]
	v_cmp_gt_i64_e64 s22, s[46:47], v[23:24]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v33, 0xf8, v1
	v_or_b32_e32 v32, 0xf0, v1
	v_or_b32_e32 v31, 0xe8, v1
	v_or_b32_e32 v30, 0xe0, v1
	v_or_b32_e32 v29, 0xd8, v1
	v_or_b32_e32 v28, 0xd0, v1
	v_or_b32_e32 v27, 0xc8, v1
	v_or_b32_e32 v46, 0xc0, v1
	v_or_b32_e32 v47, 0xb8, v1
	v_or_b32_e32 v24, 0xb0, v1
	v_or_b32_e32 v23, 0xa8, v1
	v_or_b32_e32 v22, 0xa0, v1
	v_or_b32_e32 v21, 0x98, v1
	v_or_b32_e32 v20, 0x90, v1
	v_or_b32_e32 v19, 0x88, v1
	v_or_b32_e32 v18, 0x80, v1
	v_or_b32_e32 v17, 0x78, v1
	v_or_b32_e32 v16, 0x70, v1
	v_or_b32_e32 v15, 0x68, v1
	v_or_b32_e32 v14, 0x60, v1
	v_or_b32_e32 v13, 0x58, v1
	v_or_b32_e32 v12, 0x50, v1
	v_or_b32_e32 v11, 0x48, v1
	v_or_b32_e32 v10, 64, v1
	v_or_b32_e32 v9, 56, v1
	v_or_b32_e32 v8, 48, v1
	v_or_b32_e32 v7, 40, v1
	v_mul_lo_u32 v72, v2, s42
	v_mad_u64_u32 v[1:2], null, v1, s42, s[18:19]
	v_mul_lo_u32 v74, v3, s42
	v_mad_u64_u32 v[2:3], null, v49, s42, s[18:19]
	v_mad_u64_u32 v[3:4], null, v4, s42, s[18:19]
	v_mad_u64_u32 v[4:5], null, v5, s42, s[18:19]
	v_mad_u64_u32 v[5:6], null, v6, s42, s[18:19]
	v_mad_u64_u32 v[6:7], null, v7, s42, s[18:19]
	v_mad_u64_u32 v[7:8], null, v8, s42, s[18:19]
	v_mad_u64_u32 v[8:9], null, v9, s42, s[18:19]
	v_mad_u64_u32 v[9:10], null, v10, s42, s[18:19]
	v_mad_u64_u32 v[10:11], null, v11, s42, s[18:19]
	v_mad_u64_u32 v[11:12], null, v12, s42, s[18:19]
	v_mad_u64_u32 v[12:13], null, v13, s42, s[18:19]
	v_mad_u64_u32 v[13:14], null, v14, s42, s[18:19]
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v58, 16, v25
	v_mad_u64_u32 v[14:15], null, v15, s42, s[18:19]
	v_mad_u64_u32 v[15:16], null, v16, s42, s[18:19]
	v_mad_u64_u32 v[16:17], null, v17, s42, s[18:19]
	v_mad_u64_u32 v[17:18], null, v18, s42, s[18:19]
	v_mad_u64_u32 v[18:19], null, v19, s42, s[18:19]
	v_mul_lo_u32 v61, v25, s42
	v_mul_lo_u32 v65, v58, s42
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v26, 40, v25
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v58, 48, v25
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v25, 56, v25
	v_mad_u64_u32 v[19:20], null, v20, s42, s[18:19]
	v_mad_u64_u32 v[20:21], null, v21, s42, s[18:19]
	v_mad_u64_u32 v[21:22], null, v22, s42, s[18:19]
	v_mad_u64_u32 v[22:23], null, v23, s42, s[18:19]
	v_mad_u64_u32 v[23:24], null, v24, s42, s[18:19]
	v_mul_lo_u32 v78, v25, s42
	v_mad_u64_u32 v[24:25], null, v47, s42, s[18:19]
	v_mul_lo_u32 v76, v26, s42
	v_mad_u64_u32 v[25:26], null, v46, s42, s[18:19]
	v_mad_u64_u32 v[26:27], null, v27, s42, s[18:19]
	v_mad_u64_u32 v[27:28], null, v28, s42, s[18:19]
	v_mad_u64_u32 v[28:29], null, v29, s42, s[18:19]
	v_mad_u64_u32 v[29:30], null, v30, s42, s[18:19]
	v_xor_b32_e32 v50, 0x110, v44
	v_xor_b32_e32 v51, 8, v43
	v_xor_b32_e32 v52, 16, v43
	v_xor_b32_e32 v53, 24, v43
	v_xor_b32_e32 v54, 8, v45
	v_xor_b32_e32 v55, 16, v45
	v_xor_b32_e32 v56, 24, v45
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v60, 1, v35
	v_mad_u64_u32 v[30:31], null, v31, s42, s[18:19]
	v_mad_u64_u32 v[31:32], null, v32, s42, s[18:19]
	v_mul_lo_u32 v77, v58, s42
	v_mad_u64_u32 v[32:33], null, v33, s42, s[18:19]
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v38, 31, v0
	v_or_b32_e32 v48, s13, v0
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v106, v59, v57
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v109, 0, v50
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v111, 0, v51
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v112, 0, v52
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v113, 0, v53
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v114, 0, v54
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v115, 0, v55
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v117, 0, v56
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v123, 0, v60
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v33, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s11
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s11, s48, s12
	s_mov_b32 s12, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s15
	s_and_b32 s4, s4, s16
	s_and_b32 s5, s5, s17
	s_and_b32 s7, s7, s19
	s_and_b32 s8, s8, s20
	s_and_b32 s9, s9, s21
	s_and_b32 s10, s10, s22
	s_and_b32 s21, s25, 0xffff
	s_mov_b32 s20, s24
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s50, s12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_delay_alu instid0(SALU_CYCLE_1)
	v_lshl_or_b32 v126, s50, 5, v38
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v182, 0, v44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s30, s22
	v_add_nc_u32_e32 v127, v61, v126
	v_add_nc_u32_e32 v128, v63, v126
	v_add_nc_u32_e32 v129, v65, v126
	v_add_nc_u32_e32 v130, v72, v126
	v_add_nc_u32_e32 v131, v74, v126
	v_add_nc_u32_e32 v133, v77, v126
	v_add_nc_u32_e32 v132, v76, v126
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_add_nc_u32 v134, v78, v126
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	v_cndmask_b32_e64 v135, 0x80000000, v129, s1
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_cndmask_b32_e64 v136, 0x80000000, v131, s3
	v_cndmask_b32_e64 v133, 0x80000000, v133, s5
	v_cndmask_b32_e64 v137, 0x80000000, v132, s4
	v_cndmask_b32_e64 v134, 0x80000000, v134, s6
	v_add_nc_u32_e32 v138, v1, v126
	v_add_nc_u32_e32 v139, v2, v126
	v_add_nc_u32_e32 v140, v3, v126
	v_add_nc_u32_e32 v141, v4, v126
	v_add_nc_u32_e32 v142, v5, v126
	v_add_nc_u32_e32 v143, v6, v126
	v_add_nc_u32_e32 v144, v7, v126
	v_add_nc_u32_e32 v145, v8, v126
	v_add_nc_u32_e32 v146, v9, v126
	v_add_nc_u32_e32 v147, v10, v126
	v_add_nc_u32_e32 v148, v11, v126
	v_add_nc_u32_e32 v149, v12, v126
	v_add_nc_u32_e32 v150, v13, v126
	v_add_nc_u32_e32 v151, v14, v126
	v_add_nc_u32_e32 v152, v15, v126
	v_add_nc_u32_e32 v153, v16, v126
	v_add_nc_u32_e32 v154, v17, v126
	v_add_nc_u32_e32 v155, v18, v126
	v_add_nc_u32_e32 v156, v19, v126
	v_add_nc_u32_e32 v157, v20, v126
	v_add_nc_u32_e32 v158, v21, v126
	v_add_nc_u32_e32 v159, v22, v126
	v_add_nc_u32_e32 v160, v23, v126
	v_add_nc_u32_e32 v161, v24, v126
	v_add_nc_u32_e32 v162, v25, v126
	v_add_nc_u32_e32 v163, v26, v126
	v_add_nc_u32_e32 v164, v27, v126
	v_add_nc_u32_e32 v165, v28, v126
	v_add_nc_u32_e32 v166, v29, v126
	v_add_nc_u32_e32 v167, v30, v126
	v_add_nc_u32_e32 v168, v31, v126
	v_add_nc_u32_e32 v169, v32, v126
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v129, v127, s[20:23], 0 offen
	buffer_load_u8 v126, v128, s[20:23], 0 offen
	buffer_load_u8 v131, v135, s[20:23], 0 offen
	buffer_load_u8 v127, v130, s[20:23], 0 offen
	buffer_load_u8 v132, v136, s[20:23], 0 offen
	buffer_load_u8 v128, v137, s[20:23], 0 offen
	buffer_load_u8 v133, v133, s[20:23], 0 offen
	buffer_load_u8 v130, v134, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v134, v138, s[24:27], 0 offen
	buffer_load_u8 v135, v139, s[24:27], 0 offen
	buffer_load_u8 v136, v140, s[24:27], 0 offen
	buffer_load_u8 v137, v141, s[24:27], 0 offen
	buffer_load_u8 v138, v142, s[24:27], 0 offen
	buffer_load_u8 v139, v143, s[24:27], 0 offen
	buffer_load_u8 v140, v144, s[24:27], 0 offen
	buffer_load_u8 v141, v145, s[24:27], 0 offen
	buffer_load_u8 v142, v146, s[24:27], 0 offen
	buffer_load_u8 v143, v147, s[24:27], 0 offen
	buffer_load_u8 v144, v148, s[24:27], 0 offen
	buffer_load_u8 v145, v149, s[24:27], 0 offen
	buffer_load_u8 v146, v150, s[24:27], 0 offen
	buffer_load_u8 v147, v151, s[24:27], 0 offen
	buffer_load_u8 v148, v152, s[24:27], 0 offen
	buffer_load_u8 v149, v153, s[24:27], 0 offen
	buffer_load_u8 v150, v154, s[24:27], 0 offen
	buffer_load_u8 v151, v155, s[24:27], 0 offen
	buffer_load_u8 v152, v156, s[24:27], 0 offen
	buffer_load_u8 v153, v157, s[24:27], 0 offen
	buffer_load_u8 v154, v158, s[24:27], 0 offen
	buffer_load_u8 v155, v159, s[24:27], 0 offen
	buffer_load_u8 v156, v160, s[24:27], 0 offen
	buffer_load_u8 v157, v161, s[24:27], 0 offen
	buffer_load_u8 v158, v162, s[24:27], 0 offen
	buffer_load_u8 v159, v163, s[24:27], 0 offen
	buffer_load_u8 v160, v164, s[24:27], 0 offen
	buffer_load_u8 v161, v165, s[24:27], 0 offen
	buffer_load_u8 v162, v166, s[24:27], 0 offen
	buffer_load_u8 v163, v167, s[24:27], 0 offen
	buffer_load_u8 v180, v168, s[24:27], 0 offen
	buffer_load_u8 v181, v169, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s31, s23
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s26, s50, s11
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s42, s22
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s43, s23
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v182, v129
	s_waitcnt vmcnt(37)
	ds_store_b8 v182, v131 offset:512
	s_waitcnt vmcnt(35)
	ds_store_b8 v182, v132 offset:1024
	s_waitcnt vmcnt(33)
	ds_store_b8 v182, v133 offset:1536
	ds_store_b8 v109, v126
	ds_store_b8 v109, v127 offset:512
	ds_store_b8 v109, v128 offset:1024
	s_waitcnt vmcnt(32)
	ds_store_b8 v109, v130 offset:1536
	v_add_nc_u32_e32 v126, 0, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[164:167], v126 offset1:1
	ds_load_2addr_stride64_b64 v[196:199], v126 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[168:171], v111 offset1:1
	ds_load_2addr_stride64_b64 v[200:203], v111 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[172:175], v112 offset1:1
	ds_load_2addr_stride64_b64 v[204:207], v112 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[176:179], v113 offset1:1
	ds_load_2addr_stride64_b64 v[208:211], v113 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v126, 0, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v182, v134
	s_waitcnt vmcnt(29)
	ds_store_b8 v182, v136 offset:512
	s_waitcnt vmcnt(27)
	ds_store_b8 v182, v138 offset:1024
	s_waitcnt vmcnt(25)
	ds_store_b8 v182, v140 offset:1536
	s_waitcnt vmcnt(23)
	ds_store_b8 v182, v142 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b8 v182, v144 offset:2560
	s_waitcnt vmcnt(19)
	ds_store_b8 v182, v146 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b8 v182, v148 offset:3584
	s_waitcnt vmcnt(15)
	ds_store_b8 v182, v150 offset:4096
	s_waitcnt vmcnt(13)
	ds_store_b8 v182, v152 offset:4608
	s_waitcnt vmcnt(11)
	ds_store_b8 v182, v154 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b8 v182, v156 offset:5632
	s_waitcnt vmcnt(7)
	ds_store_b8 v182, v158 offset:6144
	s_waitcnt vmcnt(5)
	ds_store_b8 v182, v160 offset:6656
	s_waitcnt vmcnt(3)
	ds_store_b8 v182, v162 offset:7168
	s_waitcnt vmcnt(1)
	ds_store_b8 v182, v180 offset:7680
	ds_store_b8 v109, v135
	ds_store_b8 v109, v137 offset:512
	ds_store_b8 v109, v139 offset:1024
	ds_store_b8 v109, v141 offset:1536
	ds_store_b8 v109, v143 offset:2048
	ds_store_b8 v109, v145 offset:2560
	ds_store_b8 v109, v147 offset:3072
	ds_store_b8 v109, v149 offset:3584
	ds_store_b8 v109, v151 offset:4096
	ds_store_b8 v109, v153 offset:4608
	ds_store_b8 v109, v155 offset:5120
	ds_store_b8 v109, v157 offset:5632
	ds_store_b8 v109, v159 offset:6144
	ds_store_b8 v109, v161 offset:6656
	ds_store_b8 v109, v163 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v181 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[212:215], v126 offset1:8
	ds_load_2addr_stride64_b64 v[216:219], v114 offset1:8
	ds_load_2addr_stride64_b64 v[220:223], v115 offset1:8
	ds_load_2addr_stride64_b64 v[224:227], v117 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v133, s19 :: v_dual_mov_b32 v132, s18
	v_dual_mov_b32 v131, s17 :: v_dual_mov_b32 v130, s16
	v_dual_mov_b32 v129, s15 :: v_dual_mov_b32 v128, s14
	v_dual_mov_b32 v127, s13 :: v_dual_mov_b32 v126, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[212:213], v[164:165], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[214:215], v[164:165], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[212:213], v[166:167], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[214:215], v[166:167], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[216:217], v[168:169], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[218:219], v[168:169], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[216:217], v[170:171], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[218:219], v[170:171], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[212:213], v[198:199], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[220:221], v[172:173], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[222:223], v[172:173], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[220:221], v[174:175], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[222:223], v[174:175], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[212:213], v[196:197], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[224:225], v[176:177], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[226:227], v[176:177], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[150:157], v[224:225], v[178:179], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[226:227], v[178:179], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[214:215], v[196:197], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[214:215], v[198:199], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[216:217], v[200:201], v[166:173] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[174:181], v[218:219], v[200:201], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[216:217], v[202:203], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[218:219], v[202:203], v[190:197] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v126, v134
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[166:173], v[220:221], v[204:205], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[222:223], v[204:205], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[220:221], v[206:207], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[222:223], v[206:207], v[190:197] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v135
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[166:173], v[224:225], v[208:209], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[226:227], v[208:209], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[224:225], v[210:211], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[226:227], v[210:211], v[190:197] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v128, v136
	v_cvt_f32_i32_e32 v134, v142
	v_cvt_f32_i32_e32 v135, v143
	v_cvt_f32_i32_e32 v136, v144
	v_cvt_f32_i32_e32 v142, v150
	v_cvt_f32_i32_e32 v143, v151
	v_cvt_f32_i32_e32 v144, v152
	v_cvt_f32_i32_e32 v150, v158
	v_cvt_f32_i32_e32 v151, v159
	v_cvt_f32_i32_e32 v152, v160
	v_cvt_f32_i32_e32 v158, v166
	v_cvt_f32_i32_e32 v159, v167
	v_cvt_f32_i32_e32 v160, v168
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v168, v176
	v_cvt_f32_i32_e32 v174, v182
	v_cvt_f32_i32_e32 v175, v183
	v_cvt_f32_i32_e32 v176, v184
	v_cvt_f32_i32_e32 v182, v190
	v_cvt_f32_i32_e32 v183, v191
	v_cvt_f32_i32_e32 v184, v192
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v190, s50, v39, 1
	v_add_lshl_u32 v191, s50, v40, 1
	v_add_lshl_u32 v192, s50, v41, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v137
	v_cvt_f32_i32_e32 v137, v145
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v190, 0x80000000, v190, s7
	v_cndmask_b32_e64 v191, 0x80000000, v191, s8
	v_cndmask_b32_e64 v192, 0x80000000, v192, s9
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v145, v153
	v_cvt_f32_i32_e32 v153, v161
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2
	buffer_load_u16 v190, v190, s[28:31], 0 offen
	buffer_load_u16 v191, v191, s[28:31], 0 offen
	buffer_load_u16 v192, v192, s[28:31], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v161, v169
	v_cvt_f32_i32_e32 v169, v177
	v_cvt_f32_i32_e32 v177, v185
	v_cvt_f32_i32_e32 v185, v193
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v193, s50, v42, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v131, v139
	v_cvt_f32_i32_e32 v133, v141
	v_cvt_f32_i32_e32 v139, v147
	v_cvt_f32_i32_e32 v147, v155
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v193, 0x80000000, v193, s10
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v155, v163
	v_cvt_f32_i32_e32 v163, v171
	v_cvt_f32_i32_e32 v171, v179
	v_cvt_f32_i32_e32 v130, v138
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v193, v193, s[28:31], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v146
	v_cvt_f32_i32_e32 v146, v154
	v_cvt_f32_i32_e32 v154, v162
	v_cvt_f32_i32_e32 v162, v170
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v178, v186
	v_cvt_f32_i32_e32 v186, v194
	v_cvt_f32_i32_e32 v141, v149
	v_cvt_f32_i32_e32 v149, v157
	v_cvt_f32_i32_e32 v157, v165
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v173, v181
	v_cvt_f32_i32_e32 v181, v189
	v_cvt_f32_i32_e32 v189, v197
	v_cvt_f32_i32_e32 v132, v140
	v_cvt_f32_i32_e32 v140, v148
	v_cvt_f32_i32_e32 v148, v156
	v_cvt_f32_i32_e32 v156, v164
	v_cvt_f32_i32_e32 v164, v172
	v_cvt_f32_i32_e32 v172, v180
	v_cvt_f32_i32_e32 v180, v188
	v_cvt_f32_i32_e32 v188, v196
	v_cvt_f32_i32_e32 v179, v187
	v_cvt_f32_i32_e32 v187, v195
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s50, s50, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s50, s48
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v192, 16, v192
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v171, v171, v192 :: v_dual_lshlrev_b32 v190, 16, v190
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v194, v126, v190 :: v_dual_lshlrev_b32 v191, 16, v191
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v126, v48, s26, 1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v196, v128, v190
	v_mul_f32_e32 v195, v127, v190
	v_mul_f32_e32 v197, v129, v190
	v_mul_f32_e32 v199, v131, v190
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v126, v126, s[40:43], 0 offen
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v201, v133, v190
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v198, v130, v190 :: v_dual_lshlrev_b32 v193, 16, v193
	v_mul_f32_e32 v200, v132, v190
	v_mul_f32_e32 v202, v134, v190
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v203, v135, v190 :: v_dual_mul_f32 v174, v174, v193
	v_dual_mul_f32 v189, v189, v193 :: v_dual_mul_f32 v204, v136, v190
	v_mul_f32_e32 v181, v181, v193
	v_dual_mul_f32 v205, v137, v190 :: v_dual_mul_f32 v176, v176, v193
	v_dual_mul_f32 v206, v138, v190 :: v_dual_mul_f32 v183, v183, v193
	v_dual_mul_f32 v207, v139, v190 :: v_dual_mul_f32 v178, v178, v193
	v_dual_mul_f32 v208, v140, v190 :: v_dual_mul_f32 v185, v185, v193
	v_dual_mul_f32 v190, v141, v190 :: v_dual_mul_f32 v187, v187, v193
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v142, v142, v191
	v_mul_f32_e32 v143, v143, v191
	v_mul_f32_e32 v144, v144, v191
	v_mul_f32_e32 v145, v145, v191
	v_mul_f32_e32 v146, v146, v191
	v_mul_f32_e32 v147, v147, v191
	v_mul_f32_e32 v148, v148, v191
	v_mul_f32_e32 v149, v149, v191
	v_mul_f32_e32 v150, v150, v191
	v_mul_f32_e32 v151, v151, v191
	v_mul_f32_e32 v152, v152, v191
	v_mul_f32_e32 v153, v153, v191
	v_mul_f32_e32 v154, v154, v191
	v_mul_f32_e32 v155, v155, v191
	v_mul_f32_e32 v156, v156, v191
	v_dual_mul_f32 v157, v157, v191 :: v_dual_mul_f32 v158, v158, v192
	v_mul_f32_e32 v159, v159, v192
	v_mul_f32_e32 v160, v160, v192
	v_mul_f32_e32 v161, v161, v192
	v_mul_f32_e32 v162, v162, v192
	v_mul_f32_e32 v163, v163, v192
	v_mul_f32_e32 v164, v164, v192
	v_mul_f32_e32 v165, v165, v192
	v_mul_f32_e32 v166, v166, v192
	v_mul_f32_e32 v167, v167, v192
	v_mul_f32_e32 v168, v168, v192
	v_mul_f32_e32 v169, v169, v192
	v_mul_f32_e32 v170, v170, v192
	v_mul_f32_e32 v172, v172, v192
	v_mul_f32_e32 v173, v173, v192
	v_mul_f32_e32 v175, v175, v193
	v_mul_f32_e32 v177, v177, v193
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v179, v179, v193 :: v_dual_lshlrev_b32 v126, 16, v126
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v106, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[126:129], v123
	ds_load_b128 v[130:133], v123 offset:16
	ds_load_b128 v[134:137], v123 offset:512
	ds_load_b128 v[138:141], v123 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v180, v180, v193
	v_mul_f32_e32 v182, v182, v193
	v_mul_f32_e32 v184, v184, v193
	v_mul_f32_e32 v186, v186, v193
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v188, v188, v193 :: v_dual_fmac_f32 v37, v194, v126
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v125, v195, v127 :: v_dual_fmac_f32 v124, v196, v128
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v107, v205, v137
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v122, v197, v129 :: v_dual_fmac_f32 v103, v208, v140
	v_dual_fmac_f32 v121, v198, v130 :: v_dual_fmac_f32 v120, v199, v131
	v_fmac_f32_e32 v101, v142, v126
	v_dual_fmac_f32 v119, v200, v132 :: v_dual_fmac_f32 v118, v201, v133
	v_dual_fmac_f32 v99, v144, v128 :: v_dual_fmac_f32 v116, v202, v134
	v_dual_fmac_f32 v95, v148, v132 :: v_dual_fmac_f32 v110, v203, v135
	v_dual_fmac_f32 v97, v146, v130 :: v_dual_fmac_f32 v108, v204, v136
	v_fmac_f32_e32 v93, v150, v134
	v_dual_fmac_f32 v105, v206, v138 :: v_dual_fmac_f32 v104, v207, v139
	v_dual_fmac_f32 v91, v152, v136 :: v_dual_fmac_f32 v102, v190, v141
	v_dual_fmac_f32 v87, v156, v140 :: v_dual_fmac_f32 v100, v143, v127
	v_dual_fmac_f32 v89, v154, v138 :: v_dual_fmac_f32 v98, v145, v129
	v_dual_fmac_f32 v85, v158, v126 :: v_dual_fmac_f32 v96, v147, v131
	v_dual_fmac_f32 v83, v160, v128 :: v_dual_fmac_f32 v94, v149, v133
	v_dual_fmac_f32 v81, v162, v130 :: v_dual_fmac_f32 v92, v151, v135
	v_dual_fmac_f32 v79, v164, v132 :: v_dual_fmac_f32 v90, v153, v137
	v_dual_fmac_f32 v73, v166, v134 :: v_dual_fmac_f32 v88, v155, v139
	v_fmac_f32_e32 v75, v165, v133
	v_dual_fmac_f32 v86, v157, v141 :: v_dual_fmac_f32 v71, v167, v135
	v_dual_fmac_f32 v84, v159, v127 :: v_dual_fmac_f32 v69, v169, v137
	v_dual_fmac_f32 v82, v161, v129 :: v_dual_fmac_f32 v67, v171, v139
	v_dual_fmac_f32 v80, v163, v131 :: v_dual_fmac_f32 v59, v176, v128
	v_dual_fmac_f32 v70, v168, v136 :: v_dual_fmac_f32 v57, v178, v130
	v_dual_fmac_f32 v68, v170, v138 :: v_dual_fmac_f32 v55, v180, v132
	v_dual_fmac_f32 v66, v172, v140 :: v_dual_fmac_f32 v53, v182, v134
	v_dual_fmac_f32 v64, v173, v141 :: v_dual_fmac_f32 v51, v184, v136
	v_dual_fmac_f32 v62, v174, v126 :: v_dual_fmac_f32 v47, v187, v139
	v_dual_fmac_f32 v60, v175, v127 :: v_dual_fmac_f32 v49, v186, v138
	v_fmac_f32_e32 v58, v177, v129
	v_dual_fmac_f32 v56, v179, v131 :: v_dual_fmac_f32 v33, v189, v141
	v_fmac_f32_e32 v54, v181, v133
	v_fmac_f32_e32 v52, v183, v135
	v_fmac_f32_e32 v50, v185, v137
	v_fmac_f32_e32 v46, v188, v140
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v39, v83, v83 :: v_dual_max_f32 v40, v82, v82
	v_dual_max_f32 v41, v81, v81 :: v_dual_max_f32 v42, v80, v80
	v_max_f32_e32 v43, v79, v79
	v_dual_max_f32 v27, v91, v91 :: v_dual_max_f32 v28, v90, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v80, 0, v42
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v41, 0, v41
	v_max_f32_e32 v42, v75, v75
	v_dual_max_f32 v81, 0, v43 :: v_dual_max_f32 v48, v69, v69
	v_dual_max_f32 v43, v73, v73 :: v_dual_max_f32 v44, v71, v71
	v_max_f32_e32 v45, v70, v70
	v_dual_max_f32 v1, v37, v37 :: v_dual_max_f32 v4, v122, v122
	v_dual_max_f32 v25, v93, v93 :: v_dual_max_f32 v26, v92, v92
	v_max_f32_e32 v29, v89, v89
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, v88, v88
	v_dual_max_f32 v31, v87, v87 :: v_dual_max_f32 v38, v84, v84
	v_dual_max_f32 v37, v85, v85 :: v_dual_max_f32 v82, 0, v43
	v_dual_max_f32 v73, 0, v42 :: v_dual_max_f32 v84, 0, v45
	v_dual_max_f32 v83, 0, v44 :: v_dual_max_f32 v44, v66, v66
	v_dual_max_f32 v85, 0, v48 :: v_dual_max_f32 v48, v62, v62
	v_dual_max_f32 v42, v68, v68 :: v_dual_max_f32 v43, v67, v67
	v_max_f32_e32 v45, v64, v64
	v_dual_max_f32 v17, v101, v101 :: v_dual_max_f32 v18, v100, v100
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v29, 0, v29
	v_max_f32_e32 v32, v86, v86
	v_dual_max_f32 v86, 0, v42 :: v_dual_max_f32 v87, 0, v43
	v_dual_max_f32 v88, 0, v44 :: v_dual_max_f32 v89, 0, v45
	v_max_f32_e32 v90, 0, v48
	v_dual_max_f32 v42, v60, v60 :: v_dual_max_f32 v43, v59, v59
	v_dual_max_f32 v44, v58, v58 :: v_dual_max_f32 v45, v57, v57
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v48, v56, v56 :: v_dual_max_f32 v91, 0, v42
	v_dual_max_f32 v5, v121, v121 :: v_dual_max_f32 v6, v120, v120
	v_dual_max_f32 v7, v119, v119 :: v_dual_max_f32 v8, v118, v118
	v_max_f32_e32 v9, v116, v116
	v_dual_max_f32 v15, v103, v103 :: v_dual_max_f32 v16, v102, v102
	v_max_f32_e32 v19, v99, v99
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v20, v98, v98
	v_dual_max_f32 v21, v97, v97 :: v_dual_max_f32 v24, v94, v94
	v_max_f32_e32 v23, v95, v95
	v_dual_max_f32 v92, 0, v43 :: v_dual_max_f32 v93, 0, v44
	v_dual_max_f32 v94, 0, v45 :: v_dual_max_f32 v95, 0, v48
	v_dual_max_f32 v42, v55, v55 :: v_dual_max_f32 v43, v54, v54
	v_dual_max_f32 v44, v53, v53 :: v_dual_max_f32 v45, v52, v52
	v_max_f32_e32 v48, v51, v51
	v_dual_max_f32 v2, v125, v125 :: v_dual_max_f32 v3, v124, v124
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v110, v110 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v107, v107 :: v_dual_max_f32 v11, v108, v108
	v_dual_max_f32 v13, v105, v105 :: v_dual_max_f32 v14, v104, v104
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, 0, v19
	v_max_f32_e32 v22, v96, v96
	v_dual_max_f32 v96, 0, v42 :: v_dual_max_f32 v97, 0, v43
	v_dual_max_f32 v98, 0, v44 :: v_dual_max_f32 v43, v49, v49
	v_dual_max_f32 v99, 0, v45 :: v_dual_max_f32 v100, 0, v48
	v_max_f32_e32 v45, v46, v46
	v_dual_max_f32 v42, v50, v50 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v44, v47, v47 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_max_f32_e32 v18, 0, v18
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_max_f32_e32 v28, 0, v28
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v37, 0, v37
	v_max_f32_e32 v38, 0, v38
	v_dual_max_f32 v101, 0, v42 :: v_dual_max_f32 v102, 0, v43
	v_dual_max_f32 v103, 0, v44 :: v_dual_max_f32 v104, 0, v45
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v55, v3, v3
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v105, 0, v33 :: v_dual_mul_f32 v52, v2, v2
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v51, v1, v1 :: v_dual_mul_f32 v56, v4, v4
	v_dual_mul_f32 v59, v5, v5 :: v_dual_mul_f32 v60, v6, v6
	v_dual_mul_f32 v63, v7, v7 :: v_dual_mul_f32 v64, v8, v8
	v_dual_mul_f32 v66, v9, v9 :: v_dual_mul_f32 v67, v10, v10
	v_dual_mul_f32 v69, v11, v11 :: v_dual_mul_f32 v72, v12, v12
	v_dual_mul_f32 v74, v13, v13 :: v_dual_mul_f32 v75, v14, v14
	v_dual_mul_f32 v78, v15, v15 :: v_dual_mul_f32 v79, v16, v16
	v_dual_mul_f32 v77, v17, v17 :: v_dual_mul_f32 v76, v18, v18
	v_dual_mul_f32 v71, v19, v19 :: v_dual_mul_f32 v70, v20, v20
	v_dual_mul_f32 v68, v21, v21 :: v_dual_mul_f32 v65, v22, v22
	v_dual_mul_f32 v62, v23, v23 :: v_dual_mul_f32 v61, v24, v24
	v_dual_mul_f32 v58, v25, v25 :: v_dual_mul_f32 v57, v26, v26
	v_dual_mul_f32 v54, v27, v27 :: v_dual_mul_f32 v53, v28, v28
	v_dual_mul_f32 v50, v29, v29 :: v_dual_mul_f32 v49, v30, v30
	v_dual_mul_f32 v48, v31, v31 :: v_dual_mul_f32 v47, v32, v32
	v_dual_mul_f32 v46, v37, v37 :: v_dual_mul_f32 v45, v38, v38
	v_dual_mul_f32 v44, v39, v39 :: v_dual_mul_f32 v43, v40, v40
	v_dual_mul_f32 v42, v41, v41 :: v_dual_mul_f32 v41, v80, v80
	v_dual_mul_f32 v40, v81, v81 :: v_dual_mul_f32 v37, v83, v83
	v_dual_mul_f32 v39, v73, v73 :: v_dual_mul_f32 v38, v82, v82
	v_dual_mul_f32 v33, v84, v84 :: v_dual_mul_f32 v32, v85, v85
	v_dual_mul_f32 v31, v86, v86 :: v_dual_mul_f32 v30, v87, v87
	v_dual_mul_f32 v29, v88, v88 :: v_dual_mul_f32 v28, v89, v89
	v_dual_mul_f32 v27, v90, v90 :: v_dual_mul_f32 v26, v91, v91
	v_dual_mul_f32 v25, v92, v92 :: v_dual_mul_f32 v24, v93, v93
	v_dual_mul_f32 v23, v94, v94 :: v_dual_mul_f32 v22, v95, v95
	v_dual_mul_f32 v21, v96, v96 :: v_dual_mul_f32 v20, v97, v97
	v_dual_mul_f32 v19, v98, v98 :: v_dual_mul_f32 v18, v99, v99
	v_dual_mul_f32 v15, v100, v100 :: v_dual_mul_f32 v10, v102, v102
	v_dual_mul_f32 v11, v101, v101 :: v_dual_mul_f32 v8, v104, v104
	v_mul_f32_e32 v9, v103, v103
	v_mul_f32_e32 v7, v105, v105
	v_mov_b32_e32 v1, v36
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v52, v52 :: v_dual_max_f32 v3, v51, v51
	v_max_f32_e32 v12, v77, v77
	v_max3_f32 v4, v56, v59, v60
	v_max3_f32 v5, v67, v69, v72
	v_max3_f32 v6, v74, v75, v78
	v_dual_max_f32 v2, v3, v2 :: v_dual_max_f32 v3, v76, v76
	v_max3_f32 v16, v57, v54, v53
	v_max3_f32 v17, v50, v49, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v5, v5, v6, v79
	v_max3_f32 v2, v2, v55, v4
	v_dual_max_f32 v3, v12, v3 :: v_dual_max_f32 v4, v45, v45
	v_max3_f32 v12, v70, v68, v65
	v_max3_f32 v14, v62, v61, v58
	v_max3_f32 v36, v37, v33, v32
	v_max3_f32 v73, v31, v30, v29
	v_max3_f32 v13, v63, v64, v66
	v_max3_f32 v3, v3, v71, v12
	v_max3_f32 v12, v16, v17, v47
	v_max_f32_e32 v17, v26, v26
	v_max_f32_e32 v6, v46, v46
	v_max3_f32 v16, v40, v39, v38
	v_max3_f32 v2, v2, v13, v5
	v_max3_f32 v3, v3, v14, v12
	v_max3_f32 v13, v18, v15, v11
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, v43, v42, v41
	v_max3_f32 v14, v10, v9, v8
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v12, v21, v20, v19
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v82, 3, v1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v44, v6
	v_max3_f32 v6, v36, v73, v28
	v_max_f32_e32 v36, v27, v27
	v_max3_f32 v13, v13, v14, v7
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v16, v6
	v_max_f32_e32 v5, v36, v17
	v_max3_f32 v6, v24, v23, v22
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v16, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v36, 4, v0
	v_permlanex16_b32 v17, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v73, 8, v0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v25, v6
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v12, v13
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v3, v6 :: v_dual_and_b32 v12, 3, v0
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_lshlrev_b32 v13, 5, v12
	v_max_f32_e32 v14, v16, v16
	v_dual_max_f32 v16, v17, v17 :: v_dual_and_b32 v17, 0x60, v0
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v36, 0x680, v36, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v6
	v_max_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v4, v4, v16
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v16, 4, v0
	v_lshl_add_u32 v14, v12, 9, 0
	v_xor_b32_e32 v81, v13, v17
	v_xor_b32_e32 v36, v36, v17
	v_lshl_add_u32 v83, v16, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v80, v16, 2, v14
	v_lshlrev_b32_e32 v14, 1, v1
	v_add_nc_u32_e32 v1, 0, v1
	v_add3_u32 v36, v83, v82, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v80, v73, 4, v80
	v_lshlrev_b32_e32 v73, 3, v73
	v_add3_u32 v6, v80, v14, v81
	ds_store_b128 v6, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v36, v3
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v81, v5, v5
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v12, v12, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v5, v81, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, v2, v6 :: v_dual_max_f32 v3, v3, v36
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v81, v5 :: v_dual_mov_b32 v36, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v2, v2, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v36, v81, v81
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v4
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v5, v5, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v36, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v80, v80
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v3
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v6
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
	v_max_f32_e32 v5, v5, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v80 :: v_dual_mov_b32 v80, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v6, v6, v6 :: v_dual_mov_b32 v81, v3
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v6
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v6, v4 :: v_dual_max_f32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v80
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v80, 1, v17
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v81
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v80, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v4, v4, v6
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v6, 5, v16
	ds_store_b128 v1, v[2:5]
	v_add3_u32 v6, v12, v6, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v12, 4, v35
	v_and_b32_e32 v5, 63, v0
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[80:83], v6
.Ltmp51:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v12
	v_or_b32_e32 v73, 32, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v80, v80
	v_max_f32_e32 v3, v82, v82
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v80, 16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, 0x2b8cbccc, v1
	v_max_f32_e32 v82, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v86, vcc_lo, v6, 0x40e00000, v6
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v16
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s34, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v16, v36, 1.0
	v_fmac_f32_e32 v36, v3, v36
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v86, v36
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s0, s34, v73
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v73, v81, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[44:45], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[46:47], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v3, -v16, v89, v86
	v_max_f32_e32 v73, 0x2b8cbccc, v73
	v_max_f32_e32 v81, v83, v83
	v_fma_f32 v83, -v87, v88, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[44:45], v[84:85]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v89, v3, v36
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v73
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v80
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v80, 0x2b8cbccc, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v16, -v16, v89, v86
	v_fmac_f32_e32 v88, v83, v88
	v_rcp_f32_e32 v81, v90
	v_div_scale_f32 v83, s6, v82, 0x40e00000, v82
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v80
	v_div_fmas_f32 v16, v16, v36, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v83, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v89, v86
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[46:47], v[84:85]
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v84, -v90, v81, 1.0
	v_div_fixup_f32 v6, v16, 0x40e00000, v6
	v_fma_f32 v16, -v87, v36, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, 0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[44:45], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v84, v81
	v_div_scale_f32 v84, s7, v73, 0x40e00000, v73
	v_fmac_f32_e32 v36, v16, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v16.l, v6.h
	v_mov_b16_e32 v16.h, v85.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v91, -v86, v89, 1.0
	v_mul_f32_e32 v92, v84, v81
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[46:47], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v87, v36, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v91, v89 :: v_dual_and_b32 v4, 1, v16
	v_div_scale_f32 v91, s8, v80, 0x40e00000, v80
	v_fma_f32 v16, -v90, v92, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v6, v6, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v91, v89
	v_div_fmas_f32 v36, v3, v88, v36
	v_dual_fmac_f32 v92, v16, v81 :: v_dual_and_b32 v87, 0xffff0000, v6
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v86, v83, v91
	v_div_fixup_f32 v36, v36, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v90, v92, v84
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v87, v87, v51
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v16, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v36.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v16, v82, v81, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v81, v84
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v82, -v86, v83, v91
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v16, v16, 0x40e00000, v73
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v73, v82, v89, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v87, v87, v52
	v_fma_f32 v86, -v84, v81, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v83, 1, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v73, v73, 0x40e00000, v80
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[44:45], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v16.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, vcc_lo, v51, v87, v51
	v_rcp_f32_e32 v88, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.h, v85.h
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[46:47], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v36, v83, 0x7fff
	v_mov_b16_e32 v85.l, v73.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v83, v86, v81 :: v_dual_and_b32 v4, 1, v80
	v_div_scale_f32 v89, null, v87, v87, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v84, v83, v86
	v_div_scale_f32 v91, null, v87, v87, v56
	v_fma_f32 v36, -v82, v88, 1.0
	v_rcp_f32_e32 v90, v89
	v_fmac_f32_e32 v83, v85, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v91
	v_div_scale_f32 v92, s8, v52, v87, v52
	v_fmac_f32_e32 v88, v36, v88
	v_fma_f32 v84, -v84, v83, v86
	v_div_scale_f32 v96, null, v87, v87, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v93, v92, v88
	v_fma_f32 v94, -v89, v90, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v91, v85, 1.0
	v_div_fmas_f32 v81, v84, v81, v83
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v86, -v82, v93, v92
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s9, v55, v87, v55
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v87, v87, v60
	v_fmac_f32_e32 v93, v86, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v94, v90
	v_div_scale_f32 v86, s10, v56, v87, v56
	v_rcp_f32_e32 v97, v95
	v_div_fixup_f32 v51, v81, v87, v51
	v_fma_f32 v81, -v82, v93, v92
	v_fma_f32 v82, -v89, v83, v94
	v_mul_f32_e32 v92, v86, v85
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v98, -v96, v84, 1.0
	v_div_fmas_f32 v81, v81, v88, v93
	v_fmac_f32_e32 v83, v82, v90
	v_fma_f32 v82, -v91, v92, v86
	v_fma_f32 v93, -v95, v97, 1.0
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v88, s8, v59, v87, v59
	v_div_fixup_f32 v52, v81, v87, v52
	v_fma_f32 v81, -v89, v83, v94
	v_fmac_f32_e32 v92, v82, v85
	v_fmac_f32_e32 v97, v93, v97
	v_div_scale_f32 v93, null, v87, v87, v63
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v82, v88, v84
	v_div_scale_f32 v89, s11, v60, v87, v60
	v_div_fmas_f32 v81, v81, v90, v83
	v_fma_f32 v83, -v91, v92, v86
	v_rcp_f32_e32 v90, v93
	v_div_scale_f32 v94, null, v87, v87, v64
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v86, -v96, v82, v88
	v_mul_f32_e32 v91, v89, v97
	v_div_fmas_f32 v83, v83, v85, v92
	v_rcp_f32_e32 v85, v94
	v_div_fixup_f32 v55, v81, v87, v55
	v_fmac_f32_e32 v82, v86, v84
	v_fma_f32 v86, -v95, v91, v89
	v_fma_f32 v92, -v93, v90, 1.0
	v_div_fixup_f32 v56, v83, v87, v56
	v_div_scale_f32 v83, s9, v63, v87, v63
	v_fma_f32 v81, -v96, v82, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v86, v97 :: v_dual_fmac_f32 v90, v92, v90
	v_fma_f32 v86, -v94, v85, 1.0
	v_div_scale_f32 v88, null, v87, v87, v66
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v87, v87, v67
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v95, v91, v89
	v_dual_mul_f32 v84, v83, v90 :: v_dual_fmac_f32 v85, v86, v85
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v89, s8, v64, v87, v64
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v59, v81, v87, v59
	v_div_fmas_f32 v82, v82, v97, v91
	v_fma_f32 v91, -v93, v84, v83
	v_mul_f32_e32 v95, v89, v85
	v_rcp_f32_e32 v97, v92
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v88, v86, 1.0
	v_fmac_f32_e32 v84, v91, v90
	v_fma_f32 v81, -v94, v95, v89
	v_div_fixup_f32 v60, v82, v87, v60
	v_div_scale_f32 v82, s10, v66, v87, v66
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v91, null, v87, v87, v69
	v_fma_f32 v83, -v93, v84, v83
	v_fmac_f32_e32 v95, v81, v85
	v_fma_f32 v96, -v92, v97, 1.0
	v_mul_f32_e32 v81, v82, v86
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v83, v83, v90, v84
	v_fma_f32 v84, -v94, v95, v89
	v_div_scale_f32 v98, null, v87, v87, v72
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v67, v87, v67
	v_fma_f32 v89, -v88, v81, v82
	v_div_fmas_f32 v84, v84, v85, v95
	v_rcp_f32_e32 v85, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v96, v97
	v_fma_f32 v94, -v91, v93, 1.0
	v_fmac_f32_e32 v81, v89, v86
	v_div_fixup_f32 v64, v84, v87, v64
	v_div_fixup_f32 v63, v83, v87, v63
	v_fma_f32 v89, -v92, v90, v96
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, s8, v69, v87, v69
	v_fma_f32 v82, -v88, v81, v82
	v_fma_f32 v84, -v98, v85, 1.0
	v_div_scale_f32 v88, null, v87, v87, v74
	v_fmac_f32_e32 v90, v89, v97
	v_mul_f32_e32 v83, v94, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v88
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v72, v87, v72
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v92, v90, v96
	v_fma_f32 v86, -v91, v83, v94
	v_div_scale_f32 v92, null, v87, v87, v75
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v88, v84, 1.0
	v_fmac_f32_e32 v83, v86, v93
	v_rcp_f32_e32 v86, v92
	v_div_fmas_f32 v82, v82, v97, v90
	v_mul_f32_e32 v90, v89, v85
	v_div_fixup_f32 v66, v81, v87, v66
	v_fma_f32 v81, -v91, v83, v94
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v95, null, v87, v87, v78
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v67, v82, v87, v67
	v_fma_f32 v82, -v98, v90, v89
	v_div_scale_f32 v91, s10, v74, v87, v74
	v_fma_f32 v94, -v92, v86, 1.0
	v_div_fmas_f32 v81, v81, v93, v83
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v90, v82, v85
	v_mul_f32_e32 v82, v91, v84
	v_fmac_f32_e32 v86, v94, v86
	v_div_scale_f32 v93, s8, v75, v87, v75
	v_div_scale_f32 v94, null, v87, v87, v79
	v_div_fixup_f32 v69, v81, v87, v69
	v_fma_f32 v81, -v98, v90, v89
	v_fma_f32 v89, -v88, v82, v91
	v_mul_f32_e32 v96, v93, v86
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v83, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v16, v16, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v90
	v_fmac_f32_e32 v82, v89, v84
	v_fma_f32 v85, -v92, v96, v93
	v_fmac_f32_e32 v83, v98, v83
	v_div_scale_f32 v89, s9, v78, v87, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v94, v97, 1.0
	v_fmac_f32_e32 v96, v85, v86
	v_div_fixup_f32 v72, v81, v87, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v89, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v73, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v90, v97 :: v_dual_and_b32 v80, 0xffff0000, v16
	v_fma_f32 v81, -v88, v82, v91
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s11, v79, v87, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v90, null, v80, v80, v77
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v92, v96, v93
	v_fma_f32 v84, -v95, v85, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v93, null, v80, v80, v76
	v_dual_fmac_f32 v85, v84, v83 :: v_dual_and_b32 v36, 0xffff0000, v4
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v93
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v74, v81, v87, v74
	v_div_fmas_f32 v82, v82, v86, v96
	v_fma_f32 v86, -v94, v92, v88
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v81, -v95, v85, v89
	v_div_scale_f32 v89, null, v80, v80, v71
	v_div_fixup_f32 v75, v82, v87, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v92, v86, v97 :: v_dual_fmac_f32 v91, v96, v91
	v_div_scale_f32 v82, s8, v77, v80, v77
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v73, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v94, v92, v88
	v_mul_f32_e32 v85, v82, v91
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v88, s9, v76, v80, v76
	v_div_scale_f32 v94, null, v80, v80, v70
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v88, v84
	v_div_fmas_f32 v83, v83, v97, v92
	v_fma_f32 v92, -v90, v85, v82
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	v_div_fixup_f32 v78, v81, v87, v78
	v_div_fixup_f32 v79, v83, v87, v79
	v_fmac_f32_e32 v85, v92, v91
	v_fma_f32 v81, -v93, v95, v88
	v_div_scale_f32 v87, null, v80, v80, v68
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v83, s10, v71, v80, v71
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_fmac_f32_e32 v95, v81, v84
	v_rcp_f32_e32 v90, v87
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v81, v83, v86
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s11, v70, v80, v70
	v_div_fmas_f32 v82, v82, v91, v85
	v_fma_f32 v85, -v93, v95, v88
	v_div_scale_f32 v96, null, v80, v80, v65
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v89, v81, v83
	v_mul_f32_e32 v91, v92, v97
	v_fma_f32 v93, -v87, v90, 1.0
	v_div_fmas_f32 v84, v85, v84, v95
	v_rcp_f32_e32 v85, v96
	v_fmac_f32_e32 v81, v88, v86
	v_fma_f32 v88, -v94, v91, v92
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v93, s8, v68, v80, v68
	v_div_fixup_f32 v77, v82, v80, v77
	v_div_fixup_f32 v76, v84, v80, v76
	v_fma_f32 v82, -v89, v81, v83
	v_fmac_f32_e32 v91, v88, v97
	v_mul_f32_e32 v83, v93, v90
	v_fma_f32 v84, -v96, v85, 1.0
	v_div_scale_f32 v88, null, v80, v80, v62
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v65, v80, v65
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v94, v91, v92
	v_fma_f32 v86, -v87, v83, v93
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v92, null, v80, v80, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v90
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v71, v81, v80, v71
	v_rcp_f32_e32 v86, v92
	v_div_fmas_f32 v82, v82, v97, v91
	v_mul_f32_e32 v91, v89, v85
	v_fma_f32 v81, -v87, v83, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v88, v84, 1.0
	v_div_scale_f32 v87, s10, v62, v80, v62
	v_div_fixup_f32 v70, v82, v80, v70
	v_fma_f32 v82, -v96, v91, v89
	v_fmac_f32_e32 v84, v94, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v92, v86, 1.0
	v_div_scale_f32 v94, null, v80, v80, v58
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v91, v82, v85
	v_div_fmas_f32 v81, v81, v90, v83
	v_fmac_f32_e32 v86, v93, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v90, s8, v61, v80, v61
	v_mul_f32_e32 v82, v87, v84
	v_div_fixup_f32 v68, v81, v80, v68
	v_fma_f32 v81, -v96, v91, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v95, v90, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v88, v82, v87
	v_div_scale_f32 v93, null, v80, v80, v57
	v_fma_f32 v97, -v94, v83, 1.0
	v_div_fmas_f32 v81, v81, v85, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v89, v84
	v_fma_f32 v85, -v92, v95, v90
	v_div_scale_f32 v89, s9, v58, v80, v58
	v_fmac_f32_e32 v83, v97, v83
	v_div_fixup_f32 v65, v81, v80, v65
	v_fma_f32 v81, -v88, v82, v87
	v_fmac_f32_e32 v95, v85, v86
	v_div_scale_f32 v88, null, v80, v80, v54
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v96, v93
	v_mul_f32_e32 v85, v89, v83
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v92, v95, v90
	v_rcp_f32_e32 v90, v88
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v84, -v94, v85, v89
	v_div_scale_f32 v87, s11, v57, v80, v57
	v_div_fmas_f32 v82, v82, v86, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v93, v96, 1.0
	v_fmac_f32_e32 v85, v84, v83
	v_div_scale_f32 v92, null, v80, v80, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v88, v90, 1.0
	v_div_fixup_f32 v62, v81, v80, v62
	v_div_fixup_f32 v61, v82, v80, v61
	v_fma_f32 v81, -v94, v85, v89
	v_div_scale_f32 v82, s8, v54, v80, v54
	v_fmac_f32_e32 v90, v95, v90
	v_fmac_f32_e32 v96, v91, v96
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v81, v81, v83, v85
	v_mul_f32_e32 v85, v82, v90
	v_mul_f32_e32 v91, v87, v96
	v_div_scale_f32 v89, null, v80, v80, v50
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v58, v81, v80, v58
	v_fma_f32 v86, -v93, v91, v87
	v_div_scale_f32 v97, null, v80, v80, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v86, v96
	v_fma_f32 v86, -v92, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v93, v91, v87
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v87, s9, v53, v80, v53
	v_div_scale_f32 v93, null, v80, v80, v49
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v88, v85, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v87, v84
	v_rcp_f32_e32 v96, v93
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v86, 1.0
	v_div_fixup_f32 v57, v83, v80, v57
	v_fmac_f32_e32 v85, v91, v90
	v_fma_f32 v81, -v92, v94, v87
	v_div_scale_f32 v83, s10, v50, v80, v50
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v91, null, v80, v80, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v82, -v88, v85, v82
	v_dual_fmac_f32 v94, v81, v84 :: v_dual_mul_f32 v81, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v91
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v49, v80, v49
	v_div_fmas_f32 v82, v82, v90, v85
	v_fma_f32 v85, -v92, v94, v87
	v_fma_f32 v87, -v89, v81, v83
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v90, v95, v96
	v_div_fixup_f32 v54, v82, v80, v54
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v91, v88, 1.0
	v_fmac_f32_e32 v81, v87, v86
	v_div_fmas_f32 v84, v85, v84, v94
	v_rcp_f32_e32 v85, v97
	v_fma_f32 v87, -v93, v90, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v48, v80, v48
	v_div_fixup_f32 v53, v84, v80, v53
	v_fma_f32 v82, -v89, v81, v83
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v92, v88
	v_div_scale_f32 v87, null, v73, v73, v46
	v_fma_f32 v84, -v97, v85, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v47, v80, v47
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v90, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v73, v73, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v50, v81, v80, v50
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v90
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v49, v82, v80, v49
	v_fma_f32 v82, -v97, v90, v89
	v_div_scale_f32 v91, s10, v46, v73, v46
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v73, v73, v44
	v_div_fmas_f32 v81, v81, v88, v83
	v_fmac_f32_e32 v90, v82, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v73, v73, v43
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s8, v45, v73, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v48, v81, v80, v48
	v_fma_f32 v81, -v97, v90, v89
	v_fma_f32 v89, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v90
	v_fmac_f32_e32 v82, v89, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v44, v73, v44
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v47, v81, v80, v47
	v_fma_f32 v80, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v85, s11, v43, v73, v43
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, null, v73, v73, v42
	v_div_fmas_f32 v80, v80, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v81, v89
	v_mul_f32_e32 v90, v85, v96
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, v73, v73, v41
	v_div_fmas_f32 v82, v82, v86, v95
	v_fmac_f32_e32 v81, v84, v83
	v_fma_f32 v86, -v92, v90, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v91
	v_div_fixup_f32 v46, v80, v73, v46
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v94, v81, v89
	v_fmac_f32_e32 v90, v86, v96
	v_div_scale_f32 v89, null, v73, v73, v40
	v_fma_f32 v93, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v90, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v89
	v_div_fixup_f32 v45, v82, v73, v45
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v82, s8, v42, v73, v42
	v_fma_f32 v86, -v91, v84, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v92, null, v73, v73, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s9, v41, v73, v41
	v_div_fmas_f32 v81, v81, v96, v90
	v_fma_f32 v94, -v89, v85, 1.0
	v_fma_f32 v90, -v87, v83, v82
	v_rcp_f32_e32 v95, v92
	v_div_fixup_f32 v44, v80, v73, v44
	v_div_fixup_f32 v43, v81, v73, v43
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v81, s10, v40, v73, v40
	v_mul_f32_e32 v93, v86, v84
	v_fmac_f32_e32 v83, v90, v88
	v_div_scale_f32 v90, null, v73, v73, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v80, -v91, v93, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v87, v83, v82
	v_rcp_f32_e32 v87, v90
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v95, v94, v95
	v_dual_fmac_f32 v93, v80, v84 :: v_dual_mul_f32 v80, v81, v85
	v_div_scale_f32 v94, s11, v39, v73, v39
	v_div_fmas_f32 v82, v82, v88, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v96, null, v73, v73, v37
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v89, v80, v81
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v91, -v90, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v88, v94
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v38, v73, v38
	v_div_fixup_f32 v42, v82, v73, v42
	v_div_fixup_f32 v41, v83, v73, v41
	v_fma_f32 v81, -v89, v80, v81
	v_fmac_f32_e32 v88, v86, v95
	v_mul_f32_e32 v82, v91, v87
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v73, v73, v33
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v37, v73, v37
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v88, v94
	v_fma_f32 v85, -v90, v82, v91
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v73, v73, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v40, v80, v73, v40
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v81, v81, v95, v88
	v_mul_f32_e32 v88, v89, v84
	v_fma_f32 v80, -v90, v82, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v39, v81, v73, v39
	v_fma_f32 v81, -v96, v88, v89
	v_div_scale_f32 v90, s10, v33, v73, v33
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v73, v73, v31
	v_div_fmas_f32 v80, v80, v87, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v81, v84 :: v_dual_fmac_f32 v85, v91, v85
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v91, null, v73, v73, v30
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v87, s8, v32, v73, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v38, v80, v73, v38
	v_fma_f32 v80, -v96, v88, v89
	v_fma_f32 v89, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v88
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s9, v31, v73, v31
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v37, v80, v73, v37
	v_fma_f32 v80, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v84, v88, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v89, null, v73, v73, v29
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v30, v73, v30
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v92, null, v73, v73, v28
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v91, v90, v86
	v_div_fixup_f32 v33, v80, v73, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fma_f32 v80, -v93, v84, v88
	v_div_fixup_f32 v32, v81, v73, v32
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s8, v29, v73, v29
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v36, v36, v26
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v36, v36, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s9, v28, v73, v28
	v_div_fmas_f32 v82, v82, v95, v90
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v90, -v89, v84, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v86, v83
	v_div_fixup_f32 v31, v80, v73, v31
	v_div_fixup_f32 v30, v82, v73, v30
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v80, -v92, v91, v86
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v36, v36, v24
	v_fma_f32 v90, -v85, v88, 1.0
	v_fma_f32 v81, -v89, v84, v81
	v_div_scale_f32 v89, null, v36, v36, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v80, v83 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v80, s10, v27, v36, v27
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v86, v80, v88
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v87, s8, v26, v36, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v86, v80
	v_fma_f32 v92, -v89, v90, 1.0
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v83, v84, v83, v91
	v_mul_f32_e32 v96, v87, v82
	v_fmac_f32_e32 v86, v94, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v25, v36, v25
	v_div_fixup_f32 v29, v81, v73, v29
	v_div_fixup_f32 v28, v83, v73, v28
	v_fma_f32 v73, -v85, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v92, v90
	v_div_scale_f32 v83, null, v36, v36, v23
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v81, -v95, v97, 1.0
	v_fma_f32 v80, -v89, v91, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v84, v82 :: v_dual_fmac_f32 v97, v81, v97
	v_fmac_f32_e32 v91, v80, v90
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s9, v24, v36, v24
	v_div_fmas_f32 v73, v73, v88, v86
	v_fma_f32 v84, -v93, v96, v87
	v_div_scale_f32 v86, null, v36, v36, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v81, v97
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v73, v36, v27
	v_fma_f32 v87, -v83, v80, 1.0
	v_div_fmas_f32 v82, v84, v82, v96
	v_fma_f32 v84, -v89, v91, v92
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v89, -v95, v85, v81
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s8, v23, v36, v23
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v85, v89, v97
	v_div_fmas_f32 v84, v84, v90, v91
	v_mul_f32_e32 v73, v87, v80
	v_div_fixup_f32 v26, v82, v36, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v88, 1.0
	v_fma_f32 v81, -v95, v85, v81
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v83, v73, v87
	v_div_fixup_f32 v25, v84, v36, v25
	v_div_scale_f32 v84, null, v36, v36, v21
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s10, v22, v36, v22
	v_div_fmas_f32 v81, v81, v97, v85
	v_fmac_f32_e32 v73, v89, v80
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v82, v88
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v24, v81, v36, v24
	v_fma_f32 v81, -v83, v73, v87
	v_div_scale_f32 v89, null, v36, v36, v20
	v_fma_f32 v83, -v86, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v81, v80, v73
	v_div_scale_f32 v80, null, v36, v36, v19
	v_fma_f32 v87, -v84, v90, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v80
	v_div_scale_f32 v81, s8, v21, v36, v21
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v36, v36, v18
	v_div_fixup_f32 v23, v73, v36, v23
	v_fma_f32 v82, -v86, v85, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v89, v91, 1.0
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v80, v83, 1.0
	v_mul_f32_e32 v86, v81, v90
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v73, v91
	v_div_scale_f32 v73, s9, v20, v36, v20
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v36, v36, v15
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v81
	v_mul_f32_e32 v88, v73, v91
	v_div_scale_f32 v94, s10, v19, v36, v19
	v_fma_f32 v95, -v87, v93, 1.0
	v_rcp_f32_e32 v96, v92
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v73
	v_mul_f32_e32 v97, v94, v83
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s11, v18, v36, v18
	v_div_fixup_f32 v22, v82, v36, v22
	v_fma_f32 v81, -v84, v86, v81
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v82, -v80, v97, v94
	v_mul_f32_e32 v84, v95, v93
	v_fma_f32 v85, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v73, -v89, v88, v73
	v_fmac_f32_e32 v97, v82, v83
	v_fma_f32 v82, -v87, v84, v95
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s8, v15, v36, v15
	v_div_fmas_f32 v81, v81, v90, v86
	v_div_scale_f32 v86, null, v36, v36, v11
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v80, v97, v94
	v_fmac_f32_e32 v84, v82, v93
	v_mul_f32_e32 v82, v85, v96
	v_div_fmas_f32 v73, v73, v91, v88
	v_rcp_f32_e32 v88, v86
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v21, v81, v36, v21
	v_div_fmas_f32 v80, v80, v83, v97
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	v_div_fixup_f32 v20, v73, v36, v20
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v80, v36, v19
	v_div_scale_f32 v80, null, v36, v36, v10
	v_fmac_f32_e32 v82, v87, v96
	v_fma_f32 v81, -v86, v88, 1.0
	v_div_fmas_f32 v83, v83, v93, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v36, v36, v7
	v_fma_f32 v73, -v92, v82, v85
	v_fmac_f32_e32 v88, v81, v88
	v_div_scale_f32 v81, null, v36, v36, v9
	v_div_fixup_f32 v18, v83, v36, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v96, v82
	v_rcp_f32_e32 v82, v80
	v_div_scale_f32 v84, vcc_lo, v11, v36, v11
	v_rcp_f32_e32 v85, v81
	v_div_fixup_f32 v15, v73, v36, v15
	v_div_scale_f32 v83, null, v36, v36, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v89, v84, v88
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v80, v82, 1.0
	v_rcp_f32_e32 v87, v83
	v_fma_f32 v93, -v86, v89, v84
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v81, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v73, v82
	v_div_scale_f32 v73, s8, v10, v36, v10
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s9, v9, v36, v9
	v_fmac_f32_e32 v89, v93, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v73, v82
	v_fma_f32 v94, -v83, v87, 1.0
	v_mul_f32_e32 v97, v91, v85
	v_fma_f32 v96, -v90, v92, 1.0
	v_fma_f32 v84, -v86, v89, v84
	v_fma_f32 v93, -v80, v95, v73
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v86, -v81, v97, v91
	v_div_scale_f32 v94, s10, v8, v36, v8
	v_div_fmas_f32 v84, v84, v88, v89
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v95, v93, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v86, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v80, v95, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s11, v7, v36, v7
	v_fma_f32 v81, -v81, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v98, v94, v87 :: v_dual_mul_f32 v99, v96, v92
	v_div_fmas_f32 v73, v73, v82, v95
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v39
	v_and_b32_e32 v39, 15, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v83, v98, v94
	v_fma_f32 v80, -v90, v99, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v81, v36, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v98, v93, v87 :: v_dual_fmac_f32 v99, v80, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v43, 15, v53
	v_med3_f32 v41, v41, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v83, v98, v94
	v_fma_f32 v82, -v90, v99, v96
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v11, v84, v36, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v92, v99
	v_div_fixup_f32 v10, v73, v36, v10
	v_div_fixup_f32 v8, v80, v36, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v82, v36, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v66
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v69
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v77, v77, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v80, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v78, v46
	v_cvt_i32_f32_e32 v93, v28
	v_cvt_i32_f32_e32 v15, v15
	v_and_b32_e32 v28, 15, v74
	v_and_b32_e32 v44, 15, v50
	v_and_b32_e32 v50, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v74, 10, v0
	v_and_b32_e32 v80, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v90, v31
	v_cvt_i32_f32_e32 v91, v30
	v_cvt_i32_f32_e32 v11, v11
	v_and_b32_e32 v30, 15, v77
	v_and_b32_e32 v31, 15, v76
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v48, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v76, 4, v34
	v_and_b32_e32 v77, 0x1800, v74
	v_lshlrev_b32_e32 v78, 6, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v15, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v92, v29
	v_and_b32_e32 v29, 15, v75
	v_and_b32_e32 v75, 15, v11
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v11, v76, v17
	v_add3_u32 v17, 0, v77, v78
	v_and_or_b32 v13, 0x1b00, v15, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_cvt_i32_f32_e32 v104, v10
	v_cvt_i32_f32_e32 v105, v9
	v_cvt_i32_f32_e32 v106, v8
	v_cvt_i32_f32_e32 v107, v7
	v_and_b32_e32 v7, 15, v36
	v_and_b32_e32 v8, 15, v51
	v_and_b32_e32 v9, 15, v52
	v_and_b32_e32 v10, 15, v55
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v11, v17, v11, v14
	v_xad_u32 v13, v13, v35, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v96, v25
	v_cvt_i32_f32_e32 v97, v24
	v_cvt_i32_f32_e32 v98, v23
	v_cvt_i32_f32_e32 v99, v22
	v_and_b32_e32 v22, 15, v64
	v_and_b32_e32 v23, 15, v66
	v_and_b32_e32 v24, 15, v67
	v_and_b32_e32 v25, 15, v69
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v79, v45
	v_cvt_i32_f32_e32 v94, v27
	v_cvt_i32_f32_e32 v95, v26
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v86, v38
	v_cvt_i32_f32_e32 v87, v37
	v_cvt_i32_f32_e32 v88, v33
	v_cvt_i32_f32_e32 v89, v32
	v_cvt_i32_f32_e32 v102, v19
	v_cvt_i32_f32_e32 v103, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v11, v[7:10]
	ds_store_b128 v11, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v13
	ds_load_b128 v[22:25], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v100, v21
	v_cvt_i32_f32_e32 v101, v20
	v_and_b32_e32 v18, 15, v56
	v_and_b32_e32 v19, 15, v59
	v_and_b32_e32 v20, 15, v60
	v_and_b32_e32 v21, 15, v63
	v_and_b32_e32 v32, 15, v71
	v_and_b32_e32 v33, 15, v70
	v_and_b32_e32 v37, 15, v65
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v64, 15, v94
	v_and_b32_e32 v65, 15, v95
	v_and_b32_e32 v66, 15, v96
	v_and_b32_e32 v67, 15, v97
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v49
	v_and_b32_e32 v49, 15, v79
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v82, v42
	v_cvt_i32_f32_e32 v84, v40
	v_and_b32_e32 v26, 15, v72
	v_and_b32_e32 v27, 15, v73
	v_and_b32_e32 v40, 15, v58
	v_and_b32_e32 v42, 15, v54
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v57, 15, v87
	v_and_b32_e32 v58, 15, v88
	v_and_b32_e32 v59, 15, v89
	v_and_b32_e32 v72, 15, v102
	v_and_b32_e32 v73, 15, v103
	v_and_b32_e32 v36, 15, v68
	v_and_b32_e32 v38, 15, v62
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[30:33]
	ds_store_b128 v11, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v13
	ds_load_b128 v[40:43], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[48:51]
	ds_store_b128 v11, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v13
	ds_load_b128 v[56:59], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[64:67]
	ds_store_b128 v11, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v13
	ds_load_b128 v[72:75], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[18:21]
	ds_store_b128 v11, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v13
	ds_load_b128 v[26:29], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v47, 15, v47
	v_and_b32_e32 v52, 15, v82
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v54, 15, v84
	v_and_b32_e32 v55, 15, v85
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[36:39]
	ds_store_b128 v11, v[44:47] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v13
	ds_load_b128 v[44:47], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v90
	v_and_b32_e32 v61, 15, v91
	v_and_b32_e32 v62, 15, v92
	v_and_b32_e32 v63, 15, v93
	v_and_b32_e32 v68, 15, v98
	v_and_b32_e32 v69, 15, v99
	v_and_b32_e32 v70, 15, v100
	v_and_b32_e32 v71, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[52:55]
	ds_store_b128 v11, v[60:63] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v13
	ds_load_b128 v[60:63], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v76, 15, v104
	v_and_b32_e32 v77, 15, v105
	v_and_b32_e32 v78, 15, v106
	v_and_b32_e32 v79, 15, v107
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v34, 3, v34
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v25, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, s34, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[68:71]
	ds_store_b128 v11, v[76:79] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v13
	ds_load_b128 v[76:79], v13 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v22, 4, v7
	v_lshl_or_b32 v8, v23, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s49, 7, v34
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
	v_lshl_or_b32 v20, v29, 4, v20
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v10
	v_mad_u64_u32 v[10:11], null, v10, s8, v[7:8]
	v_mad_u64_u32 v[11:12], null, v12, s8, v[7:8]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[7:8]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v26, v44, 4, v35
	v_lshl_or_b32 v27, v45, 4, v36
	v_lshl_or_b32 v28, v46, 4, v37
	v_lshl_or_b32 v29, v47, 4, v38
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
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v40, 4, v30
	v_lshl_or_b32 v23, v41, 4, v31
	v_lshl_or_b32 v24, v42, 4, v32
	v_lshl_or_b32 v25, v43, 4, v33
	v_lshl_or_b32 v35, v60, 4, v52
	v_lshl_or_b32 v36, v61, 4, v53
	v_lshl_or_b32 v37, v62, 4, v54
	v_lshl_or_b32 v38, v63, 4, v55
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
	v_lshl_or_b32 v30, v56, 4, v48
	v_lshl_or_b32 v31, v57, 4, v49
	v_lshl_or_b32 v32, v58, 4, v50
	v_lshl_or_b32 v33, v59, 4, v51
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v76, 4, v68
	v_lshl_or_b32 v44, v77, 4, v69
	v_lshl_or_b32 v45, v78, 4, v70
	v_lshl_or_b32 v46, v79, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v25.l
	v_and_b16 v4.l, 0xff, v24.l
	v_lshlrev_b16 v6.l, 8, v23.l
	v_and_b16 v7.l, 0xff, v22.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v38.l
	v_and_b16 v8.l, 0xff, v37.l
	v_lshlrev_b16 v8.h, 8, v36.l
	v_and_b16 v9.l, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v72, 4, v64
	v_lshl_or_b32 v40, v73, 4, v65
	v_lshl_or_b32 v41, v74, 4, v66
	v_lshl_or_b32 v42, v75, 4, v67
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
	v_and_b16 v8.l, 0xff, v45.l
	v_lshlrev_b16 v8.h, 8, v44.l
	v_and_b16 v9.l, 0xff, v43.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v7.l, v6.l
	v_lshlrev_b16 v3.l, 8, v42.l
	v_and_b16 v4.l, 0xff, v41.l
	v_lshlrev_b16 v6.l, 8, v40.l
	v_and_b16 v7.l, 0xff, v39.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v80
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
	v_add_nc_u32_e32 v7, 0, v34
	v_mov_b16_e32 v4.l, v16.h
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v6, v9, v8, v34
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
	v_cmp_le_i64_e32 vcc_lo, s[44:45], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[46:47], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s39, 0xffff
	s_mov_b32 s8, s38
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s49, 1
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
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 228
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 228
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15588
; TotalNumSgprs: 53
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 228
; Occupancy: 6
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
