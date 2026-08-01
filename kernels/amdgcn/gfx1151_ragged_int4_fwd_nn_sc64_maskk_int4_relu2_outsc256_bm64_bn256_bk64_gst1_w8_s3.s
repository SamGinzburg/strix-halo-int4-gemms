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
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v79, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s35, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s12, s8, s9
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s6
	s_cmp_ge_u32 s12, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s6
	s_cselect_b32 s3, s13, s3
	s_load_b64 s[12:13], s[0:1], 0x38
	s_xor_b32 s3, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s79, s3, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s79, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s8, s4
	s_addc_u32 s3, s9, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s12, s4
	s_addc_u32 s3, s13, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v8, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 50 is_stmt 0                ; ragged.py:0:50
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[6:7], 0x0
	s_load_b64 s[76:77], s[2:3], 0x0
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v78, 0x80, v0
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v77, 15, v0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v78
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v71, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v25, 5, v0
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s33, s[0:1], 0x58
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v41, s79, 8, v0
	v_dual_mov_b32 v169, 0 :: v_dual_and_b32 v26, 0xe0, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s72, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	v_add_co_u32 v15, s0, s72, v77
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
	v_add_co_ci_u32_e64 v16, null, s73, 0, s0
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
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[1:2]
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s36, s6, s4
	s_addc_u32 s37, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v1, s72, v77
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s35, vcc_lo, s12
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s12, s[36:37], 0x0
	v_lshrrev_b32_e32 v10, 1, v26
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s39, s4, s16
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s33, s78
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[3:4]
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v81, v1, s34
	v_dual_mov_b32 v170, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[15:16]
	v_add3_u32 v89, 0, v77, v10
	v_dual_mov_b32 v163, 0 :: v_dual_and_b32 v10, 0xf0, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[42:43], null, s4, s12, v[41:42]
	v_dual_mov_b32 v166, 0 :: v_dual_lshlrev_b32 v15, 5, v0
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v16, s72, v25
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v82, v2, s34
	v_mul_lo_u32 v83, v3, s34
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[43:44], null, s78, 3, v[42:43]
	v_cndmask_b32_e64 v2, 0x88, 0, s2
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v3, 24, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[17:18]
	v_cmp_le_i64_e64 s9, s[74:75], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[76:77], v[17:18]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mad_u64_u32 v[44:45], null, s78, 5, v[42:43]
	v_mad_u64_u32 v[45:46], null, s78, 6, v[42:43]
	v_mad_u64_u32 v[46:47], null, s78, 7, v[42:43]
	v_mad_u64_u32 v[47:48], null, s78, 9, v[42:43]
	v_mad_u64_u32 v[48:49], null, s78, 10, v[42:43]
	v_mad_u64_u32 v[49:50], null, s78, 11, v[42:43]
	v_mad_u64_u32 v[50:51], null, s78, 12, v[42:43]
	v_mad_u64_u32 v[51:52], null, s78, 13, v[42:43]
	v_mad_u64_u32 v[52:53], null, s78, 14, v[42:43]
	v_mad_u64_u32 v[53:54], null, s78, 15, v[42:43]
	v_mad_u64_u32 v[54:55], null, s78, 17, v[42:43]
	v_mad_u64_u32 v[55:56], null, s78, 18, v[42:43]
	v_mad_u64_u32 v[56:57], null, s78, 19, v[42:43]
	v_mad_u64_u32 v[57:58], null, s78, 20, v[42:43]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[76:77], v[19:20]
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v17, 2, v10
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v15, 32, v15
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v18, 8, v16
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v19, 16, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[58:59], null, s78, 21, v[42:43]
	v_mad_u64_u32 v[59:60], null, s78, 22, v[42:43]
	v_mad_u64_u32 v[60:61], null, s78, 23, v[42:43]
	v_xor_b32_e32 v85, v2, v79
	v_lshl_or_b32 v86, v77, 5, v3
	v_mad_u64_u32 v[61:62], null, s78, 24, v[42:43]
	v_mad_u64_u32 v[62:63], null, s78, 25, v[42:43]
	v_add3_u32 v15, 0, v17, v15
	v_mul_lo_u32 v108, v16, s33
	v_mul_lo_u32 v109, v18, s33
	v_mul_lo_u32 v110, v19, s33
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v17, 24, v16
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v18, 32, v16
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v19, 40, v16
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v20, 48, v16
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v16, 56, v16
	v_mad_u64_u32 v[63:64], null, s78, 26, v[42:43]
	v_mad_u64_u32 v[64:65], null, s78, 27, v[42:43]
	v_mad_u64_u32 v[65:66], null, s78, 28, v[42:43]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[5:6]
	v_cmp_le_i64_e64 s3, s[74:75], v[7:8]
	v_cmp_le_i64_e64 s5, s[74:75], v[11:12]
	v_cmp_le_i64_e64 s6, s[74:75], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[5:6]
	v_cmp_gt_i64_e64 s15, s[76:77], v[7:8]
	v_cmp_gt_i64_e64 s17, s[76:77], v[11:12]
	v_cmp_gt_i64_e64 s18, s[76:77], v[13:14]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v84, v4, s34
	v_xor_b32_e32 v2, 0x110, v85
	v_xor_b32_e32 v3, 8, v86
	v_xor_b32_e32 v4, 16, v86
	v_xor_b32_e32 v5, 24, v86
	v_or_b32_e32 v6, 0x300, v0
	v_or_b32_e32 v7, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_or_b32_e32 v11, 0x1300, v0
	v_or_b32_e32 v12, 0x1700, v0
	v_or_b32_e32 v13, 0x1b00, v0
	v_or_b32_e32 v14, 0x1f00, v0
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v1, 28, v1
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[66:67], null, s78, 29, v[42:43]
	v_mad_u64_u32 v[67:68], null, s78, 30, v[42:43]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[74:75], v[21:22]
	v_cmp_le_i64_e64 s11, s[74:75], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[21:22]
	v_cmp_gt_i64_e64 s23, s[76:77], v[23:24]
	v_mul_lo_u32 v121, v17, s33
	v_mul_lo_u32 v122, v18, s33
	v_mul_lo_u32 v123, v19, s33
	v_mul_lo_u32 v124, v20, s33
	v_mul_lo_u32 v126, v16, s33
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mad_u64_u32 v[68:69], null, s78, 31, v[42:43]
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v146, 0, v2
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v147, 0, v3
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v148, 0, v4
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v150, 0, v5
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v152, 0, v0
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v154, 0, v6
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v156, 0, v7
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v158, 0, v8
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v159, 0, v9
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v160, 0, v11
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v161, 0, v12
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v162, 0, v13
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v164, 0, v14
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v171, v15, v1
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v173, 0, v10
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v107, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v103, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s20
	s_mov_b32 s8, 0
	s_and_b32 s36, s0, s13
	s_and_b32 s37, s1, s14
	s_and_b32 s38, s3, s15
	s_and_b32 s40, s5, s17
	s_and_b32 s41, s6, s18
	s_and_b32 s7, s7, s19
	s_and_b32 s0, s9, s21
	s_and_b32 s1, s10, s22
	s_and_b32 s3, s11, s23
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s42, s34, s12
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s20, s26
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s25, s31, 0xffff
	s_mov_b32 s24, s30
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s43, s8
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s4, s43, 5
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v3, 31, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v4, s78, v42
	s_or_b32 s5, s4, 1
	s_or_b32 s6, s4, 2
	s_or_b32 s26, s4, 3
	s_or_b32 s27, s4, 4
	s_or_b32 s30, s4, 5
	s_or_b32 s31, s4, 6
	s_or_b32 s44, s4, 7
	s_or_b32 s45, s4, 8
	s_or_b32 s46, s4, 9
	s_or_b32 s47, s4, 10
	s_or_b32 s48, s4, 11
	s_or_b32 s49, s4, 12
	s_or_b32 s50, s4, 13
	s_or_b32 s51, s4, 14
	s_or_b32 s52, s4, 15
	s_or_b32 s53, s4, 16
	s_or_b32 s54, s4, 17
	s_or_b32 s55, s4, 18
	s_or_b32 s56, s4, 19
	s_or_b32 s57, s4, 20
	s_or_b32 s58, s4, 21
	s_or_b32 s59, s4, 22
	s_or_b32 s60, s4, 23
	s_or_b32 s61, s4, 24
	s_or_b32 s62, s4, 25
	s_or_b32 s63, s4, 26
	s_or_b32 s68, s4, 27
	s_or_b32 s69, s4, 28
	s_or_b32 s70, s4, 29
	s_or_b32 s71, s4, 30
	s_or_b32 s80, s4, 31
	s_cmp_lt_i32 s4, s33
	s_mul_i32 s81, s4, s78
	v_lshl_add_u32 v5, s78, 1, v42
	v_lshl_add_u32 v6, s78, 2, v42
	v_or_b32_e32 v3, s4, v3
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s5, s33
	v_add_nc_u32_e32 v4, s81, v4
	v_add_nc_u32_e32 v9, s81, v42
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s33
	v_add_nc_u32_e32 v10, s81, v43
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s26, s33
	v_add_nc_u32_e32 v5, s81, v5
	v_add_nc_u32_e32 v6, s81, v6
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s27, s33
	v_add_nc_u32_e32 v11, s81, v44
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s30, s33
	v_lshl_add_u32 v7, s78, 3, v42
	v_add_nc_u32_e32 v12, s81, v45
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s31, s33
	v_add_nc_u32_e32 v13, s81, v46
	buffer_load_u8 v71, v9, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v11, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s44, s33
	v_add_nc_u32_e32 v7, s81, v7
	s_clause 0x2
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v72, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v12, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s45, s33
	v_add_nc_u32_e32 v14, s81, v47
	v_cndmask_b32_e64 v11, 0x80000000, v13, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s46, s33
	v_add_nc_u32_e32 v15, s81, v48
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s47, s33
	v_add_nc_u32_e32 v16, s81, v49
	s_clause 0x2
	buffer_load_u8 v73, v9, s[20:23], 0 offen
	buffer_load_u8 v74, v10, s[20:23], 0 offen
	buffer_load_u8 v75, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v14, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s48, s33
	v_cndmask_b32_e64 v10, 0x80000000, v15, s5
	s_cselect_b32 s5, -1, 0
	v_add_nc_u32_e32 v17, s81, v50
	v_cndmask_b32_e64 v11, 0x80000000, v16, s5
	s_cmp_lt_i32 s49, s33
	v_add_nc_u32_e32 v18, s81, v51
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s50, s33
	v_add_nc_u32_e32 v19, s81, v52
	s_clause 0x2
	buffer_load_u8 v76, v9, s[20:23], 0 offen
	buffer_load_u8 v174, v10, s[20:23], 0 offen
	buffer_load_u8 v175, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v17, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s51, s33
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v8, s78, 4, v42
	v_cndmask_b32_e64 v10, 0x80000000, v18, s5
	s_cselect_b32 s5, -1, 0
	v_add_nc_u32_e32 v20, s81, v53
	v_cndmask_b32_e64 v11, 0x80000000, v19, s5
	s_cmp_lt_i32 s52, s33
	v_add_nc_u32_e32 v8, s81, v8
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s53, s33
	v_add_nc_u32_e32 v21, s81, v54
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x2
	buffer_load_u8 v176, v9, s[20:23], 0 offen
	buffer_load_u8 v177, v10, s[20:23], 0 offen
	buffer_load_u8 v178, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v20, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s54, s33
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	s_cselect_b32 s5, -1, 0
	v_add_nc_u32_e32 v22, s81, v55
	v_cndmask_b32_e64 v10, 0x80000000, v21, s5
	s_cmp_lt_i32 s55, s33
	v_add_nc_u32_e32 v23, s81, v56
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s56, s33
	v_add_nc_u32_e32 v24, s81, v57
	s_clause 0x4
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v179, v9, s[20:23], 0 offen
	buffer_load_u8 v180, v10, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v22, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s57, s33
	v_cndmask_b32_e64 v11, 0x80000000, v23, s5
	s_cselect_b32 s5, -1, 0
	v_add_nc_u32_e32 v25, s81, v58
	v_cndmask_b32_e64 v10, 0x80000000, v24, s5
	s_cmp_lt_i32 s58, s33
	v_add_nc_u32_e32 v26, s81, v59
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s59, s33
	v_add_nc_u32_e32 v27, s81, v60
	s_clause 0x2
	buffer_load_u8 v181, v9, s[20:23], 0 offen
	buffer_load_u8 v182, v11, s[20:23], 0 offen
	buffer_load_u8 v183, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v25, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s60, s33
	v_cndmask_b32_e64 v11, 0x80000000, v26, s5
	s_cselect_b32 s5, -1, 0
	v_add_nc_u32_e32 v28, s81, v61
	v_cndmask_b32_e64 v10, 0x80000000, v27, s5
	s_cmp_lt_i32 s61, s33
	v_add_nc_u32_e32 v29, s81, v62
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s62, s33
	v_add_nc_u32_e32 v30, s81, v63
	s_clause 0x2
	buffer_load_u8 v184, v9, s[20:23], 0 offen
	buffer_load_u8 v185, v11, s[20:23], 0 offen
	buffer_load_u8 v186, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v28, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s63, s33
	v_cndmask_b32_e64 v11, 0x80000000, v29, s5
	s_cselect_b32 s5, -1, 0
	v_add_nc_u32_e32 v31, s81, v64
	v_cndmask_b32_e64 v10, 0x80000000, v30, s5
	s_cmp_lt_i32 s68, s33
	v_add_nc_u32_e32 v32, s81, v65
	s_cselect_b32 s5, -1, 0
	s_clause 0x1
	buffer_load_u8 v187, v9, s[20:23], 0 offen
	buffer_load_u8 v189, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v31, s5
	s_cmp_lt_i32 s69, s33
	v_add_nc_u32_e32 v33, s81, v66
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s70, s33
	v_add_nc_u32_e32 v34, s81, v67
	v_cmp_gt_i32_e64 s4, s33, v3
	s_clause 0x1
	buffer_load_u8 v188, v11, s[20:23], 0 offen
	buffer_load_u8 v190, v9, s[20:23], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v32, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s71, s33
	v_add_nc_u32_e32 v36, v108, v3
	v_cndmask_b32_e64 v10, 0x80000000, v33, s5
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s80, s33
	v_add_nc_u32_e32 v37, v109, v3
	v_cndmask_b32_e64 v9, 0x80000000, v34, s5
	s_cselect_b32 s5, -1, 0
	s_and_b32 s6, s35, s4
	v_add_nc_u32_e32 v38, v110, v3
	buffer_load_u8 v191, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v36, s6
	s_and_b32 s6, s36, s4
	v_add_nc_u32_e32 v39, v121, v3
	v_cndmask_b32_e64 v12, 0x80000000, v37, s6
	s_and_b32 s6, s37, s4
	v_add_nc_u32_e32 v40, v122, v3
	v_cndmask_b32_e64 v13, 0x80000000, v38, s6
	s_and_b32 s6, s38, s4
	v_add_nc_u32_e32 v69, v123, v3
	v_cndmask_b32_e64 v14, 0x80000000, v39, s6
	s_and_b32 s6, s39, s4
	v_add_nc_u32_e32 v70, v124, v3
	v_add_nc_u32_e32 v3, v126, v3
	v_add_nc_u32_e32 v35, s81, v68
	v_cndmask_b32_e64 v15, 0x80000000, v40, s6
	s_and_b32 s6, s40, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v1, 0, v85
	v_cndmask_b32_e64 v16, 0x80000000, v69, s6
	s_and_b32 s6, s41, s4
	s_and_b32 s4, s7, s4
	v_cndmask_b32_e64 v17, 0x80000000, v70, s6
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_cndmask_b32_e64 v18, 0x80000000, v35, s5
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_u8 v69, v10, s[20:23], 0 offen
	buffer_load_u8 v70, v9, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v9, v11, s[16:19], 0 offen
	buffer_load_u8 v10, v13, s[16:19], 0 offen
	buffer_load_u8 v11, v15, s[16:19], 0 offen
	buffer_load_u8 v13, v17, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v15, v16, s[16:19], 0 offen
	buffer_load_u8 v14, v14, s[16:19], 0 offen
	buffer_load_u8 v12, v12, s[16:19], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v192, v18, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v2, 0, v86
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s4, s43, s42
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s26, s18
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s4, s4, s78
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s27, s19
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(8)
	ds_store_b8 v1, v9
	s_waitcnt vmcnt(7)
	ds_store_b8 v1, v10 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v1, v11 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b8 v1, v13 offset:1536
	s_waitcnt vmcnt(1)
	ds_store_b8 v146, v12
	ds_store_b8 v146, v14 offset:512
	ds_store_b8 v146, v15 offset:1024
	ds_store_b8 v146, v3 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[25:28], v2 offset1:1
	ds_load_2addr_stride64_b64 v[9:12], v2 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[29:32], v147 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v147 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v148 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v148 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v150 offset1:1
	ds_load_2addr_stride64_b64 v[21:24], v150 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v152, v71
	ds_store_b8 v152, v4 offset:256
	ds_store_b8 v152, v5 offset:512
	ds_store_b8 v152, v6 offset:1024
	ds_store_b8 v152, v73 offset:1280
	ds_store_b8 v152, v74 offset:1536
	ds_store_b8 v152, v7 offset:2048
	ds_store_b8 v152, v76 offset:2304
	ds_store_b8 v152, v174 offset:2560
	ds_store_b8 v152, v176 offset:3072
	ds_store_b8 v152, v177 offset:3328
	ds_store_b8 v152, v178 offset:3584
	ds_store_b8 v152, v8 offset:4096
	ds_store_b8 v152, v180 offset:4352
	ds_store_b8 v152, v181 offset:4608
	ds_store_b8 v152, v183 offset:5120
	ds_store_b8 v152, v184 offset:5376
	ds_store_b8 v152, v185 offset:5632
	ds_store_b8 v152, v187 offset:6144
	ds_store_b8 v152, v188 offset:6400
	ds_store_b8 v152, v189 offset:6656
	ds_store_b8 v152, v191 offset:7168
	ds_store_b8 v152, v69 offset:7424
	ds_store_b8 v152, v70 offset:7680
	ds_store_b8 v154, v72
	ds_store_b8 v156, v75
	ds_store_b8 v158, v175
	ds_store_b8 v159, v179
	ds_store_b8 v160, v182
	ds_store_b8 v161, v186
	ds_store_b8 v162, v190
	s_waitcnt vmcnt(0)
	ds_store_b8 v164, v192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v1, v89 offset:1280
	ds_load_u8 v2, v89 offset:1024
	ds_load_u8 v3, v89 offset:1792
	ds_load_u8 v4, v89 offset:1536
	ds_load_u8 v174, v89 offset:1920
	ds_load_u8 v175, v89 offset:1664
	ds_load_u8 v176, v89 offset:1408
	ds_load_u8 v177, v89 offset:1152
	ds_load_u8 v5, v89 offset:256
	ds_load_u8 v6, v89
	ds_load_u8 v7, v89 offset:768
	ds_load_u8 v8, v89 offset:512
	ds_load_u8 v178, v89 offset:896
	ds_load_u8 v179, v89 offset:640
	ds_load_u8 v180, v89 offset:384
	ds_load_u8 v181, v89 offset:128
	ds_load_u8 v71, v89 offset:3328
	ds_load_u8 v72, v89 offset:3072
	ds_load_u8 v182, v89 offset:3456
	ds_load_u8 v73, v89 offset:3840
	ds_load_u8 v74, v89 offset:3584
	ds_load_u8 v183, v89 offset:3200
	ds_load_u8 v75, v89 offset:2304
	ds_load_u8 v76, v89 offset:2048
	ds_load_u8 v184, v89 offset:2432
	ds_load_u8 v185, v89 offset:2816
	ds_load_u8 v186, v89 offset:2560
	ds_load_u8 v187, v89 offset:5376
	ds_load_u8 v188, v89 offset:5120
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v2, v89 offset:5888
	ds_load_u8 v6, v89 offset:4352
	ds_load_u8 v8, v89 offset:4096
	ds_load_u8 v194, v89 offset:4480
	ds_load_u8 v197, v89 offset:4224
	ds_load_u8 v193, v89 offset:2176
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v69, v7, 16, v5
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v5, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v74, v73, 0xc0c0004
	ds_load_u8 v189, v89 offset:7424
	ds_load_u8 v198, v89 offset:8064
	ds_load_u8 v199, v89 offset:7808
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v71, v76, v75, 0xc0c0004
	ds_load_u8 v75, v89 offset:7168
	ds_load_u8 v4, v89 offset:5632
	v_lshl_or_b32 v70, v3, 16, v1
	ds_load_u8 v1, v89 offset:4864
	ds_load_u8 v3, v89 offset:4608
	v_lshl_or_b32 v72, v7, 16, v5
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v188, v187, 0xc0c0004
	v_perm_b32 v73, v186, v185, 0xc0c0004
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_perm_b32 v175, v181, v180, 0xc0c0004
	v_lshl_or_b32 v71, v73, 16, v71
	v_perm_b32 v177, v179, v178, 0xc0c0004
	ds_load_u8 v195, v89 offset:5504
	ds_load_u8 v196, v89 offset:5248
	ds_load_u8 v200, v89 offset:7552
	ds_load_u8 v201, v89 offset:7296
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v89 offset:7936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	v_lshl_or_b32 v74, v2, 16, v5
	ds_load_u8 v2, v89 offset:7680
	v_lshl_or_b32 v73, v1, 16, v6
	v_perm_b32 v1, v75, v189, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v4, 0xc0c0004
	ds_load_u8 v3, v89 offset:6400
	ds_load_u8 v4, v89 offset:6144
	ds_load_u8 v5, v89 offset:6912
	ds_load_u8 v6, v89 offset:6656
	ds_load_u8 v202, v89 offset:6528
	ds_load_u8 v203, v89 offset:6272
	v_lshl_or_b32 v76, v2, 16, v1
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v4, 16, v3
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	v_wmma_i32_16x16x16_iu4 v[185:192], v[69:70], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[185:192], v[71:72], v[29:30], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[185:192], v[73:74], v[33:34], v[185:192] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[185:192], v[75:76], v[37:38], v[185:192] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v204, v185
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v205, v186
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v186, v174, 16, v176
	v_lshl_or_b32 v185, v177, 16, v175
	ds_load_u8 v175, v89 offset:3712
	ds_load_u8 v176, v89 offset:3968
	ds_load_u8 v177, v89 offset:2688
	ds_load_u8 v178, v89 offset:2944
	v_perm_b32 v174, v183, v182, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v206, v187
	v_cvt_f32_i32_e32 v207, v188
	v_cvt_f32_i32_e32 v208, v189
	v_cvt_f32_i32_e32 v209, v190
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v175, v175, v176, 0xc0c0004
	v_perm_b32 v176, v193, v184, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v177, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v183, v175, 16, v174
	v_perm_b32 v174, v196, v195, 0xc0c0004
	v_lshl_or_b32 v182, v177, 16, v176
	ds_load_u8 v175, v89 offset:5760
	ds_load_u8 v176, v89 offset:6016
	ds_load_u8 v177, v89 offset:4736
	ds_load_u8 v178, v89 offset:4992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v175, v175, v176, 0xc0c0004
	v_perm_b32 v176, v197, v194, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v177, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v188, v175, 16, v174
	v_perm_b32 v174, v201, v200, 0xc0c0004
	v_lshl_or_b32 v187, v177, 16, v176
	ds_load_u8 v177, v89 offset:6784
	ds_load_u8 v178, v89 offset:7040
	v_perm_b32 v175, v199, v198, 0xc0c0004
	v_perm_b32 v176, v203, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v190, v175, 16, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v177, v178, 0xc0c0004
	v_lshl_or_b32 v189, v177, 16, v176
	v_wmma_i32_16x16x16_iu4 v[174:181], v[185:186], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[174:181], v[182:183], v[29:30], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[187:188], v[33:34], v[174:181] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[174:181], v[189:190], v[37:38], v[174:181] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v33, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v175
	v_cvt_f32_i32_e32 v37, v176
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v177
	v_cvt_f32_i32_e32 v184, v178
	v_cvt_f32_i32_e32 v193, v179
	v_cvt_f32_i32_e32 v194, v180
	v_cvt_f32_i32_e32 v195, v181
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[174:181], v[69:70], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[174:181], v[71:72], v[31:32], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[73:74], v[35:36], v[174:181] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[174:181], v[75:76], v[39:40], v[174:181] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v196, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v197, v175
	v_cvt_f32_i32_e32 v198, v176
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v199, v177
	v_cvt_f32_i32_e32 v200, v178
	v_cvt_f32_i32_e32 v201, v179
	v_cvt_f32_i32_e32 v202, v180
	v_cvt_f32_i32_e32 v203, v181
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[174:181], v[185:186], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[174:181], v[182:183], v[31:32], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[187:188], v[35:36], v[174:181] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[13:14], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[189:190], v[39:40], v[174:181] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[17:18], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v35, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[21:22], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v36, v175
	v_cvt_f32_i32_e32 v39, v176
	v_cvt_f32_i32_e32 v40, v177
	v_cvt_f32_i32_e32 v174, v178
	v_cvt_f32_i32_e32 v175, v179
	v_cvt_f32_i32_e32 v176, v180
	v_cvt_f32_i32_e32 v177, v181
	v_cvt_f32_i32_e32 v178, v25
	v_cvt_f32_i32_e32 v179, v26
	v_cvt_f32_i32_e32 v180, v27
	v_cvt_f32_i32_e32 v181, v28
	v_cvt_f32_i32_e32 v210, v29
	v_cvt_f32_i32_e32 v211, v30
	v_cvt_f32_i32_e32 v212, v31
	v_cvt_f32_i32_e32 v213, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[182:183], v[13:14], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[187:188], v[17:18], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[21:22], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v9, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v26
	v_cvt_f32_i32_e32 v13, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v17, v29
	v_cvt_f32_i32_e32 v18, v30
	v_cvt_f32_i32_e32 v21, v31
	v_cvt_f32_i32_e32 v22, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[15:16], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[19:20], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[23:24], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v69, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v70, v26
	v_cvt_f32_i32_e32 v71, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v28
	v_cvt_f32_i32_e32 v73, v29
	v_cvt_f32_i32_e32 v74, v30
	v_cvt_f32_i32_e32 v75, v31
	v_cvt_f32_i32_e32 v76, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v11, s43, v81, 1
	v_add_lshl_u32 v12, s43, v82, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[182:183], v[15:16], v[25:32] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v15, s43, v83, 1
	v_add_lshl_u32 v16, s43, v84, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s43, s43, 1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[187:188], v[19:20], v[25:32] neg_lo:[1,1,0]
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v41, s4, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s43, s34
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[23:24], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v3, v27
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v11, v11, s[28:31], 0 offen
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	buffer_load_u16 v15, v15, s[28:31], 0 offen
	buffer_load_u16 v16, v16, s[28:31], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v1, v25
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v8, v32
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v171, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v204, v11
	v_mul_f32_e32 v20, v205, v11
	v_mul_f32_e32 v23, v206, v11
	v_mul_f32_e32 v24, v207, v11
	v_mul_f32_e32 v25, v208, v11
	v_mul_f32_e32 v26, v209, v11
	v_mul_f32_e32 v27, v191, v11
	v_mul_f32_e32 v28, v192, v11
	v_mul_f32_e32 v29, v33, v11
	v_mul_f32_e32 v30, v34, v11
	v_mul_f32_e32 v31, v37, v11
	v_mul_f32_e32 v32, v38, v11
	v_mul_f32_e32 v33, v184, v11
	v_mul_f32_e32 v34, v193, v11
	v_mul_f32_e32 v37, v194, v11
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v38, v195, v11 :: v_dual_lshlrev_b32 v11, 16, v12
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v196, v11
	v_mul_f32_e32 v182, v197, v11
	v_mul_f32_e32 v183, v198, v11
	v_mul_f32_e32 v184, v199, v11
	v_mul_f32_e32 v185, v200, v11
	v_mul_f32_e32 v186, v201, v11
	v_mul_f32_e32 v187, v202, v11
	v_mul_f32_e32 v188, v203, v11
	v_mul_f32_e32 v35, v35, v11
	v_mul_f32_e32 v36, v36, v11
	v_mul_f32_e32 v39, v39, v11
	v_mul_f32_e32 v40, v40, v11
	v_mul_f32_e32 v174, v174, v11
	v_mul_f32_e32 v175, v175, v11
	v_mul_f32_e32 v176, v176, v11
	v_mul_f32_e32 v177, v177, v11
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v15
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v192, v9, v11 :: v_dual_lshlrev_b32 v9, 16, v16
	v_mul_f32_e32 v15, v178, v11
	v_mul_f32_e32 v189, v211, v11
	v_mul_f32_e32 v190, v212, v11
	v_mul_f32_e32 v191, v213, v11
	v_mul_f32_e32 v193, v10, v11
	v_mul_f32_e32 v14, v14, v11
	v_mul_f32_e32 v18, v18, v11
	v_mul_f32_e32 v21, v21, v11
	v_mul_f32_e32 v10, v69, v9
	v_mul_f32_e32 v16, v71, v9
	v_dual_mul_f32 v69, v72, v9 :: v_dual_mul_f32 v178, v179, v11
	v_mul_f32_e32 v179, v180, v11
	v_mul_f32_e32 v180, v181, v11
	v_mul_f32_e32 v181, v210, v11
	v_mul_f32_e32 v71, v74, v9
	v_mul_f32_e32 v22, v22, v11
	v_mul_f32_e32 v72, v75, v9
	v_mul_f32_e32 v74, v1, v9
	v_mul_f32_e32 v13, v13, v11
	v_mul_f32_e32 v75, v2, v9
	v_dual_mul_f32 v194, v4, v9 :: v_dual_mul_f32 v17, v17, v11
	v_mul_f32_e32 v11, v70, v9
	v_mul_f32_e32 v70, v73, v9
	v_mul_f32_e32 v73, v76, v9
	v_mul_f32_e32 v76, v3, v9
	v_mul_f32_e32 v195, v5, v9
	v_mul_f32_e32 v196, v6, v9
	v_mul_f32_e32 v197, v7, v9
	v_mul_f32_e32 v198, v8, v9
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[1:4], v173
	ds_load_b128 v[5:8], v173 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v80, v19, v1
	v_fmac_f32_e32 v172, v20, v2
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v170, v23, v3 :: v_dual_fmac_f32 v93, v73, v8
	v_fmac_f32_e32 v169, v24, v4
	v_dual_fmac_f32 v143, v12, v1 :: v_dual_fmac_f32 v142, v182, v2
	v_fmac_f32_e32 v140, v184, v4
	v_dual_fmac_f32 v100, v10, v1 :: v_dual_fmac_f32 v99, v11, v2
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[9:12], v173 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v98, v16, v3 :: v_dual_fmac_f32 v97, v69, v4
	v_fmac_f32_e32 v125, v178, v2
	v_fmac_f32_e32 v167, v26, v6
	v_dual_fmac_f32 v119, v180, v4 :: v_dual_fmac_f32 v138, v186, v6
	v_dual_fmac_f32 v141, v183, v3 :: v_dual_fmac_f32 v118, v181, v5
	v_fmac_f32_e32 v127, v15, v1
	v_fmac_f32_e32 v96, v70, v5
	v_fmac_f32_e32 v120, v179, v3
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[1:4], v173 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v168, v25, v5
	v_dual_fmac_f32 v166, v27, v7 :: v_dual_fmac_f32 v165, v28, v8
	v_dual_fmac_f32 v139, v185, v5 :: v_dual_fmac_f32 v136, v188, v8
	v_dual_fmac_f32 v116, v190, v7 :: v_dual_fmac_f32 v95, v71, v6
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v163, v29, v9
	v_fmac_f32_e32 v157, v30, v10
	v_fmac_f32_e32 v153, v32, v12
	v_dual_fmac_f32 v135, v35, v9 :: v_dual_fmac_f32 v134, v36, v10
	v_dual_fmac_f32 v133, v39, v11 :: v_dual_fmac_f32 v132, v40, v12
	v_dual_fmac_f32 v117, v189, v6 :: v_dual_fmac_f32 v114, v192, v9
	v_fmac_f32_e32 v115, v191, v8
	v_fmac_f32_e32 v155, v31, v11
	v_fmac_f32_e32 v111, v14, v12
	v_fmac_f32_e32 v92, v74, v9
	v_dual_fmac_f32 v112, v13, v11 :: v_dual_fmac_f32 v91, v75, v10
	v_fmac_f32_e32 v90, v76, v11
	v_dual_fmac_f32 v88, v194, v12 :: v_dual_fmac_f32 v137, v187, v7
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v106, v17, v1
	v_fmac_f32_e32 v151, v33, v1
	v_dual_fmac_f32 v145, v37, v3 :: v_dual_fmac_f32 v144, v38, v4
	v_dual_fmac_f32 v149, v34, v2 :: v_dual_fmac_f32 v102, v21, v3
	v_dual_fmac_f32 v131, v174, v1 :: v_dual_fmac_f32 v130, v175, v2
	v_dual_fmac_f32 v94, v72, v7 :: v_dual_fmac_f32 v113, v193, v10
	v_dual_fmac_f32 v129, v176, v3 :: v_dual_fmac_f32 v128, v177, v4
	v_fmac_f32_e32 v104, v18, v2
	v_fmac_f32_e32 v101, v22, v4
	v_fmac_f32_e32 v87, v195, v1
	v_fmac_f32_e32 v107, v196, v2
	v_fmac_f32_e32 v105, v197, v3
	v_fmac_f32_e32 v103, v198, v4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v37, v118, v118 :: v_dual_max_f32 v38, v117, v117
	v_max_f32_e32 v39, v116, v116
	v_dual_max_f32 v41, v114, v114 :: v_dual_max_f32 v44, v111, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v40, v115, v115
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v39, 0, v39
	v_dual_max_f32 v42, v113, v113 :: v_dual_max_f32 v43, v112, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v84, 0, v41
	v_max_f32_e32 v64, 0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v86, 0, v44 :: v_dual_max_f32 v85, 0, v42
	v_dual_max_f32 v43, 0, v43 :: v_dual_max_f32 v40, v106, v106
	v_dual_max_f32 v41, v104, v104 :: v_dual_max_f32 v42, v102, v102
	v_dual_max_f32 v45, v100, v100 :: v_dual_max_f32 v44, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v89, 0, v40 :: v_dual_max_f32 v100, 0, v41
	v_dual_max_f32 v101, 0, v42 :: v_dual_max_f32 v104, 0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v45, v95, v95 :: v_dual_max_f32 v102, 0, v44
	v_dual_max_f32 v41, v98, v98 :: v_dual_max_f32 v42, v97, v97
	v_max_f32_e32 v40, v99, v99
	v_dual_max_f32 v44, v96, v96 :: v_dual_max_f32 v99, 0, v45
	v_dual_max_f32 v1, v80, v80 :: v_dual_max_f32 v4, v169, v169
	v_dual_max_f32 v2, v172, v172 :: v_dual_max_f32 v3, v170, v170
	v_dual_max_f32 v96, 0, v41 :: v_dual_max_f32 v45, v90, v90
	v_max_f32_e32 v97, 0, v42
	v_max_f32_e32 v95, 0, v40
	v_dual_max_f32 v98, 0, v44 :: v_dual_max_f32 v41, v93, v93
	v_dual_max_f32 v40, v94, v94 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v4, 0, v4
	v_dual_max_f32 v5, v168, v168 :: v_dual_max_f32 v6, v167, v167
	v_max_f32_e32 v42, v92, v92
	v_dual_max_f32 v44, v91, v91 :: v_dual_max_f32 v91, 0, v41
	v_max_f32_e32 v90, 0, v40
	v_dual_max_f32 v40, v88, v88 :: v_dual_mul_f32 v71, v3, v3
	v_dual_max_f32 v7, v166, v166 :: v_dual_max_f32 v8, v165, v165
	v_dual_max_f32 v9, v163, v163 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v15, v145, v145 :: v_dual_max_f32 v16, v144, v144
	v_dual_max_f32 v17, v143, v143 :: v_dual_max_f32 v18, v142, v142
	v_max_f32_e32 v19, v141, v141
	v_dual_max_f32 v25, v135, v135 :: v_dual_max_f32 v26, v134, v134
	v_dual_max_f32 v27, v133, v133 :: v_dual_max_f32 v28, v132, v132
	v_max_f32_e32 v29, v131, v131
	v_max_f32_e32 v41, v87, v87
	v_dual_max_f32 v87, 0, v40 :: v_dual_max_f32 v92, 0, v42
	v_dual_max_f32 v93, 0, v44 :: v_dual_max_f32 v44, v105, v105
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v75, v6, v6
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, v157, v157
	v_dual_max_f32 v11, v155, v155 :: v_dual_max_f32 v12, v153, v153
	v_dual_max_f32 v13, v151, v151 :: v_dual_max_f32 v14, v149, v149
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, v140, v140 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, v138, v138 :: v_dual_max_f32 v21, v139, v139
	v_dual_max_f32 v24, v136, v136 :: v_dual_max_f32 v23, v137, v137
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v20, 0, v20
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, v130, v130 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v128, v128 :: v_dual_max_f32 v31, v129, v129
	v_dual_max_f32 v33, v127, v127 :: v_dual_max_f32 v34, v125, v125
	v_dual_max_f32 v35, v120, v120 :: v_dual_max_f32 v36, v119, v119
	v_dual_max_f32 v42, v107, v107 :: v_dual_max_f32 v105, 0, v44
	v_dual_max_f32 v94, 0, v45 :: v_dual_max_f32 v45, v103, v103
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v35, 0, v35
	v_max_f32_e32 v36, 0, v36
	v_dual_max_f32 v88, 0, v41 :: v_dual_mul_f32 v83, v7, v7
	v_dual_max_f32 v103, 0, v42 :: v_dual_max_f32 v106, 0, v45
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v73, v12, v12 :: v_dual_mul_f32 v66, v1, v1
	v_mul_f32_e32 v69, v14, v14
	v_dual_mul_f32 v68, v2, v2 :: v_dual_mul_f32 v81, v9, v9
	v_dual_mul_f32 v72, v4, v4 :: v_dual_mul_f32 v67, v15, v15
	v_dual_mul_f32 v74, v5, v5 :: v_dual_mul_f32 v65, v16, v16
	v_dual_mul_f32 v82, v8, v8 :: v_dual_mul_f32 v63, v17, v17
	v_dual_mul_f32 v80, v10, v10 :: v_dual_mul_f32 v61, v19, v19
	v_dual_mul_f32 v76, v11, v11 :: v_dual_mul_f32 v59, v21, v21
	v_dual_mul_f32 v70, v13, v13 :: v_dual_mul_f32 v57, v23, v23
	v_dual_mul_f32 v62, v18, v18 :: v_dual_mul_f32 v55, v25, v25
	v_dual_mul_f32 v60, v20, v20 :: v_dual_mul_f32 v53, v27, v27
	v_dual_mul_f32 v58, v22, v22 :: v_dual_mul_f32 v51, v29, v29
	v_dual_mul_f32 v56, v24, v24 :: v_dual_mul_f32 v49, v31, v31
	v_dual_mul_f32 v54, v26, v26 :: v_dual_mul_f32 v47, v33, v33
	v_dual_mul_f32 v52, v28, v28 :: v_dual_mul_f32 v45, v35, v35
	v_mul_f32_e32 v50, v30, v30
	v_dual_mul_f32 v48, v32, v32 :: v_dual_mul_f32 v41, v38, v38
	v_mul_f32_e32 v46, v34, v34
	v_dual_mul_f32 v44, v36, v36 :: v_dual_mul_f32 v35, v86, v86
	v_dual_mul_f32 v42, v37, v37 :: v_dual_mul_f32 v29, v102, v102
	v_dual_mul_f32 v40, v39, v39 :: v_dual_mul_f32 v33, v89, v89
	v_mul_f32_e32 v39, v64, v64
	v_dual_mul_f32 v38, v84, v84 :: v_dual_mul_f32 v23, v97, v97
	v_dual_mul_f32 v37, v85, v85 :: v_dual_mul_f32 v36, v43, v43
	v_mul_f32_e32 v27, v104, v104
	v_dual_mul_f32 v32, v100, v100 :: v_dual_mul_f32 v21, v98, v98
	v_dual_mul_f32 v30, v101, v101 :: v_dual_mul_f32 v25, v96, v96
	v_dual_mul_f32 v26, v95, v95 :: v_dual_mul_f32 v19, v90, v90
	v_dual_mul_f32 v20, v99, v99 :: v_dual_mul_f32 v17, v92, v92
	v_dual_mul_f32 v18, v91, v91 :: v_dual_mul_f32 v15, v94, v94
	v_dual_mul_f32 v16, v93, v93 :: v_dual_mul_f32 v13, v88, v88
	v_dual_mul_f32 v14, v87, v87 :: v_dual_mul_f32 v11, v105, v105
	v_mul_f32_e32 v12, v103, v103
	v_mul_f32_e32 v10, v106, v106
	v_mov_b32_e32 v8, v79
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 7, v78
	v_and_b32_e32 v7, 63, v0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v31, v83, v82, v81
	v_dual_max_f32 v34, v46, v46 :: v_dual_max_f32 v43, v47, v47
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v9
	v_or_b32_e32 v5, 60, v9
	v_or_b32_e32 v22, 58, v9
	v_or_b32_e32 v24, 50, v9
	s_mov_b32 s26, 0x76543210
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s72, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s0
	v_add_co_u32 v5, s1, s72, v5
	v_add_co_u32 v1, s0, s72, v7
	v_add_co_ci_u32_e64 v6, null, s73, 0, s1
	v_add_co_u32 v84, s1, s72, v22
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 56, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v9
	v_or_b32_e32 v22, 52, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s72, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s6
	v_add_co_u32 v5, s6, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v6, null, s73, 0, s6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s72, v22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	v_add_co_u32 v84, s10, s72, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s73, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 48, v9
	v_or_b32_e32 v6, 46, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v22, 44, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s14
	v_add_co_u32 v5, s14, s72, v6
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v24, 42, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s14
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s72, v22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	v_add_co_u32 v84, s18, s72, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s73, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 40, v9
	v_or_b32_e32 v6, 38, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[3:4]
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v62, v62
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s22
	v_add_co_u32 v86, s22, s72, v6
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v68, v68 :: v_dual_max_f32 v6, v66, v66
.Ltmp8:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[3:4]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v72, v74, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v24, v63, v63 :: v_dual_max_f32 v3, v6, v5
	v_max3_f32 v5, v80, v76, v73
	v_max3_f32 v6, v70, v69, v67
	v_max_f32_e32 v64, v27, v27
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v28, 36, v9
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v71, v4
.Ltmp12:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[84:85]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v5, v6, v65
	v_max_f32_e32 v5, v24, v22
	v_max3_f32 v6, v60, v59, v58
	v_max3_f32 v22, v54, v53, v52
	v_max3_f32 v24, v51, v50, v49
	v_max3_f32 v3, v3, v31, v4
	v_max3_f32 v4, v57, v56, v55
	v_max3_f32 v5, v5, v61, v6
	v_max3_f32 v31, v37, v36, v35
	v_max3_f32 v6, v22, v24, v48
	v_max_f32_e32 v22, v43, v34
	v_max3_f32 v24, v44, v42, v41
	v_max3_f32 v34, v33, v32, v30
	v_max_f32_e32 v43, v26, v26
	v_max3_f32 v4, v5, v4, v6
	v_max3_f32 v5, v40, v39, v38
	v_max3_f32 v6, v22, v45, v24
	v_max3_f32 v22, v31, v34, v29
	v_max3_f32 v31, v23, v21, v20
	v_max3_f32 v34, v16, v15, v14
