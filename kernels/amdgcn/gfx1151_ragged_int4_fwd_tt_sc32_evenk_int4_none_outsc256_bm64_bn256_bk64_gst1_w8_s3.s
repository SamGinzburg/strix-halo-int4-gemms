	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v27, 4, v0
	v_lshlrev_b32_e32 v96, 4, v0
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s41, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v9, s34, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v2, 0x80, v0
	v_lshlrev_b32_e32 v4, 4, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow424
	s_load_b128 s[20:23], s[0:1], 0x40
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v28, 15, v0
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v29, 0xf0, v0
	v_or_b32_e32 v91, 16, v27
	v_or_b32_e32 v92, 32, v27
	v_or_b32_e32 v93, 48, v27
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v80, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s8, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v10, 3, v0
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	v_bfe_i32 v11, v0, 3, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s9, s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_bfe_i32 v20, v0, 7, 1
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v21, 0x70, v96
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v10, 0x700, v10
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v11, 0x88, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[38:39], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[7:8]
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v1, s34, v28
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[3:4]
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v22, 0x7f, v0
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v20, 0x88, v20
	v_or3_b32 v30, v21, v10, v11
	v_or_b32_e32 v31, 0x300, v0
	v_lshlrev_b32_e32 v10, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s4, s7
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s4, s41, 8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v98, v1, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s4, v27
	v_xor_b32_e32 v33, v20, v22
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v11, 1, v0
	v_dual_mov_b32 v39, 0 :: v_dual_lshlrev_b32 v20, 2, v29
	v_lshlrev_b32_e32 v37, 1, v29
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v104, 0, v31
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v10, 32, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s5, s8, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v12, s4, v91
	v_or_b32_e32 v13, s4, v92
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v14, s4, v93
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s5, s9
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v15, 64, v1
	v_or_b32_e32 v16, 0x50, v1
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v35, 28, v11
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v111, 0, v37
	v_mov_b32_e32 v37, 0
	v_add3_u32 v36, 0, v20, v10
	v_mad_u64_u32 v[10:11], null, v1, s8, s[6:7]
	v_or_b32_e32 v17, 0x60, v1
	v_mad_u64_u32 v[11:12], null, v12, s8, s[6:7]
	v_or_b32_e32 v18, 0x70, v1
	v_mad_u64_u32 v[12:13], null, v13, s8, s[6:7]
	v_or_b32_e32 v19, 0x80, v1
	v_mad_u64_u32 v[13:14], null, v14, s8, s[6:7]
	v_or_b32_e32 v8, 0x90, v1
	v_mad_u64_u32 v[14:15], null, v15, s8, s[6:7]
	v_or_b32_e32 v7, 0xa0, v1
	v_mad_u64_u32 v[15:16], null, v16, s8, s[6:7]
	v_or_b32_e32 v6, 0xb0, v1
	v_mad_u64_u32 v[16:17], null, v17, s8, s[6:7]
	v_or_b32_e32 v5, 0xc0, v1
	v_mad_u64_u32 v[17:18], null, v18, s8, s[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v101, v4, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xd0, v1
	v_mad_u64_u32 v[18:19], null, v19, s8, s[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v100, v3, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xe0, v1
	v_mad_u64_u32 v[19:20], null, v8, s8, s[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v99, v2, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xf0, v1
	v_mad_u64_u32 v[20:21], null, v7, s8, s[6:7]
	v_mad_u64_u32 v[21:22], null, v6, s8, s[6:7]
	v_mad_u64_u32 v[22:23], null, v5, s8, s[6:7]
	v_or_b32_e32 v32, 0x3f0, v0
	v_xor_b32_e32 v34, 8, v30
	v_mad_u64_u32 v[23:24], null, v4, s8, s[6:7]
	v_or_b32_e32 v102, s4, v0
	s_mov_b32 s4, 0
	v_mad_u64_u32 v[24:25], null, v3, s8, s[6:7]
	v_mad_u64_u32 v[25:26], null, v2, s8, s[6:7]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s43, s40, s9
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v1, s4
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v97, 6, v0
	v_add_nc_u32_e32 v103, 0, v0
	v_add_nc_u32_e32 v105, 0, v28
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v106, 0, v32
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v107, 0, v33
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v108, 0, v30
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v109, 0, v34
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v110, v36, v35
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v30, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
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
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v112, 4, v97
	v_or_b32_e32 v113, 8, v97
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s5, s4, 4
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v114, 12, v97
	v_or_b32_e32 v115, s5, v97
	v_or_b32_e32 v112, s5, v112
	v_or_b32_e32 v113, s5, v113
	v_or_b32_e32 v116, s5, v28
	v_or_b32_e32 v114, s5, v114
	v_mad_u64_u32 v[128:129], null, v115, s42, v[9:10]
	v_mad_u64_u32 v[129:130], null, v112, s42, v[9:10]
	v_mad_u64_u32 v[130:131], null, v113, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[131:132], null, v114, s42, v[9:10]
	v_add_nc_u32_e32 v115, v10, v116
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	v_add_nc_u32_e32 v117, v11, v116
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	v_add_nc_u32_e32 v118, v12, v116
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_add_nc_u32_e32 v119, v13, v116
	v_cndmask_b32_e64 v131, 0x80000000, v131, s2
	v_add_nc_u32_e32 v120, v14, v116
	v_add_nc_u32_e32 v121, v15, v116
	v_add_nc_u32_e32 v122, v16, v116
	v_add_nc_u32_e32 v123, v17, v116
	v_add_nc_u32_e32 v124, v18, v116
	v_add_nc_u32_e32 v125, v19, v116
	v_add_nc_u32_e32 v126, v20, v116
	v_add_nc_u32_e32 v127, v21, v116
	v_add_nc_u32_e32 v133, v22, v116
	v_add_nc_u32_e32 v134, v23, v116
	v_add_nc_u32_e32 v135, v24, v116
	v_add_nc_u32_e32 v136, v25, v116
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v112, v115, s[12:15], 0 offen
	buffer_load_u8 v113, v117, s[12:15], 0 offen
	buffer_load_u8 v114, v118, s[12:15], 0 offen
	buffer_load_u8 v115, v119, s[12:15], 0 offen
	buffer_load_u8 v116, v120, s[12:15], 0 offen
	buffer_load_u8 v117, v121, s[12:15], 0 offen
	buffer_load_u8 v118, v122, s[12:15], 0 offen
	buffer_load_u8 v119, v123, s[12:15], 0 offen
	buffer_load_u8 v120, v124, s[12:15], 0 offen
	buffer_load_u8 v121, v125, s[12:15], 0 offen
	buffer_load_u8 v122, v126, s[12:15], 0 offen
	buffer_load_u8 v123, v127, s[12:15], 0 offen
	buffer_load_u8 v124, v133, s[12:15], 0 offen
	buffer_load_u8 v125, v134, s[12:15], 0 offen
	buffer_load_u8 v126, v135, s[12:15], 0 offen
	buffer_load_u8 v127, v136, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v128, v128, s[24:27], 0 offen
	buffer_load_u8 v129, v129, s[24:27], 0 offen
	buffer_load_u8 v130, v130, s[24:27], 0 offen
	buffer_load_u8 v131, v131, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s5, s4, s43
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	ds_store_b8 v103, v128
	s_waitcnt vmcnt(2)
	ds_store_b8 v103, v129 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v103, v130 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v104, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v128, v105 offset:320
	ds_load_u8 v129, v105 offset:256
	ds_load_u8 v132, v105 offset:336
	ds_load_u8 v133, v105 offset:272
	ds_load_u8 v134, v105 offset:352
	ds_load_u8 v135, v105 offset:288
	ds_load_u8 v136, v105 offset:368
	ds_load_u8 v137, v105 offset:304
	ds_load_u8 v130, v105 offset:448
	ds_load_u8 v131, v105 offset:384
	ds_load_u8 v138, v105 offset:464
	ds_load_u8 v139, v105 offset:400
	ds_load_u8 v140, v105 offset:480
	ds_load_u8 v141, v105 offset:416
	ds_load_u8 v142, v105 offset:496
	ds_load_u8 v143, v105 offset:432
	ds_load_u8 v144, v105 offset:64
	ds_load_u8 v145, v105
	ds_load_u8 v146, v105 offset:80
	ds_load_u8 v147, v105 offset:96
	ds_load_u8 v148, v105 offset:112
	ds_load_u8 v149, v105 offset:16
	ds_load_u8 v150, v105 offset:32
	ds_load_u8 v151, v105 offset:48
	ds_load_u8 v152, v105 offset:192
	ds_load_u8 v153, v105 offset:128
	ds_load_u8 v154, v105 offset:208
	ds_load_u8 v155, v105 offset:144
	ds_load_u8 v156, v105 offset:224
	ds_load_u8 v157, v105 offset:160
	ds_load_u8 v158, v105 offset:240
	ds_load_u8 v159, v105 offset:176
	ds_load_u8 v160, v105 offset:832
	ds_load_u8 v161, v105 offset:768
	ds_load_u8 v162, v105 offset:848
	ds_load_u8 v163, v105 offset:784
	ds_load_u8 v164, v105 offset:864
	ds_load_u8 v165, v105 offset:800
	ds_load_u8 v166, v105 offset:880
	ds_load_u8 v167, v105 offset:816
	ds_load_u8 v168, v105 offset:960
	ds_load_u8 v169, v105 offset:896
	ds_load_u8 v170, v105 offset:976
	ds_load_u8 v171, v105 offset:912
	ds_load_u8 v172, v105 offset:992
	ds_load_u8 v173, v105 offset:928
	ds_load_u8 v174, v106
	ds_load_u8 v175, v105 offset:944
	ds_load_u8 v176, v105 offset:576
	ds_load_u8 v177, v105 offset:512
	ds_load_u8 v178, v105 offset:592
	ds_load_u8 v179, v105 offset:528
	ds_load_u8 v180, v105 offset:608
	ds_load_u8 v181, v105 offset:544
	ds_load_u8 v182, v105 offset:624
	ds_load_u8 v183, v105 offset:560
	ds_load_u8 v184, v105 offset:704
	ds_load_u8 v185, v105 offset:640
	ds_load_u8 v186, v105 offset:720
	ds_load_u8 v187, v105 offset:656
	ds_load_u8 v188, v105 offset:736
	ds_load_u8 v189, v105 offset:672
	ds_load_u8 v190, v105 offset:752
	ds_load_u8 v191, v105 offset:688
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v107, v112
	ds_store_b8 v107, v113 offset:256
	ds_store_b8 v107, v114 offset:512
	ds_store_b8 v107, v115 offset:768
	ds_store_b8 v107, v116 offset:1024
	ds_store_b8 v107, v117 offset:1280
	ds_store_b8 v107, v118 offset:1536
	ds_store_b8 v107, v119 offset:1792
	ds_store_b8 v107, v120 offset:2048
	ds_store_b8 v107, v121 offset:2304
	ds_store_b8 v107, v122 offset:2560
	ds_store_b8 v107, v123 offset:2816
	ds_store_b8 v107, v124 offset:3072
	ds_store_b8 v107, v125 offset:3328
	ds_store_b8 v107, v126 offset:3584
	ds_store_b8 v107, v127 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[120:123], v108 offset1:4
	ds_load_2addr_stride64_b64 v[124:127], v109 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v112, v129, v128, 0xc0c0004
	v_perm_b32 v113, v131, v130, 0xc0c0004
	v_perm_b32 v114, v145, v144, 0xc0c0004
	v_perm_b32 v115, v153, v152, 0xc0c0004
	v_perm_b32 v116, v161, v160, 0xc0c0004
	v_perm_b32 v117, v169, v168, 0xc0c0004
	v_perm_b32 v118, v177, v176, 0xc0c0004
	v_perm_b32 v119, v185, v184, 0xc0c0004
	v_lshl_or_b32 v129, v113, 16, v112
	v_lshl_or_b32 v128, v115, 16, v114
	v_lshl_or_b32 v131, v117, 16, v116
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s5, s33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v130, v119, 16, v118
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[124:125], v[130:131], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v145, v113
	v_cvt_f32_i32_e32 v152, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v153, v115
	v_cvt_f32_i32_e32 v160, v116
	v_cvt_f32_i32_e32 v161, v117
	v_cvt_f32_i32_e32 v168, v118
	v_cvt_f32_i32_e32 v169, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[126:127], v[130:131], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v176, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v192, v113
	v_cvt_f32_i32_e32 v193, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v115
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v112, v133, v132, 0xc0c0004
	v_perm_b32 v113, v139, v138, 0xc0c0004
	v_perm_b32 v114, v149, v146, 0xc0c0004
	v_perm_b32 v115, v155, v154, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v177, v117
	v_cvt_f32_i32_e32 v184, v118
	v_cvt_f32_i32_e32 v185, v119
	v_cvt_f32_i32_e32 v195, v116
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v116, v163, v162, 0xc0c0004
	v_perm_b32 v117, v171, v170, 0xc0c0004
	v_perm_b32 v118, v179, v178, 0xc0c0004
	v_perm_b32 v119, v187, v186, 0xc0c0004
	v_lshl_or_b32 v129, v113, 16, v112
	v_lshl_or_b32 v128, v115, 16, v114
	v_lshl_or_b32 v131, v117, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v130, v119, 16, v118
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[124:125], v[130:131], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v133, v113
	v_cvt_f32_i32_e32 v138, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v139, v115
	v_cvt_f32_i32_e32 v146, v116
	v_cvt_f32_i32_e32 v149, v117
	v_cvt_f32_i32_e32 v154, v118
	v_cvt_f32_i32_e32 v155, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[126:127], v[130:131], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v178, v113
	v_cvt_f32_i32_e32 v179, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v186, v115
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v112, v135, v134, 0xc0c0004
	v_perm_b32 v113, v141, v140, 0xc0c0004
	v_perm_b32 v114, v150, v147, 0xc0c0004
	v_perm_b32 v115, v157, v156, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v163, v117
	v_cvt_f32_i32_e32 v170, v118
	v_cvt_f32_i32_e32 v171, v119
	v_cvt_f32_i32_e32 v187, v116
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v116, v165, v164, 0xc0c0004
	v_perm_b32 v117, v173, v172, 0xc0c0004
	v_perm_b32 v118, v181, v180, 0xc0c0004
	v_perm_b32 v119, v189, v188, 0xc0c0004
	v_lshl_or_b32 v129, v113, 16, v112
	v_lshl_or_b32 v128, v115, 16, v114
	v_lshl_or_b32 v131, v117, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v130, v119, 16, v118
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[124:125], v[130:131], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v135, v113
	v_cvt_f32_i32_e32 v140, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v141, v115
	v_cvt_f32_i32_e32 v147, v116
	v_cvt_f32_i32_e32 v150, v117
	v_cvt_f32_i32_e32 v156, v118
	v_cvt_f32_i32_e32 v157, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[126:127], v[130:131], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v180, v113
	v_cvt_f32_i32_e32 v181, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v188, v115
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v112, v137, v136, 0xc0c0004
	v_perm_b32 v113, v143, v142, 0xc0c0004
	v_perm_b32 v114, v151, v148, 0xc0c0004
	v_perm_b32 v115, v159, v158, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v165, v117
	v_cvt_f32_i32_e32 v172, v118
	v_cvt_f32_i32_e32 v173, v119
	v_cvt_f32_i32_e32 v189, v116
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v116, v167, v166, 0xc0c0004
	v_perm_b32 v117, v175, v174, 0xc0c0004
	v_perm_b32 v118, v183, v182, 0xc0c0004
	v_perm_b32 v119, v191, v190, 0xc0c0004
	v_lshl_or_b32 v129, v113, 16, v112
	v_lshl_or_b32 v128, v115, 16, v114
	v_lshl_or_b32 v131, v117, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v130, v119, 16, v118
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[124:125], v[130:131], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v120, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v121, v113
	v_cvt_f32_i32_e32 v124, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v125, v115
	v_cvt_f32_i32_e32 v136, v116
	v_cvt_f32_i32_e32 v137, v117
	v_cvt_f32_i32_e32 v142, v118
	v_cvt_f32_i32_e32 v143, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[128:129], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v122, s4, v98, 1
	v_add_lshl_u32 v123, s4, v99, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v128, v102, s5, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[126:127], v[130:131], v[112:119] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v126, s4, v100, 1
	v_add_lshl_u32 v127, s4, v101, 1
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v126, 0x80000000, v126, s1
	v_cndmask_b32_e64 v127, 0x80000000, v127, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v128, v128, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v122, v122, s[28:31], 0 offen
	buffer_load_u16 v123, v123, s[28:31], 0 offen
	buffer_load_u16 v126, v126, s[28:31], 0 offen
	buffer_load_u16 v127, v127, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s4, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v159, v122, v194 :: v_dual_lshlrev_b32 v128, 16, v128
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v110, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v128, v122, v144
	v_mul_f32_e32 v129, v122, v145
	v_mul_f32_e32 v130, v122, v152
	v_mul_f32_e32 v131, v122, v153
	v_mul_f32_e32 v144, v122, v160
	v_mul_f32_e32 v145, v122, v161
	v_mul_f32_e32 v148, v122, v168
	v_dual_mul_f32 v151, v122, v169 :: v_dual_mul_f32 v152, v176, v122
	v_mul_f32_e32 v153, v122, v192
	v_mul_f32_e32 v158, v122, v193
	v_mul_f32_e32 v160, v177, v122
	v_mul_f32_e32 v161, v184, v122
	v_dual_mul_f32 v166, v185, v122 :: v_dual_mul_f32 v167, v122, v195
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v122, 16, v123
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v123, v122, v132
	v_mul_f32_e32 v132, v122, v133
	v_mul_f32_e32 v133, v122, v138
	v_mul_f32_e32 v138, v122, v139
	v_mul_f32_e32 v139, v122, v146
	v_mul_f32_e32 v146, v122, v149
	v_mul_f32_e32 v149, v122, v154
	v_mul_f32_e32 v168, v122, v179
	v_mul_f32_e32 v169, v122, v186
	v_mul_f32_e32 v163, v163, v122
	v_mul_f32_e32 v170, v170, v122
	v_dual_mul_f32 v171, v171, v122 :: v_dual_mul_f32 v154, v122, v155
	v_mul_f32_e32 v155, v162, v122
	v_mul_f32_e32 v162, v122, v178
	v_mul_f32_e32 v174, v122, v187
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v122, 16, v126
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v126, 16, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v147, v122, v147
	v_dual_mul_f32 v177, v126, v125 :: v_dual_mul_f32 v186, v117, v126
	v_mul_f32_e32 v178, v122, v180
	v_mul_f32_e32 v184, v126, v115
	v_mul_f32_e32 v180, v122, v188
	v_dual_mul_f32 v182, v126, v113 :: v_dual_mul_f32 v173, v173, v122
	v_mul_f32_e32 v179, v122, v181
	v_mul_f32_e32 v181, v112, v126
	v_mul_f32_e32 v185, v122, v189
	v_mul_f32_e32 v187, v118, v126
	v_mul_f32_e32 v188, v119, v126
	v_mul_f32_e32 v183, v126, v114
	v_mul_f32_e32 v189, v126, v116
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[112:115], v111
	ds_load_b128 v[116:119], v111 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v176, v126, v124
	v_dual_mul_f32 v175, v126, v121 :: v_dual_mul_f32 v164, v164, v122
	v_mul_f32_e32 v165, v165, v122
	v_mul_f32_e32 v172, v172, v122
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v76, v132, v113 :: v_dual_mul_f32 v127, v122, v134
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v72, v139, v116
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v134, v122, v135 :: v_dual_fmac_f32 v87, v145, v117
	v_mul_f32_e32 v135, v122, v140
	v_dual_mul_f32 v140, v122, v141 :: v_dual_fmac_f32 v41, v177, v115
	v_mul_f32_e32 v141, v126, v120
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v137, v126, v137 :: v_dual_fmac_f32 v58, v135, v114
	v_mul_f32_e32 v156, v122, v156
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v129, v113
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v157, v122, v157 :: v_dual_fmac_f32 v74, v133, v114
	v_dual_mul_f32 v150, v122, v150 :: v_dual_fmac_f32 v77, v123, v112
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v127, v112
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[120:123], v111 offset:512
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v142, v126, v142 :: v_dual_fmac_f32 v85, v151, v119
	v_dual_mul_f32 v143, v126, v143 :: v_dual_fmac_f32 v42, v176, v114
	v_mul_f32_e32 v136, v126, v136
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[124:127], v111 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v95, v128, v112 :: v_dual_fmac_f32 v90, v130, v114
	v_fmac_f32_e32 v89, v131, v115
	v_fmac_f32_e32 v73, v138, v115
	v_fmac_f32_e32 v59, v134, v113
	v_dual_fmac_f32 v57, v140, v115 :: v_dual_fmac_f32 v44, v141, v112
	v_dual_fmac_f32 v43, v175, v113 :: v_dual_fmac_f32 v88, v144, v116
	v_dual_fmac_f32 v86, v148, v118 :: v_dual_fmac_f32 v71, v146, v117
	v_dual_fmac_f32 v70, v149, v118 :: v_dual_fmac_f32 v69, v154, v119
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v66, v168, v122
	v_dual_fmac_f32 v56, v147, v116 :: v_dual_fmac_f32 v53, v157, v119
	v_dual_fmac_f32 v55, v150, v117 :: v_dual_fmac_f32 v52, v164, v120
	v_dual_fmac_f32 v39, v137, v117 :: v_dual_fmac_f32 v54, v156, v118
	v_dual_fmac_f32 v37, v143, v119 :: v_dual_fmac_f32 v40, v136, v116
	v_dual_fmac_f32 v75, v152, v120 :: v_dual_fmac_f32 v38, v142, v118
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v61, v171, v127 :: v_dual_fmac_f32 v84, v153, v121
	v_dual_fmac_f32 v83, v158, v122 :: v_dual_fmac_f32 v36, v181, v120
	v_fmac_f32_e32 v82, v159, v123
	v_dual_fmac_f32 v68, v155, v120 :: v_dual_fmac_f32 v67, v162, v121
	v_dual_fmac_f32 v50, v179, v122 :: v_dual_fmac_f32 v65, v169, v123
	v_dual_fmac_f32 v51, v178, v121 :: v_dual_fmac_f32 v34, v183, v122
	v_fmac_f32_e32 v81, v167, v124
	v_fmac_f32_e32 v33, v184, v123
	v_fmac_f32_e32 v49, v180, v123
	v_dual_fmac_f32 v35, v182, v121 :: v_dual_fmac_f32 v48, v185, v124
	v_dual_fmac_f32 v80, v160, v125 :: v_dual_fmac_f32 v79, v161, v126
	v_dual_fmac_f32 v78, v166, v127 :: v_dual_fmac_f32 v47, v165, v125
	v_dual_fmac_f32 v64, v174, v124 :: v_dual_fmac_f32 v45, v173, v127
	v_dual_fmac_f32 v63, v163, v125 :: v_dual_fmac_f32 v62, v170, v126
	v_fmac_f32_e32 v46, v172, v126
	v_dual_fmac_f32 v26, v189, v124 :: v_dual_fmac_f32 v31, v187, v126
	v_fmac_f32_e32 v32, v186, v125
	v_fmac_f32_e32 v30, v188, v127
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v4, v96 :: v_dual_and_b32 v1, 8, v0
	v_dual_mov_b32 v3, v9 :: v_dual_and_b32 v2, 0x80, v0
.LBB0_7:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v94|, |v94|
	v_max_f32_e64 v6, |v95|, |v95|
	v_max3_f32 v7, |v89|, |v88|, |v87|
	v_max3_f32 v8, |v84|, |v83|, |v82|
	v_max3_f32 v9, |v81|, |v80|, |v79|
	v_max_f32_e64 v10, |v77|, |v77|
	v_max_f32_e32 v5, v6, v5
	v_max_f32_e64 v6, |v76|, |v76|
	v_max3_f32 v13, |v67|, |v66|, |v65|
	v_max3_f32 v8, v8, v9, |v78|
	v_max_f32_e64 v9, |v60|, |v60|
	v_max3_f32 v5, v5, |v90|, v7
	v_max_f32_e64 v7, |v59|, |v59|
	v_max_f32_e32 v6, v10, v6
	v_max3_f32 v10, |v73|, |v72|, |v71|
	v_max3_f32 v14, |v64|, |v63|, |v62|
	v_max3_f32 v11, |v86|, |v85|, |v75|
	v_max3_f32 v12, |v70|, |v69|, |v68|
	v_max_f32_e32 v7, v9, v7
	v_max3_f32 v9, |v57|, |v56|, |v55|
	v_max3_f32 v15, |v51|, |v50|, |v49|
	v_max3_f32 v16, |v48|, |v47|, |v46|
	v_max3_f32 v6, v6, |v74|, v10
	v_max3_f32 v10, v13, v14, |v61|
	v_max3_f32 v13, |v54|, |v53|, |v52|
	v_max3_f32 v7, v7, |v58|, v9
	v_max3_f32 v9, v15, v16, |v45|
	v_max_f32_e64 v14, |v43|, |v43|
	v_max_f32_e64 v15, |v44|, |v44|
	v_max3_f32 v5, v5, v11, v8
	v_max3_f32 v6, v6, v12, v10
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v7, v7, v13, v9
	v_max_f32_e32 v8, v15, v14
	v_max3_f32 v9, |v41|, |v40|, |v39|
	v_max3_f32 v10, |v35|, |v34|, |v33|
	v_max3_f32 v11, |v26|, |v32|, |v31|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v13, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v6, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, |v38|, |v37|, |v36|
	v_max3_f32 v8, v8, |v42|, v9
	v_max3_f32 v9, v10, v11, |v30|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v10, v13, v13 :: v_dual_max_f32 v11, v14, v14
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v13, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 3, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v8, v12, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v8, v5, v10 :: v_dual_max_f32 v9, v6, v11
	v_dual_max_f32 v6, v13, v13 :: v_dual_lshlrev_b32 v5, 5, v14
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v13, 4, v0
	v_lshl_add_u32 v11, v14, 9, 0
	v_permlanex16_b32 v15, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v7, v6 :: v_dual_and_b32 v7, 0x60, v0
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v4, 0x680, v4, v5
	v_lshl_add_u32 v11, v13, 2, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_lshlrev_b32 v6, 1, v2
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v16, v5, v7
	v_lshrrev_b32_e32 v18, 3, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v17, v1, 4, v11
	v_xor_b32_e32 v4, v4, v7
	v_lshl_add_u32 v19, v13, 6, 0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v12, v15
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v12, v17, v6, v16
	s_barrier
	v_add3_u32 v4, v19, v18, v4
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp17:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s21, 0xffff
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v12, v[8:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_dual_mov_b32 v4, v8 :: v_dual_lshlrev_b32 v1, 3, v1
	v_dual_mov_b32 v15, v10 :: v_dual_mov_b32 v12, v9
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v11, v11
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v8, v4
	v_dual_max_f32 v8, v9, v12 :: v_dual_max_f32 v9, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, v15, v15 :: v_dual_mov_b32 v15, v8
	v_dual_max_f32 v9, v9, v10 :: v_dual_mov_b32 v12, v4
	v_max_f32_e32 v10, v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, v4, v12
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v10
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v8, v15
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v11, v11
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v16, v16
	v_dual_max_f32 v17, v9, v8 :: v_dual_max_f32 v8, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v11, v10, v11 :: v_dual_mov_b32 v16, v12
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v15, 1, v7
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v4, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v10, v17
	v_add3_u32 v2, v2, v15, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v16, v16 :: v_dual_mov_b32 v18, v11
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v12, v9
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v10, v10
	v_max_f32_e32 v12, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v17, v4
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v13
	v_lshl_add_u32 v13, v14, 4, 0
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v12
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v13, v4, v1
	ds_store_b128 v2, v[8:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v1
.Ltmp45:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v8, v8
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v4, 0x2b8cbccc, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v93
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s0, s34, v92
	v_add_co_ci_u32_e64 v13, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v16, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s34, v91
	v_add_co_ci_u32_e64 v15, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v17, vcc_lo, v4, 0x40e00000, v4
	v_max_f32_e32 v9, 0x2b8cbccc, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v1, -v8, v16, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[12:13]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v11, 0x2b8cbccc, v11
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v9
	v_fmac_f32_e32 v16, v1, v16
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[14:15]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v21, v12
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v8, v18, v17
	v_fmac_f32_e32 v18, v13, v16
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v8, v18, v17
	v_rcp_f32_e32 v22, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v8, v8, v16, v18
	v_fma_f32 v16, -v12, v21, 1.0
	v_div_scale_f32 v18, s8, v9, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v8, 0x40e00000, v4
	v_dual_fmac_f32 v21, v16, v21 :: v_dual_max_f32 v10, 0x2b8cbccc, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v13, v22, 1.0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v16.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v10
	v_div_scale_f32 v20, s7, v10, 0x40e00000, v10
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v1, v2
	v_fma_f32 v19, -v2, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v1, v19, v1
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v19.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v17, v20, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v16.h, v19.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v2, v17, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v17, v23, v1 :: v_dual_and_b32 v14, 1, v16
	v_mul_f32_e32 v23, v18, v21
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v2, v17, v20
	v_fma_f32 v15, -v12, v23, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v92, 0xffff0000, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v17, v2, v1, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v15, v21
	s_mov_b32 vcc_lo, s8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s34, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v17, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v12, v23, v18
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v18, null, v92, v92, v90
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v12, v12, v21, v23
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v19.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fixup_f32 v9, v12, 0x40e00000, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v12, null, v92, v92, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v17, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v22, v8, v22
	v_div_scale_f32 v8, s9, v11, 0x40e00000, v11
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v16, v8, v22
	v_fma_f32 v14, -v13, v16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v14, v22
	v_fma_f32 v8, -v13, v16, v8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v13, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v10, v13, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v13, -v12, v17, 1.0
	v_fmac_f32_e32 v17, v13, v17
	v_rcp_f32_e32 v13, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v8, v8, v22, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v11, v8, 0x40e00000, v11
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v8.l, v9.h
	v_mov_b16_e32 v8.h, v19.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v23, -v18, v13, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v19.l, v11.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v13, v23, v13 :: v_dual_and_b32 v2, 1, v8
	v_div_scale_f32 v14, null, v92, v92, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v8, v9, v2, 0x7fff
	v_and_b32_e32 v19, 1, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v20, null, v92, v92, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v15, v14
	v_div_scale_f32 v21, s9, v94, v92, v94
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v11, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v19, v20
	v_div_scale_f32 v25, null, v92, v92, v88
	v_mul_f32_e32 v11, v21, v17
	v_div_scale_f32 v23, s10, v90, v92, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v16, -v14, v15, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v91, 0xffff0000, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v24, -v20, v19, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v95, v92, v95
	v_fmac_f32_e32 v19, v24, v19
	v_div_scale_f32 v24, null, v92, v92, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v10, v16, v15
	v_fma_f32 v9, -v14, v10, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v10, v9, v15 :: v_dual_and_b32 v9, 0xffff0000, v2
	v_fma_f32 v14, -v14, v10, v16
	v_fma_f32 v16, -v12, v11, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v14, v15, v10
	v_rcp_f32_e32 v15, v25
	v_fmac_f32_e32 v11, v16, v17
	v_div_scale_f32 v16, s11, v89, v92, v89
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v22, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v12, v11, v21
	v_mul_f32_e32 v93, v16, v19
	v_div_fixup_f32 v10, v10, v92, v95
	v_rcp_f32_e32 v95, v24
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v25, v15, 1.0
	v_mul_f32_e32 v14, v23, v13
	v_div_fmas_f32 v11, v12, v17, v11
	v_fma_f32 v12, -v20, v93, v16
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v15, v96, v15
	v_fma_f32 v21, -v18, v14, v23
	v_div_scale_f32 v17, s9, v88, v92, v88
	v_fmac_f32_e32 v93, v12, v19
	v_div_fixup_f32 v11, v11, v92, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v14, v21, v13
	v_fma_f32 v21, -v24, v95, 1.0
	v_div_scale_f32 v94, null, v92, v92, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v18, -v18, v14, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v21, v95
	v_div_scale_f32 v21, s12, v87, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v12, v18, v13, v14
	v_fma_f32 v13, -v20, v93, v16
	v_rcp_f32_e32 v16, v94
	v_div_scale_f32 v20, null, v92, v92, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v12, v12, v92, v90
	v_div_scale_f32 v90, null, v92, v92, v84
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v18, v21, v95
	v_div_fmas_f32 v13, v13, v19, v93
	v_rcp_f32_e32 v96, v90
	v_mul_f32_e32 v23, v17, v15
	v_rcp_f32_e32 v19, v20
	v_fma_f32 v93, -v94, v16, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v13, v13, v92, v89
	v_fma_f32 v14, -v25, v23, v17
	v_div_scale_f32 v89, null, v92, v92, v75
	v_fmac_f32_e32 v16, v93, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v23, v14, v15
	v_fma_f32 v14, -v24, v18, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v17, -v25, v23, v17
	v_fmac_f32_e32 v18, v14, v95
	v_div_scale_f32 v25, s10, v86, v92, v86
	v_fma_f32 v14, -v20, v19, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v15, v17, v15, v23
	v_fma_f32 v17, -v24, v18, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v21, v25, v16
	v_div_scale_f32 v24, s9, v85, v92, v85
	v_fmac_f32_e32 v19, v14, v19
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v14, v15, v92, v88
	v_div_fmas_f32 v17, v17, v95, v18
	v_fma_f32 v18, -v94, v21, v25
	v_mul_f32_e32 v93, v24, v19
	v_rcp_f32_e32 v23, v89
	v_fma_f32 v88, -v90, v96, 1.0
	v_div_fixup_f32 v15, v17, v92, v87
	v_fmac_f32_e32 v21, v18, v16
	v_fma_f32 v17, -v20, v93, v24
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v96, v88, v96
	v_div_scale_f32 v88, s12, v84, v92, v84
	v_fma_f32 v25, -v94, v21, v25
	v_fmac_f32_e32 v93, v17, v19
	v_fma_f32 v95, -v89, v23, 1.0
	v_div_scale_f32 v18, s11, v75, v92, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v16, v25, v16, v21
	v_fma_f32 v17, -v20, v93, v24
	v_div_scale_f32 v25, null, v92, v92, v82
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v21, v88, v96
	v_div_fmas_f32 v17, v17, v19, v93
	v_rcp_f32_e32 v93, v25
	v_fmac_f32_e32 v23, v95, v23
	v_div_scale_f32 v87, null, v92, v92, v83
	v_fma_f32 v19, -v90, v21, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v17, v92, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v87
	v_div_scale_f32 v85, null, v92, v92, v81
	v_fmac_f32_e32 v21, v19, v96
	v_fma_f32 v19, -v25, v93, 1.0
	v_mul_f32_e32 v94, v18, v23
	v_div_fixup_f32 v16, v16, v92, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v19, v93
	v_fma_f32 v20, -v89, v94, v18
	v_fma_f32 v24, -v87, v95, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v20, v23
	v_fmac_f32_e32 v95, v24, v95
	v_div_scale_f32 v20, s9, v83, v92, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v89, v94, v18
	v_div_scale_f32 v89, s10, v82, v92, v82
	v_div_fmas_f32 v18, v18, v23, v94
	v_fma_f32 v23, -v90, v21, v88
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v88, v85
	v_div_scale_f32 v90, null, v92, v92, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v23, v96, v21
	v_mul_f32_e32 v21, v89, v93
	v_div_fixup_f32 v18, v18, v92, v75
	v_rcp_f32_e32 v23, v90
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v19, v19, v92, v84
	v_fma_f32 v75, -v25, v21, v89
	v_mul_f32_e32 v24, v20, v95
	v_div_scale_f32 v84, s11, v81, v92, v81
	v_div_scale_f32 v94, null, v92, v92, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, v75, v93
	v_fma_f32 v86, -v87, v24, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v25, -v25, v21, v89
	v_fmac_f32_e32 v24, v86, v95
	v_fma_f32 v86, -v85, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v87, v24, v20
	v_div_scale_f32 v87, null, v92, v92, v79
	v_fmac_f32_e32 v88, v86, v88
	v_fma_f32 v86, -v90, v23, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v20, v20, v95, v24
	v_rcp_f32_e32 v75, v87
	v_rcp_f32_e32 v95, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v24, v84, v88 :: v_dual_fmac_f32 v23, v86, v23
	v_div_scale_f32 v86, s9, v80, v92, v80
	v_div_fixup_f32 v20, v20, v92, v83
	v_fma_f32 v83, -v85, v24, v84
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v89, v86, v23
	v_fma_f32 v96, -v87, v75, 1.0
	v_div_fmas_f32 v21, v25, v93, v21
	v_fmac_f32_e32 v24, v83, v88
	v_div_scale_f32 v83, s10, v79, v92, v79
	v_fma_f32 v25, -v90, v89, v86
	v_fmac_f32_e32 v75, v96, v75
	v_fma_f32 v93, -v94, v95, 1.0
	v_div_fixup_f32 v21, v21, v92, v82
	v_fma_f32 v82, -v85, v24, v84
	v_fmac_f32_e32 v89, v25, v23
	v_mul_f32_e32 v25, v83, v75
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v95, v93, v95
	v_div_scale_f32 v85, null, v91, v91, v77
	v_div_fmas_f32 v24, v82, v88, v24
	v_fma_f32 v82, -v90, v89, v86
	v_fma_f32 v86, -v87, v25, v83
	v_div_scale_f32 v93, null, v91, v91, v76
	v_div_scale_f32 v84, s12, v78, v92, v78
	v_rcp_f32_e32 v88, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v86, v75
	v_rcp_f32_e32 v86, v93
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v90, v84, v95
	v_div_fmas_f32 v82, v82, v23, v89
	v_div_fixup_f32 v23, v24, v92, v81
	v_div_scale_f32 v81, s9, v77, v91, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v94, v90, v84
	v_fma_f32 v96, -v85, v88, 1.0
	v_div_fixup_f32 v24, v82, v92, v80
	v_fma_f32 v80, -v87, v25, v83
	v_fma_f32 v82, -v93, v86, 1.0
	v_div_scale_f32 v83, null, v91, v91, v74
	v_fmac_f32_e32 v90, v89, v95
	v_fmac_f32_e32 v88, v96, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v82, v86
	v_rcp_f32_e32 v82, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, null, v91, v91, v73
	v_div_fmas_f32 v25, v80, v75, v25
	v_fma_f32 v75, -v94, v90, v84
	v_mul_f32_e32 v80, v81, v88
	v_div_scale_f32 v84, s10, v76, v91, v76
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v83, v82, 1.0
	v_div_fmas_f32 v75, v75, v95, v90
	v_fma_f32 v89, -v85, v80, v81
	v_mul_f32_e32 v90, v84, v86
	v_div_fixup_f32 v25, v25, v92, v79
	v_fmac_f32_e32 v82, v94, v82
	v_div_fixup_f32 v75, v75, v92, v78
	v_fmac_f32_e32 v80, v89, v88
	v_fma_f32 v78, -v93, v90, v84
	v_div_scale_f32 v79, s11, v74, v91, v74
	v_div_scale_f32 v89, null, v91, v91, v72
	v_rcp_f32_e32 v95, v87
	v_fma_f32 v81, -v85, v80, v81
	v_fmac_f32_e32 v90, v78, v86
	v_mul_f32_e32 v78, v79, v82
	v_rcp_f32_e32 v85, v89
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v91, v91, v71
	v_div_fmas_f32 v80, v81, v88, v80
	v_fma_f32 v81, -v93, v90, v84
	v_fma_f32 v84, -v83, v78, v79
	v_fma_f32 v92, -v87, v95, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v77, v80, v91, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v89, v85, 1.0
	v_fmac_f32_e32 v78, v84, v82
	v_rcp_f32_e32 v84, v94
	v_div_fmas_f32 v81, v81, v86, v90
	v_div_scale_f32 v90, s9, v72, v91, v72
	v_fmac_f32_e32 v85, v93, v85
	v_fmac_f32_e32 v95, v92, v95
	v_div_scale_f32 v92, s12, v73, v91, v73
	v_div_fixup_f32 v76, v81, v91, v76
	v_fma_f32 v79, -v83, v78, v79
	v_mul_f32_e32 v80, v90, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v88, v92, v95
	v_fma_f32 v81, -v94, v84, 1.0
	v_div_scale_f32 v83, null, v91, v91, v70
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v86, -v87, v88, v92
	v_fmac_f32_e32 v84, v81, v84
	v_rcp_f32_e32 v81, v83
	v_div_fmas_f32 v78, v79, v82, v78
	v_fma_f32 v82, -v89, v80, v90
	v_fmac_f32_e32 v88, v86, v95
	v_div_scale_f32 v86, s10, v71, v91, v71
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v80, v82, v85
	v_fma_f32 v79, -v87, v88, v92
	v_div_fixup_f32 v74, v78, v91, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v83, v81, 1.0
	v_div_scale_f32 v87, null, v91, v91, v69
	v_div_fmas_f32 v79, v79, v95, v88
	v_mul_f32_e32 v88, v86, v84
	v_fma_f32 v78, -v89, v80, v90
	v_fmac_f32_e32 v81, v92, v81
	v_div_scale_f32 v92, null, v91, v91, v68
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v73, v79, v91, v73
	v_fma_f32 v79, -v94, v88, v86
	v_div_scale_f32 v89, s11, v70, v91, v70
	v_div_fmas_f32 v78, v78, v85, v80
	v_rcp_f32_e32 v80, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v88, v79, v84 :: v_dual_mul_f32 v79, v89, v81
	v_rcp_f32_e32 v82, v87
	v_div_fixup_f32 v72, v78, v91, v72
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v78, -v94, v88, v86
	v_fma_f32 v86, -v83, v79, v89
	v_div_scale_f32 v85, s9, v69, v91, v69
	v_fma_f32 v95, -v92, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v84, v88
	v_div_scale_f32 v86, s10, v68, v91, v68
	v_fmac_f32_e32 v80, v95, v80
	v_fma_f32 v90, -v87, v82, 1.0
	v_div_fixup_f32 v71, v78, v91, v71
	v_fma_f32 v78, -v83, v79, v89
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v83, v86, v80
	v_div_scale_f32 v89, null, v91, v91, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v81, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v92, v83, v86
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v90, null, v91, v91, v67
	v_div_fixup_f32 v70, v78, v91, v70
	v_div_scale_f32 v95, null, v91, v91, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v94, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v90, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v88, v94 :: v_dual_fmac_f32 v83, v81, v80
	v_mul_f32_e32 v93, v85, v82
	v_div_scale_f32 v88, null, v91, v91, v66
	v_rcp_f32_e32 v81, v89
	v_fma_f32 v78, -v92, v83, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v87, v93, v85
	v_div_scale_f32 v86, null, v91, v91, v64
	v_fmac_f32_e32 v93, v84, v82
	v_div_scale_f32 v84, s12, v67, v91, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v87, v93, v85
	v_mul_f32_e32 v87, v84, v94
	v_rcp_f32_e32 v85, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v79, v82, v93
	v_fma_f32 v82, -v90, v87, v84
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v69, v79, v91, v69
	v_fmac_f32_e32 v87, v82, v94
	v_div_fmas_f32 v78, v78, v80, v83
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v82, -v89, v81, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v88, v85, 1.0
	v_fma_f32 v80, -v90, v87, v84
	v_div_scale_f32 v79, s9, v66, v91, v66
	v_div_scale_f32 v90, null, v91, v91, v63
	v_div_fmas_f32 v80, v80, v94, v87
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v84, s10, v65, v91, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v67, v80, v91, v67
	v_div_scale_f32 v80, s11, v64, v91, v64
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v86
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v68, v78, v91, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v86, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v83, v79, v85 :: v_dual_fmac_f32 v82, v93, v82
	v_fma_f32 v87, -v88, v83, v79
	v_fma_f32 v93, -v90, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v87, v85 :: v_dual_fmac_f32 v94, v93, v94
	v_div_scale_f32 v93, s12, v63, v91, v63
	v_mul_f32_e32 v92, v84, v81
	v_fma_f32 v79, -v88, v83, v79
	v_div_scale_f32 v87, null, v91, v91, v62
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v79, v79, v85, v83
	v_mul_f32_e32 v85, v93, v94
	v_fma_f32 v78, -v89, v92, v84
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v88, v87
	v_div_fixup_f32 v66, v79, v91, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v78, v81
	v_mul_f32_e32 v78, v80, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v89, v92, v84
	v_fma_f32 v84, -v86, v78, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v87, v88, 1.0
	v_fmac_f32_e32 v78, v84, v82
	v_fma_f32 v84, -v90, v85, v93
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v85, v84, v94
	v_div_fmas_f32 v81, v83, v81, v92
	v_rcp_f32_e32 v83, v95
	v_div_scale_f32 v84, null, v22, v22, v60
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v65, v81, v91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v95, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v83, v81, v83
	v_fma_f32 v79, -v86, v78, v80
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v86, s10, v61, v91, v61
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s9, v62, v91, v62
	v_div_fmas_f32 v78, v79, v82, v78
	v_fma_f32 v79, -v90, v85, v93
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v90, null, v22, v22, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v84, v81, 1.0
	v_div_fmas_f32 v79, v79, v94, v85
	v_dual_mul_f32 v85, v86, v83 :: v_dual_mul_f32 v80, v89, v88
	v_div_fixup_f32 v64, v78, v91, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v92, v81
	v_div_fixup_f32 v63, v79, v91, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v79, -v95, v85, v86
	v_fma_f32 v82, -v87, v80, v89
	v_div_scale_f32 v92, null, v22, v22, v58
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v85, v79, v83 :: v_dual_fmac_f32 v80, v82, v88
	v_rcp_f32_e32 v82, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v87, v80, v89
	v_div_scale_f32 v87, s11, v60, v22, v60
	v_div_fmas_f32 v78, v78, v88, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v90, v82, 1.0
	v_mul_f32_e32 v79, v87, v81
	v_rcp_f32_e32 v80, v92
	v_div_scale_f32 v88, s9, v59, v22, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, null, v22, v22, v57
	v_div_fixup_f32 v62, v78, v91, v62
	v_fma_f32 v78, -v95, v85, v86
	v_fma_f32 v86, -v84, v79, v87
	v_rcp_f32_e32 v94, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v92, v80, 1.0
	v_mul_f32_e32 v93, v88, v82
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v83, v85
	v_fmac_f32_e32 v80, v95, v80
	v_fma_f32 v83, -v90, v93, v88
	v_div_scale_f32 v85, s10, v58, v22, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v89, v94, 1.0
	v_div_fixup_f32 v61, v78, v91, v61
	v_fma_f32 v78, -v84, v79, v87
	v_fmac_f32_e32 v93, v83, v82
	v_dual_mul_f32 v83, v85, v80 :: v_dual_fmac_f32 v94, v86, v94
	v_div_scale_f32 v84, s12, v57, v22, v57
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, null, v22, v22, v56
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v93, v88
	v_fma_f32 v81, -v92, v83, v85
	v_mul_f32_e32 v88, v84, v94
	v_div_scale_f32 v90, null, v22, v22, v55
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v87, v86
	v_div_fmas_f32 v79, v79, v82, v93
	v_fma_f32 v82, -v89, v88, v84
	v_fmac_f32_e32 v83, v81, v80
	v_rcp_f32_e32 v81, v90
	v_div_fixup_f32 v60, v78, v22, v60
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v82, v94
	v_fma_f32 v78, -v92, v83, v85
	v_div_scale_f32 v85, null, v22, v22, v54
	v_fma_f32 v91, -v86, v87, 1.0
	v_div_fixup_f32 v59, v79, v22, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v82, -v90, v81, 1.0
	v_fma_f32 v80, -v89, v88, v84
	v_div_scale_f32 v84, s10, v55, v22, v55
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v79, s9, v56, v22, v56
	v_div_fmas_f32 v80, v80, v94, v88
	v_div_fixup_f32 v58, v78, v22, v58
	v_div_scale_f32 v89, null, v22, v22, v53
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v57, v80, v22, v57
	v_div_scale_f32 v80, s11, v54, v22, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v85, v82, 1.0
	v_fmac_f32_e32 v87, v91, v87
	v_mul_f32_e32 v91, v84, v81
	v_rcp_f32_e32 v93, v89
	v_div_scale_f32 v94, null, v22, v22, v51
	v_dual_fmac_f32 v82, v92, v82 :: v_dual_mul_f32 v83, v79, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v78, -v90, v91, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v91, v78, v81 :: v_dual_mul_f32 v78, v80, v82
	v_fma_f32 v88, -v86, v83, v79
	v_fma_f32 v92, -v89, v93, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v88, v87
	v_div_scale_f32 v88, null, v22, v22, v52
	v_fma_f32 v79, -v86, v83, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v86, v88
	v_div_fmas_f32 v79, v79, v87, v83
	v_fma_f32 v83, -v90, v91, v84
	v_fma_f32 v84, -v85, v78, v80
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v56, v79, v22, v56
	v_fma_f32 v90, -v88, v86, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v78, v84, v82
	v_div_fmas_f32 v81, v83, v81, v91
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s9, v52, v22, v52
	v_fma_f32 v79, -v85, v78, v80
	v_div_fixup_f32 v55, v81, v22, v55
	v_div_scale_f32 v85, s10, v51, v22, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v80, v90, v86
	v_div_fmas_f32 v78, v79, v82, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v94, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v88, v80, v90
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s12, v53, v22, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v83, v81, v83 :: v_dual_fmac_f32 v80, v82, v86
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v87, v92, v93
	v_div_fixup_f32 v54, v78, v22, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v88, v80, v90
	v_div_scale_f32 v88, s11, v50, v22, v50
	v_fma_f32 v84, -v89, v87, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v84, v93
	v_div_scale_f32 v84, null, v22, v22, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v89, v87, v92
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v89, null, v22, v22, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v85, v83
	v_rcp_f32_e32 v82, v89
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v53, v79, v22, v53
	v_fma_f32 v91, -v84, v81, 1.0
	v_fma_f32 v79, -v94, v87, v85
	v_div_fmas_f32 v78, v78, v86, v80
	v_div_scale_f32 v86, s9, v49, v22, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v90, -v89, v82, 1.0
	v_div_scale_f32 v91, null, v22, v22, v48
	v_fmac_f32_e32 v87, v79, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v79, v88, v81 :: v_dual_fmac_f32 v82, v90, v82
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v90, null, v22, v22, v47
	v_div_fixup_f32 v52, v78, v22, v52
	v_fma_f32 v78, -v94, v87, v85
	v_fma_f32 v85, -v84, v79, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v90
	v_mul_f32_e32 v92, v86, v82
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v91, v80, 1.0
	v_div_fmas_f32 v78, v78, v83, v87
	v_fmac_f32_e32 v79, v85, v81
	v_fma_f32 v83, -v89, v92, v86
	v_div_scale_f32 v85, s10, v48, v22, v48
	v_fmac_f32_e32 v80, v94, v80
	v_fma_f32 v87, -v90, v93, 1.0
	v_div_fixup_f32 v51, v78, v22, v51
	v_fma_f32 v78, -v84, v79, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v92, v83, v82 :: v_dual_mul_f32 v83, v85, v80
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v84, s12, v47, v22, v47
	v_div_scale_f32 v87, null, v22, v22, v46
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v88, v84, v93
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v89, v92, v86
	v_fma_f32 v81, -v91, v83, v85
	v_rcp_f32_e32 v86, v87
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v89, null, v22, v22, v45
	v_div_fmas_f32 v79, v79, v82, v92
	v_fmac_f32_e32 v83, v81, v80
	v_fma_f32 v82, -v90, v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v81, v89
	v_div_fixup_f32 v50, v78, v22, v50
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v92, -v87, v86, 1.0
	v_fma_f32 v78, -v91, v83, v85
	v_fmac_f32_e32 v88, v82, v93
	v_div_fixup_f32 v49, v79, v22, v49
	v_div_scale_f32 v79, s9, v46, v22, v46
	v_fmac_f32_e32 v86, v92, v86
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v80, -v90, v88, v84
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v82, -v89, v81, 1.0
	v_mul_f32_e32 v83, v79, v86
	v_div_scale_f32 v91, null, v9, v9, v43
	v_div_fmas_f32 v80, v80, v93, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v84, s10, v45, v22, v45
	v_fma_f32 v88, -v87, v83, v79
	v_div_fixup_f32 v47, v80, v22, v47
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v82, null, v9, v9, v44
	v_mul_f32_e32 v90, v84, v81
	v_fmac_f32_e32 v83, v88, v86
	v_div_fixup_f32 v48, v78, v22, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v78, -v89, v90, v84
	v_fma_f32 v79, -v87, v83, v79
	v_fma_f32 v92, -v91, v80, 1.0
	v_div_scale_f32 v87, null, v9, v9, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v78, v81
	v_div_fmas_f32 v79, v79, v86, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v86, s9, v43, v9, v43
	v_fma_f32 v88, -v82, v85, 1.0
	v_fma_f32 v83, -v89, v90, v84
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v94, v86, v80
	v_div_scale_f32 v78, s11, v44, v9, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v83, v81, v90
	v_div_scale_f32 v93, null, v9, v9, v41
	v_fma_f32 v83, -v91, v94, v86
	v_fmac_f32_e32 v85, v88, v85
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v95, v93
	v_div_fixup_f32 v46, v79, v22, v46
	v_fmac_f32_e32 v94, v83, v80
	v_mul_f32_e32 v84, v78, v85
	v_div_fixup_f32 v22, v81, v22, v45
	v_div_scale_f32 v81, null, v9, v9, v40
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v92, -v82, v84, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v88, 1.0
	v_fma_f32 v79, -v93, v95, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v92, v85
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s12, v42, v9, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v45, -v82, v84, v78
	v_fma_f32 v82, -v91, v94, v86
	v_mul_f32_e32 v90, v89, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v45, v45, v85, v84
	v_div_scale_f32 v84, null, v9, v9, v39
	v_fma_f32 v78, -v87, v90, v89
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v44, v45, v9, v44
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v80, v82, v80, v94
	v_fmac_f32_e32 v90, v78, v88
	v_rcp_f32_e32 v78, v81
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v43, v80, v9, v43
	v_fma_f32 v82, -v87, v90, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v84, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v88, v90
	v_fma_f32 v85, -v81, v78, 1.0
	v_fmac_f32_e32 v95, v79, v95
	v_div_scale_f32 v79, s10, v41, v9, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v42, v82, v9, v42
	v_fmac_f32_e32 v78, v85, v78
	v_div_scale_f32 v85, s9, v40, v9, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v83, v79, v95 :: v_dual_fmac_f32 v86, v80, v86
	v_div_scale_f32 v82, null, v9, v9, v38
	v_mul_f32_e32 v45, v85, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v93, v83, v79
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v88, v82
	v_div_scale_f32 v80, s11, v39, v9, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v87, v95
	v_fma_f32 v87, -v81, v45, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v93, v83, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v87, v78
	v_div_scale_f32 v87, null, v9, v9, v37
	v_div_fmas_f32 v79, v79, v95, v83
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v41, v79, v9, v41
	v_fma_f32 v79, -v81, v45, v85
	v_fma_f32 v85, -v82, v88, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v45, v79, v78, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v9, v9, v35
	v_div_scale_f32 v78, null, v9, v9, v36
	v_div_fixup_f32 v40, v45, v9, v40
	v_fma_f32 v45, -v87, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v85
	v_div_scale_f32 v79, s9, v38, v9, v38
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v89, v45, v89
	v_div_scale_f32 v45, s10, v37, v9, v37
	v_mul_f32_e32 v83, v80, v86
	v_div_scale_f32 v92, s11, v36, v9, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v85, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s12, v35, v9, v35
	v_fmac_f32_e32 v83, v81, v86
	v_rcp_f32_e32 v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v84, v83, v80
	v_mul_f32_e32 v84, v79, v88
	v_div_fmas_f32 v80, v80, v86, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v78, v81, 1.0
	v_fma_f32 v83, -v82, v84, v79
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v39, v80, v9, v39
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v90, null, v9, v9, v34
	v_fmac_f32_e32 v84, v83, v88
	v_mul_f32_e32 v86, v45, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v94, v90
	v_fma_f32 v79, -v82, v84, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v83, -v87, v86, v45
	v_div_fmas_f32 v79, v79, v88, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v86, v83, v89
	v_mul_f32_e32 v82, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, null, v9, v9, v33
	v_fma_f32 v45, -v87, v86, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s9, v34, v9, v34
	v_mul_f32_e32 v95, v92, v81
	v_div_fmas_f32 v45, v45, v89, v86
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v86, v84
	v_div_fixup_f32 v38, v79, v9, v38
	v_fma_f32 v80, -v78, v95, v92
	v_div_fixup_f32 v37, v45, v9, v37
	v_div_scale_f32 v88, null, v9, v9, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v80, v81
	v_fma_f32 v80, -v85, v82, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v84, v86, 1.0
	v_fma_f32 v78, -v78, v95, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v80, v91
	v_mul_f32_e32 v80, v83, v94
	v_div_fmas_f32 v78, v78, v81, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v85, v82, v93
	v_fma_f32 v85, -v90, v80, v83
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v36, v78, v9, v36
	v_div_fmas_f32 v81, v81, v91, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v80, v85, v94
	v_div_scale_f32 v78, null, v9, v9, v26
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v35, v81, v9, v35
	v_fma_f32 v45, -v90, v80, v83
	v_div_scale_f32 v81, null, v9, v9, v31
	v_rcp_f32_e32 v90, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v45, v45, v94, v80
	v_rcp_f32_e32 v80, v78
	v_rcp_f32_e32 v85, v81
	v_div_scale_f32 v82, vcc_lo, v33, v9, v33
	v_div_fixup_f32 v34, v45, v9, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v88, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v45, -v78, v80, 1.0
	v_fma_f32 v92, -v81, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s12, v30, v9, v30
	v_dual_fmac_f32 v80, v45, v80 :: v_dual_fmac_f32 v85, v92, v85
	v_div_scale_f32 v45, s9, v26, v9, v26
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v92, s11, v31, v9, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v93, v45, v80
	v_div_scale_f32 v79, null, v9, v9, v32
	v_dual_mul_f32 v87, v82, v86 :: v_dual_mul_f32 v96, v92, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v83, v79
	v_fma_f32 v91, -v84, v87, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v87, v91, v86
	v_fma_f32 v91, -v78, v93, v45
	v_fma_f32 v89, -v79, v83, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v84, v87, v82
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s10, v32, v9, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_div_fmas_f32 v82, v82, v86, v87
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v82, v9, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v91, v80
	v_fma_f32 v91, -v81, v96, v92
	v_mul_f32_e32 v95, v89, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v94, v90
	v_fma_f32 v45, -v78, v93, v45
	v_fmac_f32_e32 v96, v91, v85
	v_fma_f32 v84, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v88, v97, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v45, v45, v80, v93
	v_fmac_f32_e32 v95, v84, v83
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v78, v90
	v_fma_f32 v78, -v81, v96, v92
	v_div_fixup_f32 v26, v45, v9, v26
	v_fma_f32 v79, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v88, v97, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v95
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v85, v96
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v32, v79, v9, v32
	v_div_fmas_f32 v80, v80, v90, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v78, v9, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v80, v9, v30
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v75
	v_rndne_f32_e32 v75, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s9, 0x40e00000
	v_med3_f32 v74, v74, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v78, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v77, v51
	v_cvt_i32_f32_e32 v98, v9
	v_and_b32_e32 v9, 15, v10
	v_and_b32_e32 v10, 15, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v23
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v50, 15, v56
	v_and_b32_e32 v56, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v25, 10, v0
	v_and_b32_e32 v78, 16, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v96, v32
	v_cvt_i32_f32_e32 v97, v31
	v_and_b32_e32 v31, 15, v75
	v_and_b32_e32 v32, 15, v74
	v_and_b32_e32 v51, 15, v55
	v_and_b32_e32 v55, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v74, 4, v28
	v_and_b32_e32 v25, 0x1800, v25
	v_lshlrev_b32_e32 v75, 6, v78
	v_lshlrev_b32_e32 v77, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v7, v74, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v25, 0, v25, v75
	v_and_or_b32 v5, 0x1b00, v77, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v6, v25, v7, v6
	v_xad_u32 v5, v5, v29, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v84, v44
	v_cvt_i32_f32_e32 v85, v43
	v_cvt_i32_f32_e32 v86, v42
	v_cvt_i32_f32_e32 v87, v41
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v76, v52
	v_cvt_i32_f32_e32 v79, v49
	v_cvt_i32_f32_e32 v92, v36
	v_cvt_i32_f32_e32 v93, v35
	v_cvt_i32_f32_e32 v94, v34
	v_cvt_i32_f32_e32 v95, v33
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v6, v[9:12]
	ds_store_b128 v6, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v5
	ds_load_b128 v[17:20], v5 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v80, v48
	v_cvt_i32_f32_e32 v81, v47
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v83, v22
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v41, 15, v65
	v_and_b32_e32 v42, 15, v64
	v_and_b32_e32 v43, 15, v63
	v_and_b32_e32 v44, 15, v62
	v_and_b32_e32 v46, 15, v60
	v_and_b32_e32 v47, 15, v59
	v_and_b32_e32 v48, 15, v58
	v_and_b32_e32 v49, 15, v57
	v_and_b32_e32 v62, 15, v84
	v_and_b32_e32 v63, 15, v85
	v_and_b32_e32 v64, 15, v86
	v_and_b32_e32 v65, 15, v87
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v30
	v_and_b32_e32 v30, 15, v45
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v88, v40
	v_cvt_i32_f32_e32 v89, v39
	v_cvt_i32_f32_e32 v90, v38
	v_and_b32_e32 v34, 15, v72
	v_and_b32_e32 v35, 15, v71
	v_and_b32_e32 v36, 15, v70
	v_and_b32_e32 v38, 15, v68
	v_and_b32_e32 v39, 15, v67
	v_and_b32_e32 v40, 15, v66
	v_and_b32_e32 v52, 15, v54
	v_and_b32_e32 v54, 15, v76
	v_and_b32_e32 v57, 15, v79
	v_and_b32_e32 v70, 15, v92
	v_and_b32_e32 v71, 15, v93
	v_and_b32_e32 v72, 15, v94
	v_and_b32_e32 v73, 15, v95
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v91, v37
	v_and_b32_e32 v37, 15, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[30:33]
	ds_store_b128 v6, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v5
	ds_load_b128 v[38:41], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[46:49]
	ds_store_b128 v6, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v5
	ds_load_b128 v[54:57], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[62:65]
	ds_store_b128 v6, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v5
	ds_load_b128 v[70:73], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[13:16]
	ds_store_b128 v6, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v5
	ds_load_b128 v[21:24], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v61
	v_cvt_i32_f32_e32 v26, v26
	v_and_b32_e32 v53, 15, v53
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[34:37]
	ds_store_b128 v6, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v5
	ds_load_b128 v[42:45], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v80
	v_and_b32_e32 v59, 15, v81
	v_and_b32_e32 v60, 15, v82
	v_and_b32_e32 v61, 15, v83
	v_and_b32_e32 v66, 15, v88
	v_and_b32_e32 v67, 15, v89
	v_and_b32_e32 v68, 15, v90
	v_and_b32_e32 v69, 15, v91
	v_and_b32_e32 v74, 15, v26
	v_and_b32_e32 v75, 15, v96
	v_and_b32_e32 v76, 15, v97
	v_and_b32_e32 v77, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[50:53]
	ds_store_b128 v6, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v5
	ds_load_b128 v[58:61], v5 offset:1024
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v28, 3, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[66:69]
	ds_store_b128 v6, v[74:77] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, s34, v27
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v5
	ds_load_b128 v[74:77], v5 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v5, s41, 7, v28
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v19, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 16, v9
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v18, 4, v10
	v_lshl_or_b32 v18, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 32, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v21, 4, v13
	v_lshl_or_b32 v14, v22, 4, v14
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 48, v9
	v_mad_u64_u32 v[9:10], null, v9, s9, v[5:6]
	v_mad_u64_u32 v[10:11], null, v11, s9, v[5:6]
	v_mad_u64_u32 v[11:12], null, v12, s9, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v38, 4, v29
	v_lshl_or_b32 v24, v42, 4, v33
	v_lshl_or_b32 v25, v43, 4, v34
	v_lshl_or_b32 v26, v44, 4, v35
	v_lshl_or_b32 v29, v45, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v13, s9, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v5.l, 0xff, v6.l
	v_lshlrev_b16 v5.h, 8, v16.l
	v_and_b16 v6.l, 0xff, v15.l
	v_lshlrev_b16 v6.h, 8, v14.l
	v_and_b16 v7.l, 0xff, v19.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v39, 4, v30
	v_lshl_or_b32 v22, v40, 4, v31
	v_lshl_or_b32 v23, v41, 4, v32
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v2.l, v1.l
	v_or_b16 v13.l, v5.l, v4.l
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v5.h, 8, v29.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_mov_b32 s12, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v54, 4, v46
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v74, 4, v66
	v_lshl_or_b32 v43, v75, 4, v67
	v_lshl_or_b32 v44, v76, 4, v68
	v_lshl_or_b32 v45, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v5.l, 0xff, v20.l
	buffer_store_b64 v[13:14], v9, s[12:15], 0 offen
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	v_lshlrev_b16 v5.h, 8, v37.l
	v_and_b16 v6.l, 0xff, v36.l
	v_lshlrev_b16 v6.h, 8, v35.l
	v_and_b16 v7.l, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v2.l, v1.l
	v_or_b16 v13.l, v5.l, v4.l
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v4.l, 8, v31.l
	v_and_b16 v5.l, 0xff, v30.l
	v_or_b16 v10.h, v6.l, v5.h
	v_or_b16 v10.l, v7.l, v6.h
	v_lshlrev_b16 v5.h, 8, v45.l
	v_and_b16 v6.l, 0xff, v44.l
	v_lshlrev_b16 v6.h, 8, v43.l
	v_and_b16 v7.l, 0xff, v42.l
	buffer_store_b64 v[13:14], v9, s[12:15], 0 offen
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v5.l, v4.l
	v_lshlrev_b16 v1.l, 8, v41.l
	v_and_b16 v2.l, 0xff, v40.l
	v_lshlrev_b16 v4.l, 8, v39.l
	v_and_b16 v5.l, 0xff, v38.l
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v2.l, v1.l
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.l, v5.l, v4.l
	v_cndmask_b32_e32 v5, 0x80000000, v12, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v7, 2, v27
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[9:10], v11, s[12:15], 0 offen
	buffer_store_b64 v[13:14], v5, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v28
	v_mov_b16_e32 v2.l, v8.h
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v4, v6, v7, v28
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
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s23, 0xffff
	s_mov_b32 s12, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 196
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 196
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14912
; TotalNumSgprs: 46
; NumVgprs: 196
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 46
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
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
