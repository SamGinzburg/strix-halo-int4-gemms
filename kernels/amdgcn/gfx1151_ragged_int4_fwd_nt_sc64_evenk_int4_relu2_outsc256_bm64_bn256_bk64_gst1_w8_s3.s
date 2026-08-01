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
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v36, 0x7f, v0
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
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v35, 0x80, v0
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v34, 15, v0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v35
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v73, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v25, 5, v0
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s35, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v26, 0xe0, v0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s72, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	v_add_co_u32 v15, s0, s72, v34
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
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[1:2]
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s36, s6, s4
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v1, s72, v34
	s_addc_u32 s37, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s12
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s12, s[36:37], 0x0
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s13
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s13, s79, 8
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v39, v1, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s13, v25
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v40, v2, s34
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v25, s72, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[5:6]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v43, 24, v2
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v58, 28, v2
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v2, 8, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[13:14]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[13:14]
	v_cmp_gt_i64_e64 s19, s[76:77], v[17:18]
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v63, v2, s35
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v2, 24, v25
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s14
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v41, v3, s34
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s14, s35, s78
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 8, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v42, v4, s34
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
	v_cmp_le_i64_e64 s3, s[74:75], v[7:8]
	v_cmp_le_i64_e64 s4, s[74:75], v[9:10]
	v_cmp_le_i64_e64 s5, s[74:75], v[11:12]
	v_cmp_le_i64_e64 s7, s[74:75], v[17:18]
	v_cmp_le_i64_e64 s8, s[74:75], v[15:16]
	v_cmp_le_i64_e64 s9, s[74:75], v[19:20]
	v_cmp_le_i64_e64 s10, s[74:75], v[21:22]
	v_cmp_le_i64_e64 s11, s[74:75], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[7:8]
	v_cmp_gt_i64_e64 s16, s[76:77], v[9:10]
	v_cmp_gt_i64_e64 s17, s[76:77], v[11:12]
	v_cmp_gt_i64_e64 s20, s[76:77], v[15:16]
	v_cmp_gt_i64_e64 s21, s[76:77], v[19:20]
	v_cmp_gt_i64_e64 s22, s[76:77], v[21:22]
	v_cmp_gt_i64_e64 s23, s[76:77], v[23:24]
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
	v_mul_lo_u32 v72, v2, s35
	v_mad_u64_u32 v[1:2], null, v1, s35, s[18:19]
	v_mad_u64_u32 v[2:3], null, v3, s35, s[18:19]
	v_mad_u64_u32 v[3:4], null, v4, s35, s[18:19]
	v_lshl_or_b32 v43, v34, 5, v43
	v_mad_u64_u32 v[4:5], null, v5, s35, s[18:19]
	v_mad_u64_u32 v[5:6], null, v6, s35, s[18:19]
	v_mad_u64_u32 v[6:7], null, v7, s35, s[18:19]
	v_mad_u64_u32 v[7:8], null, v8, s35, s[18:19]
	v_mad_u64_u32 v[8:9], null, v9, s35, s[18:19]
	v_lshl_or_b32 v45, v26, 4, v43
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v26, 0xf0, v0
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v56, 5, v0
	v_mad_u64_u32 v[9:10], null, v10, s35, s[18:19]
	v_mad_u64_u32 v[10:11], null, v11, s35, s[18:19]
	v_mad_u64_u32 v[11:12], null, v12, s35, s[18:19]
	v_mad_u64_u32 v[12:13], null, v13, s35, s[18:19]
	v_mad_u64_u32 v[13:14], null, v14, s35, s[18:19]
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v57, 2, v26
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v56, 32, v56
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v59, 16, v25
	v_mad_u64_u32 v[14:15], null, v15, s35, s[18:19]
	v_mad_u64_u32 v[15:16], null, v16, s35, s[18:19]
	v_mad_u64_u32 v[16:17], null, v17, s35, s[18:19]
	v_mad_u64_u32 v[17:18], null, v18, s35, s[18:19]
	v_mad_u64_u32 v[18:19], null, v19, s35, s[18:19]
	v_add3_u32 v56, 0, v57, v56
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v57, 1, v26
	v_mul_lo_u32 v61, v25, s35
	v_mul_lo_u32 v65, v59, s35
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v26, 32, v25
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v59, 40, v25
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v60, 48, v25
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v25, 56, v25
	v_mad_u64_u32 v[19:20], null, v20, s35, s[18:19]
	v_cndmask_b32_e64 v44, 0x88, 0, s2
	v_mad_u64_u32 v[20:21], null, v21, s35, s[18:19]
	v_mad_u64_u32 v[21:22], null, v22, s35, s[18:19]
	v_mad_u64_u32 v[22:23], null, v23, s35, s[18:19]
	v_mad_u64_u32 v[23:24], null, v24, s35, s[18:19]
	v_mul_lo_u32 v78, v25, s35
	v_mad_u64_u32 v[24:25], null, v47, s35, s[18:19]
	v_xor_b32_e32 v44, v44, v36
	v_mul_lo_u32 v74, v26, s35
	v_mad_u64_u32 v[25:26], null, v46, s35, s[18:19]
	v_mad_u64_u32 v[26:27], null, v27, s35, s[18:19]
	v_mad_u64_u32 v[27:28], null, v28, s35, s[18:19]
	v_mad_u64_u32 v[28:29], null, v29, s35, s[18:19]
	v_mad_u64_u32 v[29:30], null, v30, s35, s[18:19]
	v_xor_b32_e32 v48, 0x110, v44
	v_xor_b32_e32 v49, 8, v43
	v_xor_b32_e32 v50, 16, v43
	v_xor_b32_e32 v51, 24, v43
	v_xor_b32_e32 v53, 8, v45
	v_xor_b32_e32 v54, 16, v45
	v_xor_b32_e32 v55, 24, v45
	v_mad_u64_u32 v[30:31], null, v31, s35, s[18:19]
	v_mad_u64_u32 v[31:32], null, v32, s35, s[18:19]
	v_mul_lo_u32 v76, v59, s35
	v_mul_lo_u32 v77, v60, s35
	v_mad_u64_u32 v[32:33], null, v33, s35, s[18:19]
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v38, 31, v0
	v_or_b32_e32 v52, s13, v0
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v106, v56, v58
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v109, 0, v48
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v111, 0, v49
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v112, 0, v50
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v113, 0, v51
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v114, 0, v53
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v115, 0, v54
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v117, 0, v55
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v123, 0, v57
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v46, 0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s33, s34, s12
	s_mov_b32 s12, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s15
	s_and_b32 s4, s4, s16
	s_and_b32 s5, s5, s17
	s_and_b32 s7, s7, s19
	s_and_b32 s8, s8, s20
	s_and_b32 s9, s9, s21
	s_and_b32 s10, s10, s22
	s_and_b32 s11, s11, s23
	s_and_b32 s21, s25, 0xffff
	s_mov_b32 s20, s24
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s37, s31, 0xffff
	s_mov_b32 s36, s30
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s35, s12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_delay_alu instid0(SALU_CYCLE_1)
	v_lshl_or_b32 v126, s35, 5, v38
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
	v_cndmask_b32_e64 v130, 0x80000000, v130, s3
	v_cndmask_b32_e64 v136, 0x80000000, v131, s4
	v_cndmask_b32_e64 v133, 0x80000000, v133, s6
	v_cndmask_b32_e64 v137, 0x80000000, v132, s5
	v_cndmask_b32_e64 v134, 0x80000000, v134, s7
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
	s_add_i32 s26, s35, s33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s38, s22
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s78
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s39, s23
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
	v_add_lshl_u32 v190, s35, v39, 1
	v_add_lshl_u32 v191, s35, v40, 1
	v_add_lshl_u32 v192, s35, v41, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v137
	v_cvt_f32_i32_e32 v137, v145
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v190, 0x80000000, v190, s8
	v_cndmask_b32_e64 v191, 0x80000000, v191, s9
	v_cndmask_b32_e64 v192, 0x80000000, v192, s10
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
	v_add_lshl_u32 v193, s35, v42, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v131, v139
	v_cvt_f32_i32_e32 v133, v141
	v_cvt_f32_i32_e32 v139, v147
	v_cvt_f32_i32_e32 v147, v155
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v193, 0x80000000, v193, s11
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
	s_add_i32 s35, s35, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s35, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v192, 16, v192
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v171, v171, v192 :: v_dual_lshlrev_b32 v190, 16, v190
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v194, v126, v190 :: v_dual_lshlrev_b32 v191, 16, v191
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v126, v52, s26, 1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v196, v128, v190
	v_mul_f32_e32 v195, v127, v190
	v_mul_f32_e32 v197, v129, v190
	v_mul_f32_e32 v199, v131, v190
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v126, v126, s[36:39], 0 offen
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
	v_dual_fmac_f32 v64, v173, v141 :: v_dual_fmac_f32 v51, v183, v135
	v_dual_fmac_f32 v62, v174, v126 :: v_dual_fmac_f32 v49, v185, v137
	v_dual_fmac_f32 v60, v175, v127 :: v_dual_fmac_f32 v33, v189, v141
	v_dual_fmac_f32 v58, v177, v129 :: v_dual_fmac_f32 v47, v187, v139
	v_fmac_f32_e32 v56, v179, v131
	v_fmac_f32_e32 v54, v181, v133
	v_fmac_f32_e32 v50, v184, v136
	v_fmac_f32_e32 v48, v186, v138
	v_fmac_f32_e32 v46, v188, v140
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v39, v83, v83 :: v_dual_max_f32 v40, v82, v82
	v_dual_max_f32 v41, v81, v81 :: v_dual_max_f32 v42, v80, v80
	v_max_f32_e32 v43, v79, v79
	v_dual_max_f32 v25, v93, v93 :: v_dual_max_f32 v26, v92, v92
	v_dual_max_f32 v27, v91, v91 :: v_dual_max_f32 v28, v90, v90
	v_dual_max_f32 v29, v89, v89 :: v_dual_max_f32 v40, 0, v40
	v_dual_max_f32 v41, 0, v41 :: v_dual_max_f32 v52, v71, v71
	v_dual_max_f32 v45, 0, v43 :: v_dual_max_f32 v44, v73, v73
	v_max_f32_e32 v43, v75, v75
	v_max_f32_e32 v61, v70, v70
	v_dual_max_f32 v1, v37, v37 :: v_dual_max_f32 v4, v122, v122
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, v88, v88 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v86, v86 :: v_dual_max_f32 v31, v87, v87
	v_dual_max_f32 v38, v84, v84 :: v_dual_max_f32 v37, v85, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v63, v69, v69
	v_max_f32_e32 v84, 0, v44
	v_dual_max_f32 v85, 0, v52 :: v_dual_max_f32 v62, v62, v62
	v_max_f32_e32 v44, v67, v67
	v_dual_max_f32 v83, 0, v43 :: v_dual_max_f32 v86, 0, v61
	v_dual_max_f32 v52, v66, v66 :: v_dual_max_f32 v61, v64, v64
	v_max_f32_e32 v43, v68, v68
	v_dual_max_f32 v15, v103, v103 :: v_dual_max_f32 v16, v102, v102
	v_max_f32_e32 v19, v99, v99
	v_dual_max_f32 v87, 0, v63 :: v_dual_max_f32 v88, 0, v44
	v_dual_max_f32 v89, 0, v52 :: v_dual_max_f32 v44, v59, v59
	v_max_f32_e32 v90, 0, v61
	v_dual_max_f32 v66, 0, v43 :: v_dual_max_f32 v91, 0, v62
	v_max_f32_e32 v56, v56, v56
	v_dual_max_f32 v43, v60, v60 :: v_dual_max_f32 v52, v58, v58
	v_dual_max_f32 v5, v121, v121 :: v_dual_max_f32 v6, v120, v120
	v_dual_max_f32 v7, v119, v119 :: v_dual_max_f32 v8, v118, v118
	v_max_f32_e32 v9, v116, v116
	v_dual_max_f32 v17, v101, v101 :: v_dual_max_f32 v18, v100, v100
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, v96, v96 :: v_dual_max_f32 v57, v57, v57
	v_dual_max_f32 v92, 0, v43 :: v_dual_max_f32 v93, 0, v44
	v_max_f32_e32 v44, v54, v54
	v_dual_max_f32 v96, 0, v56 :: v_dual_max_f32 v43, v55, v55
	v_dual_max_f32 v2, v125, v125 :: v_dual_max_f32 v3, v124, v124
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v110, v110 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v107, v107 :: v_dual_max_f32 v11, v108, v108
	v_dual_max_f32 v13, v105, v105 :: v_dual_max_f32 v14, v104, v104
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v20, v98, v98
	v_dual_max_f32 v21, v97, v97 :: v_dual_max_f32 v24, v94, v94
	v_dual_max_f32 v23, v95, v95 :: v_dual_max_f32 v94, 0, v52
	v_max_f32_e32 v95, 0, v57
	v_dual_max_f32 v52, v53, v53 :: v_dual_max_f32 v51, v51, v51
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v97, 0, v43
	v_dual_max_f32 v98, 0, v44 :: v_dual_max_f32 v43, v49, v49
	v_dual_max_f32 v44, v48, v48 :: v_dual_max_f32 v47, v47, v47
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v102, 0, v43 :: v_dual_max_f32 v1, 0, v1
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
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v39, 0, v39
	v_dual_max_f32 v42, 0, v42 :: v_dual_max_f32 v99, 0, v52
	v_dual_max_f32 v100, 0, v51 :: v_dual_max_f32 v101, 0, v50
	v_dual_max_f32 v103, 0, v44 :: v_dual_max_f32 v104, 0, v47
	v_dual_max_f32 v105, 0, v46 :: v_dual_max_f32 v106, 0, v33
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v68, v1, v1 :: v_dual_mul_f32 v73, v3, v3
	v_dual_mul_f32 v70, v2, v2 :: v_dual_mul_f32 v81, v7, v7
	v_dual_mul_f32 v74, v4, v4 :: v_dual_mul_f32 v77, v6, v6
	v_dual_mul_f32 v76, v5, v5 :: v_dual_mul_f32 v79, v10, v10
	v_dual_mul_f32 v82, v8, v8 :: v_dual_mul_f32 v71, v14, v14
	v_dual_mul_f32 v80, v9, v9 :: v_dual_mul_f32 v75, v12, v12
	v_dual_mul_f32 v78, v11, v11 :: v_dual_mul_f32 v67, v16, v16
	v_dual_mul_f32 v72, v13, v13 :: v_dual_mul_f32 v69, v15, v15
	v_dual_mul_f32 v65, v17, v17 :: v_dual_mul_f32 v64, v18, v18
	v_dual_mul_f32 v63, v19, v19 :: v_dual_mul_f32 v62, v20, v20
	v_dual_mul_f32 v61, v21, v21 :: v_dual_mul_f32 v60, v22, v22
	v_dual_mul_f32 v59, v23, v23 :: v_dual_mul_f32 v58, v24, v24
	v_dual_mul_f32 v57, v25, v25 :: v_dual_mul_f32 v56, v26, v26
	v_dual_mul_f32 v55, v27, v27 :: v_dual_mul_f32 v54, v28, v28
	v_dual_mul_f32 v53, v29, v29 :: v_dual_mul_f32 v52, v30, v30
	v_dual_mul_f32 v51, v31, v31 :: v_dual_mul_f32 v50, v32, v32
	v_dual_mul_f32 v49, v37, v37 :: v_dual_mul_f32 v48, v38, v38
	v_dual_mul_f32 v47, v39, v39 :: v_dual_mul_f32 v46, v40, v40
	v_dual_mul_f32 v44, v41, v41 :: v_dual_mul_f32 v43, v42, v42
	v_dual_mul_f32 v42, v45, v45 :: v_dual_mul_f32 v41, v83, v83
	v_dual_mul_f32 v40, v84, v84 :: v_dual_mul_f32 v39, v85, v85
	v_dual_mul_f32 v38, v86, v86 :: v_dual_mul_f32 v37, v87, v87
	v_dual_mul_f32 v33, v66, v66 :: v_dual_mul_f32 v32, v88, v88
	v_dual_mul_f32 v30, v89, v89 :: v_dual_mul_f32 v29, v90, v90
	v_dual_mul_f32 v27, v91, v91 :: v_dual_mul_f32 v26, v92, v92
	v_dual_mul_f32 v25, v93, v93 :: v_dual_mul_f32 v20, v96, v96
	v_dual_mul_f32 v23, v94, v94 :: v_dual_mul_f32 v16, v100, v100
	v_dual_mul_f32 v21, v95, v95 :: v_dual_mul_f32 v18, v98, v98
	v_dual_mul_f32 v19, v97, v97 :: v_dual_mul_f32 v14, v102, v102
	v_dual_mul_f32 v17, v99, v99 :: v_dual_mul_f32 v12, v104, v104
	v_dual_mul_f32 v15, v101, v101 :: v_dual_mul_f32 v10, v106, v106
	v_dual_mul_f32 v13, v103, v103 :: v_dual_mov_b32 v8, v36
	v_mul_f32_e32 v11, v105, v105
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 7, v35
	v_and_b32_e32 v7, 63, v0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v31, v81, v82, v80
	v_dual_max_f32 v36, v48, v48 :: v_dual_max_f32 v45, v49, v49
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
	v_add_co_u32 v83, s1, s72, v22
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s1
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
	v_cmp_le_i64_e64 s5, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	v_add_co_u32 v83, s10, s72, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s10
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
	v_cmp_le_i64_e64 s13, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	v_add_co_u32 v83, s18, s72, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s18
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
	v_max_f32_e32 v22, v64, v64
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s22
	v_add_co_u32 v85, s22, s72, v6
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v70, v70 :: v_dual_max_f32 v6, v68, v68
.Ltmp8:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[3:4]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v74, v76, v77
	v_max_f32_e32 v24, v65, v65
	v_max_f32_e32 v3, v6, v5
	v_max3_f32 v5, v79, v78, v75
	v_max3_f32 v6, v72, v71, v69
	v_max_f32_e32 v66, v27, v27
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v28, 36, v9
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v73, v4
.Ltmp12:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[83:84]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v5, v6, v67
	v_max_f32_e32 v5, v24, v22
	v_max3_f32 v6, v62, v61, v60
	v_max3_f32 v22, v56, v55, v54
	v_max3_f32 v24, v53, v52, v51
	v_max3_f32 v3, v3, v31, v4
	v_max3_f32 v4, v59, v58, v57
	v_max3_f32 v5, v5, v63, v6
	v_max3_f32 v31, v39, v38, v37
	v_max3_f32 v6, v22, v24, v50
	v_max_f32_e32 v22, v45, v36
	v_max3_f32 v24, v46, v44, v43
	v_max3_f32 v36, v33, v32, v30
	v_max_f32_e32 v45, v26, v26
	v_max3_f32 v4, v5, v4, v6
	v_max3_f32 v5, v42, v41, v40
	v_max3_f32 v6, v22, v47, v24
	v_max3_f32 v22, v31, v36, v29
	v_max_f32_e32 v24, v66, v45
	v_max3_f32 v31, v23, v21, v20
	v_max3_f32 v36, v16, v15, v14
	v_max3_f32 v45, v13, v12, v11
	v_max3_f32 v5, v6, v5, v22
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v66, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v19, v18, v17
	v_max3_f32 v22, v24, v25, v31
	v_max3_f32 v24, v36, v45, v10
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v36, v4, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v5, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s73, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[83:84]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v66, v66
.Ltmp19:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s27, s72, v28
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v36, v36
	v_dual_max_f32 v36, v45, v45 :: v_dual_and_b32 v45, 4, v0
	v_max3_f32 v6, v22, v6, v24
	v_dual_max_f32 v3, v3, v31 :: v_dual_and_b32 v22, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v5, v5, v36
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v31, 4, v0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v28
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v36, v22, 9, 0
	v_lshlrev_b32_e32 v66, 5, v22
	v_permlanex16_b32 v28, v6, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x60, v0
	v_and_b32_e32 v89, 8, v0
	v_lshl_add_u32 v36, v45, 2, v36
	v_and_or_b32 v87, 0x680, v31, v66
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v28, v28
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v88, 1, v35
	v_xor_b32_e32 v66, v66, v24
	v_lshl_add_u32 v36, v89, 4, v36
	v_lshrrev_b32_e32 v90, 3, v35
	v_xor_b32_e32 v87, v87, v24
	v_lshl_add_u32 v91, v45, 6, 0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v28
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v28, v36, v88, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v66, v91, v90, v87
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s27
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v28, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v66
.Ltmp30:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 34, v9
	v_or_b32_e32 v28, 32, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[83:84]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v87, s26, s72, v36
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v36, 30, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s31, s72, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v84, null, s73, 0, s31
	v_add_co_ci_u32_e64 v88, null, s73, 0, s26
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[85:86]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s31, s72, v36
	v_add_co_ci_u32_e64 v86, null, s73, 0, s31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[83:84]