.Ltmp14:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s73, 0, s22
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v6, v5, v22
	v_max_f32_e32 v24, v64, v43
	v_max3_f32 v43, v13, v12, v11
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v64, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v19, v18, v17
.Ltmp18:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[84:85]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v24, v25, v31
	v_max3_f32 v24, v34, v43, v10
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v34, v4, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v5, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v64, v64
.Ltmp22:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s27, s72, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v34, v34
	v_dual_max_f32 v34, v43, v43 :: v_dual_and_b32 v43, 4, v0
	v_max3_f32 v6, v22, v6, v24
	v_dual_max_f32 v3, v3, v31 :: v_dual_and_b32 v22, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v5, v5, v34
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v31, 4, v0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v28 :: v_dual_lshlrev_b32 v89, 1, v78
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v34, v22, 9, 0
	v_lshlrev_b32_e32 v64, 5, v22
	v_permlanex16_b32 v28, v6, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x60, v0
	v_and_b32_e32 v79, 8, v0
	v_lshl_add_u32 v34, v43, 2, v34
	v_and_or_b32 v88, 0x680, v31, v64
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v28, v28
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v64, v64, v24
	v_lshrrev_b32_e32 v90, 3, v78
	v_lshl_add_u32 v34, v79, 4, v34
	v_xor_b32_e32 v88, v88, v24
	v_lshl_add_u32 v91, v43, 6, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v28
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v28, v34, v89, v64
	s_barrier
	v_add3_u32 v64, v91, v90, v88
