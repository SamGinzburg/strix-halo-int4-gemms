	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_lshlrev_b32_e32 v90, 4, v0
	v_and_b32_e32 v89, 0x7f, v0
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
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v3, 8, v0
	v_lshlrev_b32_e32 v10, 4, v0
.Ltmp4:
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v8, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 50 is_stmt 0                ; ragged.py:0:50
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow394
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[6:7], 0x0
	s_load_b64 s[76:77], s[2:3], 0x0
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v25, 0x80, v0
	v_dual_mov_b32 v29, 0 :: v_dual_and_b32 v24, 15, v0
	v_lshrrev_b32_e32 v23, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v25
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v76, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s24, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s72, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	v_add_co_u32 v7, s0, s72, v24
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, s73, 0, s0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s14, s6, s4
	s_addc_u32 s15, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s25, s[14:15], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, vcc_lo, v7, 16
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v17, 0xf0, v0
	v_add_co_ci_u32_e64 v12, null, 0, v8, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[76:77], v[9:10]
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v13, vcc_lo, v7, 32
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, 0, v8, vcc_lo
	v_add_co_u32 v15, vcc_lo, v7, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v16, null, 0, v8, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[11:12]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_lshl_or_b32 v9, s79, 8, v0
	v_dual_mov_b32 v42, 0 :: v_dual_lshlrev_b32 v11, 2, v17
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v10, 32, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[13:14]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s9
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s9, s24, s78
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v14, s72, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[15:16]
	v_add3_u32 v15, 0, v11, v10
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s9, s25, v[9:10]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[1:2]
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v1, s72, v24
	v_or_b32_e32 v12, 0xf00, v0
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v11, 32, v14
	v_dual_mov_b32 v32, 0 :: v_dual_lshlrev_b32 v13, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_mul_lo_u32 v97, v11, s24
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v106, 0, v12
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[11:12], null, s78, 3, v[10:11]
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v13, 28, v13
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v91, v1, s34
	v_mul_lo_u32 v92, v2, s34
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v1, 0x70, v90
	v_bfe_i32 v2, v0, 3, 1
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v16, 16, v14
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v17, 1, v17
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v18, 48, v14
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v108, v15, v13
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[12:13], null, s78, 5, v[10:11]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[5:6]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v94, v4, s34
	v_cndmask_b32_e64 v4, 0x88, 0, s2
	v_and_or_b32 v1, 0x88, v2, v1
	v_lshrrev_b32_e32 v6, 1, v0
	v_mul_lo_u32 v95, v14, s24
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[13:14], null, s78, 6, v[10:11]
	v_mad_u64_u32 v[14:15], null, s78, 7, v[10:11]
	v_mul_lo_u32 v96, v16, s24
	v_mad_u64_u32 v[15:16], null, s78, 9, v[10:11]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[7:8]
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v109, 0, v17
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mad_u64_u32 v[16:17], null, s78, 10, v[10:11]
	v_mul_lo_u32 v98, v18, s24
	v_mad_u64_u32 v[17:18], null, s78, 11, v[10:11]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v93, v3, s34
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, 0, v24
	v_xor_b32_e32 v2, v4, v89
	v_xor_b32_e32 v4, 8, v1
	v_or_b32_e32 v5, 0x300, v0
	v_or_b32_e32 v7, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v6, 0x70, v6
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[18:19], null, s78, 12, v[10:11]
	v_mad_u64_u32 v[19:20], null, s78, 13, v[10:11]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s8
	s_mov_b32 s8, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[20:21], null, s78, 14, v[10:11]
	v_mad_u64_u32 v[21:22], null, s78, 15, v[10:11]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s10
	s_and_b32 s3, s3, s11
	s_and_b32 s4, s4, s12
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v99, 0, v2
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v100, 0, v1
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v101, 0, v4
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v103, 0, v5
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v104, 0, v7
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v105, 0, v8
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v107, v3, v6
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v102, 0, v0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v7, s14
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s33, s34, s25
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s28, s20
	s_mov_b32 s29, s21
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_mov_b32 s35, s8
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s36, s35, 4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v117, s15 :: v_dual_add_nc_u32 v118, s78, v10
	v_or_b32_e32 v122, s36, v24
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v119, s78, 1, v10
	s_mul_i32 s37, s36, s78
	v_lshl_add_u32 v120, s78, 2, v10
	v_lshl_add_u32 v121, s78, 3, v10
	v_add_nc_u32_e32 v135, v95, v122
	v_add_nc_u32_e32 v136, v96, v122
	v_add_nc_u32_e32 v137, v97, v122
	v_add_nc_u32_e32 v122, v98, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v110, s8 :: v_dual_add_nc_u32 v123, s37, v10
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	v_add_nc_u32_e32 v118, s37, v118
	v_cndmask_b32_e64 v136, 0x80000000, v136, s0
	v_add_nc_u32_e32 v119, s37, v119
	v_cndmask_b32_e64 v137, 0x80000000, v137, s1
	v_add_nc_u32_e32 v124, s37, v11
	v_cndmask_b32_e64 v122, 0x80000000, v122, s3
	v_add_nc_u32_e32 v125, s37, v12
	v_add_nc_u32_e32 v126, s37, v13
	v_add_nc_u32_e32 v127, s37, v14
	v_add_nc_u32_e32 v128, s37, v15
	v_add_nc_u32_e32 v129, s37, v16
	v_add_nc_u32_e32 v130, s37, v17
	v_add_nc_u32_e32 v131, s37, v18
	v_add_nc_u32_e32 v132, s37, v19
	v_add_nc_u32_e32 v133, s37, v20
	v_add_nc_u32_e32 v134, s37, v21
	v_add_nc_u32_e32 v120, s37, v120
	v_add_nc_u32_e32 v121, s37, v121
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v123, v123, s[16:19], 0 offen
	buffer_load_u8 v118, v118, s[16:19], 0 offen
	buffer_load_u8 v119, v119, s[16:19], 0 offen
	buffer_load_u8 v124, v124, s[16:19], 0 offen
	buffer_load_u8 v120, v120, s[16:19], 0 offen
	buffer_load_u8 v125, v125, s[16:19], 0 offen
	buffer_load_u8 v126, v126, s[16:19], 0 offen
	buffer_load_u8 v127, v127, s[16:19], 0 offen
	buffer_load_u8 v121, v121, s[16:19], 0 offen
	buffer_load_u8 v128, v128, s[16:19], 0 offen
	buffer_load_u8 v129, v129, s[16:19], 0 offen
	buffer_load_u8 v130, v130, s[16:19], 0 offen
	buffer_load_u8 v131, v131, s[16:19], 0 offen
	buffer_load_u8 v132, v132, s[16:19], 0 offen
	buffer_load_u8 v133, v133, s[16:19], 0 offen
	buffer_load_u8 v134, v134, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v135, v135, s[24:27], 0 offen
	buffer_load_u8 v136, v136, s[24:27], 0 offen
	buffer_load_u8 v137, v137, s[24:27], 0 offen
	buffer_load_u8 v122, v122, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v116, s14 :: v_dual_mov_b32 v115, s13
	v_dual_mov_b32 v114, s12 :: v_dual_mov_b32 v113, s11
	v_dual_mov_b32 v112, s10 :: v_dual_mov_b32 v111, s9
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s36, s35, s33
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	ds_store_b8 v99, v135
	s_waitcnt vmcnt(2)
	ds_store_b8 v99, v136 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v99, v137 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v99, v122 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[148:151], v100 offset1:32
	ds_load_2addr_b64 v[152:155], v100 offset0:64 offset1:96
	ds_load_2addr_b64 v[156:159], v101 offset1:32
	ds_load_2addr_b64 v[160:163], v101 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v102, v123
	ds_store_b8 v102, v118 offset:256
	ds_store_b8 v102, v119 offset:512
	ds_store_b8 v102, v120 offset:1024
	ds_store_b8 v102, v125 offset:1280
	ds_store_b8 v102, v126 offset:1536
	ds_store_b8 v102, v121 offset:2048
	ds_store_b8 v102, v128 offset:2304
	ds_store_b8 v102, v129 offset:2560
	ds_store_b8 v102, v131 offset:3072
	ds_store_b8 v102, v132 offset:3328
	ds_store_b8 v103, v124
	ds_store_b8 v104, v127
	ds_store_b8 v105, v130
	ds_store_b8 v102, v133 offset:3584
	ds_store_b8 v106, v134
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v118, v107 offset:1280
	ds_load_u8 v119, v107 offset:1024
	ds_load_u8 v120, v107 offset:1920
	ds_load_u8 v121, v107 offset:1664
	ds_load_u8 v122, v107 offset:1408
	ds_load_u8 v123, v107 offset:1792
	ds_load_u8 v124, v107 offset:1536
	ds_load_u8 v125, v107 offset:1152
	ds_load_u8 v126, v107 offset:256
	ds_load_u8 v127, v107
	ds_load_u8 v128, v107 offset:896
	ds_load_u8 v129, v107 offset:640
	ds_load_u8 v130, v107 offset:384
	ds_load_u8 v131, v107 offset:768
	ds_load_u8 v132, v107 offset:512
	ds_load_u8 v133, v107 offset:128
	ds_load_u8 v134, v107 offset:3328
	ds_load_u8 v135, v107 offset:3072
	ds_load_u8 v136, v107 offset:3840
	ds_load_u8 v137, v107 offset:3584
	ds_load_u8 v138, v107 offset:2304
	ds_load_u8 v139, v107 offset:2048
	ds_load_u8 v140, v107 offset:2816
	ds_load_u8 v141, v107 offset:2560
	ds_load_u8 v142, v107 offset:3968
	ds_load_u8 v143, v107 offset:3712
	ds_load_u8 v144, v107 offset:3456
	ds_load_u8 v145, v107 offset:3200
	ds_load_u8 v146, v107 offset:2944
	ds_load_u8 v147, v107 offset:2688
	ds_load_u8 v164, v107 offset:2432
	ds_load_u8 v165, v107 offset:2176
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v119, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v123, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v124, v132, v131, 0xc0c0004
	v_perm_b32 v122, v125, v122, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v126, v135, v134, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v127, v137, v136, 0xc0c0004
	v_perm_b32 v121, v133, v130, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v131, v139, v138, 0xc0c0004
	v_perm_b32 v125, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v132, v141, v140, 0xc0c0004
	v_lshl_or_b32 v167, v127, 16, v126
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v129, v143, v142, 0xc0c0004
	v_lshl_or_b32 v169, v120, 16, v122
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v128, v145, v144, 0xc0c0004
	v_lshl_or_b32 v166, v132, 16, v131
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v133, v147, v146, 0xc0c0004
	v_lshl_or_b32 v168, v125, 16, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v165, v164, 0xc0c0004
	v_lshl_or_b32 v165, v119, 16, v118
	v_lshl_or_b32 v164, v124, 16, v123
	v_lshl_or_b32 v171, v129, 16, v128
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s36, s36, s78
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v170, v133, 16, v130
	v_wmma_i32_16x16x16_iu4 v[126:133], v[168:169], v[148:149], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[164:165], v[148:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[164:165], v[150:151], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[168:169], v[150:151], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[166:167], v[156:157], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[170:171], v[156:157], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[166:167], v[158:159], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[170:171], v[158:159], v[142:149] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v150, v118
	v_cvt_f32_i32_e32 v151, v119
	v_cvt_f32_i32_e32 v156, v120
	v_cvt_f32_i32_e32 v157, v121
	v_cvt_f32_i32_e32 v158, v122
	v_cvt_f32_i32_e32 v159, v123
	v_cvt_f32_i32_e32 v172, v124
	v_cvt_f32_i32_e32 v173, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[164:165], v[152:153], v[110:117] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[166:167], v[160:161], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v174, v118
	v_cvt_f32_i32_e32 v175, v119
	v_cvt_f32_i32_e32 v176, v120
	v_cvt_f32_i32_e32 v177, v121
	v_cvt_f32_i32_e32 v178, v122
	v_cvt_f32_i32_e32 v179, v123
	v_cvt_f32_i32_e32 v180, v124
	v_cvt_f32_i32_e32 v181, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[168:169], v[152:153], v[110:117] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v134, v134
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[170:171], v[160:161], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v152, v118
	v_cvt_f32_i32_e32 v153, v123
	v_cvt_f32_i32_e32 v160, v124
	v_cvt_f32_i32_e32 v161, v125
	v_cvt_f32_i32_e32 v182, v119
	v_cvt_f32_i32_e32 v183, v120
	v_cvt_f32_i32_e32 v184, v121
	v_cvt_f32_i32_e32 v185, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[164:165], v[154:155], v[110:117] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v142, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[166:167], v[162:163], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v164, v118
	v_cvt_f32_i32_e32 v165, v119
	v_cvt_f32_i32_e32 v166, v120
	v_cvt_f32_i32_e32 v167, v121
	v_cvt_f32_i32_e32 v186, v122
	v_cvt_f32_i32_e32 v187, v123
	v_cvt_f32_i32_e32 v188, v124
	v_cvt_f32_i32_e32 v189, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[168:169], v[154:155], v[110:117] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v110, s35, v91, 1
	v_add_lshl_u32 v111, s35, v92, 1
	v_add_lshl_u32 v112, s35, v93, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[170:171], v[162:163], v[118:125] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v113, s35, v94, 1
	v_cndmask_b32_e64 v110, 0x80000000, v110, s4
	v_cndmask_b32_e64 v111, 0x80000000, v111, s5
	v_cndmask_b32_e64 v112, 0x80000000, v112, s6
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v114, v118
	v_cvt_f32_i32_e32 v118, v119
	v_cvt_f32_i32_e32 v119, v120
	v_cvt_f32_i32_e32 v120, v121
	v_cvt_f32_i32_e32 v121, v122
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v122, v9, s36, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v113, 0x80000000, v113, s7
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v122, v122, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v110, v110, s[28:31], 0 offen
	buffer_load_u16 v111, v111, s[28:31], 0 offen
	buffer_load_u16 v112, v112, s[28:31], 0 offen
	buffer_load_u16 v113, v113, s[28:31], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v116, v124
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v115, v123
	v_cvt_f32_i32_e32 v117, v125
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s35, s35, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s35, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v124, 16, v113
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v162, v124, v164 :: v_dual_lshlrev_b32 v111, 16, v111
	v_mul_f32_e32 v164, v124, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v141, v111, v141 :: v_dual_lshlrev_b32 v110, 16, v110
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v134, v111, v134 :: v_dual_lshlrev_b32 v123, 16, v112
	v_mul_f32_e32 v125, v110, v151
	v_mul_f32_e32 v151, v110, v157
	v_mul_f32_e32 v135, v111, v135
	v_mul_f32_e32 v136, v111, v136
	v_dual_mul_f32 v137, v111, v137 :: v_dual_mul_f32 v158, v110, v158
	v_mul_f32_e32 v159, v110, v159
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v108, v122
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v122, v110, v150
	v_mul_f32_e32 v150, v110, v156
	v_mul_f32_e32 v166, v110, v172
	v_mul_f32_e32 v138, v111, v138
	v_mul_f32_e32 v139, v111, v139
	v_mul_f32_e32 v140, v111, v140
	v_dual_mul_f32 v126, v126, v110 :: v_dual_mul_f32 v143, v111, v143
	v_mul_f32_e32 v127, v110, v127
	v_mul_f32_e32 v163, v124, v165
	v_mul_f32_e32 v165, v124, v167
	v_mul_f32_e32 v167, v110, v173
	v_dual_mul_f32 v128, v110, v128 :: v_dual_mul_f32 v131, v131, v110
	v_dual_mul_f32 v129, v110, v129 :: v_dual_mul_f32 v132, v132, v110
	v_dual_mul_f32 v133, v133, v110 :: v_dual_mul_f32 v142, v142, v111
	v_dual_mul_f32 v130, v110, v130 :: v_dual_mul_f32 v145, v111, v145
	v_dual_mul_f32 v144, v111, v144 :: v_dual_mul_f32 v149, v149, v111
	v_dual_mul_f32 v147, v147, v111 :: v_dual_mul_f32 v172, v124, v186
	v_dual_mul_f32 v148, v148, v111 :: v_dual_mul_f32 v171, v123, v181
	v_dual_mul_f32 v146, v111, v146 :: v_dual_mul_f32 v173, v124, v187
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[110:113], v109
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v154, v123, v174
	v_mul_f32_e32 v155, v123, v175
	v_mul_f32_e32 v156, v123, v176
	v_mul_f32_e32 v157, v123, v177
	v_dual_mul_f32 v168, v123, v178 :: v_dual_mul_f32 v175, v124, v189
	v_dual_mul_f32 v169, v123, v179 :: v_dual_mul_f32 v174, v124, v188
	v_dual_mul_f32 v170, v123, v180 :: v_dual_mul_f32 v181, v124, v119
	v_dual_mul_f32 v152, v152, v123 :: v_dual_mul_f32 v179, v114, v124
	v_dual_mul_f32 v176, v123, v182 :: v_dual_mul_f32 v153, v153, v123
	v_dual_mul_f32 v177, v123, v183 :: v_dual_mul_f32 v180, v124, v118
	v_dual_mul_f32 v178, v123, v184 :: v_dual_mul_f32 v161, v161, v123
	v_dual_mul_f32 v182, v124, v120 :: v_dual_mul_f32 v183, v123, v185
	v_dual_mul_f32 v184, v115, v124 :: v_dual_mul_f32 v187, v124, v121
	v_mul_f32_e32 v185, v116, v124
	v_mul_f32_e32 v186, v117, v124
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[114:117], v109 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v160, v160, v123 :: v_dual_fmac_f32 v85, v151, v113
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v88, v122, v110 :: v_dual_fmac_f32 v87, v125, v111
	v_fmac_f32_e32 v86, v150, v112
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[118:121], v109 offset:512
	ds_load_b128 v[122:125], v109 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v73, v134, v110 :: v_dual_fmac_f32 v72, v135, v111
	v_dual_fmac_f32 v69, v137, v113 :: v_dual_fmac_f32 v70, v136, v112
	v_dual_fmac_f32 v55, v155, v111 :: v_dual_fmac_f32 v56, v154, v110
	v_dual_fmac_f32 v53, v157, v113 :: v_dual_fmac_f32 v54, v156, v112
	v_dual_fmac_f32 v39, v163, v111 :: v_dual_fmac_f32 v40, v162, v110
	v_dual_fmac_f32 v37, v165, v113 :: v_dual_fmac_f32 v38, v164, v112
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v83, v159, v115 :: v_dual_fmac_f32 v84, v158, v114
	v_dual_fmac_f32 v81, v167, v117 :: v_dual_fmac_f32 v82, v166, v116
	v_dual_fmac_f32 v67, v139, v115 :: v_dual_fmac_f32 v68, v138, v114
	v_dual_fmac_f32 v65, v141, v117 :: v_dual_fmac_f32 v66, v140, v116
	v_dual_fmac_f32 v51, v169, v115 :: v_dual_fmac_f32 v52, v168, v114
	v_dual_fmac_f32 v49, v171, v117 :: v_dual_fmac_f32 v50, v170, v116
	v_dual_fmac_f32 v35, v173, v115 :: v_dual_fmac_f32 v36, v172, v114
	v_dual_fmac_f32 v33, v175, v117 :: v_dual_fmac_f32 v34, v174, v116
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v63, v143, v119
	v_dual_fmac_f32 v71, v126, v118 :: v_dual_fmac_f32 v80, v127, v119
	v_dual_fmac_f32 v79, v128, v120 :: v_dual_fmac_f32 v78, v129, v121
	v_dual_fmac_f32 v64, v142, v118 :: v_dual_fmac_f32 v61, v145, v121
	v_dual_fmac_f32 v62, v144, v120 :: v_dual_fmac_f32 v45, v178, v121
	v_dual_fmac_f32 v48, v152, v118 :: v_dual_fmac_f32 v29, v182, v121
	v_dual_fmac_f32 v47, v176, v119 :: v_dual_fmac_f32 v46, v177, v120
	v_dual_fmac_f32 v32, v179, v118 :: v_dual_fmac_f32 v31, v180, v119
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v30, v181, v120 :: v_dual_fmac_f32 v77, v130, v122
	v_dual_fmac_f32 v76, v131, v123 :: v_dual_fmac_f32 v75, v132, v124
	v_dual_fmac_f32 v74, v133, v125 :: v_dual_fmac_f32 v59, v147, v123
	v_dual_fmac_f32 v60, v146, v122 :: v_dual_fmac_f32 v57, v149, v125
	v_dual_fmac_f32 v58, v148, v124 :: v_dual_fmac_f32 v43, v153, v123
	v_dual_fmac_f32 v44, v183, v122 :: v_dual_fmac_f32 v41, v161, v125
	v_fmac_f32_e32 v42, v160, v124
	v_dual_fmac_f32 v22, v187, v122 :: v_dual_fmac_f32 v27, v185, v124
	v_fmac_f32_e32 v28, v184, v123
	v_fmac_f32_e32 v26, v186, v125
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v10, v90 :: v_dual_and_b32 v3, 8, v0
	v_mov_b32_e32 v8, v89
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 7, v25
	v_and_b32_e32 v7, 63, v0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, |v82|, |v81|, |v71|
	v_max_f32_e64 v16, |v55|, |v55|
	v_max_f32_e64 v19, |v56|, |v56|
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v9
	v_or_b32_e32 v6, 60, v9
	v_or_b32_e32 v13, 58, v9
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v20, |v40|, |v40|
	s_mov_b32 s26, 0x76543210
.Ltmp8:
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v4, s0, s72, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s73, 0, s0
	v_add_co_u32 v11, s1, s72, v6
	v_add_co_u32 v1, s0, s72, v7
	v_add_co_ci_u32_e64 v12, null, s73, 0, s1
	v_add_co_u32 v13, s1, s72, v13
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[4:5]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[4:5]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 56, v9
	v_or_b32_e32 v6, 54, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[11:12]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[13:14]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v4, s6, s72, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s73, 0, s6
	v_add_co_u32 v11, s6, s72, v6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v6, 52, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s6
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[13:14]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 50, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v4, s10, s72, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s73, 0, s10
	v_add_co_u32 v13, s10, s72, v13
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v6, 48, v9
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s73, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[11:12]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 46, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v4, s14, s72, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s73, 0, s14
	v_add_co_u32 v11, s14, s72, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v6, 44, v9
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[13:14]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[13:14]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 42, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v4, s18, s72, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s73, 0, s18
	v_add_co_u32 v13, s18, s72, v13
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v6, 40, v9
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s73, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[11:12]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 38, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v4, s22, s72, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v5, null, s73, 0, s22
	v_add_co_u32 v17, s22, s72, v11
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v6, |v87|, |v87|
	v_max_f32_e64 v11, |v88|, |v88|
.Ltmp10:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[4:5]
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, |v85|, |v84|, |v83|
.Ltmp12:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[13:14]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v11, v6
	v_max3_f32 v6, |v80|, |v79|, |v78|
	v_max3_f32 v11, |v77|, |v76|, |v75|
.Ltmp14:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s73, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[13:14]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v12, |v72|, |v72|
	v_max_f32_e64 v13, |v73|, |v73|
	v_max3_f32 v4, v4, |v86|, v5
	v_max3_f32 v5, v6, v11, |v74|
	v_max3_f32 v11, |v69|, |v68|, |v67|
.Ltmp16:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 36, v9
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v21, 3, v0
	v_and_b32_e32 v91, 4, v0
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, v4, v15, v5
	v_max_f32_e32 v6, v13, v12
	v_max3_f32 v12, |v63|, |v62|, |v61|
	v_max3_f32 v13, |v60|, |v59|, |v58|
	v_max3_f32 v4, |v66|, |v65|, |v64|
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v89, 5, v21
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v6, |v70|, v11
	v_max_f32_e32 v11, v19, v16
	v_max3_f32 v6, v12, v13, |v57|
	v_max3_f32 v12, |v53|, |v52|, |v51|
	v_max3_f32 v13, |v47|, |v46|, |v45|
	v_max3_f32 v16, |v44|, |v43|, |v42|
	v_max_f32_e64 v19, |v39|, |v39|
	v_max3_f32 v6, v5, v4, v6
	v_max3_f32 v4, |v50|, |v49|, |v48|
	v_max3_f32 v5, v11, |v54|, v12
	v_max3_f32 v11, v13, v16, |v41|
	v_max_f32_e32 v12, v20, v19
	v_max3_f32 v13, |v37|, |v36|, |v35|
	v_max3_f32 v16, |v31|, |v30|, |v29|
	v_max3_f32 v19, |v22|, |v28|, |v27|
	v_max3_f32 v11, v5, v4, v11
	v_max3_f32 v20, |v34|, |v33|, |v32|
	v_max3_f32 v12, v12, |v38|, v13
.Ltmp21:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v4, s27, s72, v14
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v16, v19, |v26|
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v16, v15, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v6, s26, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v90, 3, v25
	v_lshl_add_u32 v93, v91, 6, 0
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v12, v20, v13
	v_max_f32_e32 v14, v16, v16
	v_max_f32_e32 v16, v19, v19
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v19, v11, s26, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v15, v14 :: v_dual_max_f32 v14, v6, v16
	v_max_f32_e32 v6, v19, v19
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v16, v21, 9, 0
	v_permlanex16_b32 v19, v20, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x60, v0
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v5, null, s73, 0, s27
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v11, v6
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v6, v91, 2, v16
	v_and_or_b32 v16, 0x680, v10, v89
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v19, v19
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v19, 1, v25
	v_xor_b32_e32 v89, v89, v12
	v_lshl_add_u32 v6, v3, 4, v6
	v_xor_b32_e32 v92, v16, v12
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v20, v11
.Ltmp34:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[4:5]
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v6, v6, v19, v89
	v_add3_u32 v19, v93, v90, v92
.Ltmp36:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 32, v9
	v_or_b32_e32 v11, 34, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[17:18]
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v6, v[13:16]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v19
.Ltmp38:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v6, 30, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v4, s31, s72, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s73, 0, s31
	v_add_co_u32 v19, s26, s72, v11
	v_add_co_ci_u32_e64 v20, null, s73, 0, s26
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[17:18]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s31, s72, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v18, null, s73, 0, s31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[4:5]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 28, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[17:18]
.Ltmp39:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v6, v13 :: v_dual_mov_b32 v11, v15
	v_dual_mov_b32 v4, v14 :: v_dual_max_f32 v13, v13, v13
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v4, v4, v4
.Ltmp45:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[19:20]
.Ltmp46:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v13, v6 :: v_dual_lshlrev_b32 v3, 3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_max_f32 v13, v14, v4 :: v_dual_max_f32 v14, v15, v15
	v_max_f32_e32 v15, v16, v16
.Ltmp47:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v4, s36, s72, v5
	v_add_co_ci_u32_e64 v5, null, s73, 0, s36
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v14, v11
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v6
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v17, v15
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v18, v13
.Ltmp52:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[4:5]
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v11
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v14
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[4:5]
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v18, v18 :: v_dual_max_f32 v4, v16, v16
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 26, v9
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp59:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v92.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v13, v5 :: v_dual_max_f32 v4, v6, v4
	v_dual_max_f32 v13, v17, v17 :: v_dual_max_f32 v6, v15, v15
.Ltmp61:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s38, s72, v16
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v15, v4 :: v_dual_mov_b32 v16, v5
.Ltmp63:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v17, 24, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v20, null, s73, 0, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp64:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v10, 0x2f0, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v89, s39, s72, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v90, null, s73, 0, s39
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v15, v15
	v_dual_max_f32 v6, v11, v6 :: v_dual_max_f32 v11, v14, v13
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[19:20]
	v_cmp_le_i64_e64 s40, s[74:75], v[89:90]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[89:90]
.Ltmp69:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v14, v11
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v15, v4, v15
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v6
.Ltmp72:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v5, v16
.Ltmp75:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v14, v14
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	v_max_f32_e32 v4, v13, v13
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v14, 4, v21
	v_lshrrev_b32_e32 v13, 1, v12
	v_add_nc_u32_e32 v21, 0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v18, v11, v5 :: v_dual_max_f32 v17, v6, v4
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v91
	v_add_nc_u32_e32 v6, 0, v14
	v_add3_u32 v5, v21, v13, v3
.Ltmp82:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 22, v9
	v_or_b32_e32 v13, 18, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v25, 3, v25
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v3, v6, v4, v3
	ds_store_b128 v5, v[15:18]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp84:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s39, s72, v11
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[3:6], v3
.Ltmp86:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s73, 0, s39
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v11, 20, v9
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[19:20]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[15:16]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v15, s44, s72, v11
	v_add_co_ci_u32_e64 v16, null, s73, 0, s44
	v_add_co_u32 v17, s44, s72, v13
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v11, 16, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s73, 0, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[15:16]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v15, s48, s72, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 12, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[17:18]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v13, 0x2b8cbccc, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s73, 0, s48
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_dual_max_f32 v5, 0x2b8cbccc, v5 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v13
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s48, s72, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v18, null, s73, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s48, s72, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v20, null, s73, 0, s48
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v11, 10, v9
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[15:16]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[19:20]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[19:20]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[17:18]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v17, -v21, v3, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s54, s72, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v11, 8, v9
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v89, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v3, v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s54, s72, v11
	v_add_co_ci_u32_e64 v18, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v4, v4, v4
	v_div_scale_f32 v19, vcc_lo, v13, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[17:18]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v17, 0x2b8cbccc, v4
	v_fma_f32 v4, -v20, v89, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[15:16]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v16, 6, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v89, v4, v89
	v_dual_mul_f32 v11, v19, v3 :: v_dual_lshlrev_b32 v12, 5, v12
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s72, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v15, -v21, v11, v19
	v_fmac_f32_e32 v11, v15, v3
	v_max_f32_e32 v15, 0x2b8cbccc, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v21, v11, v19
	v_div_scale_f32 v19, s60, v5, 0x40e00000, v5
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v11, v18, v3, v11
	v_mul_f32_e32 v18, v19, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v11, v11, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v20, v18, v19
	v_rcp_f32_e32 v91, v90
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v18, v13, v89
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v13.l, v11.h
	v_mov_b16_e32 v13.h, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v20, v18, v19
	v_fma_f32 v94, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v17
	v_div_scale_f32 v19, s62, v15, 0x40e00000, v15
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v11, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v21, v6
	v_fmac_f32_e32 v91, v94, v91
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 4, v9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v94, 0xffff0000, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v3, v3, v89, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v95, null, v94, v94, v85
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v16, -v6, v21, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v18, null, v94, v94, v88
	v_rcp_f32_e32 v97, v95
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v21, v16, v21
	v_div_scale_f32 v16, s61, v17, 0x40e00000, v17
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v92.l, v3.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v20, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v93, v16, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v101, null, v94, v94, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v100, -v95, v97, 1.0
	v_div_scale_f32 v102, null, v94, v94, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v6, v93, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v100, v97
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v93, v13, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v6, v93, v16
	v_div_fmas_f32 v16, v5, v21, v93
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v100, s62, v85, v94, v85
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v13, v19, v91
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v93, null, v94, v94, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v6, -v90, v13, v19
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.h, v92.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v16, v16, 0x40e00000, v17
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v17, -v18, v20, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v13, v6, v91
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v96, s60, v87, v94, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v90, v13, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v19, null, v94, v94, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v16.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v20, v17, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v91, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v91, v19
	v_div_scale_f32 v17, vcc_lo, v88, v94, v88
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v15
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 2, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v19, v91, 1.0
	v_fmac_f32_e32 v91, v89, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v98, v96, v91 :: v_dual_and_b32 v13, 1, v92
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v92.l, v4.h
	v_add3_u32 v3, v3, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v90, 1, v92
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v92, v93
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v90, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v93, v92, 1.0
	v_dual_fmac_f32 v92, v99, v92 :: v_dual_and_b32 v13, 1, v21
	v_mul_f32_e32 v21, v17, v20
	v_div_scale_f32 v99, s61, v86, v94, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v13, v16, v13, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v16, -v18, v21, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v21, v16, v20 :: v_dual_and_b32 v90, 0xffff0000, v13
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v16, 0xffff0000, v4
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v13.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v17, -v18, v21, v17
	v_fma_f32 v18, -v19, v98, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v17, v20, v21
	v_rcp_f32_e32 v21, v101
	v_fmac_f32_e32 v98, v18, v91
	v_mul_f32_e32 v20, v99, v92
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v17, v17, v94, v88
	v_mul_f32_e32 v88, v100, v97
	v_fma_f32 v18, -v19, v98, v96
	v_fma_f32 v19, -v93, v20, v99
	v_rcp_f32_e32 v96, v102
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v103, -v101, v21, 1.0
	v_div_fmas_f32 v18, v18, v91, v98
	v_fmac_f32_e32 v20, v19, v92
	v_fma_f32 v19, -v95, v88, v100
	v_div_scale_f32 v91, s60, v84, v94, v84
	v_fmac_f32_e32 v21, v103, v21
	v_div_fixup_f32 v18, v18, v94, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v102, v96, 1.0
	v_fma_f32 v87, -v93, v20, v99
	v_fmac_f32_e32 v88, v19, v97
	v_mul_f32_e32 v93, v91, v21
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v96, v98, v96
	v_div_scale_f32 v98, s63, v83, v94, v83
	v_div_scale_f32 v99, null, v94, v94, v82
	v_div_fmas_f32 v19, v87, v92, v20
	v_fma_f32 v20, -v95, v88, v100
	v_fma_f32 v87, -v101, v93, v91
	v_div_scale_f32 v100, null, v94, v94, v81
	v_rcp_f32_e32 v92, v99
	v_mul_f32_e32 v95, v98, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v87, v21
	v_rcp_f32_e32 v87, v100
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v19, v19, v94, v86
	v_div_fmas_f32 v20, v20, v97, v88
	v_fma_f32 v88, -v102, v95, v98
	v_div_scale_f32 v86, s61, v82, v94, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v99, v92, 1.0
	v_div_fixup_f32 v20, v20, v94, v85
	v_fma_f32 v85, -v101, v93, v91
	v_fmac_f32_e32 v95, v88, v96
	v_fma_f32 v88, -v100, v87, 1.0
	v_div_scale_f32 v91, null, v94, v94, v71
	v_dual_fmac_f32 v92, v97, v92 :: v_dual_and_b32 v89, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v88, v87
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v97, s60, v81, v94, v81
	v_div_fmas_f32 v21, v85, v21, v93
	v_fma_f32 v85, -v102, v95, v98
	v_mul_f32_e32 v93, v86, v92
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v98, null, v94, v94, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v85, v85, v96, v95
	v_fma_f32 v95, -v99, v93, v86
	v_mul_f32_e32 v96, v97, v87
	v_fma_f32 v101, -v91, v88, 1.0
	v_div_fixup_f32 v21, v21, v94, v84
	v_div_fixup_f32 v83, v85, v94, v83
	v_fmac_f32_e32 v93, v95, v92
	v_fma_f32 v84, -v100, v96, v97
	v_fmac_f32_e32 v88, v101, v88
	v_div_scale_f32 v85, s62, v71, v94, v71
	v_rcp_f32_e32 v102, v98
	v_fma_f32 v86, -v99, v93, v86
	v_fmac_f32_e32 v96, v84, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v85, v88
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v95, null, v94, v94, v79
	v_div_fmas_f32 v86, v86, v92, v93
	v_fma_f32 v92, -v100, v96, v97
	v_fma_f32 v93, -v91, v84, v85
	v_div_scale_f32 v103, null, v94, v94, v78
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v101, -v98, v102, 1.0
	v_rcp_f32_e32 v99, v95
	v_fmac_f32_e32 v84, v93, v88
	v_div_fmas_f32 v87, v92, v87, v96
	v_rcp_f32_e32 v92, v103
	v_fmac_f32_e32 v102, v101, v102
	v_div_scale_f32 v101, s63, v80, v94, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v81, v87, v94, v81
	v_div_scale_f32 v96, s60, v79, v94, v79
	v_fma_f32 v100, -v95, v99, 1.0
	v_div_fixup_f32 v82, v86, v94, v82
	v_fma_f32 v85, -v91, v84, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v103, v92, 1.0
	v_mul_f32_e32 v97, v101, v102
	v_fmac_f32_e32 v99, v100, v99
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v91, null, v94, v94, v77
	v_fmac_f32_e32 v92, v87, v92
	v_fma_f32 v93, -v98, v97, v101
	v_mul_f32_e32 v86, v96, v99
	v_div_fmas_f32 v84, v85, v88, v84
	v_rcp_f32_e32 v87, v91
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v97, v93, v102
	v_fma_f32 v88, -v95, v86, v96
	v_div_scale_f32 v93, s61, v78, v94, v78
	v_div_fixup_f32 v71, v84, v94, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v85, -v98, v97, v101
	v_div_scale_f32 v98, null, v94, v94, v76
	v_fmac_f32_e32 v86, v88, v99
	v_fma_f32 v100, -v91, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v95, v86, v96
	v_fmac_f32_e32 v87, v100, v87
	v_div_scale_f32 v100, null, v94, v94, v75
	v_div_scale_f32 v95, s62, v77, v94, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v98, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v82, v82
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v81, v81
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v11.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v96, v88
	v_div_fmas_f32 v85, v85, v102, v97
	v_mul_f32_e32 v97, v93, v92
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v96, s60, v76, v94, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v80, v85, v94, v80
	v_fma_f32 v85, -v103, v97, v93
	v_div_fmas_f32 v84, v84, v99, v86
	v_rcp_f32_e32 v86, v100
	v_div_scale_f32 v99, null, v94, v94, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v97, v85, v92
	v_mul_f32_e32 v85, v95, v87
	v_div_fixup_f32 v79, v84, v94, v79
	v_mul_f32_e32 v101, v96, v88
	v_rcp_f32_e32 v102, v99
	v_fma_f32 v84, -v103, v97, v93
	v_fma_f32 v93, -v91, v85, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v103, -v100, v86, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v80, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v92, v97
	v_fmac_f32_e32 v85, v93, v87
	v_fma_f32 v92, -v98, v101, v96
	v_fmac_f32_e32 v86, v103, v86
	v_div_scale_f32 v93, s61, v75, v94, v75
	v_fma_f32 v97, -v99, v102, 1.0
	v_div_fixup_f32 v78, v84, v94, v78
	v_fma_f32 v84, -v91, v85, v95
	v_fmac_f32_e32 v101, v92, v88
	v_mul_f32_e32 v91, v93, v86
	v_div_scale_f32 v95, null, v90, v90, v73
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v102, v97, v102
	v_div_scale_f32 v92, s63, v74, v94, v74
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v98, v101, v96
	v_fma_f32 v87, -v100, v91, v93
	v_rcp_f32_e32 v96, v95
	v_div_scale_f32 v98, null, v90, v90, v72
	v_mul_f32_e32 v97, v92, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v87, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v98
	v_div_fmas_f32 v85, v85, v88, v101
	v_fma_f32 v88, -v99, v97, v92
	v_div_fixup_f32 v77, v84, v94, v77
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v101, -v95, v96, 1.0
	v_fma_f32 v84, -v100, v91, v93
	v_div_fixup_f32 v76, v85, v94, v76
	v_fmac_f32_e32 v97, v88, v102
	v_div_scale_f32 v85, s60, v73, v90, v73
	v_fmac_f32_e32 v96, v101, v96
	v_fma_f32 v88, -v98, v87, 1.0
	v_div_scale_f32 v93, null, v90, v90, v70
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v86, v91
	v_fma_f32 v86, -v99, v97, v92
	v_mul_f32_e32 v91, v85, v96
	v_fmac_f32_e32 v87, v88, v87
	v_rcp_f32_e32 v88, v93
	v_div_scale_f32 v99, null, v90, v90, v69
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v92, s61, v72, v90, v72
	v_div_fmas_f32 v86, v86, v102, v97
	v_fma_f32 v97, -v95, v91, v85
	v_rcp_f32_e32 v102, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v100, v92, v87
	v_fma_f32 v101, -v93, v88, 1.0
	v_div_fixup_f32 v75, v84, v94, v75
	v_div_fixup_f32 v74, v86, v94, v74
	v_fmac_f32_e32 v91, v97, v96
	v_div_scale_f32 v94, null, v90, v90, v68
	v_fma_f32 v84, -v98, v100, v92
	v_fmac_f32_e32 v88, v101, v88
	v_div_scale_f32 v86, s62, v70, v90, v70
	v_fma_f32 v97, -v99, v102, 1.0
	v_fma_f32 v85, -v95, v91, v85
	v_rcp_f32_e32 v95, v94
	v_fmac_f32_e32 v100, v84, v87
	v_mul_f32_e32 v84, v86, v88
	v_fmac_f32_e32 v102, v97, v102
	v_div_scale_f32 v97, s63, v69, v90, v69
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v101, null, v90, v90, v67
	v_div_fmas_f32 v85, v85, v96, v91
	v_fma_f32 v91, -v98, v100, v92
	v_fma_f32 v92, -v93, v84, v86
	v_mul_f32_e32 v96, v97, v102
	v_fma_f32 v98, -v94, v95, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v73, v85, v90, v73
	v_div_fmas_f32 v87, v91, v87, v100
	v_fmac_f32_e32 v84, v92, v88
	v_rcp_f32_e32 v91, v101
	v_fma_f32 v92, -v99, v96, v97
	v_fmac_f32_e32 v95, v98, v95
	v_div_scale_f32 v98, s60, v68, v90, v68
	v_fma_f32 v85, -v93, v84, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v92, v102
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v86, v98, v95
	v_div_fixup_f32 v72, v87, v90, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v101, v91, 1.0
	v_div_fmas_f32 v84, v85, v88, v84
	v_fma_f32 v85, -v99, v96, v97
	v_fma_f32 v88, -v94, v86, v98
	v_div_scale_f32 v97, null, v90, v90, v65
	v_fmac_f32_e32 v91, v87, v91
	v_div_scale_f32 v93, s61, v67, v90, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v88, v95
	v_rcp_f32_e32 v88, v97
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v70, v84, v90, v70
	v_div_fmas_f32 v85, v85, v102, v96
	v_mul_f32_e32 v96, v93, v91
	v_fma_f32 v84, -v94, v86, v98
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v92, null, v90, v90, v66
	v_div_fixup_f32 v69, v85, v90, v69
	v_fma_f32 v85, -v101, v96, v93
	v_fma_f32 v98, -v97, v88, 1.0
	v_div_fmas_f32 v84, v84, v95, v86
	v_rcp_f32_e32 v87, v92
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v96, v85, v91
	v_fmac_f32_e32 v88, v98, v88
	v_div_scale_f32 v98, null, v90, v90, v63
	v_div_fixup_f32 v68, v84, v90, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v101, v96, v93
	v_div_scale_f32 v94, s62, v66, v90, v66
	v_rcp_f32_e32 v101, v98
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v99, -v92, v87, 1.0
	v_div_fmas_f32 v84, v84, v91, v96
	v_div_scale_f32 v95, s60, v65, v90, v65
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v67, v84, v90, v67
	v_mul_f32_e32 v100, v95, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v98, v101, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v97, v100, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v101, v96, v101
	v_fmac_f32_e32 v87, v99, v87
	v_div_scale_f32 v99, null, v90, v90, v64
	v_fmac_f32_e32 v100, v91, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v94, v87
	v_rcp_f32_e32 v86, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v79
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v92, v85, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v93, v87
	v_fma_f32 v102, -v99, v86, 1.0
	v_div_scale_f32 v93, s61, v64, v90, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v92, v85, v94
	v_fmac_f32_e32 v86, v102, v86
	v_div_scale_f32 v94, null, v90, v90, v62
	v_div_scale_f32 v92, s63, v63, v90, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v93, v86
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v97, v100, v95
	v_rcp_f32_e32 v95, v94
	v_div_scale_f32 v97, null, v90, v90, v61
	v_fma_f32 v87, -v99, v91, v93
	v_mul_f32_e32 v96, v92, v101
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v66, v84, v90, v66
	v_div_fmas_f32 v85, v85, v88, v100
	v_fmac_f32_e32 v91, v87, v86
	v_rcp_f32_e32 v87, v97
	v_fma_f32 v88, -v98, v96, v92
	v_fma_f32 v100, -v94, v95, 1.0
	v_div_fixup_f32 v65, v85, v90, v65
	v_fma_f32 v84, -v99, v91, v93
	v_div_scale_f32 v85, s60, v62, v90, v62
	v_fmac_f32_e32 v96, v88, v101
	v_fmac_f32_e32 v95, v100, v95
	v_div_scale_f32 v93, null, v90, v90, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v97, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v102, null, v90, v90, v57
	v_div_fmas_f32 v84, v84, v86, v91
	v_fma_f32 v86, -v98, v96, v92
	v_mul_f32_e32 v91, v85, v95
	v_fmac_f32_e32 v87, v88, v87
	v_rcp_f32_e32 v88, v93
	v_div_scale_f32 v92, s61, v61, v90, v61
	v_div_scale_f32 v98, null, v90, v90, v59
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v99, v92, v87
	v_div_fmas_f32 v86, v86, v101, v96
	v_fma_f32 v96, -v94, v91, v85
	v_rcp_f32_e32 v101, v98
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v100, -v93, v88, 1.0
	v_div_fixup_f32 v64, v84, v90, v64
	v_fma_f32 v84, -v97, v99, v92
	v_fmac_f32_e32 v91, v96, v95
	v_div_fixup_f32 v63, v86, v90, v63
	v_fmac_f32_e32 v88, v100, v88
	v_div_scale_f32 v86, s62, v60, v90, v60
	v_div_scale_f32 v96, null, v90, v90, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v100, -v98, v101, 1.0
	v_fma_f32 v85, -v94, v91, v85
	v_fmac_f32_e32 v99, v84, v87
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v84, v86, v88
	v_rcp_f32_e32 v94, v96
	v_fmac_f32_e32 v101, v100, v101
	v_div_scale_f32 v100, s63, v59, v90, v59
	v_div_fmas_f32 v85, v85, v95, v91
	v_fma_f32 v91, -v97, v99, v92
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v92, -v93, v84, v86
	v_mul_f32_e32 v95, v100, v101
	v_div_fixup_f32 v62, v85, v90, v62
	v_div_fmas_f32 v87, v91, v87, v99
	v_rcp_f32_e32 v91, v102
	v_fma_f32 v97, -v96, v94, 1.0
	v_fmac_f32_e32 v84, v92, v88
	v_fma_f32 v92, -v98, v95, v100
	v_div_fixup_f32 v61, v87, v90, v61
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v94, v97, v94
	v_div_scale_f32 v97, s60, v58, v90, v58
	v_fmac_f32_e32 v95, v92, v101
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v102, v91, 1.0
	v_div_scale_f32 v92, null, v89, v89, v56
	v_fma_f32 v85, -v93, v84, v86
	v_dual_mul_f32 v86, v97, v94 :: v_dual_fmac_f32 v91, v87, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v92
	v_div_scale_f32 v93, s61, v57, v90, v57
	v_div_fmas_f32 v84, v85, v88, v84
	v_fma_f32 v85, -v98, v95, v100
	v_fma_f32 v88, -v96, v86, v97
	v_div_scale_f32 v98, null, v89, v89, v55
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v60, v84, v90, v60
	v_fmac_f32_e32 v86, v88, v94
	v_rcp_f32_e32 v88, v98
	v_fma_f32 v99, -v92, v87, 1.0
	v_div_fmas_f32 v85, v85, v101, v95
	v_mul_f32_e32 v95, v93, v91
	v_fma_f32 v84, -v96, v86, v97
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v87, v99, v87
	v_div_scale_f32 v99, null, v89, v89, v54
	v_div_fixup_f32 v59, v85, v90, v59
	v_fma_f32 v85, -v102, v95, v93
	v_div_scale_f32 v96, s62, v56, v89, v56
	v_fma_f32 v97, -v98, v88, 1.0
	v_div_fmas_f32 v84, v84, v94, v86
	v_rcp_f32_e32 v86, v99
	v_fmac_f32_e32 v95, v85, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v85, v96, v87 :: v_dual_fmac_f32 v88, v97, v88
	v_div_scale_f32 v97, null, v89, v89, v53
	v_div_scale_f32 v94, s60, v55, v89, v55
	v_div_fixup_f32 v58, v84, v90, v58
	v_fma_f32 v84, -v102, v95, v93
	v_fma_f32 v93, -v92, v85, v96
	v_rcp_f32_e32 v101, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v102, -v99, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v100, v94, v88
	v_div_fmas_f32 v84, v84, v91, v95
	v_dual_fmac_f32 v85, v93, v87 :: v_dual_fmac_f32 v86, v102, v86
	v_div_scale_f32 v93, s61, v54, v89, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v98, v100, v94
	v_fma_f32 v95, -v97, v101, 1.0
	v_div_fixup_f32 v57, v84, v90, v57
	v_fma_f32 v84, -v92, v85, v96
	v_mul_f32_e32 v90, v93, v86
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v100, v91, v88
	v_fmac_f32_e32 v101, v95, v101
	v_div_scale_f32 v91, s63, v53, v89, v53
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v87, -v99, v90, v93
	v_div_scale_f32 v96, null, v89, v89, v51
	v_div_scale_f32 v92, null, v89, v89, v52
	v_fma_f32 v85, -v98, v100, v94
	v_mul_f32_e32 v95, v91, v101
	v_fmac_f32_e32 v90, v87, v86
	v_rcp_f32_e32 v87, v96
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v85, v85, v88, v100
	v_fma_f32 v88, -v97, v95, v91
	v_div_fixup_f32 v56, v84, v89, v56
	v_fma_f32 v84, -v99, v90, v93
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v93, null, v89, v89, v50
	v_fmac_f32_e32 v95, v88, v101
	v_fma_f32 v88, -v96, v87, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v92, v94, 1.0
	v_div_fmas_f32 v84, v84, v86, v90
	v_div_fixup_f32 v55, v85, v89, v55
	v_fma_f32 v86, -v97, v95, v91
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v91, s61, v51, v89, v51
	v_fmac_f32_e32 v94, v98, v94
	v_div_scale_f32 v85, s60, v52, v89, v52
	v_rcp_f32_e32 v88, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v98, v91, v87
	v_div_scale_f32 v97, null, v89, v89, v49
	v_mul_f32_e32 v90, v85, v94
	v_div_fixup_f32 v54, v84, v89, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v96, v98, v91
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v100, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v93, v88, 1.0
	v_fmac_f32_e32 v98, v84, v87
	v_div_fmas_f32 v86, v86, v101, v95
	v_fma_f32 v95, -v92, v90, v85
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v88, v99, v88
	v_div_scale_f32 v101, null, v89, v89, v47
	v_div_fixup_f32 v53, v86, v89, v53
	v_fmac_f32_e32 v90, v95, v94
	v_div_scale_f32 v86, s62, v50, v89, v50
	v_fma_f32 v99, -v97, v100, 1.0
	v_div_scale_f32 v95, null, v89, v89, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v92, v90, v85
	v_mul_f32_e32 v84, v86, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s63, v49, v89, v49
	v_div_fmas_f32 v85, v85, v94, v90
	v_fma_f32 v90, -v96, v98, v91
	v_fma_f32 v91, -v93, v84, v86
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v94, v99, v100
	v_rcp_f32_e32 v92, v95
	v_div_fixup_f32 v52, v85, v89, v52
	v_fmac_f32_e32 v84, v91, v88
	v_div_fmas_f32 v87, v90, v87, v98
	v_rcp_f32_e32 v90, v101
	v_fma_f32 v91, -v97, v94, v99
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v85, -v93, v84, v86
	v_div_fixup_f32 v51, v87, v89, v51
	v_div_scale_f32 v93, s61, v47, v89, v47
	v_fmac_f32_e32 v94, v91, v100
	v_div_scale_f32 v91, null, v89, v89, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v101, v90, 1.0
	v_fma_f32 v96, -v95, v92, 1.0
	v_div_fmas_f32 v84, v85, v88, v84
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v87, v90
	v_rcp_f32_e32 v87, v91
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s60, v48, v89, v48
	v_div_fixup_f32 v50, v84, v89, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v91, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v87, v98, v87 :: v_dual_mul_f32 v86, v96, v92
	v_fma_f32 v85, -v97, v94, v99
	v_div_scale_f32 v97, null, v89, v89, v45
	v_div_scale_f32 v98, null, v89, v89, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v95, v86, v96
	v_div_fmas_f32 v85, v85, v100, v94
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v88, v92
	v_rcp_f32_e32 v88, v97
	v_div_fixup_f32 v49, v85, v89, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v95, v86, v96
	v_div_scale_f32 v95, s62, v46, v89, v46
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v92, v86
	v_fma_f32 v96, -v97, v88, 1.0
	v_div_scale_f32 v92, s60, v45, v89, v45
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v48, v84, v89, v48
	v_fmac_f32_e32 v88, v96, v88
	v_div_scale_f32 v96, null, v89, v89, v43
	v_rcp_f32_e32 v86, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v99, v92, v88 :: v_dual_mul_f32 v94, v93, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v100, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v101, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v94, v85, v90 :: v_dual_mul_f32 v85, v95, v87
	v_fma_f32 v84, -v101, v94, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v93, -v91, v85, v95
	v_fma_f32 v101, -v98, v86, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v84, v84, v90, v94
	v_fmac_f32_e32 v85, v93, v87
	v_fma_f32 v90, -v97, v99, v92
	v_fma_f32 v94, -v96, v100, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v47, v84, v89, v47
	v_fma_f32 v84, -v91, v85, v95
	v_fmac_f32_e32 v99, v90, v88
	v_fmac_f32_e32 v100, v94, v100
	v_div_scale_f32 v91, s63, v43, v89, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v97, v99, v92
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v95, v91, v100
	v_div_scale_f32 v93, s61, v44, v89, v44
	v_div_fmas_f32 v85, v85, v88, v99
	v_div_fixup_f32 v46, v84, v89, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v96, v95, v91
	v_fmac_f32_e32 v86, v101, v86
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v89, v89, v42
	v_dual_fmac_f32 v95, v88, v100 :: v_dual_mul_f32 v90, v93, v86
	v_div_scale_f32 v97, null, v89, v89, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v94
	v_div_fixup_f32 v45, v85, v89, v45
	v_fma_f32 v87, -v98, v90, v93
	v_div_scale_f32 v85, s60, v42, v89, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v87, v86
	v_rcp_f32_e32 v87, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v94, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v98, v90, v93
	v_div_scale_f32 v98, null, v16, v16, v39
	v_fmac_f32_e32 v92, v99, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v84, v84, v86, v90
	v_fma_f32 v86, -v96, v95, v91
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v88, -v97, v87, 1.0
	v_div_scale_f32 v91, s61, v41, v89, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v86, v86, v100, v95
	v_div_fixup_f32 v44, v84, v89, v44
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, null, v16, v16, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v43, v86, v89, v43
	v_rcp_f32_e32 v86, v98
	v_mul_f32_e32 v96, v91, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v88
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v100, null, v16, v16, v37
	v_fma_f32 v84, -v97, v96, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v102, v100
	v_fma_f32 v99, -v98, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v99, v86
	v_mul_f32_e32 v90, v85, v92
	v_fma_f32 v95, -v94, v90, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v95, v92
	v_fma_f32 v95, -v88, v93, 1.0
	v_fma_f32 v85, -v94, v90, v85
	v_div_scale_f32 v94, null, v16, v16, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v95, v93 :: v_dual_fmac_f32 v96, v84, v87
	v_div_scale_f32 v84, s62, v40, v16, v40
	v_rcp_f32_e32 v95, v94
	v_div_fmas_f32 v85, v85, v92, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v97, v96, v91
	v_mul_f32_e32 v91, v84, v93
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v92, s60, v39, v16, v39
	v_div_fixup_f32 v42, v85, v89, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v99, -v88, v91, v84
	v_fma_f32 v97, -v94, v95, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v101, v92, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v99, v93
	v_div_fmas_f32 v87, v90, v87, v96
	v_fmac_f32_e32 v95, v97, v95
	v_div_scale_f32 v97, s63, v38, v16, v38
	v_fma_f32 v84, -v88, v91, v84
	v_div_scale_f32 v88, null, v16, v16, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v96, v97, v95
	v_fma_f32 v90, -v98, v101, v92
	v_div_fixup_f32 v41, v87, v89, v41
	v_fma_f32 v87, -v100, v102, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v85, -v94, v96, v97
	v_fmac_f32_e32 v101, v90, v86
	v_div_fmas_f32 v84, v84, v93, v91
	v_fmac_f32_e32 v102, v87, v102
	v_div_scale_f32 v87, s61, v37, v16, v37
	v_fmac_f32_e32 v96, v85, v95
	v_rcp_f32_e32 v85, v88
	v_fma_f32 v89, -v98, v101, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v87, v102
	v_div_scale_f32 v91, null, v16, v16, v35
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v40, v84, v16, v40
	v_div_fmas_f32 v86, v89, v86, v101
	v_fma_f32 v89, -v94, v96, v97
	v_rcp_f32_e32 v93, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v88, v85, 1.0
	v_fma_f32 v94, -v100, v90, v87
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v39, v86, v16, v39
	v_div_fmas_f32 v89, v89, v95, v96
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s60, v36, v16, v36
	v_fmac_f32_e32 v90, v94, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v91, v93, 1.0
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v84, v92, v85
	v_div_fixup_f32 v38, v89, v16, v38
	v_fma_f32 v87, -v100, v90, v87
	v_div_scale_f32 v89, null, v16, v16, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v88, v84, v92
	v_fmac_f32_e32 v93, v86, v93
	v_div_scale_f32 v86, s62, v35, v16, v35
	v_div_fmas_f32 v87, v87, v102, v90
	v_fmac_f32_e32 v84, v94, v85
	v_rcp_f32_e32 v95, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v86, v93
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v37, v87, v16, v37
	v_fma_f32 v87, -v88, v84, v92
	v_div_scale_f32 v94, null, v16, v16, v33
	v_fma_f32 v88, -v91, v90, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v87, v85, v84
	v_div_scale_f32 v85, null, v16, v16, v32
	v_fma_f32 v92, -v89, v95, 1.0
	v_rcp_f32_e32 v96, v94
	v_fmac_f32_e32 v90, v88, v93
	v_rcp_f32_e32 v88, v85
	v_div_scale_f32 v87, s60, v34, v16, v34
	v_fmac_f32_e32 v95, v92, v95
	v_div_scale_f32 v92, null, v16, v16, v31
	v_div_fixup_f32 v36, v84, v16, v36
	v_fma_f32 v86, -v91, v90, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v94, v96, 1.0
	v_rcp_f32_e32 v98, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v85, v88, 1.0
	v_mul_f32_e32 v91, v87, v95
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v96, v84, v96
	v_div_scale_f32 v84, s61, v33, v16, v33
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v97, null, v16, v16, v30
	v_div_fmas_f32 v86, v86, v93, v90
	v_fma_f32 v90, -v89, v91, v87
	v_mul_f32_e32 v93, v84, v96
	v_div_scale_f32 v99, s62, v32, v16, v32
	v_fma_f32 v100, -v92, v98, 1.0
	v_rcp_f32_e32 v101, v97
	v_fmac_f32_e32 v91, v90, v95
	v_fma_f32 v90, -v94, v93, v84
	v_mul_f32_e32 v102, v99, v88
	v_fmac_f32_e32 v98, v100, v98
	v_div_scale_f32 v100, s63, v31, v16, v31
	v_div_fixup_f32 v35, v86, v16, v35
	v_fma_f32 v86, -v89, v91, v87
	v_fmac_f32_e32 v93, v90, v96
	v_fma_f32 v87, -v85, v102, v99
	v_mul_f32_e32 v89, v100, v98
	v_fma_f32 v90, -v97, v101, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v84, -v94, v93, v84
	v_div_fmas_f32 v86, v86, v95, v91
	v_fmac_f32_e32 v102, v87, v88
	v_fma_f32 v87, -v92, v89, v100
	v_fmac_f32_e32 v101, v90, v101
	v_div_scale_f32 v90, s60, v30, v16, v30
	v_div_scale_f32 v91, null, v16, v16, v29
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v89, v87, v98
	v_mul_f32_e32 v87, v90, v101
	v_div_fmas_f32 v84, v84, v96, v93
	v_rcp_f32_e32 v93, v91
	v_fma_f32 v85, -v85, v102, v99
	v_div_fixup_f32 v34, v86, v16, v34
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v33, v84, v16, v33
	v_div_scale_f32 v95, null, v16, v16, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v91, v93, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v86, v93
	v_div_fmas_f32 v85, v85, v88, v102
	v_fma_f32 v88, -v92, v89, v100
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v92, -v97, v87, v90
	v_div_scale_f32 v86, null, v16, v16, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v88, v88, v98, v89
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v87, v92, v101
	v_div_fixup_f32 v32, v85, v16, v32
	v_div_scale_f32 v85, null, v16, v16, v22
	v_div_fixup_f32 v31, v88, v16, v31
	v_div_scale_f32 v88, null, v16, v16, v27
	v_fma_f32 v84, -v97, v87, v90
	v_rcp_f32_e32 v90, v86
	v_rcp_f32_e32 v97, v95
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v92, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v101, v87
	v_div_scale_f32 v89, vcc_lo, v29, v16, v29
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v30, v84, v16, v30
	v_fma_f32 v96, -v86, v90, 1.0
	v_fma_f32 v101, -v95, v97, 1.0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v88, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v96, v90
	v_div_scale_f32 v96, s61, v28, v16, v28
	v_fmac_f32_e32 v92, v99, v92
	v_div_scale_f32 v99, s62, v27, v16, v27
	v_fma_f32 v84, -v85, v87, 1.0
	v_fmac_f32_e32 v97, v101, v97
	v_div_scale_f32 v101, s63, v26, v16, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v103, v99, v92 :: v_dual_mul_f32 v94, v89, v93
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, s60, v22, v16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v91, v94, v89
	v_fmac_f32_e32 v94, v98, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v91, v94, v89
	v_div_fmas_f32 v89, v89, v93, v94
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v100, v84, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v102, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	v_med3_f32 v55, v55, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v85, v100, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v104, v101, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v98, v87
	v_fma_f32 v98, -v88, v103, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_med3_f32 v20, v20, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v85, v100, v84
	v_fmac_f32_e32 v103, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v43
	v_and_b32_e32 v43, 15, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v86, v102, v96
	v_div_fmas_f32 v84, v84, v87, v100
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v102, v91, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v86, v102, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v86, v86, v90, v102
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v55
	v_and_b32_e32 v55, 15, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v95, v104, v101
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v28, v86, v16, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v66
	v_cvt_i32_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v104, v85, v97
	v_fma_f32 v85, -v88, v103, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v59
	v_and_b32_e32 v59, 15, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v29, v89, v16, v29
	v_fma_f32 v87, -v95, v104, v101
	v_div_fmas_f32 v85, v85, v92, v103
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v47
	v_and_b32_e32 v47, 15, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v87, v87, v97, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v86, 16, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v22, v84, v16, v22
	v_div_fixup_f32 v27, v85, v16, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v100, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v16, v87, v16, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v102, v38
	v_cvt_i32_f32_e32 v105, v34
	v_and_b32_e32 v34, 15, v20
	v_and_b32_e32 v38, 15, v21
	v_and_b32_e32 v40, 15, v52
	v_and_b32_e32 v52, 15, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v20, 13, v0
	v_lshlrev_b32_e32 v21, 8, v86
	v_and_b32_e32 v49, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v83
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v20, 0xe000, v20, v21
	v_xor_b32_e32 v10, v10, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v82, v82, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v10, v20, v25, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_cvt_i32_f32_e32 v82, v82
	v_cvt_i32_f32_e32 v84, v74
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v103, v36
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_cvt_i32_f32_e32 v83, v26
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v94, v48
	v_cvt_i32_f32_e32 v107, v32
	v_cvt_i32_f32_e32 v109, v30
	v_cvt_i32_f32_e32 v113, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v26, 15, v18
	v_and_b32_e32 v30, 15, v19
	v_and_b32_e32 v17, 15, v73
	v_and_b32_e32 v18, 15, v56
	v_and_b32_e32 v19, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v20, 0, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v96, v46
	v_cvt_i32_f32_e32 v97, v44
	v_cvt_i32_f32_e32 v101, v39
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v46, 15, v82
	v_and_b32_e32 v82, 15, v84
	v_and_b32_e32 v39, 15, v68
	v_and_b32_e32 v84, 15, v41
	v_and_b32_e32 v41, 15, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v54
	v_cvt_i32_f32_e32 v99, v42
	v_and_b32_e32 v42, 15, v83
	v_and_b32_e32 v54, 15, v71
	v_and_b32_e32 v83, 15, v57
	v_and_b32_e32 v56, 15, v94
	v_and_b32_e32 v57, 15, v107
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v20, v[16:19]
	ds_store_b128 v20, v[38:41] offset:256
	v_lshlrev_b32_e32 v17, 6, v0
	v_cndmask_b32_e64 v18, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v70
	v_cvt_i32_f32_e32 v112, v27
	v_and_b32_e32 v70, 15, v77
	v_and_b32_e32 v27, 15, v72
	v_and_b32_e32 v71, 15, v60
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v22
	v_med3_f32 v80, v80, s60, 0x40e00000
	v_med3_f32 v79, v79, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v81, v81, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v20, v[54:57] offset:2048
	ds_store_b128 v20, v[70:73] offset:2304
	v_lshlrev_b32_e32 v20, 2, v86
	v_and_or_b32 v12, 0x300, v17, v12
	v_xor_b32_e32 v14, v18, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v87, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v108, v31
	v_cvt_i32_f32_e32 v110, v29
	v_cvt_i32_f32_e32 v81, v81
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v89, v58
	v_cvt_i32_f32_e32 v92, v51
	v_cvt_i32_f32_e32 v93, v50
	v_cvt_i32_f32_e32 v104, v35
	v_cvt_i32_f32_e32 v111, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v12, v14, v12, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v106, v33
	v_and_b32_e32 v58, 15, v80
	v_and_b32_e32 v62, 15, v79
	v_and_b32_e32 v66, 15, v78
	v_and_b32_e32 v31, 15, v85
	v_and_b32_e32 v35, 15, v69
	v_and_b32_e32 v51, 15, v65
	v_and_b32_e32 v63, 15, v87
	v_and_b32_e32 v67, 15, v61
	v_and_b32_e32 v28, 15, v90
	v_and_b32_e32 v32, 15, v91
	v_and_b32_e32 v60, 15, v95
	v_and_b32_e32 v64, 15, v96
	v_and_b32_e32 v68, 15, v45
	v_and_b32_e32 v29, 15, v101
	v_and_b32_e32 v33, 15, v102
	v_and_b32_e32 v61, 15, v108
	v_and_b32_e32 v65, 15, v109
	v_and_b32_e32 v69, 15, v110
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v16, v10, 16, 0
	v_xad_u32 v19, v10, 32, 0
	v_xad_u32 v10, v10, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v74, 15, v76
	v_and_b32_e32 v78, 15, v75
	v_and_b32_e32 v75, 15, v88
	v_and_b32_e32 v79, 15, v89
	v_and_b32_e32 v44, 15, v92
	v_and_b32_e32 v48, 15, v93
	v_and_b32_e32 v76, 15, v98
	v_and_b32_e32 v80, 15, v99
	v_and_b32_e32 v45, 15, v104
	v_and_b32_e32 v49, 15, v105
	v_and_b32_e32 v77, 15, v111
	v_and_b32_e32 v81, 15, v112
	v_and_b32_e32 v85, 15, v113
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v14, 0, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v53
	v_and_b32_e32 v37, 15, v37
	v_and_b32_e32 v53, 15, v106
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v16, v[26:29]
	ds_store_b128 v16, v[42:45] offset:256
	ds_store_b128 v16, v[58:61] offset:2048
	ds_store_b128 v16, v[74:77] offset:2304
	ds_store_b128 v19, v[30:33]
	ds_store_b128 v19, v[46:49] offset:256
	ds_store_b128 v19, v[62:65] offset:2048
	ds_store_b128 v19, v[78:81] offset:2304
	ds_store_b128 v10, v[34:37]
	ds_store_b128 v10, v[50:53] offset:256
	ds_store_b128 v10, v[66:69] offset:2048
	ds_store_b128 v10, v[82:85] offset:2304
	v_xad_u32 v10, 0x4020, v12, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v14
	ds_load_b128 v[25:28], v14 offset:128
	ds_load_b128 v[29:32], v14 offset:4096
	ds_load_b128 v[33:36], v14 offset:4224
	v_xad_u32 v14, 0x8040, v12, 0
	ds_load_b128 v[37:40], v10
	ds_load_b128 v[41:44], v10 offset:128
	ds_load_b128 v[45:48], v10 offset:4096
	ds_load_b128 v[49:52], v10 offset:4224
	v_xad_u32 v10, 0xc060, v12, 0
	ds_load_b128 v[53:56], v14
	ds_load_b128 v[57:60], v14 offset:128
	ds_load_b128 v[61:64], v14 offset:4096
	ds_load_b128 v[65:68], v14 offset:4224
	ds_load_b128 v[69:72], v10 offset:4096
	ds_load_b128 v[73:76], v10
	ds_load_b128 v[77:80], v10 offset:128
	ds_load_b128 v[81:84], v10 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s2, s72, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s73, 0, s2
	v_add_co_u32 v20, s2, s72, v9
	v_add_co_ci_u32_e64 v21, null, s73, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s72, v9
	v_lshl_or_b32 v5, s79, 7, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v12, v29, 4, v16
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v55, v63, 4, v55
	v_lshl_or_b32 v56, v64, 4, v56
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v61, v69, 4, v73
	v_lshl_or_b32 v69, v33, 4, v25
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v25, 20, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v71, 4, v75
	v_lshl_or_b32 v71, v35, 4, v27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v27, 22, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v72, 4, v76
	v_lshl_or_b32 v72, v36, 4, v28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 24, v6
	v_add_nc_u32_e32 v29, 26, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v73, v30, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 28, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	v_lshl_or_b32 v62, v70, 4, v74
	v_lshl_or_b32 v70, v34, 4, v26
	v_lshl_or_b32 v74, v31, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 30, v6
	v_mad_u64_u32 v[25:26], null, v25, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v75, v32, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 32, v6
	v_mad_u64_u32 v[26:27], null, v27, s73, v[5:6]
	v_add_nc_u32_e32 v33, 34, v6
	v_mad_u64_u32 v[27:28], null, v28, s73, v[5:6]
	v_add_nc_u32_e32 v34, 36, v6
	v_mad_u64_u32 v[28:29], null, v29, s73, v[5:6]
	v_add_nc_u32_e32 v35, 38, v6
	v_mad_u64_u32 v[29:30], null, v30, s73, v[5:6]
	v_add_nc_u32_e32 v36, 40, v6
	v_mad_u64_u32 v[30:31], null, v31, s73, v[5:6]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[14:15]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[20:21]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[20:21]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v85, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 4, v6
	v_add_nc_u32_e32 v37, 42, v6
	v_mad_u64_u32 v[8:9], null, v6, s73, v[5:6]
	v_mad_u64_u32 v[31:32], null, v32, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v65, 4, v57
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v65, v81, 4, v77
	v_lshl_or_b32 v77, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 44, v6
	v_mad_u64_u32 v[32:33], null, v33, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 2, v6
	v_add_nc_u32_e32 v16, 6, v6
	v_add_nc_u32_e32 v39, 46, v6
	v_mad_u64_u32 v[33:34], null, v34, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 48, v6
	v_mad_u64_u32 v[34:35], null, v35, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v49, 4, v41
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 8, v6
	v_add_nc_u32_e32 v41, 50, v6
	v_mad_u64_u32 v[35:36], null, v36, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v50, 4, v42
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 10, v6
	v_add_nc_u32_e32 v42, 52, v6
	v_mad_u64_u32 v[14:15], null, v14, s73, v[5:6]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v51, 4, v43
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 12, v6
	v_add_nc_u32_e32 v43, 54, v6
	v_mad_u64_u32 v[37:38], null, v38, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v52, 4, v44
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 14, v6
	v_add_nc_u32_e32 v44, 56, v6
	v_mad_u64_u32 v[9:10], null, v10, s73, v[5:6]
	v_mad_u64_u32 v[15:16], null, v16, s73, v[5:6]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[5:6]
	v_add_nc_u32_e32 v21, 16, v6
	v_add_nc_u32_e32 v45, 58, v6
	v_mad_u64_u32 v[39:40], null, v40, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 18, v6
	v_add_nc_u32_e32 v46, 60, v6
	v_add_nc_u32_e32 v76, 62, v6
	v_mad_u64_u32 v[16:17], null, v17, s73, v[5:6]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[5:6]
	v_mad_u64_u32 v[17:18], null, v18, s73, v[5:6]
	v_mad_u64_u32 v[41:42], null, v42, s73, v[5:6]
	v_mad_u64_u32 v[18:19], null, v19, s73, v[5:6]
	v_mad_u64_u32 v[42:43], null, v43, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s73, v[5:6]
	v_mad_u64_u32 v[43:44], null, v44, s73, v[5:6]
	v_mad_u64_u32 v[20:21], null, v21, s73, v[5:6]
	v_mad_u64_u32 v[44:45], null, v45, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v12, v8, s[68:71], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[21:22], null, v22, s73, v[5:6]
	v_mad_u64_u32 v[45:46], null, v46, s73, v[5:6]
	v_mad_u64_u32 v[5:6], null, v76, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v9, s60
	v_cndmask_b32_e32 v9, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v66, 4, v58
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v82, 4, v78
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v85, v6, s[68:71], 0 offen
	buffer_store_b8 v53, v8, s[68:71], 0 offen
	buffer_store_b8 v61, v9, s[68:71], 0 offen
	buffer_store_b8 v69, v10, s[68:71], 0 offen
	buffer_store_b8 v49, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v67, 4, v59
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v83, 4, v79
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v68, 4, v60
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v84, 4, v80
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v57, v6, s[68:71], 0 offen
	buffer_store_b8 v65, v8, s[68:71], 0 offen
	buffer_store_b8 v73, v9, s[68:71], 0 offen
	buffer_store_b8 v77, v10, s[68:71], 0 offen
	buffer_store_b8 v54, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v62, v6, s[68:71], 0 offen
	buffer_store_b8 v70, v8, s[68:71], 0 offen
	buffer_store_b8 v50, v9, s[68:71], 0 offen
	buffer_store_b8 v58, v10, s[68:71], 0 offen
	buffer_store_b8 v66, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v74, v6, s[68:71], 0 offen
	buffer_store_b8 v47, v8, s[68:71], 0 offen
	buffer_store_b8 v55, v9, s[68:71], 0 offen
	buffer_store_b8 v63, v10, s[68:71], 0 offen
	buffer_store_b8 v71, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v6, s[68:71], 0 offen
	buffer_store_b8 v59, v8, s[68:71], 0 offen
	buffer_store_b8 v67, v9, s[68:71], 0 offen
	buffer_store_b8 v75, v10, s[68:71], 0 offen
	buffer_store_b8 v48, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v44, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v45, vcc_lo
	s_clause 0x4
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v64, v8, s[68:71], 0 offen
	buffer_store_b8 v72, v9, s[68:71], 0 offen
	buffer_store_b8 v52, v10, s[68:71], 0 offen
	buffer_store_b8 v60, v12, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 2, v86
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_lshlrev_b32 v6, 3, v24
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v9, 2, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v8, 0, v8
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v68, v5, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v6
	v_add3_u32 v6, v8, v9, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
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
.Ltmp87:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 190
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 190
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15788
; TotalNumSgprs: 82
; NumVgprs: 190
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 190
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     190
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