.Ltmp31:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v83, v5 :: v_dual_mov_b32 v28, v3
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v3, v3, v3 :: v_dual_mov_b32 v36, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v28, v28 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v66, 28, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[85:86]
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v83, v83
.Ltmp37:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[85:86]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[87:88]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[87:88]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v5, v5, v83
	v_max_f32_e32 v28, v28, v28
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v88, 0, v35
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v83, v5 :: v_dual_max_f32 v28, v3, v28
.Ltmp40:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s72, v66
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v86, 24, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v66, v28
.Ltmp42:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v91.h, 0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v36, v4, v36 :: v_dual_add_nc_u32 v7, s72, v7
.Ltmp45:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s36
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v85, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
.Ltmp48:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v66, v66
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v66, 26, v9
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v85, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v36, v4
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v85, v4 :: v_dual_max_f32 v84, v6, v6
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v28, v3
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v83, v83
.Ltmp56:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s38, s72, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v66, v3
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v5, v5, v28
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v84, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v28, v5
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v87, v85, v85
.Ltmp63:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s39, s72, v86
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v84, v6
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v87
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v87, 1, v24
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v66 :: v_dual_max_f32 v28, v28, v28
.Ltmp70:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s73, 0, s39
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v84, v84
.Ltmp72:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v28 :: v_dual_lshlrev_b32 v28, 5, v45
	v_max_f32_e32 v6, v6, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp74:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[83:84]
	v_cmp_le_i64_e64 s40, s[74:75], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[85:86]