.Ltmp31:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s73, 0, s27
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v28, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v64
.Ltmp33:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v28, 32, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[84:85]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v34, 34, v9
	v_or_b32_e32 v64, 28, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v84, s31, s72, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v85, null, s73, 0, s31
	v_add_co_u32 v88, s26, s72, v34
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v34, 30, v9
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[86:87]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v89, null, s73, 0, s26
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[86:87]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s31, s72, v34
	v_add_co_ci_u32_e64 v87, null, s73, 0, s31
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v28, v3
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp36:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[84:85]
.Ltmp37:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v85, v6, v6
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v28, v28 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v4
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp40:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v91.h, 0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v28, v28
.Ltmp42:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[86:87]
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[86:87]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[88:89]
.Ltmp45:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v3, v28
.Ltmp46:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s72, v64
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[88:89]
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v64, v28
	s_barrier
.Ltmp48:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v87, 24, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp51:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v85, v6 :: v_dual_add_nc_u32 v7, s72, v7
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v84, v5
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v85, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v84, v84
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v5, v5, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v34, v4, v34
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s36
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v84, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
.Ltmp60:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v64, v64
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v64, 26, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v28, v3
	v_max_f32_e32 v28, v84, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s38, s72, v64
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v64, v3 :: v_dual_max_f32 v5, v5, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v28, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v86, v34
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v64
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v28, v28
	v_dual_max_f32 v4, v86, v86 :: v_dual_max_f32 v5, v5, v28
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v28, 5, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v34, v4
	v_max_f32_e32 v34, v85, v85