.Ltmp75:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v36, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v66, v36, v36
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v36, 4, v22
	v_lshlrev_b32_e32 v22, 3, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v66 :: v_dual_add_nc_u32 v45, 0, v36
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v66, v88, v87, v22
.Ltmp80:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v87, 22, v9
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v22, v45, v28, v22
	ds_store_b128 v66, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp82:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v28, 18, v9
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[3:6], v22
.Ltmp84:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v22, 20, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v87, s39, s72, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v88, null, s73, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s44, s72, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v84, null, s73, 0, s44
	v_add_co_u32 v85, s44, s72, v28
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v22, 16, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s73, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[83:84]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s48, s72, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v28, 0x2b8cbccc, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v9
	v_or_b32_e32 v22, 12, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[87:88]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v45, null, 0x40e00000, 0x40e00000, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s48, s72, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s73, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v45
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v87, s48, s72, v22
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v22, 10, v9
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s73, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s54, s72, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v66, -v45, v3, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v22, 8, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v3, v66, v3
	v_div_scale_f32 v66, vcc_lo, v28, 0x40e00000, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s54
	v_add_co_u32 v85, s54, s72, v22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[87:88]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v22, v66, v3
	v_max_f32_e32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[83:84]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v88, v87
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[83:84]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v83, -v45, v22, v66
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[85:86]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v85, 0x2b8cbccc, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v84, 6, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v22, v83, v3
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v83, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v85
	v_fma_f32 v4, -v87, v88, 1.0
	v_fma_f32 v45, -v45, v22, v66
	v_div_scale_f32 v66, s60, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v6
	v_fmac_f32_e32 v88, v4, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v45, v3, v22
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v84
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v45, v66, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v22, v22, 0x40e00000, v28
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v6, v86, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v28, -v87, v45, v66
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v86, v84, v86
	v_div_scale_f32 v84, s61, v85, 0x40e00000, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v28, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v22.h
	v_mov_b16_e32 v28.h, v91.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v92, v84, v86
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v93, -v89, v90, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v87, v45, v66
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v28
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v28, -v6, v92, v84
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v66, s62, v83, 0x40e00000, v83
	v_div_fmas_f32 v3, v3, v88, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v28, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v22, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v28, v66, v90
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	v_fma_f32 v5, -v6, v92, v84
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v87, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v6, -v89, v28, v66
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 4, v9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v91.l, v3.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v45, v5, v86, v92
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v87, v87, v68
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v28, v6, v90
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v86
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v4, -v89, v28, v66
	v_div_fixup_f32 v66, v45, 0x40e00000, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v87, v87, v70
	v_div_scale_f32 v93, null, v87, v87, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v90, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v89, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v86, v88, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v91
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, vcc_lo, v68, v87, v68
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v83.l, v66.h
	v_mov_b16_e32 v83.h, v91.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v45, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v3, v28, 0x7fff
	v_mov_b16_e32 v91.l, v4.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v94, null, v87, v87, v74
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v90, v88
	v_fma_f32 v83, -v85, v89, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v84, 1, v91
	v_add3_u32 v28, v66, v28, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v86, v92, v90
	v_fmac_f32_e32 v89, v83, v89
	v_rcp_f32_e32 v91, v93
	v_div_scale_f32 v95, s60, v70, v87, v70
	v_rcp_f32_e32 v96, v94
	v_fmac_f32_e32 v92, v66, v88
	v_div_scale_f32 v100, null, v87, v87, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v95, v89
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v84, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v86, v92, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v98, -v93, v91, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v85, v97, v95
	v_fma_f32 v99, -v94, v96, 1.0
	v_div_fmas_f32 v86, v86, v88, v92
	v_fmac_f32_e32 v91, v98, v91
	v_div_scale_f32 v98, s61, v73, v87, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v97, v90, v89 :: v_dual_fmac_f32 v96, v99, v96
	v_rcp_f32_e32 v90, v100
	v_div_scale_f32 v99, null, v87, v87, v77
	v_mul_f32_e32 v88, v98, v91
	v_div_scale_f32 v92, s62, v74, v87, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v101, v99
	v_div_fixup_f32 v68, v86, v87, v68
	v_fma_f32 v85, -v85, v97, v95
	v_fma_f32 v86, -v93, v88, v98
	v_mul_f32_e32 v95, v92, v96
	v_fma_f32 v102, -v100, v90, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v89, v97
	v_fmac_f32_e32 v88, v86, v91
	v_fma_f32 v86, -v94, v95, v92
	v_fmac_f32_e32 v90, v102, v90
	v_div_scale_f32 v89, s60, v76, v87, v76
	v_fma_f32 v97, -v99, v101, 1.0
	v_div_fixup_f32 v70, v85, v87, v70
	v_fma_f32 v85, -v93, v88, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v95, v86, v96 :: v_dual_mul_f32 v86, v89, v90
	v_fmac_f32_e32 v101, v97, v101
	v_div_scale_f32 v97, null, v87, v87, v81
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v93, s63, v77, v87, v77
	v_div_fmas_f32 v85, v85, v91, v88
	v_fma_f32 v88, -v94, v95, v92
	v_fma_f32 v91, -v100, v86, v89
	v_rcp_f32_e32 v92, v97
	v_div_scale_f32 v98, null, v87, v87, v82
	v_mul_f32_e32 v94, v93, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v91, v90
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v91, v98
	v_div_fmas_f32 v88, v88, v96, v95
	v_fma_f32 v95, -v99, v94, v93
	v_div_fixup_f32 v73, v85, v87, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v97, v92, 1.0
	v_fma_f32 v85, -v100, v86, v89
	v_div_fixup_f32 v74, v88, v87, v74
	v_fmac_f32_e32 v94, v95, v101
	v_div_scale_f32 v88, s61, v81, v87, v81
	v_fmac_f32_e32 v92, v96, v92
	v_fma_f32 v89, -v98, v91, 1.0
	v_div_scale_f32 v95, null, v87, v87, v80
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v96, null, v87, v87, v79
	v_div_fmas_f32 v85, v85, v90, v86
	v_fma_f32 v86, -v99, v94, v93
	v_dual_mul_f32 v90, v88, v92 :: v_dual_fmac_f32 v91, v89, v91
	v_rcp_f32_e32 v89, v95
	v_div_scale_f32 v93, s60, v82, v87, v82
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v76, v85, v87, v76
	v_div_fmas_f32 v86, v86, v101, v94
	v_fma_f32 v94, -v97, v90, v88
	v_mul_f32_e32 v99, v93, v91
	v_rcp_f32_e32 v101, v96
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v100, -v95, v89, 1.0
	v_fmac_f32_e32 v90, v94, v92
	v_fma_f32 v85, -v98, v99, v93
	v_div_scale_f32 v94, null, v87, v87, v78
	v_div_fixup_f32 v77, v86, v87, v77
	v_fmac_f32_e32 v89, v100, v89
	v_div_scale_f32 v86, s62, v80, v87, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v100, -v96, v101, 1.0
	v_fma_f32 v88, -v97, v90, v88
	v_fmac_f32_e32 v99, v85, v91
	v_rcp_f32_e32 v97, v94
	v_mul_f32_e32 v85, v86, v89
	v_fmac_f32_e32 v101, v100, v101
	v_div_scale_f32 v100, s63, v79, v87, v79
	v_div_fmas_f32 v88, v88, v92, v90
	v_fma_f32 v90, -v98, v99, v93
	v_div_scale_f32 v102, null, v87, v87, v75
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v92, -v95, v85, v86
	v_mul_f32_e32 v93, v100, v101
	v_fma_f32 v98, -v94, v97, 1.0
	v_div_fmas_f32 v90, v90, v91, v99
	v_rcp_f32_e32 v91, v102
	v_fmac_f32_e32 v85, v92, v89
	v_fma_f32 v92, -v96, v93, v100
	v_fmac_f32_e32 v97, v98, v97
	v_div_scale_f32 v98, s60, v78, v87, v78
	v_div_fixup_f32 v81, v88, v87, v81
	v_div_fixup_f32 v82, v90, v87, v82
	v_fma_f32 v86, -v95, v85, v86
	v_fmac_f32_e32 v93, v92, v101
	v_mul_f32_e32 v88, v98, v97
	v_fma_f32 v90, -v102, v91, 1.0
	v_div_scale_f32 v92, null, v87, v87, v72
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v95, s61, v75, v87, v75
	v_div_fmas_f32 v85, v86, v89, v85
	v_fma_f32 v86, -v96, v93, v100
	v_fma_f32 v89, -v94, v88, v98
	v_fmac_f32_e32 v91, v90, v91
	v_rcp_f32_e32 v90, v92
	v_div_scale_f32 v96, null, v87, v87, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v89, v97
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v80, v85, v87, v80
	v_rcp_f32_e32 v89, v96
	v_div_fmas_f32 v86, v86, v101, v93
	v_mul_f32_e32 v93, v95, v91
	v_fma_f32 v85, -v94, v88, v98
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v92, v90, 1.0
	v_div_scale_f32 v94, s62, v72, v87, v72
	v_div_fixup_f32 v79, v86, v87, v79
	v_fma_f32 v86, -v102, v93, v95
	v_fmac_f32_e32 v90, v99, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v89, 1.0
	v_div_scale_f32 v99, null, v87, v87, v69
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v93, v86, v91
	v_div_fmas_f32 v85, v85, v97, v88
	v_mul_f32_e32 v86, v94, v90
	v_fmac_f32_e32 v89, v98, v89
	v_rcp_f32_e32 v88, v99
	v_div_scale_f32 v98, null, v87, v87, v67
	v_div_scale_f32 v97, s60, v71, v87, v71
	v_div_fixup_f32 v78, v85, v87, v78
	v_fma_f32 v85, -v102, v93, v95
	v_fma_f32 v95, -v92, v86, v94
	v_rcp_f32_e32 v101, v98
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v100, v97, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v102, -v99, v88, 1.0
	v_div_fmas_f32 v85, v85, v91, v93
	v_fmac_f32_e32 v86, v95, v90
	v_div_scale_f32 v93, s61, v69, v87, v69
	v_fma_f32 v91, -v96, v100, v97
	v_fmac_f32_e32 v88, v102, v88
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v98, v101, 1.0
	v_div_fixup_f32 v75, v85, v87, v75
	v_fma_f32 v85, -v92, v86, v94
	v_div_scale_f32 v94, null, v84, v84, v65
	v_dual_fmac_f32 v100, v91, v89 :: v_dual_mul_f32 v91, v93, v88
	v_fmac_f32_e32 v101, v95, v101
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v95, v94
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s63, v67, v87, v67
	v_div_fmas_f32 v85, v85, v90, v86
	v_fma_f32 v86, -v96, v100, v97
	v_fma_f32 v90, -v99, v91, v93
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v96, v92, v101
	v_div_fixup_f32 v72, v85, v87, v72
	v_div_fmas_f32 v86, v86, v89, v100
	v_fmac_f32_e32 v91, v90, v88
	v_fma_f32 v100, -v94, v95, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v90, -v98, v96, v92
	v_div_fixup_f32 v71, v86, v87, v71
	v_fma_f32 v85, -v99, v91, v93
	v_fmac_f32_e32 v95, v100, v95
	v_div_scale_f32 v86, s60, v65, v84, v65
	v_fmac_f32_e32 v96, v90, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v85, v85, v88, v91
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v91, v86, v95
	v_div_scale_f32 v97, null, v84, v84, v64
	v_div_scale_f32 v93, null, v84, v84, v63
	v_fma_f32 v88, -v98, v96, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v97
	v_div_scale_f32 v92, s61, v64, v84, v64
	v_div_scale_f32 v98, null, v84, v84, v62
	v_div_fmas_f32 v88, v88, v101, v96
	v_fma_f32 v96, -v94, v91, v86
	v_div_fixup_f32 v69, v85, v87, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v101, v98
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v90, -v97, v89, 1.0
	v_fmac_f32_e32 v91, v96, v95
	v_div_fixup_f32 v67, v88, v87, v67
	v_div_scale_f32 v87, s62, v63, v84, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v90, v89
	v_rcp_f32_e32 v90, v93
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v66, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, null, v84, v84, v61
	v_mul_f32_e32 v99, v92, v89
	v_fma_f32 v96, -v98, v101, 1.0
	v_fma_f32 v86, -v94, v91, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v80, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v97, v99, v92
	v_fma_f32 v100, -v93, v90, 1.0
	v_fmac_f32_e32 v101, v96, v101
	v_div_scale_f32 v96, s63, v62, v84, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v99, v85, v89 :: v_dual_fmac_f32 v90, v100, v90
	v_div_fmas_f32 v86, v86, v95, v91
	v_div_scale_f32 v100, null, v84, v84, v60
	v_fma_f32 v91, -v97, v99, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v87, v90
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v95, v96, v101
	v_fma_f32 v97, -v88, v94, 1.0
	v_div_fmas_f32 v89, v91, v89, v99
	v_fma_f32 v92, -v93, v85, v87
	v_rcp_f32_e32 v91, v100
	v_div_fixup_f32 v65, v86, v84, v65
	v_fmac_f32_e32 v94, v97, v94
	v_div_scale_f32 v97, s60, v61, v84, v61
	v_fmac_f32_e32 v85, v92, v90
	v_fma_f32 v92, -v98, v95, v96
	v_div_fixup_f32 v64, v89, v84, v64
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v100, v91, 1.0
	v_fmac_f32_e32 v95, v92, v101
	v_div_scale_f32 v92, null, v84, v84, v59
	v_fma_f32 v86, -v93, v85, v87
	v_mul_f32_e32 v87, v97, v94
	v_fmac_f32_e32 v91, v89, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v93, s61, v60, v84, v60
	v_div_fmas_f32 v85, v86, v90, v85
	v_fma_f32 v86, -v98, v95, v96
	v_fma_f32 v90, -v88, v87, v97
	v_div_scale_f32 v96, null, v84, v84, v58
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v63, v85, v84, v63
	v_fmac_f32_e32 v87, v90, v94
	v_rcp_f32_e32 v90, v96
	v_fma_f32 v98, -v92, v89, 1.0
	v_div_fmas_f32 v86, v86, v101, v95
	v_mul_f32_e32 v95, v93, v91
	v_fma_f32 v85, -v88, v87, v97
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v98, null, v84, v84, v57
	v_div_fixup_f32 v62, v86, v84, v62
	v_fma_f32 v86, -v100, v95, v93
	v_div_scale_f32 v88, s62, v59, v84, v59
	v_fma_f32 v97, -v96, v90, 1.0
	v_div_fmas_f32 v85, v85, v94, v87
	v_rcp_f32_e32 v87, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v86, v91 :: v_dual_mul_f32 v86, v88, v89
	v_fmac_f32_e32 v90, v97, v90
	v_div_scale_f32 v94, s60, v58, v84, v58
	v_div_scale_f32 v97, null, v84, v84, v56
	v_div_fixup_f32 v61, v85, v84, v61
	v_fma_f32 v85, -v100, v95, v93
	v_fma_f32 v93, -v92, v86, v88
	v_mul_f32_e32 v99, v94, v90
	v_rcp_f32_e32 v100, v97
	v_fma_f32 v101, -v98, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v86, v93, v89
	v_div_fmas_f32 v85, v85, v91, v95
	v_fma_f32 v91, -v96, v99, v94
	v_fmac_f32_e32 v87, v101, v87
	v_div_scale_f32 v93, s61, v57, v84, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v60, v85, v84, v60
	v_fma_f32 v95, -v97, v100, 1.0
	v_fma_f32 v85, -v92, v86, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v99, v91, v90 :: v_dual_mul_f32 v88, v93, v87
	v_div_scale_f32 v92, null, v84, v84, v55
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v100, v95, v100
	v_div_scale_f32 v91, s63, v56, v84, v56
	v_div_fmas_f32 v85, v85, v89, v86
	v_fma_f32 v86, -v96, v99, v94
	v_fma_f32 v89, -v98, v88, v93
	v_rcp_f32_e32 v94, v92
	v_div_scale_f32 v96, null, v84, v84, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v95, v91, v100 :: v_dual_fmac_f32 v88, v89, v87
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v89, v96
	v_div_fmas_f32 v86, v86, v90, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v90, -v97, v95, v91
	v_div_fixup_f32 v59, v85, v84, v59
	v_fma_f32 v99, -v92, v94, 1.0
	v_fma_f32 v85, -v98, v88, v93
	v_div_fixup_f32 v58, v86, v84, v58
	v_fmac_f32_e32 v95, v90, v100
	v_div_scale_f32 v86, s60, v55, v84, v55
	v_fmac_f32_e32 v94, v99, v94
	v_fma_f32 v90, -v96, v89, 1.0
	v_div_scale_f32 v93, null, v84, v84, v53
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v101, null, v84, v84, v50
	v_div_fmas_f32 v85, v85, v87, v88
	v_fma_f32 v87, -v97, v95, v91
	v_mul_f32_e32 v88, v86, v94
	v_fmac_f32_e32 v89, v90, v89
	v_rcp_f32_e32 v90, v93
	v_div_scale_f32 v91, s61, v54, v84, v54
	v_div_scale_f32 v97, null, v84, v84, v52
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v98, v91, v89
	v_div_fmas_f32 v87, v87, v100, v95
	v_fma_f32 v95, -v92, v88, v86
	v_rcp_f32_e32 v100, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v93, v90, 1.0
	v_div_fixup_f32 v57, v85, v84, v57
	v_fma_f32 v85, -v96, v98, v91
	v_fmac_f32_e32 v88, v95, v94
	v_div_fixup_f32 v56, v87, v84, v56
	v_fmac_f32_e32 v90, v99, v90
	v_div_scale_f32 v87, s62, v53, v84, v53
	v_div_scale_f32 v95, null, v84, v84, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v97, v100, 1.0
	v_fma_f32 v86, -v92, v88, v86
	v_fmac_f32_e32 v98, v85, v89
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v85, v87, v90
	v_rcp_f32_e32 v92, v95
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s63, v52, v84, v52
	v_div_fmas_f32 v86, v86, v94, v88
	v_fma_f32 v88, -v96, v98, v91
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v91, -v93, v85, v87
	v_mul_f32_e32 v94, v99, v100
	v_div_fixup_f32 v55, v86, v84, v55
	v_div_fmas_f32 v88, v88, v89, v98
	v_rcp_f32_e32 v89, v101
	v_fma_f32 v96, -v95, v92, 1.0
	v_fmac_f32_e32 v85, v91, v90
	v_fma_f32 v91, -v97, v94, v99
	v_div_fixup_f32 v54, v88, v84, v54
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s60, v51, v84, v51
	v_fmac_f32_e32 v94, v91, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v101, v89, 1.0
	v_div_scale_f32 v91, null, v83, v83, v49
	v_fma_f32 v86, -v93, v85, v87
	v_mul_f32_e32 v87, v96, v92
	v_fmac_f32_e32 v89, v88, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v93, s61, v50, v84, v50
	v_div_fmas_f32 v85, v86, v90, v85
	v_fma_f32 v86, -v97, v94, v99
	v_fma_f32 v90, -v95, v87, v96
	v_div_scale_f32 v97, null, v83, v83, v48
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v53, v85, v84, v53
	v_fmac_f32_e32 v87, v90, v92
	v_rcp_f32_e32 v90, v97
	v_fma_f32 v98, -v91, v88, 1.0
	v_div_fmas_f32 v86, v86, v100, v94
	v_mul_f32_e32 v94, v93, v89
	v_fma_f32 v85, -v95, v87, v96
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v88, v98, v88
	v_div_scale_f32 v98, null, v83, v83, v47
	v_div_fixup_f32 v52, v86, v84, v52
	v_fma_f32 v86, -v101, v94, v93
	v_div_scale_f32 v95, s62, v49, v83, v49
	v_fma_f32 v96, -v97, v90, 1.0
	v_div_fmas_f32 v85, v85, v92, v87
	v_rcp_f32_e32 v87, v98
	v_fmac_f32_e32 v94, v86, v89
	v_mul_f32_e32 v86, v95, v88
	v_fmac_f32_e32 v90, v96, v90
	v_div_scale_f32 v92, s60, v48, v83, v48
	v_div_scale_f32 v96, null, v83, v83, v46
	v_div_fixup_f32 v51, v85, v84, v51
	v_fma_f32 v85, -v101, v94, v93
	v_fma_f32 v93, -v91, v86, v95
	v_mul_f32_e32 v99, v92, v90
	v_rcp_f32_e32 v100, v96
	v_fma_f32 v101, -v98, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v86, v93, v88
	v_div_fmas_f32 v85, v85, v89, v94
	v_fma_f32 v89, -v97, v99, v92
	v_fmac_f32_e32 v87, v101, v87
	v_div_scale_f32 v93, s61, v47, v83, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v85, v84, v50
	v_fma_f32 v94, -v96, v100, 1.0
	v_fma_f32 v84, -v91, v86, v95
	v_fmac_f32_e32 v99, v89, v90
	v_mul_f32_e32 v85, v93, v87
	v_div_scale_f32 v91, null, v83, v83, v44
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v100, v94, v100
	v_div_scale_f32 v89, s63, v46, v83, v46
	v_div_fmas_f32 v84, v84, v88, v86
	v_fma_f32 v86, -v97, v99, v92
	v_fma_f32 v88, -v98, v85, v93
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v95, null, v83, v83, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v94, v89, v100 :: v_dual_fmac_f32 v85, v88, v87
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v86, v86, v90, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v90, -v96, v94, v89
	v_div_fixup_f32 v49, v84, v83, v49
	v_fma_f32 v97, -v91, v92, 1.0
	v_fma_f32 v84, -v98, v85, v93
	v_div_fixup_f32 v48, v86, v83, v48
	v_fmac_f32_e32 v94, v90, v100
	v_div_scale_f32 v86, s60, v44, v83, v44
	v_fmac_f32_e32 v92, v97, v92
	v_fma_f32 v90, -v95, v88, 1.0
	v_div_scale_f32 v93, null, v83, v83, v42
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v96, v94, v89
	v_mul_f32_e32 v87, v86, v92
	v_fmac_f32_e32 v88, v90, v88
	v_rcp_f32_e32 v89, v93
	v_div_scale_f32 v90, s61, v43, v83, v43
	v_div_scale_f32 v96, null, v83, v83, v41
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v97, v90, v88
	v_div_fmas_f32 v85, v85, v100, v94
	v_fma_f32 v94, -v91, v87, v86
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v93, v89, 1.0
	v_div_fixup_f32 v47, v84, v83, v47
	v_fma_f32 v84, -v95, v97, v90
	v_fmac_f32_e32 v87, v94, v92
	v_div_scale_f32 v94, null, v83, v83, v40
	v_div_fixup_f32 v46, v85, v83, v46
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v85, s62, v42, v83, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v86, -v91, v87, v86
	v_fmac_f32_e32 v97, v84, v88
	v_rcp_f32_e32 v91, v94
	s_mov_b32 vcc_lo, s60
	v_dual_mul_f32 v84, v85, v89 :: v_dual_fmac_f32 v99, v98, v99
	v_div_scale_f32 v98, s63, v41, v83, v41
	v_div_fmas_f32 v86, v86, v92, v87
	v_fma_f32 v87, -v95, v97, v90
	v_div_scale_f32 v100, null, v83, v83, v39
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v90, -v93, v84, v85
	v_mul_f32_e32 v92, v98, v99
	v_fma_f32 v95, -v94, v91, 1.0
	v_div_fmas_f32 v87, v87, v88, v97
	v_rcp_f32_e32 v88, v100
	v_fmac_f32_e32 v84, v90, v89
	v_fma_f32 v90, -v96, v92, v98
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s60, v40, v83, v40
	v_div_fixup_f32 v44, v86, v83, v44
	v_div_fixup_f32 v43, v87, v83, v43
	v_fma_f32 v85, -v93, v84, v85
	v_fmac_f32_e32 v92, v90, v99
	v_mul_f32_e32 v86, v95, v91
	v_fma_f32 v87, -v100, v88, 1.0
	v_div_scale_f32 v90, null, v83, v83, v38
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v93, s61, v39, v83, v39
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v96, v92, v98
	v_fma_f32 v89, -v94, v86, v95
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v96, null, v83, v83, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v89, v91
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v42, v84, v83, v42
	v_rcp_f32_e32 v89, v96
	v_div_fmas_f32 v85, v85, v99, v92
	v_mul_f32_e32 v92, v93, v88
	v_fma_f32 v84, -v94, v86, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v41, v85, v83, v41
	v_fma_f32 v85, -v100, v92, v93
	v_div_scale_f32 v94, s62, v38, v83, v38
	v_fmac_f32_e32 v87, v97, v87
	v_fma_f32 v95, -v96, v89, 1.0
	v_div_scale_f32 v97, null, v83, v83, v33
	v_div_fmas_f32 v84, v84, v91, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v85, v88 :: v_dual_fmac_f32 v89, v95, v89
	v_rcp_f32_e32 v86, v97
	v_div_scale_f32 v95, null, v83, v83, v32
	v_mul_f32_e32 v85, v94, v87
	v_div_scale_f32 v91, s60, v37, v83, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v99, v95
	v_div_fixup_f32 v40, v84, v83, v40
	v_fma_f32 v84, -v100, v92, v93
	v_fma_f32 v93, -v90, v85, v94
	v_mul_f32_e32 v98, v91, v89
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v92
	v_fmac_f32_e32 v85, v93, v87
	v_fma_f32 v88, -v96, v98, v91
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s61, v33, v83, v33
	v_fma_f32 v93, -v95, v99, 1.0
	v_div_fixup_f32 v39, v84, v83, v39
	v_fma_f32 v84, -v90, v85, v94
	v_fmac_f32_e32 v98, v88, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v88, v92, v86 :: v_dual_fmac_f32 v99, v93, v99
	v_div_scale_f32 v93, null, v83, v83, v30
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s63, v32, v83, v32
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v96, v98, v91
	v_fma_f32 v87, -v97, v88, v92
	v_rcp_f32_e32 v91, v93
	v_div_scale_f32 v96, null, v83, v83, v29
	v_mul_f32_e32 v94, v90, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v87, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v96
	v_div_fmas_f32 v85, v85, v89, v98
	v_fma_f32 v89, -v95, v94, v90
	v_div_fixup_f32 v38, v84, v83, v38
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v93, v91, 1.0
	v_fma_f32 v84, -v97, v88, v92
	v_div_fixup_f32 v37, v85, v83, v37
	v_fmac_f32_e32 v94, v89, v99
	v_div_scale_f32 v85, s60, v30, v83, v30
	v_fmac_f32_e32 v91, v98, v91
	v_fma_f32 v89, -v96, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v97, null, v66, v66, v26
	v_div_fmas_f32 v84, v84, v86, v88
	v_fma_f32 v86, -v95, v94, v90
	v_mul_f32_e32 v88, v85, v91
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, null, v66, v66, v27
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v90, s61, v29, v83, v29
	v_div_fmas_f32 v86, v86, v99, v94
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v94, -v93, v88, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v95, v90, v87
	v_div_fixup_f32 v33, v84, v83, v33
	v_div_fixup_f32 v32, v86, v83, v32
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v88, v94, v91
	v_fma_f32 v84, -v96, v95, v90
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v99, null, v66, v66, v23
	v_fma_f32 v94, -v89, v92, 1.0
	v_fma_f32 v85, -v93, v88, v85
	v_div_scale_f32 v93, null, v66, v66, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v84, v87 :: v_dual_fmac_f32 v92, v94, v92
	v_div_scale_f32 v84, s62, v27, v66, v27
	v_rcp_f32_e32 v94, v93
	v_fma_f32 v98, -v97, v86, 1.0
	v_div_fmas_f32 v85, v85, v91, v88
	v_fma_f32 v88, -v96, v95, v90
	v_mul_f32_e32 v90, v84, v92
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v86, v98, v86
	v_div_scale_f32 v91, s60, v26, v66, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v98, -v89, v90, v84
	v_fma_f32 v96, -v93, v94, 1.0
	v_rcp_f32_e32 v101, v99
	v_div_fmas_f32 v87, v88, v87, v95
	v_mul_f32_e32 v100, v91, v86
	v_fmac_f32_e32 v90, v98, v92
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s63, v25, v66, v25
	v_div_fixup_f32 v30, v85, v83, v30
	v_div_fixup_f32 v29, v87, v83, v29
	v_fma_f32 v83, -v89, v90, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v96, v94
	v_div_scale_f32 v87, null, v66, v66, v21
	v_fma_f32 v88, -v97, v100, v91
	v_fma_f32 v85, -v99, v101, 1.0
	v_fma_f32 v84, -v93, v95, v96
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v100, v88, v86 :: v_dual_fmac_f32 v101, v85, v101
	v_fmac_f32_e32 v95, v84, v94
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s61, v23, v66, v23
	v_div_fmas_f32 v83, v83, v92, v90
	v_fma_f32 v88, -v97, v100, v91
	v_div_scale_f32 v90, null, v66, v66, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v89, v85, v101
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v27, v83, v66, v27
	v_fma_f32 v91, -v87, v84, 1.0
	v_div_fmas_f32 v86, v88, v86, v100
	v_fma_f32 v88, -v93, v95, v96
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v93, -v99, v89, v85
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s60, v21, v66, v21
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v89, v93, v101
	v_div_fmas_f32 v88, v88, v94, v95
	v_mul_f32_e32 v83, v91, v84
	v_div_fixup_f32 v26, v86, v66, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v90, v92, 1.0
	v_fma_f32 v85, -v99, v89, v85
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v93, -v87, v83, v91
	v_div_fixup_f32 v25, v88, v66, v25
	v_div_scale_f32 v88, null, v66, v66, v19
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, s62, v20, v66, v20
	v_div_fmas_f32 v85, v85, v101, v89
	v_fmac_f32_e32 v83, v93, v84
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v86, v92
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v23, v85, v66, v23
	v_fma_f32 v85, -v87, v83, v91
	v_div_scale_f32 v93, null, v66, v66, v18
	v_fma_f32 v87, -v90, v89, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v85, v84, v83
	v_div_scale_f32 v84, null, v66, v66, v17
	v_fma_f32 v91, -v88, v94, 1.0
	v_rcp_f32_e32 v95, v93
	v_fmac_f32_e32 v89, v87, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v87, v84
	v_div_scale_f32 v85, s60, v19, v66, v19
	v_fmac_f32_e32 v94, v91, v94
	v_div_scale_f32 v91, null, v66, v66, v16
	v_div_fixup_f32 v21, v83, v66, v21
	v_fma_f32 v86, -v90, v89, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v93, v95, 1.0
	v_rcp_f32_e32 v97, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v84, v87, 1.0
	v_mul_f32_e32 v90, v85, v94
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v95, v83, v95
	v_div_scale_f32 v83, s61, v18, v66, v18
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v96, null, v66, v66, v15
	v_div_fmas_f32 v86, v86, v92, v89
	v_fma_f32 v89, -v88, v90, v85
	v_mul_f32_e32 v92, v83, v95
	v_div_scale_f32 v98, s62, v17, v66, v17
	v_fma_f32 v99, -v91, v97, 1.0
	v_rcp_f32_e32 v100, v96
	v_fmac_f32_e32 v90, v89, v94
	v_fma_f32 v89, -v93, v92, v83
	v_mul_f32_e32 v101, v98, v87
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, s63, v16, v66, v16
	v_div_fixup_f32 v20, v86, v66, v20
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
	v_div_scale_f32 v89, s60, v15, v66, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v84, v101, v98
	v_fmac_f32_e32 v88, v86, v97
	v_div_fmas_f32 v85, v85, v94, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v86, v89, v100
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v90, null, v66, v66, v14
	v_div_fmas_f32 v83, v83, v95, v92
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v19, v85, v66, v19
	v_div_fmas_f32 v84, v84, v87, v101
	v_fma_f32 v87, -v91, v88, v99
	v_fma_f32 v91, -v96, v86, v89
	v_rcp_f32_e32 v92, v90
	v_div_fixup_f32 v18, v83, v66, v18
	v_div_fixup_f32 v17, v84, v66, v17
	v_div_scale_f32 v84, null, v66, v66, v13
	v_fmac_f32_e32 v86, v91, v100
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v94, null, v66, v66, v10
	v_div_fmas_f32 v87, v87, v97, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v83, -v96, v86, v89
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v85, -v90, v92, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fixup_f32 v16, v87, v66, v16
	v_div_fmas_f32 v83, v83, v100, v86
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v88, vcc_lo, v14, v66, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v15, v83, v66, v15
	v_div_scale_f32 v85, null, v66, v66, v12
	v_mul_f32_e32 v93, v88, v92
	v_div_scale_f32 v87, null, v66, v66, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v84, v86, 1.0
	v_rcp_f32_e32 v89, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v97, -v90, v93, v88
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v100, -v94, v96, 1.0
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, s60, v13, v66, v13
	v_fmac_f32_e32 v93, v97, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v100, v96
	v_div_scale_f32 v100, s63, v10, v66, v10
	v_mul_f32_e32 v99, v83, v86
	v_fma_f32 v95, -v85, v89, 1.0
	v_fma_f32 v88, -v90, v93, v88
	v_fma_f32 v98, -v87, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v84, v99, v83
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v95, s61, v12, v66, v12
	v_div_fmas_f32 v88, v88, v92, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v99, v97, v86
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fmac_f32_e32 v91, v98, v91
	v_div_scale_f32 v98, s62, v11, v66, v11
	v_fma_f32 v83, -v84, v99, v83
	v_mul_f32_e32 v101, v95, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v86, v99
	v_mul_f32_e32 v102, v98, v91
	v_fma_f32 v90, -v85, v101, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v83, v66, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v103, v100, v96
	v_fmac_f32_e32 v101, v90, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_cvt_i32_f32_e32 v90, v47
	v_and_b32_e32 v47, 15, v60
	v_and_b32_e32 v60, 15, v40
	v_and_b32_e32 v40, 15, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v23, 13, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v87, v102, v98
	v_fma_f32 v84, -v94, v103, v100
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v102, v97, v91 :: v_dual_fmac_f32 v103, v84, v96
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v85, v101, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v106, v13
	v_and_b32_e32 v13, 15, v27
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v27, 64, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v87, v102, v98
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v86, -v94, v103, v100
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v89, v101
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v91, v102
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v98, v21
	v_cvt_i32_f32_e32 v99, v20
	v_and_b32_e32 v20, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v90, 16, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v21, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v25, 0x2f0, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v86, v86, v96, v103
	v_div_fixup_f32 v14, v88, v66, v14
	v_div_fixup_f32 v12, v85, v66, v12
	v_div_fixup_f32 v11, v84, v66, v11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v86, v66, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_cvt_i32_f32_e32 v83, v62
	v_cvt_i32_f32_e32 v88, v51
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v102, v17
	v_and_b32_e32 v17, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v26, 8, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v70, v73
	v_rndne_f32_e32 v73, v74
	v_rndne_f32_e32 v74, v76
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_cvt_i32_f32_e32 v96, v38
	v_and_b32_e32 v38, 15, v83
	v_and_b32_e32 v83, 15, v88
	v_and_b32_e32 v88, 15, v29
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v29, 3, v35
	v_and_or_b32 v23, 0xe000, v23, v26
	v_xor_b32_e32 v25, v25, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v77
	v_rndne_f32_e32 v77, v81
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v80, v80, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v49, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v23, v23, v29, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v79
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v39, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v107, v12
	v_cvt_i32_f32_e32 v108, v11
	v_cvt_i32_f32_e32 v109, v10
	v_and_b32_e32 v10, 15, v66
	v_and_b32_e32 v11, 15, v65
	v_and_b32_e32 v12, 15, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v25, 0, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v81, v82
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v92, v43
	v_cvt_i32_f32_e32 v93, v42
	v_cvt_i32_f32_e32 v94, v41
	v_cvt_i32_f32_e32 v33, v33
	v_and_b32_e32 v41, 15, v74
	v_and_b32_e32 v42, 15, v61
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v79, v79, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_cvt_i32_f32_e32 v84, v58
	v_cvt_i32_f32_e32 v103, v16
	v_cvt_i32_f32_e32 v104, v15
	v_cvt_i32_f32_e32 v105, v14
	v_and_b32_e32 v14, 15, v68
	v_and_b32_e32 v58, 15, v80
	v_and_b32_e32 v15, 15, v64
	v_and_b32_e32 v51, 15, v59
	v_and_b32_e32 v59, 15, v57
	v_and_b32_e32 v16, 15, v48
	v_and_b32_e32 v61, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v25, v[10:13]
	ds_store_b128 v25, v[41:44] offset:256
	v_xad_u32 v10, v23, 16, 0
	v_lshlrev_b32_e32 v11, 6, v0
	v_lshlrev_b32_e32 v12, 5, v24
	v_cndmask_b32_e64 v13, 0x2010, 0, s2
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v81, v81, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_cvt_i32_f32_e32 v89, v50
	v_cvt_i32_f32_e32 v91, v46
	v_cvt_i32_f32_e32 v101, v18
	v_and_b32_e32 v18, 15, v70
	v_and_b32_e32 v46, 15, v76
	v_and_b32_e32 v50, 15, v77
	v_and_b32_e32 v70, 15, v75
	v_and_b32_e32 v74, 15, v72
	v_and_b32_e32 v75, 15, v53
	v_and_b32_e32 v48, 15, v92
	v_and_b32_e32 v76, 15, v33
	v_and_b32_e32 v49, 15, v99
	v_and_b32_e32 v77, 15, v106
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v95, v39
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v25, v[58:61] offset:2048
	ds_store_b128 v25, v[74:77] offset:2304
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[46:49] offset:256
	v_lshlrev_b32_e32 v15, 2, v90
	v_and_or_b32 v11, 0x300, v11, v12
	v_xor_b32_e32 v12, v13, v36
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v81
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v85, v55
	v_cvt_i32_f32_e32 v87, v54
	v_cvt_i32_f32_e32 v97, v37
	v_cvt_i32_f32_e32 v100, v19
	v_and_b32_e32 v62, 15, v79
	v_and_b32_e32 v19, 15, v63
	v_and_b32_e32 v63, 15, v56
	v_and_b32_e32 v64, 15, v95
	v_and_b32_e32 v65, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v27, v12, v11, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_and_b32_e32 v54, 15, v81
	v_and_b32_e32 v66, 15, v78
	v_and_b32_e32 v78, 15, v71
	v_and_b32_e32 v79, 15, v52
	v_and_b32_e32 v80, 15, v32
	v_and_b32_e32 v81, 15, v107
	v_and_b32_e32 v37, 15, v73
	v_and_b32_e32 v82, 15, v69
	v_and_b32_e32 v86, 15, v67
	v_and_b32_e32 v67, 15, v85
	v_and_b32_e32 v71, 15, v87
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v69, 15, v104
	v_and_b32_e32 v73, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v14, v23, 32, 0
	ds_store_b128 v10, v[62:65] offset:2048
	ds_store_b128 v10, v[78:81] offset:2304
	v_xad_u32 v10, v23, 48, 0
	v_xad_u32 v33, 0x4020, v27, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v87, 15, v89
	v_and_b32_e32 v52, 15, v93
	v_and_b32_e32 v84, 15, v30
	v_and_b32_e32 v53, 15, v100
	v_and_b32_e32 v85, 15, v108
	v_and_b32_e32 v89, 15, v109
	v_and_b32_e32 v39, 15, v91
	v_and_b32_e32 v56, 15, v94
	v_and_b32_e32 v57, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v43, 0x8040, v27, 0
	ds_store_b128 v14, v[18:21]
	ds_store_b128 v14, v[50:53] offset:256
	ds_store_b128 v14, v[66:69] offset:2048
	ds_store_b128 v14, v[82:85] offset:2304
	ds_store_b128 v10, v[37:40]
	ds_store_b128 v10, v[54:57] offset:256
	ds_store_b128 v10, v[70:73] offset:2048
	ds_store_b128 v10, v[86:89] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v33
	ds_load_b128 v[35:38], v33 offset:128
	ds_load_b128 v[39:42], v33 offset:4096
	ds_load_b128 v[46:49], v33 offset:4224
	v_add_nc_u32_e32 v23, 0, v27
	v_xad_u32 v27, 0xc060, v27, 0
	ds_load_b128 v[50:53], v43
	ds_load_b128 v[54:57], v43 offset:128
	ds_load_b128 v[58:61], v43 offset:4096
	ds_load_b128 v[62:65], v43 offset:4224
	ds_load_b128 v[66:69], v27 offset:4096
	ds_load_b128 v[70:73], v27
	ds_load_b128 v[74:77], v27 offset:128
	ds_load_b128 v[78:81], v27 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v45, 2, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[10:13], v23
	ds_load_b128 v[14:17], v23 offset:128
	ds_load_b128 v[18:21], v23 offset:4096
	ds_load_b128 v[23:26], v23 offset:4224
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v28.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v43, s2, s72, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v44, null, s73, 0, s2
	v_add_co_u32 v82, s2, s72, v9
	v_add_co_ci_u32_e64 v83, null, s73, 0, s2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s72, v9
	v_lshl_or_b32 v5, s79, 7, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(12)
	v_lshl_or_b32 v46, v46, 4, v35
	v_lshl_or_b32 v48, v48, 4, v37
	v_lshl_or_b32 v49, v49, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 42, v6
	v_add_nc_u32_e32 v37, 44, v6
	v_add_nc_u32_e32 v38, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[82:83]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v83, v39, 4, v29
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 48, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v54, v62, 4, v54
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v40, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 50, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v36
	v_lshl_or_b32 v55, v63, 4, v55
	v_lshl_or_b32 v63, v79, 4, v75
	v_lshl_or_b32 v75, v41, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v41, 52, v6
	v_mad_u64_u32 v[35:36], null, v35, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	v_lshl_or_b32 v64, v80, 4, v76
	v_lshl_or_b32 v76, v42, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v42, 54, v6
	v_mad_u64_u32 v[36:37], null, v37, s73, v[5:6]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[43:44]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[43:44]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v43, 56, v6
	v_mad_u64_u32 v[37:38], null, v38, s73, v[5:6]
	v_add_nc_u32_e32 v44, 58, v6
	v_mad_u64_u32 v[38:39], null, v39, s73, v[5:6]
	v_add_nc_u32_e32 v45, 60, v6
	v_mad_u64_u32 v[39:40], null, v40, s73, v[5:6]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[5:6]
	v_mad_u64_u32 v[41:42], null, v42, s73, v[5:6]
	v_mad_u64_u32 v[42:43], null, v43, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v82, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 2, v6
	v_mad_u64_u32 v[43:44], null, v44, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[44:45], null, v45, s73, v[5:6]
	v_add_nc_u32_e32 v11, 4, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 6, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v72, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 8, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v66, v23, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 10, v6
	v_mad_u64_u32 v[8:9], null, v6, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v24, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 12, v6
	v_mad_u64_u32 v[9:10], null, v10, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v25, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 14, v6
	v_mad_u64_u32 v[10:11], null, v11, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v61, v69, 4, v73
	v_lshl_or_b32 v69, v26, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 16, v6
	v_mad_u64_u32 v[11:12], null, v12, s73, v[5:6]
	v_add_nc_u32_e32 v18, 18, v6
	v_add_nc_u32_e32 v23, 26, v6
	v_add_nc_u32_e32 v29, 34, v6
	v_mad_u64_u32 v[12:13], null, v13, s73, v[5:6]
	v_add_nc_u32_e32 v19, 20, v6
	v_add_nc_u32_e32 v25, 28, v6
	v_add_nc_u32_e32 v31, 36, v6
	v_mad_u64_u32 v[13:14], null, v14, s73, v[5:6]
	v_add_nc_u32_e32 v20, 22, v6
	v_add_nc_u32_e32 v26, 30, v6
	v_add_nc_u32_e32 v32, 38, v6
	v_mad_u64_u32 v[14:15], null, v15, s73, v[5:6]
	v_add_nc_u32_e32 v21, 24, v6
	v_add_nc_u32_e32 v27, 32, v6
	v_add_nc_u32_e32 v33, 40, v6
	v_add_nc_u32_e32 v73, 62, v6
	v_mad_u64_u32 v[15:16], null, v16, s73, v[5:6]
	v_mad_u64_u32 v[16:17], null, v17, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[17:18], null, v18, s73, v[5:6]
	v_mad_u64_u32 v[23:24], null, v23, s73, v[5:6]
	v_mad_u64_u32 v[29:30], null, v29, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[18:19], null, v19, s73, v[5:6]
	v_mad_u64_u32 v[24:25], null, v25, s73, v[5:6]
	v_mad_u64_u32 v[30:31], null, v31, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s73, v[5:6]
	v_mad_u64_u32 v[25:26], null, v26, s73, v[5:6]
	v_mad_u64_u32 v[31:32], null, v32, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s60
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[20:21], null, v21, s73, v[5:6]
	v_mad_u64_u32 v[26:27], null, v27, s73, v[5:6]
	v_mad_u64_u32 v[32:33], null, v33, s73, v[5:6]
	v_mad_u64_u32 v[5:6], null, v73, s73, v[5:6]
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
	v_lshl_or_b32 v57, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v81, 4, v77
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
	buffer_store_b8 v50, v6, s[68:71], 0 offen
	buffer_store_b8 v58, v8, s[68:71], 0 offen
	buffer_store_b8 v66, v9, s[68:71], 0 offen
	buffer_store_b8 v46, v10, s[68:71], 0 offen
	buffer_store_b8 v54, v11, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v22.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
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
	buffer_store_b8 v62, v6, s[68:71], 0 offen
	buffer_store_b8 v70, v8, s[68:71], 0 offen
	buffer_store_b8 v74, v9, s[68:71], 0 offen
	buffer_store_b8 v51, v10, s[68:71], 0 offen
	buffer_store_b8 v59, v11, s[68:71], 0 offen
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
	buffer_store_b8 v67, v6, s[68:71], 0 offen
	buffer_store_b8 v47, v8, s[68:71], 0 offen
	buffer_store_b8 v55, v9, s[68:71], 0 offen
	buffer_store_b8 v63, v10, s[68:71], 0 offen
	buffer_store_b8 v71, v11, s[68:71], 0 offen
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
	v_cndmask_b32_e32 v11, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v75, v6, s[68:71], 0 offen
	buffer_store_b8 v52, v8, s[68:71], 0 offen
	buffer_store_b8 v60, v9, s[68:71], 0 offen
	buffer_store_b8 v68, v10, s[68:71], 0 offen
	buffer_store_b8 v48, v11, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v64, v8, s[68:71], 0 offen
	buffer_store_b8 v72, v9, s[68:71], 0 offen
	buffer_store_b8 v76, v10, s[68:71], 0 offen
	buffer_store_b8 v53, v11, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v43, vcc_lo
	s_clause 0x2
	buffer_store_b8 v61, v6, s[68:71], 0 offen
	buffer_store_b8 v69, v8, s[68:71], 0 offen
	buffer_store_b8 v49, v9, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v90
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v6, 3, v34
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v44, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v57, v10, s[68:71], 0 offen
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v65, v5, s[68:71], 0 offen
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
.Ltmp85:
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
		.amdhsa_next_free_sgpr 80
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17076
; TotalNumSgprs: 82
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 82
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
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
    .sgpr_count:     82
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