.Ltmp73:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s73, 0, s38
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v86, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v34
.Ltmp76:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[84:85]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v88, v86, v86
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s39, s72, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v87, null, s73, 0, s39
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v34, v34
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v34, 4, v22
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v88
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v88, 1, v24
	v_lshlrev_b32_e32 v22, 3, v79
	v_add_nc_u32_e32 v79, 0, v78
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v64 :: v_dual_add_nc_u32 v43, 0, v34
.Ltmp86:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[86:87]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v64, v79, v88, v22
	v_add3_u32 v22, v43, v28, v22
.Ltmp88:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v79, 22, v9
	v_or_b32_e32 v28, 18, v9
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v64, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v22
.Ltmp90:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v22, 20, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v88, s39, s72, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v89, null, s73, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[84:85]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s44, s72, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v85, null, s73, 0, s44
	v_add_co_u32 v86, s44, s72, v28
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v22, 16, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s73, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[84:85]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v84, s48, s72, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[86:87]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s73, 0, s48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v28, 0x2b8cbccc, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v9
	v_or_b32_e32 v22, 12, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[88:89]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v43, null, 0x40e00000, 0x40e00000, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s48, s72, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[88:89]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v43
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s73, 0, s48
	v_add_co_u32 v88, s48, s72, v22
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v22, 10, v9
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v89, null, s73, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[84:85]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v64, -v43, v3, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[84:85]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s54, s72, v22
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v22, 8, v9
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v3, v64, v3
	v_div_scale_f32 v64, vcc_lo, v28, 0x40e00000, v28
	v_div_scale_f32 v79, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[86:87]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s73, 0, s54
	v_add_co_u32 v86, s54, s72, v22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[88:89]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[88:89]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v22, v64, v3
	v_rcp_f32_e32 v88, v79
	v_max_f32_e32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[84:85]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[86:87]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v84, -v43, v22, v64
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[86:87]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v86, 0x2b8cbccc, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v85, 6, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v22, v84, v3
	v_fma_f32 v4, -v79, v88, 1.0
	v_max_f32_e32 v84, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v43, v22, v64
	v_fmac_f32_e32 v88, v4, v88
	v_div_scale_f32 v64, s60, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v6
	v_div_fmas_f32 v22, v43, v3, v22
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v64, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v85
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v22, v22, 0x40e00000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v28, -v79, v43, v64
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v6, v87, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v43, v28, v88
	v_fmac_f32_e32 v87, v85, v87
	v_div_scale_f32 v85, s61, v86, 0x40e00000, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v22.h
	v_mov_b16_e32 v28.h, v91.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v92, v85, v87
	v_fma_f32 v93, -v89, v90, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v28
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v3, -v79, v43, v64
	v_fma_f32 v28, -v6, v92, v85
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v64, s62, v84, 0x40e00000, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v22, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v3, v3, v88, v43
	v_fmac_f32_e32 v92, v28, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v28, v64, v90
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v88, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	v_fma_f32 v5, -v6, v92, v85
	v_fma_f32 v6, -v89, v28, v64
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 4, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v88, v88, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v43, v5, v87, v92
	v_fmac_f32_e32 v28, v6, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v4, -v89, v28, v64
	v_div_fixup_f32 v64, v43, 0x40e00000, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v88, v88, v68
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v91.l, v3.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v90, v28
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v90, vcc_lo, v66, v88, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v79, v87, 1.0
	v_rcp_f32_e32 v89, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v91
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v64.h
	v_mov_b16_e32 v84.h, v91.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v43, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v3, v28, 0x7fff
	v_mov_b16_e32 v91.l, v4.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v93, null, v88, v88, v71
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v90, v87
	v_fma_f32 v84, -v86, v89, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v85, 1, v91
	v_add3_u32 v28, v64, v28, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v79, v92, v90
	v_fmac_f32_e32 v89, v84, v89
	v_rcp_f32_e32 v91, v93
	v_div_scale_f32 v94, null, v88, v88, v72
	v_div_scale_f32 v95, s60, v68, v88, v68
	v_fmac_f32_e32 v92, v64, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v94
	v_div_scale_f32 v100, null, v88, v88, v74
	v_mul_f32_e32 v97, v95, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v93, v91, 1.0
	v_fma_f32 v79, -v79, v92, v90
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v85, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v85, 0xffff0000, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v90, -v86, v97, v95
	v_fmac_f32_e32 v91, v98, v91
	v_div_scale_f32 v98, s61, v71, v88, v71
	v_fma_f32 v99, -v94, v96, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v90, v89
	v_rcp_f32_e32 v90, v100
	v_div_fmas_f32 v79, v79, v87, v92
	v_dual_mul_f32 v87, v98, v91 :: v_dual_fmac_f32 v96, v99, v96
	v_div_scale_f32 v92, s62, v72, v88, v72
	v_div_scale_f32 v99, null, v88, v88, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v66, v79, v88, v66
	v_fma_f32 v79, -v86, v97, v95
	v_fma_f32 v86, -v93, v87, v98
	v_mul_f32_e32 v95, v92, v96
	v_rcp_f32_e32 v101, v99
	v_fma_f32 v102, -v100, v90, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v87, v86, v91
	v_div_fmas_f32 v79, v79, v89, v97
	v_fma_f32 v86, -v94, v95, v92
	v_fmac_f32_e32 v90, v102, v90
	v_div_scale_f32 v89, s60, v74, v88, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v68, v79, v88, v68
	v_fma_f32 v97, -v99, v101, 1.0
	v_fma_f32 v79, -v93, v87, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v86, v96 :: v_dual_mul_f32 v86, v89, v90
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v101, v97, v101
	v_div_scale_f32 v93, s63, v75, v88, v75
	v_div_scale_f32 v97, null, v88, v88, v83
	v_div_fmas_f32 v79, v79, v91, v87
	v_fma_f32 v91, -v100, v86, v89
	v_div_scale_f32 v98, null, v88, v88, v82
	v_fma_f32 v87, -v94, v95, v92
	v_rcp_f32_e32 v92, v97
	v_mul_f32_e32 v94, v93, v101
	v_fmac_f32_e32 v86, v91, v90
	v_rcp_f32_e32 v91, v98
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v71, v79, v88, v71
	v_div_fmas_f32 v87, v87, v96, v95
	v_fma_f32 v95, -v99, v94, v93
	v_fma_f32 v79, -v100, v86, v89
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v96, -v97, v92, 1.0
	v_div_fixup_f32 v72, v87, v88, v72
	v_fmac_f32_e32 v94, v95, v101
	v_fma_f32 v89, -v98, v91, 1.0
	v_div_scale_f32 v95, null, v88, v88, v81
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v87, s61, v83, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v89, v91
	v_rcp_f32_e32 v89, v95
	v_div_fmas_f32 v79, v79, v90, v86
	v_fma_f32 v86, -v99, v94, v93
	v_mul_f32_e32 v90, v87, v92
	v_div_scale_f32 v93, s60, v82, v88, v82
	v_div_scale_f32 v96, null, v88, v88, v80
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v99, v93, v91
	v_div_fmas_f32 v86, v86, v101, v94
	v_fma_f32 v94, -v97, v90, v87
	v_fma_f32 v100, -v95, v89, 1.0
	v_rcp_f32_e32 v101, v96
	v_div_fixup_f32 v74, v79, v88, v74
	v_div_fixup_f32 v75, v86, v88, v75
	v_fmac_f32_e32 v90, v94, v92
	v_fma_f32 v79, -v98, v99, v93
	v_fmac_f32_e32 v89, v100, v89
	v_div_scale_f32 v86, s62, v81, v88, v81
	v_div_scale_f32 v94, null, v88, v88, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v100, -v96, v101, 1.0
	v_fma_f32 v87, -v97, v90, v87
	v_fmac_f32_e32 v99, v79, v91
	v_mul_f32_e32 v97, v86, v89
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v102, v94
	v_fmac_f32_e32 v101, v100, v101
	v_div_scale_f32 v100, s63, v80, v88, v80
	v_div_fmas_f32 v79, v87, v92, v90
	v_fma_f32 v87, -v98, v99, v93
	v_fma_f32 v90, -v95, v97, v86
	v_div_scale_f32 v98, null, v88, v88, v73
	v_mul_f32_e32 v92, v100, v101
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v90, v89
	v_rcp_f32_e32 v90, v98
	v_fma_f32 v93, -v94, v102, 1.0
	v_div_fmas_f32 v87, v87, v91, v99
	v_fma_f32 v91, -v96, v92, v100
	v_div_fixup_f32 v79, v79, v88, v83
	v_fma_f32 v83, -v95, v97, v86
	v_fmac_f32_e32 v102, v93, v102
	v_div_scale_f32 v93, s60, v76, v88, v76
	v_div_fixup_f32 v82, v87, v88, v82
	v_fmac_f32_e32 v92, v91, v101
	v_fma_f32 v87, -v98, v90, 1.0
	v_div_scale_f32 v91, null, v88, v88, v70
	v_mul_f32_e32 v86, v93, v102
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v87, v90
	v_rcp_f32_e32 v87, v91
	v_div_fmas_f32 v83, v83, v89, v97
	v_fma_f32 v89, -v96, v92, v100
	v_fma_f32 v95, -v94, v86, v93
	v_div_scale_f32 v96, s61, v73, v88, v73
	v_div_scale_f32 v97, null, v88, v88, v69
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v86, v95, v102
	v_div_fmas_f32 v89, v89, v101, v92
	v_rcp_f32_e32 v92, v97
	v_mul_f32_e32 v95, v96, v90
	v_fma_f32 v99, -v91, v87, 1.0
	v_div_fixup_f32 v81, v83, v88, v81
	v_div_fixup_f32 v80, v89, v88, v80
	v_fma_f32 v83, -v94, v86, v93
	v_fma_f32 v89, -v98, v95, v96
	v_fmac_f32_e32 v87, v99, v87
	v_div_scale_f32 v99, null, v88, v88, v67
	v_div_scale_f32 v93, s62, v70, v88, v70
	v_fma_f32 v94, -v97, v92, 1.0
	v_fmac_f32_e32 v95, v89, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v89, v99
	v_div_scale_f32 v100, null, v88, v88, v65
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v92, v94, v92
	v_div_fmas_f32 v83, v83, v102, v86
	v_mul_f32_e32 v86, v93, v87
	v_div_scale_f32 v94, s60, v69, v88, v69
	v_rcp_f32_e32 v101, v100
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v76, v83, v88, v76
	v_fma_f32 v83, -v98, v95, v96
	v_fma_f32 v96, -v91, v86, v93
	v_mul_f32_e32 v98, v94, v92
	v_fma_f32 v102, -v99, v89, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v90, v95
	v_fmac_f32_e32 v86, v96, v87
	v_fma_f32 v90, -v97, v98, v94
	v_fmac_f32_e32 v89, v102, v89
	v_div_scale_f32 v95, s61, v67, v88, v67
	v_fma_f32 v96, -v100, v101, 1.0
	v_div_fixup_f32 v73, v83, v88, v73
	v_fma_f32 v83, -v91, v86, v93
	v_fmac_f32_e32 v98, v90, v92
	v_mul_f32_e32 v90, v95, v89
	v_fmac_f32_e32 v101, v96, v101
	v_div_scale_f32 v91, s63, v65, v88, v65
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v93, null, v85, v85, v63
	v_div_fmas_f32 v83, v83, v87, v86
	v_fma_f32 v86, -v97, v98, v94
	v_fma_f32 v87, -v99, v90, v95
	v_mul_f32_e32 v96, v91, v101
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v70, v83, v88, v70
	v_div_fmas_f32 v86, v86, v92, v98
	v_fmac_f32_e32 v90, v87, v89
	v_fma_f32 v92, -v100, v96, v91
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v94, v93
	v_div_scale_f32 v97, null, v85, v85, v62
	v_fma_f32 v83, -v99, v90, v95
	v_fmac_f32_e32 v96, v92, v101
	v_div_scale_f32 v95, null, v85, v85, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v97
	v_div_fmas_f32 v83, v83, v89, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v100, v96, v91
	v_rcp_f32_e32 v91, v95
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v98, -v93, v94, 1.0
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v81, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v89, v89, v101, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v98, v94
	v_fma_f32 v92, -v97, v87, 1.0
	v_div_scale_f32 v98, null, v85, v85, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v100, -v95, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v92, v87
	v_div_scale_f32 v92, s61, v62, v85, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v100, v91
	v_div_fixup_f32 v69, v86, v88, v69
	v_div_scale_f32 v86, s60, v63, v85, v63
	v_mul_f32_e32 v99, v92, v87
	v_rcp_f32_e32 v101, v98
	v_div_fixup_f32 v67, v83, v88, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v86, v94
	v_div_fixup_f32 v65, v89, v88, v65
	v_fma_f32 v83, -v97, v99, v92
	v_div_scale_f32 v88, s62, v61, v85, v61
	v_fma_f32 v96, -v93, v90, v86
	v_div_scale_f32 v89, null, v85, v85, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v99, v83, v87
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v90, v96, v94
	v_fma_f32 v96, -v98, v101, 1.0
	v_mul_f32_e32 v83, v88, v91
	v_div_scale_f32 v100, null, v85, v85, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v93, v90, v86
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v101, v96, v101
	v_div_scale_f32 v96, s63, v60, v85, v60
	v_div_fmas_f32 v86, v86, v94, v90
	v_fma_f32 v90, -v97, v99, v92
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v92, -v95, v83, v88
	v_mul_f32_e32 v94, v96, v101
	v_div_fixup_f32 v63, v86, v85, v63
	v_div_fmas_f32 v87, v90, v87, v99
	v_rcp_f32_e32 v90, v100
	v_fma_f32 v97, -v89, v93, 1.0
	v_fmac_f32_e32 v83, v92, v91
	v_fma_f32 v92, -v98, v94, v96
	v_div_fixup_f32 v62, v87, v85, v62
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s60, v59, v85, v59
	v_fma_f32 v86, -v95, v83, v88
	v_fmac_f32_e32 v94, v92, v101
	v_fma_f32 v88, -v100, v90, 1.0
	v_div_scale_f32 v92, null, v85, v85, v57
	v_mul_f32_e32 v87, v97, v93
	v_div_fmas_f32 v83, v86, v91, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v88, v90
	v_rcp_f32_e32 v88, v92
	v_fma_f32 v86, -v98, v94, v96
	v_fma_f32 v91, -v89, v87, v97
	v_div_scale_f32 v96, null, v85, v85, v56
	v_div_scale_f32 v95, s61, v58, v85, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v91, v93
	v_rcp_f32_e32 v91, v96
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v92, v88, 1.0
	v_div_fmas_f32 v86, v86, v101, v94
	v_mul_f32_e32 v94, v95, v90
	v_div_fixup_f32 v61, v83, v85, v61
	v_fma_f32 v83, -v89, v87, v97
	v_fmac_f32_e32 v88, v98, v88
	v_div_scale_f32 v98, null, v85, v85, v55
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v60, v86, v85, v60
	v_fma_f32 v86, -v100, v94, v95
	v_div_scale_f32 v89, s62, v57, v85, v57
	v_fma_f32 v97, -v96, v91, 1.0
	v_div_fmas_f32 v83, v83, v93, v87
	v_rcp_f32_e32 v87, v98
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v64, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v86, v90
	v_mul_f32_e32 v86, v89, v88
	v_fmac_f32_e32 v91, v97, v91
	v_div_scale_f32 v93, s60, v56, v85, v56
	v_div_scale_f32 v97, null, v85, v85, v54
	v_div_fixup_f32 v59, v83, v85, v59
	v_fma_f32 v83, -v100, v94, v95
	v_fma_f32 v95, -v92, v86, v89
	v_mul_f32_e32 v99, v93, v91
	v_rcp_f32_e32 v100, v97
	v_fma_f32 v101, -v98, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v86, v95, v88
	v_div_fmas_f32 v83, v83, v90, v94
	v_fma_f32 v90, -v96, v99, v93
	v_fmac_f32_e32 v87, v101, v87
	v_div_scale_f32 v94, s61, v55, v85, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v58, v83, v85, v58
	v_fma_f32 v95, -v97, v100, 1.0
	v_fma_f32 v83, -v92, v86, v89
	v_fmac_f32_e32 v99, v90, v91
	v_mul_f32_e32 v89, v94, v87
	v_div_scale_f32 v92, null, v85, v85, v53
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v100, v95, v100
	v_div_scale_f32 v90, s63, v54, v85, v54
	v_div_fmas_f32 v83, v83, v88, v86
	v_fma_f32 v86, -v96, v99, v93
	v_fma_f32 v88, -v98, v89, v94
	v_rcp_f32_e32 v93, v92
	v_div_scale_f32 v96, null, v85, v85, v52
	v_dual_mul_f32 v95, v90, v100 :: v_dual_and_b32 v84, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v88, v87
	v_rcp_f32_e32 v88, v96
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v57, v83, v85, v57
	v_div_fmas_f32 v86, v86, v91, v99
	v_fma_f32 v91, -v97, v95, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v92, v93, 1.0
	v_fma_f32 v83, -v98, v89, v94
	v_div_scale_f32 v94, null, v85, v85, v51
	v_div_fixup_f32 v56, v86, v85, v56
	v_fmac_f32_e32 v95, v91, v100
	v_fmac_f32_e32 v93, v99, v93
	v_div_scale_f32 v86, s60, v53, v85, v53
	v_fma_f32 v91, -v96, v88, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v101, null, v85, v85, v48
	v_div_fmas_f32 v83, v83, v87, v89
	v_fma_f32 v87, -v97, v95, v90
	v_dual_mul_f32 v89, v86, v93 :: v_dual_fmac_f32 v88, v91, v88
	v_rcp_f32_e32 v90, v94
	v_div_scale_f32 v91, s61, v52, v85, v52
	v_div_scale_f32 v97, null, v85, v85, v50
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v98, v91, v88
	v_div_fmas_f32 v87, v87, v100, v95
	v_fma_f32 v95, -v92, v89, v86
	v_rcp_f32_e32 v100, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v94, v90, 1.0
	v_div_fixup_f32 v55, v83, v85, v55
	v_fma_f32 v83, -v96, v98, v91
	v_fmac_f32_e32 v89, v95, v93
	v_div_fixup_f32 v54, v87, v85, v54
	v_fmac_f32_e32 v90, v99, v90
	v_div_scale_f32 v87, s62, v51, v85, v51
	v_div_scale_f32 v95, null, v85, v85, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v97, v100, 1.0
	v_fma_f32 v86, -v92, v89, v86
	v_fmac_f32_e32 v98, v83, v88
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v83, v87, v90
	v_rcp_f32_e32 v92, v95
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s63, v50, v85, v50
	v_div_fmas_f32 v86, v86, v93, v89
	v_fma_f32 v89, -v96, v98, v91
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v91, -v94, v83, v87
	v_mul_f32_e32 v93, v99, v100
	v_div_fixup_f32 v53, v86, v85, v53
	v_div_fmas_f32 v88, v89, v88, v98
	v_rcp_f32_e32 v89, v101
	v_fma_f32 v96, -v95, v92, 1.0
	v_fmac_f32_e32 v83, v91, v90
	v_fma_f32 v91, -v97, v93, v99
	v_div_fixup_f32 v52, v88, v85, v52
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s60, v49, v85, v49
	v_fmac_f32_e32 v93, v91, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v101, v89, 1.0
	v_div_scale_f32 v91, null, v84, v84, v47
	v_fma_f32 v86, -v94, v83, v87
	v_mul_f32_e32 v87, v96, v92
	v_fmac_f32_e32 v89, v88, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v94, s61, v48, v85, v48
	v_div_fmas_f32 v83, v86, v90, v83
	v_fma_f32 v86, -v97, v93, v99
	v_fma_f32 v90, -v95, v87, v96
	v_div_scale_f32 v97, null, v84, v84, v46
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v51, v83, v85, v51
	v_fmac_f32_e32 v87, v90, v92
	v_rcp_f32_e32 v90, v97
	v_fma_f32 v98, -v91, v88, 1.0
	v_div_fmas_f32 v86, v86, v100, v93
	v_mul_f32_e32 v93, v94, v89
	v_fma_f32 v83, -v95, v87, v96
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v88, v98, v88
	v_div_scale_f32 v98, null, v84, v84, v45
	v_div_fixup_f32 v50, v86, v85, v50
	v_fma_f32 v86, -v101, v93, v94
	v_div_scale_f32 v95, s62, v47, v84, v47
	v_fma_f32 v96, -v97, v90, 1.0
	v_div_fmas_f32 v83, v83, v92, v87
	v_rcp_f32_e32 v87, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v86, v89 :: v_dual_mul_f32 v86, v95, v88
	v_fmac_f32_e32 v90, v96, v90
	v_div_scale_f32 v92, s60, v46, v84, v46
	v_div_scale_f32 v96, null, v84, v84, v44
	v_div_fixup_f32 v49, v83, v85, v49
	v_fma_f32 v83, -v101, v93, v94
	v_fma_f32 v94, -v91, v86, v95
	v_mul_f32_e32 v99, v92, v90
	v_rcp_f32_e32 v100, v96
	v_fma_f32 v101, -v98, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v86, v94, v88
	v_div_fmas_f32 v83, v83, v89, v93
	v_fma_f32 v89, -v97, v99, v92
	v_fmac_f32_e32 v87, v101, v87
	v_div_scale_f32 v93, s61, v45, v84, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v48, v83, v85, v48
	v_fma_f32 v94, -v96, v100, 1.0
	v_fma_f32 v83, -v91, v86, v95
	v_fmac_f32_e32 v99, v89, v90
	v_mul_f32_e32 v85, v93, v87
	v_div_scale_f32 v91, null, v84, v84, v42
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v100, v94, v100
	v_div_scale_f32 v89, s63, v44, v84, v44
	v_div_fmas_f32 v83, v83, v88, v86
	v_fma_f32 v86, -v97, v99, v92
	v_fma_f32 v88, -v98, v85, v93
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v95, null, v84, v84, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v94, v89, v100 :: v_dual_fmac_f32 v85, v88, v87
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v86, v86, v90, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v90, -v96, v94, v89
	v_div_fixup_f32 v47, v83, v84, v47
	v_fma_f32 v97, -v91, v92, 1.0
	v_fma_f32 v83, -v98, v85, v93
	v_div_fixup_f32 v46, v86, v84, v46
	v_fmac_f32_e32 v94, v90, v100
	v_div_scale_f32 v86, s60, v42, v84, v42
	v_fmac_f32_e32 v92, v97, v92
	v_fma_f32 v90, -v95, v88, 1.0
	v_div_scale_f32 v93, null, v84, v84, v40
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v85
	v_fma_f32 v85, -v96, v94, v89
	v_mul_f32_e32 v87, v86, v92
	v_fmac_f32_e32 v88, v90, v88
	v_rcp_f32_e32 v89, v93
	v_div_scale_f32 v90, s61, v41, v84, v41
	v_div_scale_f32 v96, null, v84, v84, v39
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v97, v90, v88
	v_div_fmas_f32 v85, v85, v100, v94
	v_fma_f32 v94, -v91, v87, v86
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v93, v89, 1.0
	v_div_fixup_f32 v45, v83, v84, v45
	v_fma_f32 v83, -v95, v97, v90
	v_fmac_f32_e32 v87, v94, v92
	v_div_scale_f32 v94, null, v84, v84, v38
	v_div_fixup_f32 v44, v85, v84, v44
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v85, s62, v40, v84, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v86, -v91, v87, v86
	v_fmac_f32_e32 v97, v83, v88
	v_rcp_f32_e32 v91, v94
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v83, v85, v89
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s63, v39, v84, v39
	v_div_fmas_f32 v86, v86, v92, v87
	v_fma_f32 v87, -v95, v97, v90
	v_div_scale_f32 v100, null, v84, v84, v37
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v90, -v93, v83, v85
	v_mul_f32_e32 v92, v98, v99
	v_fma_f32 v95, -v94, v91, 1.0
	v_div_fmas_f32 v87, v87, v88, v97
	v_rcp_f32_e32 v88, v100
	v_fmac_f32_e32 v83, v90, v89
	v_fma_f32 v90, -v96, v92, v98
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s60, v38, v84, v38
	v_div_fixup_f32 v42, v86, v84, v42
	v_div_fixup_f32 v41, v87, v84, v41
	v_fma_f32 v85, -v93, v83, v85
	v_fmac_f32_e32 v92, v90, v99
	v_mul_f32_e32 v86, v95, v91
	v_fma_f32 v87, -v100, v88, 1.0
	v_div_scale_f32 v90, null, v84, v84, v36
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v93, s61, v37, v84, v37
	v_div_fmas_f32 v83, v85, v89, v83
	v_fma_f32 v85, -v96, v92, v98
	v_fma_f32 v89, -v94, v86, v95
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v96, null, v84, v84, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v89, v91
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v40, v83, v84, v40
	v_rcp_f32_e32 v89, v96
	v_div_fmas_f32 v85, v85, v99, v92
	v_mul_f32_e32 v92, v93, v88
	v_fma_f32 v83, -v94, v86, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v39, v85, v84, v39
	v_fma_f32 v85, -v100, v92, v93
	v_div_scale_f32 v94, s62, v36, v84, v36
	v_fmac_f32_e32 v87, v97, v87
	v_fma_f32 v95, -v96, v89, 1.0
	v_div_scale_f32 v97, null, v84, v84, v33
	v_div_fmas_f32 v83, v83, v91, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v85, v88 :: v_dual_fmac_f32 v89, v95, v89
	v_rcp_f32_e32 v86, v97
	v_div_scale_f32 v95, null, v84, v84, v32
	v_mul_f32_e32 v85, v94, v87
	v_div_scale_f32 v91, s60, v35, v84, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v99, v95
	v_div_fixup_f32 v38, v83, v84, v38
	v_fma_f32 v83, -v100, v92, v93
	v_fma_f32 v93, -v90, v85, v94
	v_mul_f32_e32 v98, v91, v89
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v88, v92
	v_fmac_f32_e32 v85, v93, v87
	v_fma_f32 v88, -v96, v98, v91
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s61, v33, v84, v33
	v_fma_f32 v93, -v95, v99, 1.0
	v_div_fixup_f32 v37, v83, v84, v37
	v_fma_f32 v83, -v90, v85, v94
	v_fmac_f32_e32 v98, v88, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v88, v92, v86 :: v_dual_fmac_f32 v99, v93, v99
	v_div_scale_f32 v93, null, v84, v84, v30
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s63, v32, v84, v32
	v_div_fmas_f32 v83, v83, v87, v85
	v_fma_f32 v85, -v96, v98, v91
	v_fma_f32 v87, -v97, v88, v92
	v_rcp_f32_e32 v91, v93
	v_div_scale_f32 v96, null, v84, v84, v29
	v_mul_f32_e32 v94, v90, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v87, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v96
	v_div_fmas_f32 v85, v85, v89, v98
	v_fma_f32 v89, -v95, v94, v90
	v_div_fixup_f32 v36, v83, v84, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v93, v91, 1.0
	v_fma_f32 v83, -v97, v88, v92
	v_div_fixup_f32 v35, v85, v84, v35
	v_fmac_f32_e32 v94, v89, v99
	v_div_scale_f32 v85, s60, v30, v84, v30
	v_fmac_f32_e32 v91, v98, v91
	v_fma_f32 v89, -v96, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v97, null, v64, v64, v26
	v_div_fmas_f32 v83, v83, v86, v88
	v_fma_f32 v86, -v95, v94, v90
	v_mul_f32_e32 v88, v85, v91
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, null, v64, v64, v27
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v90, s61, v29, v84, v29
	v_div_fmas_f32 v86, v86, v99, v94
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v94, -v93, v88, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v95, v90, v87
	v_div_fixup_f32 v33, v83, v84, v33
	v_div_fixup_f32 v32, v86, v84, v32
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v88, v94, v91
	v_fma_f32 v83, -v96, v95, v90
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v99, null, v64, v64, v23
	v_fma_f32 v94, -v89, v92, 1.0
	v_fma_f32 v85, -v93, v88, v85
	v_div_scale_f32 v93, null, v64, v64, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v83, v87 :: v_dual_fmac_f32 v92, v94, v92
	v_div_fmas_f32 v85, v85, v91, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v93
	v_div_scale_f32 v83, s62, v27, v64, v27
	v_fma_f32 v88, -v96, v95, v90
	v_fma_f32 v98, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v90, v83, v92
	v_div_scale_f32 v91, s60, v26, v64, v26
	v_fmac_f32_e32 v86, v98, v86
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v93, v94, 1.0
	v_rcp_f32_e32 v101, v99
	v_div_fmas_f32 v87, v88, v87, v95
	v_fma_f32 v98, -v89, v90, v83
	v_mul_f32_e32 v100, v91, v86
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s63, v25, v64, v25
	v_div_fixup_f32 v30, v85, v84, v30
	v_div_fixup_f32 v29, v87, v84, v29
	v_div_scale_f32 v87, null, v64, v64, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v95, v96, v94 :: v_dual_fmac_f32 v90, v98, v92
	v_fma_f32 v88, -v97, v100, v91
	v_fma_f32 v85, -v99, v101, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v84, -v93, v95, v96
	v_fma_f32 v83, -v89, v90, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v100, v88, v86 :: v_dual_fmac_f32 v101, v85, v101
	v_div_scale_f32 v85, s61, v23, v64, v23
	v_fmac_f32_e32 v95, v84, v94
	v_rcp_f32_e32 v84, v87
	v_div_fmas_f32 v83, v83, v92, v90
	v_fma_f32 v88, -v97, v100, v91
	v_mul_f32_e32 v89, v85, v101
	v_div_scale_f32 v90, null, v64, v64, v20
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v27, v83, v64, v27
	v_div_fmas_f32 v86, v88, v86, v100
	v_fma_f32 v88, -v93, v95, v96
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v87, v84, 1.0
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v93, -v99, v89, v85
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v26, v86, v64, v26
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s60, v21, v64, v21
	v_fmac_f32_e32 v89, v93, v101
	v_div_fmas_f32 v88, v88, v94, v95
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v91, v84
	v_fma_f32 v86, -v90, v92, 1.0
	v_fma_f32 v85, -v99, v89, v85
	v_div_fixup_f32 v25, v88, v64, v25
	v_div_scale_f32 v88, null, v64, v64, v19
	v_fma_f32 v93, -v87, v83, v91
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, s62, v20, v64, v20
	v_div_fmas_f32 v85, v85, v101, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v93, v84
	v_rcp_f32_e32 v94, v88
	v_mul_f32_e32 v89, v86, v92
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v23, v85, v64, v23
	v_fma_f32 v85, -v87, v83, v91
	v_div_scale_f32 v93, null, v64, v64, v18
	v_fma_f32 v87, -v90, v89, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v85, v84, v83
	v_div_scale_f32 v84, null, v64, v64, v17
	v_fma_f32 v91, -v88, v94, 1.0
	v_rcp_f32_e32 v95, v93
	v_fmac_f32_e32 v89, v87, v92
	v_rcp_f32_e32 v87, v84
	v_div_scale_f32 v85, s60, v19, v64, v19
	v_fmac_f32_e32 v94, v91, v94
	v_div_scale_f32 v91, null, v64, v64, v16
	v_div_fixup_f32 v21, v83, v64, v21
	v_fma_f32 v86, -v90, v89, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v93, v95, 1.0
	v_rcp_f32_e32 v97, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v84, v87, 1.0
	v_mul_f32_e32 v90, v85, v94
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v95, v83, v95
	v_div_scale_f32 v83, s61, v18, v64, v18
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v96, null, v64, v64, v15
	v_div_fmas_f32 v86, v86, v92, v89
	v_fma_f32 v89, -v88, v90, v85
	v_mul_f32_e32 v92, v83, v95
	v_div_scale_f32 v98, s62, v17, v64, v17
	v_fma_f32 v99, -v91, v97, 1.0
	v_rcp_f32_e32 v100, v96
	v_fmac_f32_e32 v90, v89, v94
	v_fma_f32 v89, -v93, v92, v83
	v_mul_f32_e32 v101, v98, v87
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, s63, v16, v64, v16
	v_div_fixup_f32 v20, v86, v64, v20
	v_fma_f32 v85, -v88, v90, v85
	v_fmac_f32_e32 v92, v89, v95
	v_fma_f32 v86, -v84, v101, v98
	v_mul_f32_e32 v88, v99, v97
	v_fma_f32 v89, -v96, v100, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v83, -v93, v92, v83
	v_fmac_f32_e32 v101, v86, v87
	v_fma_f32 v86, -v91, v88, v99
	v_fmac_f32_e32 v100, v89, v100
	v_div_scale_f32 v89, s60, v15, v64, v15
	v_div_fmas_f32 v85, v85, v94, v90
	v_fma_f32 v84, -v84, v101, v98
	v_fmac_f32_e32 v88, v86, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v86, v89, v100
	v_div_scale_f32 v90, null, v64, v64, v14
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v19, v85, v64, v19
	v_div_fmas_f32 v83, v83, v95, v92
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v84, v84, v87, v101
	v_fma_f32 v87, -v91, v88, v99
	v_fma_f32 v91, -v96, v86, v89
	v_div_fixup_f32 v18, v83, v64, v18
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v17, v84, v64, v17
	v_div_fmas_f32 v87, v87, v97, v88
	v_fmac_f32_e32 v86, v91, v100
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v85, -v90, v92, 1.0
	v_div_scale_f32 v84, null, v64, v64, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v86, v89
	v_div_fixup_f32 v16, v87, v64, v16
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v64, v64, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v83, v100, v86
	v_div_scale_f32 v88, vcc_lo, v14, v64, v14
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v87, null, v64, v64, v11
	v_mul_f32_e32 v93, v88, v92
	v_div_scale_f32 v94, null, v64, v64, v10
	v_rcp_f32_e32 v89, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v97, -v90, v93, v88
	v_div_fixup_f32 v15, v83, v64, v15
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v83, -v84, v86, 1.0
	v_rcp_f32_e32 v96, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v97, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, s60, v13, v64, v13
	v_fma_f32 v95, -v85, v89, 1.0
	v_fma_f32 v88, -v90, v93, v88
	v_fma_f32 v98, -v87, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v99, v83, v86
	v_fma_f32 v100, -v94, v96, 1.0
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v95, s61, v12, v64, v12
	v_div_fmas_f32 v88, v88, v92, v93
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fmac_f32_e32 v91, v98, v91
	v_div_scale_f32 v98, s62, v11, v64, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v26, v26, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v84, v99, v83
	v_fmac_f32_e32 v96, v100, v96
	v_div_scale_f32 v100, s63, v10, v64, v10
	v_mul_f32_e32 v101, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v102, v98, v91 :: v_dual_fmac_f32 v99, v97, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v103, v100, v96
	v_fma_f32 v90, -v85, v101, v95
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v87, v102, v98
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v84, v99, v83
	v_fma_f32 v84, -v94, v103, v100
	v_dual_fmac_f32 v101, v90, v89 :: v_dual_fmac_f32 v102, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v23, v23
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v103, v84, v96
	v_fma_f32 v85, -v85, v101, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v45
	v_and_b32_e32 v45, 15, v58
	v_and_b32_e32 v58, 15, v38
	v_and_b32_e32 v38, 15, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v23, 13, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v87, v102, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v21
	v_and_b32_e32 v21, 15, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v86, v99
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v86, -v94, v103, v100
	v_div_fmas_f32 v85, v85, v89, v101
	s_mov_b32 vcc_lo, s62
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v25, 0x2f0, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v91, v102
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v14, v88, v64, v14
	v_div_fmas_f32 v86, v86, v96, v103
	v_div_fixup_f32 v13, v83, v64, v13
	v_div_fixup_f32 v12, v85, v64, v12
	v_div_fixup_f32 v11, v84, v64, v11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v86, v64, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v66
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v76, v76, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v76, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v109, v10
	v_and_b32_e32 v10, 15, v64
	v_and_b32_e32 v64, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v76, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_cvt_i32_f32_e32 v84, v56
	v_cvt_i32_f32_e32 v88, v49
	v_cvt_i32_f32_e32 v89, v48
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v102, v17
	v_cvt_i32_f32_e32 v106, v13
	v_and_b32_e32 v13, 15, v27
	v_and_b32_e32 v17, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v26, 8, v76
	v_and_b32_e32 v27, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v68
	v_rndne_f32_e32 v68, v71
	v_rndne_f32_e32 v71, v72
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_cvt_i32_f32_e32 v85, v53
	v_and_b32_e32 v53, 15, v84
	v_and_b32_e32 v84, 15, v88
	v_and_b32_e32 v88, 15, v89
	v_and_b32_e32 v89, 15, v29
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v29, 3, v78
	v_and_or_b32 v23, 0xe000, v23, v26
	v_xor_b32_e32 v25, v25, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v81, v81, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v47, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v23, v23, v29, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v80, v80
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v81, v81
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v107, v12
	v_cvt_i32_f32_e32 v108, v11
	v_and_b32_e32 v11, 15, v63
	v_and_b32_e32 v12, 15, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v25, 0, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v82
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v92, v41
	v_cvt_i32_f32_e32 v93, v40
	v_cvt_i32_f32_e32 v94, v39
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v99, v20
	v_and_b32_e32 v39, 15, v72
	v_and_b32_e32 v40, 15, v59
	v_and_b32_e32 v41, 15, v42
	v_and_b32_e32 v42, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v80, v80, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_cvt_i32_f32_e32 v103, v16
	v_cvt_i32_f32_e32 v104, v15
	v_cvt_i32_f32_e32 v105, v14
	v_and_b32_e32 v14, 15, v66
	v_and_b32_e32 v56, 15, v81
	v_and_b32_e32 v15, 15, v62
	v_and_b32_e32 v49, 15, v57
	v_and_b32_e32 v57, 15, v55
	v_and_b32_e32 v16, 15, v46
	v_and_b32_e32 v59, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v25, v[10:13]
	ds_store_b128 v25, v[39:42] offset:256
	v_xad_u32 v10, v23, 16, 0
	v_lshlrev_b32_e32 v11, 6, v0
	v_lshlrev_b32_e32 v12, 5, v24
	v_cndmask_b32_e64 v13, 0x2010, 0, s2
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v79, v79, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_cvt_i32_f32_e32 v91, v44
	v_cvt_i32_f32_e32 v101, v18
	v_and_b32_e32 v18, 15, v68
	v_and_b32_e32 v44, 15, v74
	v_and_b32_e32 v48, 15, v75
	v_and_b32_e32 v68, 15, v73
	v_and_b32_e32 v72, 15, v70
	v_and_b32_e32 v73, 15, v51
	v_and_b32_e32 v46, 15, v92
	v_and_b32_e32 v74, 15, v33
	v_and_b32_e32 v47, 15, v99
	v_and_b32_e32 v75, 15, v106
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v95, v37
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v25, v[56:59] offset:2048
	ds_store_b128 v25, v[72:75] offset:2304
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[44:47] offset:256
	v_lshlrev_b32_e32 v15, 2, v76
	v_and_or_b32 v11, 0x300, v11, v12
	v_xor_b32_e32 v12, v13, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v82, v60
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v86, v52
	v_cvt_i32_f32_e32 v96, v36
	v_cvt_i32_f32_e32 v97, v35
	v_cvt_i32_f32_e32 v100, v19
	v_and_b32_e32 v60, 15, v80
	v_and_b32_e32 v19, 15, v61
	v_and_b32_e32 v61, 15, v54
	v_and_b32_e32 v62, 15, v95
	v_and_b32_e32 v63, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v27, v12, v11, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_and_b32_e32 v52, 15, v79
	v_and_b32_e32 v79, 15, v69
	v_and_b32_e32 v36, 15, v82
	v_and_b32_e32 v80, 15, v50
	v_and_b32_e32 v81, 15, v32
	v_and_b32_e32 v82, 15, v107
	v_and_b32_e32 v35, 15, v71
	v_and_b32_e32 v83, 15, v67
	v_and_b32_e32 v87, 15, v65
	v_and_b32_e32 v65, 15, v85
	v_and_b32_e32 v69, 15, v86
	v_and_b32_e32 v20, 15, v90
	v_and_b32_e32 v66, 15, v96
	v_and_b32_e32 v70, 15, v97
	v_and_b32_e32 v67, 15, v104
	v_and_b32_e32 v71, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v14, v23, 32, 0
	ds_store_b128 v10, v[60:63] offset:2048
	ds_store_b128 v10, v[79:82] offset:2304
	v_xad_u32 v10, v23, 48, 0
	v_xad_u32 v41, 0x4020, v27, 0
	v_xad_u32 v42, 0x8040, v27, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v93
	v_and_b32_e32 v85, 15, v30
	v_and_b32_e32 v51, 15, v100
	v_and_b32_e32 v86, 15, v108
	v_and_b32_e32 v90, 15, v109
	v_and_b32_e32 v37, 15, v91
	v_and_b32_e32 v54, 15, v94
	v_and_b32_e32 v55, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v23, 0, v27
	v_xad_u32 v27, 0xc060, v27, 0
	ds_store_b128 v14, v[18:21]
	ds_store_b128 v14, v[48:51] offset:256
	ds_store_b128 v14, v[64:67] offset:2048
	ds_store_b128 v14, v[83:86] offset:2304
	ds_store_b128 v10, v[35:38]
	ds_store_b128 v10, v[52:55] offset:256
	ds_store_b128 v10, v[68:71] offset:2048
	ds_store_b128 v10, v[87:90] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v41
	ds_load_b128 v[33:36], v41 offset:128
	ds_load_b128 v[37:40], v41 offset:4096
	ds_load_b128 v[44:47], v41 offset:4224
	ds_load_b128 v[48:51], v42
	ds_load_b128 v[52:55], v42 offset:128
	ds_load_b128 v[56:59], v42 offset:4096
	ds_load_b128 v[60:63], v42 offset:4224
	ds_load_b128 v[64:67], v27 offset:4096
	ds_load_b128 v[68:71], v27
	ds_load_b128 v[72:75], v27 offset:128
	ds_load_b128 v[78:81], v27 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v43, 2, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[10:13], v23
	ds_load_b128 v[14:17], v23 offset:128
	ds_load_b128 v[18:21], v23 offset:4096
	ds_load_b128 v[23:26], v23 offset:4224
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v3.l, v22.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v41, s2, s72, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v42, null, s73, 0, s2
	v_add_co_u32 v82, s2, s72, v9
	v_add_co_ci_u32_e64 v83, null, s73, 0, s2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s72, v9
	v_lshl_or_b32 v5, s79, 7, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[82:83]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v83, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 34, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v53, v61, 4, v53
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v61, v79, 4, v73
	v_lshl_or_b32 v73, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 36, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	v_lshl_or_b32 v62, v80, 4, v74
	v_lshl_or_b32 v74, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 38, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v44, 4, v33
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 40, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 42, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v78, 4, v72
	v_lshl_or_b32 v72, v38, 4, v30
	v_lshl_or_b32 v46, v46, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 44, v6
	v_mad_u64_u32 v[29:30], null, v29, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 46, v6
	v_mad_u64_u32 v[30:31], null, v31, s73, v[5:6]
	v_add_nc_u32_e32 v37, 48, v6
	v_mad_u64_u32 v[31:32], null, v32, s73, v[5:6]
	v_add_nc_u32_e32 v38, 50, v6
	v_mad_u64_u32 v[32:33], null, v33, s73, v[5:6]
	v_add_nc_u32_e32 v39, 52, v6
	v_mad_u64_u32 v[33:34], null, v34, s73, v[5:6]
	v_add_nc_u32_e32 v40, 54, v6
	v_mad_u64_u32 v[34:35], null, v35, s73, v[5:6]
	v_mad_u64_u32 v[35:36], null, v36, s73, v[5:6]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[41:42]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[41:42]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v82, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 2, v6
	v_add_nc_u32_e32 v41, 56, v6
	v_mad_u64_u32 v[36:37], null, v37, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[37:38], null, v38, s73, v[5:6]
	v_add_nc_u32_e32 v11, 4, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 6, v6
	v_mad_u64_u32 v[38:39], null, v39, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[39:40], null, v40, s73, v[5:6]
	v_add_nc_u32_e32 v13, 8, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v64, v23, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 10, v6
	v_mad_u64_u32 v[8:9], null, v6, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v24, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s73, v[5:6]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[5:6]
	v_add_nc_u32_e32 v15, 12, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v25, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 14, v6
	v_mad_u64_u32 v[10:11], null, v11, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v67, v26, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 16, v6
	v_mad_u64_u32 v[11:12], null, v12, s73, v[5:6]
	v_add_nc_u32_e32 v18, 18, v6
	v_add_nc_u32_e32 v23, 26, v6
	v_mad_u64_u32 v[12:13], null, v13, s73, v[5:6]
	v_add_nc_u32_e32 v19, 20, v6
	v_add_nc_u32_e32 v25, 28, v6
	v_mad_u64_u32 v[13:14], null, v14, s73, v[5:6]
	v_add_nc_u32_e32 v20, 22, v6
	v_add_nc_u32_e32 v26, 30, v6
	v_add_nc_u32_e32 v42, 58, v6
	v_mad_u64_u32 v[14:15], null, v15, s73, v[5:6]
	v_add_nc_u32_e32 v21, 24, v6
	v_add_nc_u32_e32 v27, 32, v6
	v_add_nc_u32_e32 v43, 60, v6
	v_add_nc_u32_e32 v71, 62, v6
	v_mad_u64_u32 v[15:16], null, v16, s73, v[5:6]
	v_mad_u64_u32 v[16:17], null, v17, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[17:18], null, v18, s73, v[5:6]
	v_mad_u64_u32 v[23:24], null, v23, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[18:19], null, v19, s73, v[5:6]
	v_mad_u64_u32 v[24:25], null, v25, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s73, v[5:6]
	v_mad_u64_u32 v[25:26], null, v26, s73, v[5:6]
	v_mad_u64_u32 v[41:42], null, v42, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s60
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[20:21], null, v21, s73, v[5:6]
	v_mad_u64_u32 v[26:27], null, v27, s73, v[5:6]
	v_mad_u64_u32 v[42:43], null, v43, s73, v[5:6]
	v_mad_u64_u32 v[5:6], null, v71, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v82, v8, s[68:71], 0 offen
	buffer_store_b8 v83, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v81, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v48, v6, s[68:71], 0 offen
	buffer_store_b8 v56, v8, s[68:71], 0 offen
	buffer_store_b8 v64, v9, s[68:71], 0 offen
	buffer_store_b8 v44, v10, s[68:71], 0 offen
	buffer_store_b8 v52, v11, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v60, v6, s[68:71], 0 offen
	buffer_store_b8 v68, v8, s[68:71], 0 offen
	buffer_store_b8 v72, v9, s[68:71], 0 offen
	buffer_store_b8 v49, v10, s[68:71], 0 offen
	buffer_store_b8 v57, v11, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v65, v6, s[68:71], 0 offen
	buffer_store_b8 v45, v8, s[68:71], 0 offen
	buffer_store_b8 v53, v9, s[68:71], 0 offen
	buffer_store_b8 v61, v10, s[68:71], 0 offen
	buffer_store_b8 v69, v11, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v73, v6, s[68:71], 0 offen
	buffer_store_b8 v50, v8, s[68:71], 0 offen
	buffer_store_b8 v58, v9, s[68:71], 0 offen
	buffer_store_b8 v66, v10, s[68:71], 0 offen
	buffer_store_b8 v46, v11, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v6, s[68:71], 0 offen
	buffer_store_b8 v62, v8, s[68:71], 0 offen
	buffer_store_b8 v70, v9, s[68:71], 0 offen
	buffer_store_b8 v74, v10, s[68:71], 0 offen
	buffer_store_b8 v51, v11, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	s_clause 0x2
	buffer_store_b8 v59, v6, s[68:71], 0 offen
	buffer_store_b8 v67, v8, s[68:71], 0 offen
	buffer_store_b8 v47, v9, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v76
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v6, 3, v77
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v55, v10, s[68:71], 0 offen
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v63, v5, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v6
	v_add3_u32 v6, v9, v8, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v5, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v7, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e64 s1, 0, v0
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_lshl_u32 v0, v4, s79, 1
	s_and_b32 vcc_lo, s1, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp91:
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
		.amdhsa_next_free_vgpr 214
		.amdhsa_next_free_sgpr 82
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 214
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18896
; TotalNumSgprs: 84
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 214
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
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
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
