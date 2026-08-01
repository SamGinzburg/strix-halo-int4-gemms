	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s76, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v31, 4, v0
	v_and_b32_e32 v30, 8, v0
	v_and_b32_e32 v32, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s76, 0xff
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
	s_sub_i32 s5, s35, s4
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
	s_sub_i32 s77, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s77, s5
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
	s_load_b64 s[66:67], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[72:73], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[74:75], s[2:3], 0x0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s2
	v_add_nc_u32_e32 v9, s66, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[74:75], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
	v_lshlrev_b32_e32 v8, 4, v0
.Ltmp4:
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v6, 0x7f, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v29, 0x80, v0
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v28, 15, v0
	v_lshrrev_b32_e32 v27, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s3, 0, v29
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v69, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s10, s[0:1], 0x58
	s_load_b32 s33, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s66, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s0
	v_dual_mov_b32 v113, 0 :: v_dual_lshlrev_b32 v10, 3, v0
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s6, s4
	s_addc_u32 s9, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s9, s[8:9], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[74:75], v[1:2]
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v1, s66, v28
	v_bfe_i32 v11, v0, 3, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[72:73], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[5:6]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[74:75], v[3:4]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v38, v1, s34
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v1, 48, v1
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v21, 0x70, v31
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v10, 0x700, v10
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v11, 0x88, v11
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s77, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v41, v1, s34
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v1, 0xf0, v0
	v_or3_b32 v43, v21, v10, v11
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	v_mul_lo_u32 v39, v2, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, s7, v27
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v11, 2, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v107, 0 :: v_dual_and_b32 v10, 32, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s6
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s10, s76
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v12, 16, v2
	v_or_b32_e32 v13, 32, v2
	v_or_b32_e32 v14, 48, v2
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s6, s9
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v15, 64, v2
	v_or_b32_e32 v16, 0x50, v2
	v_add3_u32 v48, 0, v11, v10
	v_mad_u64_u32 v[10:11], null, v2, s10, s[6:7]
	v_or_b32_e32 v17, 0x60, v2
	v_mad_u64_u32 v[11:12], null, v12, s10, s[6:7]
	v_or_b32_e32 v18, 0x70, v2
	v_mad_u64_u32 v[12:13], null, v13, s10, s[6:7]
	v_or_b32_e32 v19, 0x80, v2
	v_mad_u64_u32 v[13:14], null, v14, s10, s[6:7]
	v_or_b32_e32 v20, 0x90, v2
	v_mad_u64_u32 v[14:15], null, v15, s10, s[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[72:73], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[74:75], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v8, 0xa0, v2
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v21, 1, v0
	v_mad_u64_u32 v[15:16], null, v16, s10, s[6:7]
	v_or_b32_e32 v7, 0xb0, v2
	v_cndmask_b32_e64 v22, 0x88, 0, s3
	v_mad_u64_u32 v[16:17], null, v17, s10, s[6:7]
	v_or_b32_e32 v6, 0xc0, v2
	v_mad_u64_u32 v[17:18], null, v18, s10, s[6:7]
	v_or_b32_e32 v5, 0xd0, v2
	v_mad_u64_u32 v[18:19], null, v19, s10, s[6:7]
	v_or_b32_e32 v4, 0xe0, v2
	v_mad_u64_u32 v[19:20], null, v20, s10, s[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v40, v3, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xf0, v2
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v47, 28, v21
	v_mad_u64_u32 v[20:21], null, v8, s10, s[6:7]
	v_xor_b32_e32 v45, v22, v32
	v_mad_u64_u32 v[21:22], null, v7, s10, s[6:7]
	v_dual_mov_b32 v90, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mad_u64_u32 v[22:23], null, v6, s10, s[6:7]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v34, 6, v0
	v_or_b32_e32 v42, 0x300, v0
	v_or_b32_e32 v44, 0x3f0, v0
	v_xor_b32_e32 v46, 8, v43
	v_mad_u64_u32 v[23:24], null, v5, s10, s[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	s_and_b32 s4, s5, s8
	s_mov_b32 s8, 0
	v_mad_u64_u32 v[24:25], null, v4, s10, s[6:7]
	v_mad_u64_u32 v[25:26], null, v3, s10, s[6:7]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s34, s9
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v105, 0, v1
	v_mov_b32_e32 v1, s8
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v35, 4, v34
	v_or_b32_e32 v36, 8, v34
	v_or_b32_e32 v37, 12, v34
	v_or_b32_e32 v71, s7, v0
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v87, 0, v0
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v89, 0, v42
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v91, 0, v28
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v93, 0, v44
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v95, 0, v45
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v97, 0, v43
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v98, 0, v46
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v104, v48, v47
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v3, s10
	v_mov_b32_e32 v5, s12
	v_mov_b32_e32 v7, s14
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
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
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s6, s8, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v114, s6, v34
	v_or_b32_e32 v116, s6, v35
	v_or_b32_e32 v117, s6, v36
	v_or_b32_e32 v118, s6, v37
	v_or_b32_e32 v119, s6, v28
	v_mad_u64_u32 v[114:115], null, v114, s33, v[9:10]
	v_mad_u64_u32 v[115:116], null, v116, s33, v[9:10]
	v_mad_u64_u32 v[116:117], null, v117, s33, v[9:10]
	v_mad_u64_u32 v[117:118], null, v118, s33, v[9:10]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	v_add_nc_u32_e32 v118, v10, v119
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	v_add_nc_u32_e32 v120, v11, v119
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_add_nc_u32_e32 v121, v12, v119
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v114, v114, s[24:27], 0 offen
	buffer_load_u8 v115, v115, s[24:27], 0 offen
	buffer_load_u8 v116, v116, s[24:27], 0 offen
	buffer_load_u8 v117, v117, s[24:27], 0 offen
	v_add_nc_u32_e32 v122, v13, v119
	v_add_nc_u32_e32 v123, v14, v119
	v_add_nc_u32_e32 v124, v15, v119
	v_add_nc_u32_e32 v125, v16, v119
	v_add_nc_u32_e32 v126, v17, v119
	v_add_nc_u32_e32 v127, v18, v119
	v_add_nc_u32_e32 v128, v19, v119
	v_add_nc_u32_e32 v129, v20, v119
	v_add_nc_u32_e32 v130, v21, v119
	v_add_nc_u32_e32 v131, v22, v119
	v_add_nc_u32_e32 v132, v23, v119
	v_add_nc_u32_e32 v133, v24, v119
	v_add_nc_u32_e32 v119, v25, v119
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v118, v118, s[16:19], 0 offen
	buffer_load_u8 v120, v120, s[16:19], 0 offen
	buffer_load_u8 v121, v121, s[16:19], 0 offen
	buffer_load_u8 v134, v122, s[16:19], 0 offen
	buffer_load_u8 v135, v123, s[16:19], 0 offen
	buffer_load_u8 v136, v124, s[16:19], 0 offen
	buffer_load_u8 v137, v125, s[16:19], 0 offen
	buffer_load_u8 v126, v126, s[16:19], 0 offen
	buffer_load_u8 v127, v127, s[16:19], 0 offen
	buffer_load_u8 v128, v128, s[16:19], 0 offen
	buffer_load_u8 v129, v129, s[16:19], 0 offen
	buffer_load_u8 v130, v130, s[16:19], 0 offen
	buffer_load_u8 v131, v131, s[16:19], 0 offen
	buffer_load_u8 v132, v132, s[16:19], 0 offen
	buffer_load_u8 v133, v133, s[16:19], 0 offen
	buffer_load_u8 v119, v119, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s6, s8, s5
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(19)
	ds_store_b8 v87, v114
	s_waitcnt vmcnt(18)
	ds_store_b8 v87, v115 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v87, v116 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v89, v117
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v114, v91 offset:320
	ds_load_u8 v115, v91 offset:256
	ds_load_u8 v116, v91 offset:448
	ds_load_u8 v117, v91 offset:384
	ds_load_u8 v122, v91 offset:64
	ds_load_u8 v123, v91
	ds_load_u8 v124, v91 offset:192
	ds_load_u8 v125, v91 offset:128
	ds_load_u8 v138, v91 offset:832
	ds_load_u8 v139, v91 offset:768
	ds_load_u8 v140, v91 offset:960
	ds_load_u8 v141, v91 offset:896
	ds_load_u8 v142, v91 offset:576
	ds_load_u8 v143, v91 offset:512
	ds_load_u8 v144, v91 offset:704
	ds_load_u8 v145, v91 offset:640
	ds_load_u8 v154, v91 offset:336
	ds_load_u8 v155, v91 offset:272
	ds_load_u8 v156, v91 offset:352
	ds_load_u8 v158, v91 offset:368
	ds_load_u8 v159, v91 offset:304
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s6, s76
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v115, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v116, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v117, v125, v124, 0xc0c0004
	v_lshl_or_b32 v123, v115, 16, v114
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v114, v139, v138, 0xc0c0004
	ds_load_u8 v138, v91 offset:464
	ds_load_u8 v139, v91 offset:400
	v_lshl_or_b32 v122, v117, 16, v116
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v115, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v116, v143, v142, 0xc0c0004
	ds_load_u8 v140, v91 offset:480
	ds_load_u8 v141, v91 offset:416
	ds_load_u8 v157, v91 offset:288
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v117, v145, v144, 0xc0c0004
	ds_load_u8 v142, v91 offset:496
	ds_load_u8 v143, v91 offset:432
	ds_load_u8 v144, v91 offset:80
	ds_load_u8 v145, v91 offset:96
	ds_load_u8 v160, v91 offset:112
	ds_load_u8 v161, v91 offset:16
	ds_load_u8 v162, v91 offset:32
	ds_load_u8 v163, v91 offset:48
	ds_load_u8 v164, v91 offset:208
	ds_load_u8 v165, v91 offset:144
	ds_load_u8 v166, v91 offset:224
	ds_load_u8 v167, v91 offset:160
	ds_load_u8 v168, v91 offset:240
	ds_load_u8 v169, v91 offset:176
	ds_load_u8 v170, v91 offset:848
	ds_load_u8 v171, v91 offset:784
	ds_load_u8 v172, v91 offset:864
	ds_load_u8 v173, v91 offset:800
	ds_load_u8 v174, v91 offset:880
	ds_load_u8 v175, v91 offset:816
	ds_load_u8 v176, v91 offset:976
	ds_load_u8 v177, v91 offset:912
	ds_load_u8 v178, v91 offset:992
	ds_load_u8 v179, v91 offset:928
	ds_load_u8 v180, v93
	ds_load_u8 v181, v91 offset:944
	ds_load_u8 v182, v91 offset:592
	ds_load_u8 v183, v91 offset:528
	ds_load_u8 v184, v91 offset:608
	ds_load_u8 v185, v91 offset:544
	ds_load_u8 v186, v91 offset:624
	ds_load_u8 v187, v91 offset:560
	ds_load_u8 v188, v91 offset:720
	ds_load_u8 v189, v91 offset:656
	ds_load_u8 v190, v91 offset:736
	ds_load_u8 v191, v91 offset:672
	ds_load_u8 v192, v91 offset:752
	ds_load_u8 v193, v91 offset:688
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v95, v118
	s_waitcnt vmcnt(14)
	ds_store_b8 v95, v120 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v95, v121 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v95, v134 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v95, v135 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v95, v136 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v95, v137 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v95, v126 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v95, v127 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v95, v128 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v95, v129 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v95, v130 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v95, v131 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v95, v132 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v95, v133 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v95, v119 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[146:149], v97 offset1:4
	ds_load_2addr_stride64_b64 v[150:153], v98 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v125, v115, 16, v114
	v_lshl_or_b32 v124, v117, 16, v116
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[146:147], v[122:123], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[150:151], v[124:125], v[114:121] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v194, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v195, v115
	v_cvt_f32_i32_e32 v196, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v117
	v_cvt_f32_i32_e32 v198, v118
	v_cvt_f32_i32_e32 v199, v119
	v_cvt_f32_i32_e32 v200, v120
	v_cvt_f32_i32_e32 v201, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[114:121], v[148:149], v[122:123], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[152:153], v[124:125], v[114:121] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v137, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v136, v115
	v_cvt_f32_i32_e32 v135, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v134, v117
	v_cvt_f32_i32_e32 v114, v118
	v_cvt_f32_i32_e32 v115, v119
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v117, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v118, v155, v154, 0xc0c0004
	v_perm_b32 v119, v139, v138, 0xc0c0004
	v_perm_b32 v120, v161, v144, 0xc0c0004
	v_perm_b32 v121, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v127, v119, 16, v118
	v_perm_b32 v118, v171, v170, 0xc0c0004
	v_lshl_or_b32 v126, v121, 16, v120
	v_perm_b32 v119, v177, v176, 0xc0c0004
	v_perm_b32 v120, v183, v182, 0xc0c0004
	v_perm_b32 v121, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v129, v119, 16, v118
	v_lshl_or_b32 v128, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[118:125], v[146:147], v[126:127], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[150:151], v[128:129], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v161, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v164, v119
	v_cvt_f32_i32_e32 v165, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v170, v121
	v_cvt_f32_i32_e32 v171, v122
	v_cvt_f32_i32_e32 v176, v123
	v_cvt_f32_i32_e32 v177, v124
	v_cvt_f32_i32_e32 v182, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[148:149], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v126, v157, v156, 0xc0c0004
	v_perm_b32 v127, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[152:153], v[128:129], v[118:125] neg_lo:[1,1,0]
	v_perm_b32 v128, v162, v145, 0xc0c0004
	v_perm_b32 v129, v167, v166, 0xc0c0004
	v_lshl_or_b32 v139, v127, 16, v126
	v_perm_b32 v126, v173, v172, 0xc0c0004
	v_perm_b32 v127, v179, v178, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v138, v129, 16, v128
	v_perm_b32 v128, v185, v184, 0xc0c0004
	v_perm_b32 v129, v191, v190, 0xc0c0004
	v_lshl_or_b32 v141, v127, 16, v126
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v140, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[126:133], v[146:147], v[138:139], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v124, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[126:133], v[150:151], v[140:141], v[126:133] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v162, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v166, v127
	v_cvt_f32_i32_e32 v167, v128
	v_cvt_f32_i32_e32 v172, v129
	v_cvt_f32_i32_e32 v173, v130
	v_cvt_f32_i32_e32 v178, v131
	v_cvt_f32_i32_e32 v179, v132
	v_cvt_f32_i32_e32 v183, v133
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[126:133], v[148:149], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v138, v159, v158, 0xc0c0004
	v_perm_b32 v139, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[126:133], v[152:153], v[140:141], v[126:133] neg_lo:[1,1,0]
	v_perm_b32 v140, v163, v160, 0xc0c0004
	v_perm_b32 v141, v169, v168, 0xc0c0004
	v_lshl_or_b32 v155, v139, 16, v138
	v_perm_b32 v138, v175, v174, 0xc0c0004
	v_perm_b32 v139, v181, v180, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v154, v141, 16, v140
	v_perm_b32 v140, v187, v186, 0xc0c0004
	v_perm_b32 v141, v193, v192, 0xc0c0004
	v_lshl_or_b32 v157, v139, 16, v138
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v156, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[154:155], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v146, s8, v38, 1
	v_add_lshl_u32 v147, s8, v39, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[138:145], v[150:151], v[156:157], v[138:145] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v146, 0x80000000, v146, vcc_lo
	v_cndmask_b32_e64 v147, 0x80000000, v147, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v150, v138
	v_cvt_f32_i32_e32 v151, v139
	v_cvt_f32_i32_e32 v158, v140
	v_cvt_f32_i32_e32 v159, v141
	v_cvt_f32_i32_e32 v160, v142
	v_cvt_f32_i32_e32 v163, v143
	v_cvt_f32_i32_e32 v168, v144
	v_cvt_f32_i32_e32 v169, v145
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[138:145], v[148:149], v[154:155], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v148, s8, v40, 1
	v_add_lshl_u32 v149, s8, v41, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[138:145], v[152:153], v[156:157], v[138:145] neg_lo:[1,1,0]
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v152, v71, s6, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v148, 0x80000000, v148, s1
	v_cndmask_b32_e64 v149, 0x80000000, v149, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v152, v152, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v146, v146, s[28:31], 0 offen
	buffer_load_u16 v153, v147, s[28:31], 0 offen
	buffer_load_u16 v154, v148, s[28:31], 0 offen
	buffer_load_u16 v155, v149, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v147, 16, v152
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v152, 16, v146
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v104, v147
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[146:149], v105
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v156, v194, v152
	v_mul_f32_e32 v138, v138, v155
	v_mul_f32_e32 v140, v140, v155
	v_mul_f32_e32 v142, v142, v155
	v_mul_f32_e32 v144, v144, v155
	v_mul_f32_e32 v139, v139, v155
	v_mul_f32_e32 v141, v141, v155
	v_mul_f32_e32 v143, v143, v155
	v_mul_f32_e32 v145, v145, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v33, v156, v146 :: v_dual_mul_f32 v156, v195, v152
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v113, v156, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v156, v196, v152
	v_mul_f32_e32 v137, v137, v152
	v_mul_f32_e32 v135, v135, v152
	v_mul_f32_e32 v136, v136, v152
	v_mul_f32_e32 v134, v134, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v156, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v156, v197, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v156, v149
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v156, v161, v153
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v156, v146
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v156, v164, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v156, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v156, v165, v153
	v_dual_mul_f32 v150, v150, v155 :: v_dual_mul_f32 v119, v119, v153
	v_mul_f32_e32 v125, v125, v153
	v_dual_mul_f32 v123, v123, v153 :: v_dual_fmac_f32 v88, v156, v148
	v_mul_f32_e32 v156, v170, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v56, v150, v146 :: v_dual_mul_f32 v121, v121, v153
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v150, v198, v152
	v_mul_f32_e32 v118, v118, v153
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v156, v149
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v156, v162, v154
	v_mul_f32_e32 v120, v120, v153
	v_mul_f32_e32 v124, v124, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v122, v122, v153 :: v_dual_fmac_f32 v73, v156, v146
	v_mul_f32_e32 v156, v166, v154
	v_mul_f32_e32 v146, v151, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v156, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v156, v167, v154 :: v_dual_fmac_f32 v55, v146, v147
	v_mul_f32_e32 v146, v158, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v156, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v156, v172, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v146, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v146, v159, v155 :: v_dual_fmac_f32 v69, v156, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v53, v146, v149
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[146:149], v105 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v110, v150, v146
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v150, v199, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v109, v150, v147 :: v_dual_mul_f32 v150, v200, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v150, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v150, v201, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v107, v150, v149
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v150, v171, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v150, v146 :: v_dual_mul_f32 v150, v176, v153
	v_fmac_f32_e32 v84, v150, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v150, v177, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v150, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v150, v182, v153
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v150, v149
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v150, v173, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v150, v146
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v150, v178, v154
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v67, v150, v147 :: v_dual_mul_f32 v150, v179, v154
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v131, v131, v154
	v_mul_f32_e32 v133, v133, v154
	v_mul_f32_e32 v126, v126, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v127, v127, v154 :: v_dual_fmac_f32 v66, v150, v148
	v_mul_f32_e32 v150, v183, v154
	v_mul_f32_e32 v128, v128, v154
	v_mul_f32_e32 v129, v129, v154
	v_mul_f32_e32 v130, v130, v154
	v_dual_mul_f32 v132, v132, v154 :: v_dual_fmac_f32 v65, v150, v149
	v_mul_f32_e32 v150, v160, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v150, v146
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v146, v163, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v146, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v146, v168, v155 :: v_dual_mul_f32 v147, v115, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v50, v146, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v146, v169, v155
	v_dual_mul_f32 v148, v116, v152 :: v_dual_fmac_f32 v49, v146, v149
	v_mul_f32_e32 v146, v114, v152
	v_mul_f32_e32 v149, v117, v152
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[114:117], v105 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v81, v118, v114 :: v_dual_fmac_f32 v80, v119, v115
	v_dual_fmac_f32 v79, v120, v116 :: v_dual_fmac_f32 v78, v121, v117
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[118:121], v105 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v106, v137, v114 :: v_dual_fmac_f32 v103, v136, v115
	v_dual_fmac_f32 v102, v135, v116 :: v_dual_fmac_f32 v101, v134, v117
	v_dual_fmac_f32 v64, v126, v114 :: v_dual_fmac_f32 v63, v127, v115
	v_dual_fmac_f32 v62, v128, v116 :: v_dual_fmac_f32 v61, v129, v117
	v_dual_fmac_f32 v48, v138, v114 :: v_dual_fmac_f32 v47, v139, v115
	v_dual_fmac_f32 v46, v140, v116 :: v_dual_fmac_f32 v45, v141, v117
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v100, v146, v118 :: v_dual_fmac_f32 v99, v147, v119
	v_fmac_f32_e32 v96, v148, v120
	v_dual_fmac_f32 v94, v149, v121 :: v_dual_fmac_f32 v77, v122, v118
	v_dual_fmac_f32 v76, v123, v119 :: v_dual_fmac_f32 v75, v124, v120
	v_fmac_f32_e32 v74, v125, v121
	v_dual_fmac_f32 v60, v130, v118 :: v_dual_fmac_f32 v59, v131, v119
	v_dual_fmac_f32 v58, v132, v120 :: v_dual_fmac_f32 v57, v133, v121
	v_dual_fmac_f32 v44, v142, v118 :: v_dual_fmac_f32 v43, v143, v119
	v_fmac_f32_e32 v42, v144, v120
	v_fmac_f32_e32 v26, v145, v121
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v35, v79, v79 :: v_dual_max_f32 v36, v78, v78
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v66, v66, v66
	v_dual_max_f32 v22, v85, v85 :: v_dual_max_f32 v25, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v38, v76, v76
	v_max_f32_e32 v39, v75, v75
	v_dual_max_f32 v87, 0, v66 :: v_dual_max_f32 v64, v64, v64
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v39, 0, v39
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v62, v62, v62
	v_max_f32_e32 v85, 0, v68
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v16, v96, v96
	v_dual_max_f32 v17, v94, v94 :: v_dual_max_f32 v18, v92, v92
	v_dual_max_f32 v19, v90, v90 :: v_dual_max_f32 v20, v88, v88
	v_dual_max_f32 v88, 0, v64 :: v_dual_max_f32 v65, 0, v65
	v_max_f32_e32 v58, v58, v58
	v_dual_max_f32 v90, 0, v62 :: v_dual_max_f32 v89, 0, v63
	v_dual_max_f32 v56, v56, v56 :: v_dual_max_f32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v94, 0, v58 :: v_dual_max_f32 v57, v57, v57
	v_dual_max_f32 v7, v108, v108 :: v_dual_max_f32 v8, v107, v107
	v_dual_max_f32 v93, 0, v59 :: v_dual_max_f32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v96, 0, v56 :: v_dual_max_f32 v95, 0, v57
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v55, v55, v55
	v_dual_max_f32 v98, 0, v54 :: v_dual_max_f32 v53, v53, v53
	v_dual_max_f32 v1, v33, v33 :: v_dual_max_f32 v4, v111, v111
	v_dual_max_f32 v5, v110, v110 :: v_dual_max_f32 v6, v109, v109
	v_max_f32_e32 v10, v106, v106
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, v103, v103
	v_dual_max_f32 v12, v102, v102 :: v_dual_max_f32 v15, v99, v99
	v_dual_max_f32 v14, v100, v100 :: v_dual_max_f32 v33, v81, v81
	v_dual_max_f32 v34, v80, v80 :: v_dual_max_f32 v37, v77, v77
	v_dual_max_f32 v97, 0, v55 :: v_dual_max_f32 v48, v48, v48
	v_dual_max_f32 v100, 0, v52 :: v_dual_max_f32 v99, 0, v53
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v49, v49, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v104, 0, v48 :: v_dual_max_f32 v47, v47, v47
	v_dual_max_f32 v2, v113, v113 :: v_dual_max_f32 v3, v112, v112
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v10, 0, v10
	v_max_f32_e32 v13, v101, v101
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v18, 0, v18
	v_max_f32_e32 v23, v84, v84
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, v86, v86
	v_max_f32_e32 v24, v83, v83
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v40, v74, v74 :: v_dual_max_f32 v41, v73, v73
	v_dual_max_f32 v71, v72, v72 :: v_dual_max_f32 v70, v70, v70
	v_dual_max_f32 v67, v67, v67 :: v_dual_max_f32 v84, 0, v69
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v60, v60, v60
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v50, v50, v50
	v_dual_max_f32 v103, 0, v49 :: v_dual_max_f32 v44, v44, v44
	v_dual_max_f32 v106, 0, v46 :: v_dual_max_f32 v105, 0, v47
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v45, v45, v45
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v108, 0, v44 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_max_f32_e32 v19, 0, v19
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_max_f32_e32 v25, 0, v25
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v41, 0, v41
	v_dual_max_f32 v82, 0, v71 :: v_dual_max_f32 v83, 0, v70
	v_dual_max_f32 v86, 0, v67 :: v_dual_max_f32 v91, 0, v61
	v_dual_max_f32 v92, 0, v60 :: v_dual_max_f32 v101, 0, v51
	v_dual_max_f32 v102, 0, v50 :: v_dual_max_f32 v107, 0, v45
	v_dual_max_f32 v110, 0, v42 :: v_dual_max_f32 v109, 0, v43
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v66, v1, v1 :: v_dual_max_f32 v111, 0, v26
	v_dual_mul_f32 v72, v3, v3 :: v_dual_mul_f32 v69, v2, v2
	v_mul_f32_e32 v80, v8, v8
	v_dual_mul_f32 v73, v4, v4 :: v_dual_mul_f32 v76, v6, v6
	v_dual_mul_f32 v75, v5, v5 :: v_dual_mul_f32 v78, v11, v11
	v_dual_mul_f32 v79, v7, v7 :: v_dual_mul_f32 v74, v13, v13
	v_dual_mul_f32 v81, v10, v10 :: v_dual_mul_f32 v70, v15, v15
	v_dual_mul_f32 v77, v12, v12 :: v_dual_mul_f32 v64, v18, v18
	v_dual_mul_f32 v71, v14, v14 :: v_dual_mul_f32 v68, v16, v16
	v_dual_mul_f32 v67, v17, v17 :: v_dual_mul_f32 v62, v20, v20
	v_dual_mul_f32 v63, v19, v19 :: v_dual_mul_f32 v60, v22, v22
	v_dual_mul_f32 v61, v21, v21 :: v_dual_mul_f32 v58, v24, v24
	v_dual_mul_f32 v59, v23, v23 :: v_dual_mul_f32 v56, v33, v33
	v_dual_mul_f32 v57, v25, v25 :: v_dual_mul_f32 v54, v35, v35
	v_dual_mul_f32 v55, v34, v34 :: v_dual_mul_f32 v52, v37, v37
	v_dual_mul_f32 v53, v36, v36 :: v_dual_mul_f32 v50, v39, v39
	v_dual_mul_f32 v51, v38, v38 :: v_dual_mul_f32 v48, v41, v41
	v_dual_mul_f32 v49, v40, v40 :: v_dual_mul_f32 v46, v83, v83
	v_dual_mul_f32 v47, v82, v82 :: v_dual_mul_f32 v44, v85, v85
	v_dual_mul_f32 v45, v84, v84 :: v_dual_mul_f32 v42, v87, v87
	v_dual_mul_f32 v43, v86, v86 :: v_dual_mul_f32 v40, v88, v88
	v_dual_mul_f32 v41, v65, v65 :: v_dual_mul_f32 v38, v90, v90
	v_dual_mul_f32 v39, v89, v89 :: v_dual_mul_f32 v36, v92, v92
	v_dual_mul_f32 v37, v91, v91 :: v_dual_mul_f32 v34, v94, v94
	v_dual_mul_f32 v35, v93, v93 :: v_dual_mul_f32 v26, v96, v96
	v_dual_mul_f32 v33, v95, v95 :: v_dual_mul_f32 v24, v98, v98
	v_dual_mul_f32 v25, v97, v97 :: v_dual_mul_f32 v18, v103, v103
	v_dual_mul_f32 v23, v99, v99 :: v_dual_mul_f32 v20, v101, v101
	v_dual_mul_f32 v21, v100, v100 :: v_dual_mul_f32 v16, v105, v105
	v_dual_mul_f32 v19, v102, v102 :: v_dual_mul_f32 v14, v107, v107
	v_dual_mul_f32 v17, v104, v104 :: v_dual_mul_f32 v12, v109, v109
	v_dual_mul_f32 v15, v106, v106 :: v_dual_mul_f32 v10, v111, v111
	v_dual_mul_f32 v13, v108, v108 :: v_dual_mov_b32 v8, v31
	v_dual_mul_f32 v11, v110, v110 :: v_dual_mov_b32 v6, v32
	v_mov_b32_e32 v1, v30
	v_mov_b32_e32 v5, v9
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v7, 7, v29
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v63, v63 :: v_dual_max_f32 v85, v26, v26
	v_max_f32_e32 v32, v64, v64
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v90, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 62, v7
	v_or_b32_e32 v4, 60, v7
	v_or_b32_e32 v9, 58, v7
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v84, v48, v48 :: v_dual_lshlrev_b32 v87, 5, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s66, v2
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	v_add_co_u32 v30, s0, s66, v4
	v_add_co_u32 v82, s1, s66, v9
	v_add_co_ci_u32_e64 v31, null, s67, 0, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[74:75], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 56, v7
	v_or_b32_e32 v4, 54, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[30:31]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[30:31]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 50, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v2, s7, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s7
	v_add_co_u32 v30, s7, s66, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 52, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[74:75], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s67, 0, s7
	v_add_co_u32 v2, s11, s66, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v7
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s11, s66, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[74:75], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s15, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 46, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s15
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[72:73], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[74:75], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v30, s15, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 42, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[74:75], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s19, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s19
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 40, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[72:73], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s67, 0, s15
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[74:75], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s19, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 38, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[74:75], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s23, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[72:73], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[74:75], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s23
	v_add_co_u32 v30, s23, s66, v9
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v69, v69 :: v_dual_max_f32 v9, v66, v66
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp11:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[74:75], v[2:3]
.Ltmp12:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v73, v75, v76
.Ltmp13:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[72:73], v[82:83]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v9, v4
	v_max3_f32 v4, v78, v77, v74
	v_max3_f32 v9, v71, v70, v68
.Ltmp15:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s67, 0, s23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[74:75], v[82:83]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v82, v79, v80, v81
	v_max_f32_e32 v83, v47, v47
	v_max3_f32 v2, v2, v72, v3
	v_max3_f32 v3, v4, v9, v67
	v_max_f32_e32 v4, v32, v22
	v_max3_f32 v9, v61, v60, v59
	v_max3_f32 v22, v55, v54, v53
	v_max3_f32 v32, v52, v51, v50
	v_max3_f32 v82, v2, v82, v3
	v_max3_f32 v2, v58, v57, v56
	v_max3_f32 v3, v4, v62, v9
	v_dual_max_f32 v9, v84, v83 :: v_dual_max_f32 v84, v25, v25
	v_max3_f32 v4, v22, v32, v49
	v_max3_f32 v22, v45, v44, v43
	v_max3_f32 v32, v39, v38, v37
	v_max3_f32 v83, v36, v35, v34
	s_mov_b32 s27, 0x76543210
	v_max3_f32 v4, v3, v2, v4
	v_max3_f32 v2, v42, v41, v40
	v_max3_f32 v3, v9, v46, v22
	v_max3_f32 v9, v32, v83, v33
	v_max_f32_e32 v22, v85, v84
	v_max3_f32 v32, v23, v21, v20
	v_max3_f32 v83, v16, v15, v14
	v_max3_f32 v84, v13, v12, v11
.Ltmp17:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 36, v7
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v3, v2, v9
	v_max3_f32 v85, v19, v18, v17
	v_max3_f32 v22, v22, v24, v32
	v_max3_f32 v32, v83, v84, v10
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v83, v82, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v84, v4, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s28, s66, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v32, v22, v85, v32
	v_max_f32_e32 v65, v83, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v83, v84, v84
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v84, v9, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x60, v0
	v_permlanex16_b32 v86, v32, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v82, v82, v65 :: v_dual_max_f32 v83, v4, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v4, v84, v84
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v65, 4, v0
	v_lshrrev_b32_e32 v88, 3, v29
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v84, v9, v4 :: v_dual_max_f32 v9, v86, v86
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v85, v90, 9, 0
	v_lshlrev_b32_e32 v86, 1, v29
	v_lshl_add_u32 v91, v65, 6, 0
.Ltmp27:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v4, v65, 2, v85
	v_and_or_b32 v85, 0x680, v8, v87
	v_xor_b32_e32 v87, v87, v22
.Ltmp29:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[2:3]
.Ltmp30:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v4, v1, 4, v4
	v_xor_b32_e32 v89, v85, v22
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v85, v32, v9
.Ltmp32:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 34, v7
	v_or_b32_e32 v2, 32, v7
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v4, v86, v87
	v_add3_u32 v32, v91, v88, v89
.Ltmp34:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s27, s66, v9
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v4, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v32
.Ltmp36:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 30, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v2, s33, s66, v2
	v_add_co_ci_u32_e64 v87, null, s67, 0, s27
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s33
	v_add_co_u32 v30, s33, s66, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v31, null, s67, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 28, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[30:31]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[30:31]
.Ltmp37:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 3, v1
.Ltmp38:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[86:87]
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v9, v84 :: v_dual_max_f32 v32, v85, v85
	v_mov_b32_dpp v85, v85 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v83, v83
.Ltmp41:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[86:87]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v4, v82
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_and_b32 v8, 0x2f0, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v82, v82
	v_max_f32_e32 v82, v85, v85
.Ltmp46:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp48:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s76, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v30, v4
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v2, v83 :: v_dual_mov_b32 v83, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v30, v31, v2 :: v_dual_max_f32 v31, v84, v84
.Ltmp52:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s37, s66, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s37
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v84, v30 :: v_dual_max_f32 v9, v31, v9
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v32, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[2:3]
.Ltmp56:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v82, v31
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v83, v83
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v83, 26, v7
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v84, v84
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v32, v32 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v4, v2
.Ltmp62:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s39, s66, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v30, v3 :: v_dual_max_f32 v4, v32, v32
	v_max_f32_e32 v30, v82, v82
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v83, 24, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v3
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v9, v4 :: v_dual_max_f32 v9, v31, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v88, s40, s66, v83
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v30, v4 :: v_dual_mov_b32 v31, v9
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v89, null, s67, 0, s40
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v30, v30 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[86:87]
	v_cmp_le_i64_e64 s41, s[72:73], v[88:89]
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v3, v84
.Ltmp74:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[88:89]
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v31, v31
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v31, 4, v90
.Ltmp77:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v90.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v85, v9, v3 :: v_dual_mov_b32 v32, v2
.Ltmp79:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 22, v7
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v32, v32 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v32, v32, v32
	v_max_f32_e32 v82, v2, v32
	v_max_f32_e32 v2, v30, v30
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v30, 1, v22
	v_add_nc_u32_e32 v32, 0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v84, v4, v2 :: v_dual_lshlrev_b32 v29, 3, v29
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v65
	v_add_nc_u32_e32 v4, 0, v31
	v_add3_u32 v3, v32, v30, v1
.Ltmp85:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v30, 18, v7
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v4, v2, v1
	ds_store_b128 v3, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp87:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s40, s66, v9
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v1
.Ltmp89:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s40
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 20, v7
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[74:75], v[86:87]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[72:73], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[74:75], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v82, s45, s66, v9
	v_add_co_ci_u32_e64 v83, null, s67, 0, s45
	v_add_co_u32 v84, s45, s66, v30
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 16, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s67, 0, s45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[72:73], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[74:75], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v82, s49, s66, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[72:73], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[74:75], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v30, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v7
	v_or_b32_e32 v9, 12, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[74:75], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v32, null, 0x40e00000, 0x40e00000, v30
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s49, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v85, null, s67, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v32
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s49, s66, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v87, null, s67, 0, s49
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[72:73], v[82:83]
	v_cmp_le_i64_e64 s53, s[72:73], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[74:75], v[86:87]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v65, -v32, v1, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s55, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v3
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v30, 0x40e00000, v30
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[72:73], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[74:75], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s55
	v_add_co_u32 v84, s55, s66, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v9, v65, v1
	v_rcp_f32_e32 v87, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s67, 0, s55
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[72:73], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[74:75], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	v_fma_f32 v82, -v32, v9, v65
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[72:73], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[74:75], v[84:85]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v83, 6, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v84, 0x2b8cbccc, v2 :: v_dual_fmac_f32 v9, v82, v1
	v_fma_f32 v2, -v86, v87, 1.0
	v_max_f32_e32 v4, v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v32, -v32, v9, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v2, v87
	v_div_scale_f32 v65, s61, v3, 0x40e00000, v3
	v_max_f32_e32 v82, 0x2b8cbccc, v4
	v_div_fmas_f32 v9, v32, v1, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s59, s66, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v32, v65, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v9, 0x40e00000, v30
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v86, v32, v65
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[74:75], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v89, v88
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v32, v30, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v30.l, v9.h
	v_mov_b16_e32 v30.h, v90.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v86, v32, v65
	v_div_scale_f32 v65, s63, v82, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v30
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v92, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v87, v32
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v9, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v89, v92, v89
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 4, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v86, 0xffff0000, v9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v90.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v93, null, v86, v86, v73
	v_div_scale_f32 v92, null, v86, v86, v72
	v_rcp_f32_e32 v95, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v93, v95, 1.0
	v_fmac_f32_e32 v95, v98, v95
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v98, null, v86, v86, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v85, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v100, v98
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v83, -v4, v85, 1.0
	v_fmac_f32_e32 v85, v83, v85
	v_div_scale_f32 v83, s62, v84, 0x40e00000, v84
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v91, v83, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v4, v91, v83
	v_fmac_f32_e32 v91, v30, v85
	v_mul_f32_e32 v30, v65, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v4, v91, v83
	v_fma_f32 v4, -v88, v30, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v3, v85, v91
	v_fmac_f32_e32 v30, v4, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v86, v86, v66
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s66, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v88, v30, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v85
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v65, v32, 0x40e00000, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v86, v86, v69
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v89, v30
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v30, 1, v90
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v89, vcc_lo, v66, v86, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v88, v84
	v_fma_f32 v32, -v85, v87, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v82.l, v65.h
	v_mov_b16_e32 v82.h, v90.h
	v_add3_u32 v1, v1, v30, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v32, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v90.l, v2.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v91, v89, v87 :: v_dual_and_b32 v30, 1, v82
	v_fma_f32 v82, -v84, v88, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v83, 1, v90
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v90, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v30, v65, v30, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v85, v91, v89
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v94, s61, v69, v86, v69
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v83, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v65, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v96, v94, v88 :: v_dual_and_b32 v83, 0xffff0000, v30
	v_fma_f32 v97, -v92, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v65, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v85, v91, v89
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v32, 2, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v84, v96, v94
	v_fmac_f32_e32 v90, v97, v90
	v_div_scale_f32 v97, s62, v72, v86, v72
	v_div_fmas_f32 v85, v85, v87, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v89, v88
	v_div_scale_f32 v91, s63, v73, v86, v73
	v_mul_f32_e32 v87, v97, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v66, v85, v86, v66
	v_fma_f32 v84, -v84, v96, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v95
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v85, -v92, v87, v97
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v30.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v96
	v_fma_f32 v96, -v98, v100, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v87, v85, v90
	v_fma_f32 v85, -v93, v94, v91
	v_div_fixup_f32 v69, v84, v86, v69
	v_fmac_f32_e32 v100, v96, v100
	v_div_scale_f32 v96, null, v86, v86, v79
	v_fma_f32 v84, -v92, v87, v97
	v_fmac_f32_e32 v94, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v93, v94, v91
	v_rcp_f32_e32 v91, v96
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v87, v87, v95, v94
	v_fma_f32 v95, -v96, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v99, null, v86, v86, v75
	v_div_scale_f32 v88, s61, v75, v86, v75
	v_div_scale_f32 v92, s64, v76, v86, v76
	v_rcp_f32_e32 v89, v99
	v_div_scale_f32 v97, null, v86, v86, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v92, v100
	v_div_fixup_f32 v72, v84, v86, v72
	v_div_fixup_f32 v73, v87, v86, v73
	v_div_scale_f32 v87, s62, v79, v86, v79
	v_fma_f32 v94, -v98, v93, v92
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v101, -v99, v89, 1.0
	v_div_scale_f32 v95, null, v86, v86, v78
	v_fmac_f32_e32 v93, v94, v100
	v_div_scale_f32 v94, null, v86, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v101, v89
	v_div_scale_f32 v101, null, v86, v86, v74
	v_mul_f32_e32 v85, v88, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v99, v85, v88
	v_fmac_f32_e32 v85, v90, v89
	v_rcp_f32_e32 v90, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v99, v85, v88
	v_div_fmas_f32 v84, v84, v89, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v97, v90, 1.0
	v_fma_f32 v85, -v98, v93, v92
	v_mul_f32_e32 v89, v87, v91
	v_div_scale_f32 v92, s61, v80, v86, v80
	v_fmac_f32_e32 v90, v88, v90
	v_rcp_f32_e32 v88, v94
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v75, v84, v86, v75
	v_div_fmas_f32 v85, v85, v100, v93
	v_fma_f32 v93, -v96, v89, v87
	v_mul_f32_e32 v98, v92, v90
	v_rcp_f32_e32 v100, v95
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v76, v85, v86, v76
	v_fmac_f32_e32 v89, v93, v91
	v_fma_f32 v99, -v94, v88, 1.0
	v_fma_f32 v84, -v97, v98, v92
	v_div_scale_f32 v93, null, v86, v86, v77
	v_div_scale_f32 v85, s63, v81, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v99, v88
	v_fma_f32 v99, -v95, v100, 1.0
	v_fma_f32 v87, -v96, v89, v87
	v_fmac_f32_e32 v98, v84, v90
	v_rcp_f32_e32 v96, v93
	v_mul_f32_e32 v84, v85, v88
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s64, v78, v86, v78
	v_div_fmas_f32 v87, v87, v91, v89
	v_fma_f32 v89, -v97, v98, v92
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v91, -v94, v84, v85
	v_mul_f32_e32 v92, v99, v100
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v93, v96, 1.0
	v_div_fmas_f32 v89, v89, v90, v98
	v_rcp_f32_e32 v90, v101
	v_fmac_f32_e32 v84, v91, v88
	v_fma_f32 v91, -v95, v92, v99
	v_fmac_f32_e32 v96, v97, v96
	v_div_scale_f32 v97, s61, v77, v86, v77
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v79, v87, v86, v79
	v_div_fixup_f32 v80, v89, v86, v80
	v_fma_f32 v85, -v94, v84, v85
	v_fmac_f32_e32 v92, v91, v100
	v_mul_f32_e32 v87, v97, v96
	v_fma_f32 v89, -v101, v90, 1.0
	v_div_scale_f32 v91, null, v86, v86, v71
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v94, s62, v74, v86, v74
	v_div_fmas_f32 v84, v85, v88, v84
	v_fma_f32 v85, -v95, v92, v99
	v_fma_f32 v88, -v93, v87, v97
	v_fmac_f32_e32 v90, v89, v90
	v_rcp_f32_e32 v89, v91
	v_div_scale_f32 v95, null, v86, v86, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v88, v96
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v81, v84, v86, v81
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v100, v92
	v_mul_f32_e32 v92, v94, v90
	v_fma_f32 v84, -v93, v87, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v91, v89, 1.0
	v_div_scale_f32 v93, s63, v71, v86, v71
	v_div_fixup_f32 v78, v85, v86, v78
	v_fma_f32 v85, -v101, v92, v94
	v_fmac_f32_e32 v89, v98, v89
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v88, 1.0
	v_div_scale_f32 v98, null, v86, v86, v68
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v92, v85, v90
	v_div_fmas_f32 v84, v84, v96, v87
	v_mul_f32_e32 v85, v93, v89
	v_fmac_f32_e32 v88, v97, v88
	v_rcp_f32_e32 v87, v98
	v_div_scale_f32 v96, s61, v70, v86, v70
	v_div_scale_f32 v97, null, v86, v86, v67
	v_div_fixup_f32 v77, v84, v86, v77
	v_fma_f32 v84, -v101, v92, v94
	v_fma_f32 v94, -v91, v85, v93
	v_mul_f32_e32 v99, v96, v88
	v_rcp_f32_e32 v100, v97
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v101, -v98, v87, 1.0
	v_div_fmas_f32 v84, v84, v90, v92
	v_fmac_f32_e32 v85, v94, v89
	v_fma_f32 v90, -v95, v99, v96
	v_div_scale_f32 v92, s62, v68, v86, v68
	v_fmac_f32_e32 v87, v101, v87
	v_div_fixup_f32 v74, v84, v86, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v97, v100, 1.0
	v_fma_f32 v84, -v91, v85, v93
	v_fmac_f32_e32 v99, v90, v88
	v_div_scale_f32 v93, null, v83, v83, v64
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v90, v92, v87
	v_fmac_f32_e32 v100, v94, v100
	v_div_scale_f32 v91, s64, v67, v86, v67
	v_div_fmas_f32 v84, v84, v89, v85
	v_fma_f32 v85, -v95, v99, v96
	v_rcp_f32_e32 v94, v93
	v_div_scale_f32 v96, null, v83, v83, v63
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v98, v90, v92
	v_mul_f32_e32 v95, v91, v100
	v_div_fmas_f32 v85, v85, v88, v99
	v_rcp_f32_e32 v88, v96
	v_div_fixup_f32 v71, v84, v86, v71
	v_fmac_f32_e32 v90, v89, v87
	v_fma_f32 v89, -v97, v95, v91
	v_fma_f32 v99, -v93, v94, 1.0
	v_div_fixup_f32 v70, v85, v86, v70
	v_div_scale_f32 v85, s61, v64, v83, v64
	v_fma_f32 v84, -v98, v90, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v95, v89, v100 :: v_dual_fmac_f32 v94, v99, v94
	v_fma_f32 v89, -v96, v88, 1.0
	v_div_scale_f32 v92, null, v83, v83, v62
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v87, v90
	v_fma_f32 v87, -v97, v95, v91
	v_mul_f32_e32 v90, v85, v94
	v_fmac_f32_e32 v88, v89, v88
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v91, s62, v63, v83, v63
	v_div_scale_f32 v97, null, v83, v83, v61
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v98, v91, v88
	v_div_fmas_f32 v87, v87, v100, v95
	v_fma_f32 v95, -v93, v90, v85
	v_rcp_f32_e32 v100, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v92, v89, 1.0
	v_div_fixup_f32 v68, v84, v86, v68
	v_fma_f32 v84, -v96, v98, v91
	v_fmac_f32_e32 v90, v95, v94
	v_div_fixup_f32 v67, v87, v86, v67
	v_fmac_f32_e32 v89, v99, v89
	v_div_scale_f32 v86, s63, v62, v83, v62
	v_div_scale_f32 v87, null, v83, v83, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v97, v100, 1.0
	v_fma_f32 v85, -v93, v90, v85
	v_fmac_f32_e32 v98, v84, v88
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v84, v86, v89
	v_rcp_f32_e32 v93, v87
	v_fmac_f32_e32 v100, v95, v100
	v_div_scale_f32 v95, s64, v61, v83, v61
	v_div_fmas_f32 v85, v85, v94, v90
	v_fma_f32 v90, -v96, v98, v91
	v_div_scale_f32 v99, null, v83, v83, v59
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v91, -v92, v84, v86
	v_mul_f32_e32 v94, v95, v100
	v_div_fmas_f32 v88, v90, v88, v98
	v_rcp_f32_e32 v90, v99
	v_fma_f32 v96, -v87, v93, 1.0
	v_fmac_f32_e32 v84, v91, v89
	v_fma_f32 v91, -v97, v94, v95
	v_div_fixup_f32 v63, v88, v83, v63
	v_div_fixup_f32 v64, v85, v83, v64
	v_fmac_f32_e32 v93, v96, v93
	v_div_scale_f32 v96, s61, v60, v83, v60
	v_fmac_f32_e32 v94, v91, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v99, v90, 1.0
	v_div_scale_f32 v91, null, v83, v83, v58
	v_fma_f32 v85, -v92, v84, v86
	v_mul_f32_e32 v86, v96, v93
	v_fmac_f32_e32 v90, v88, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v92, s62, v59, v83, v59
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v97, v94, v95
	v_fma_f32 v89, -v87, v86, v96
	v_div_scale_f32 v95, null, v83, v83, v57
	s_mov_b32 vcc_lo, s64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v91, v88, 1.0
	v_fmac_f32_e32 v86, v89, v93
	v_rcp_f32_e32 v89, v95
	v_div_fmas_f32 v85, v85, v100, v94
	v_mul_f32_e32 v94, v92, v90
	v_div_fixup_f32 v62, v84, v83, v62
	v_fma_f32 v84, -v87, v86, v96
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v97, null, v83, v83, v56
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v61, v85, v83, v61
	v_fma_f32 v85, -v99, v94, v92
	v_div_scale_f32 v87, s63, v58, v83, v58
	v_fma_f32 v96, -v95, v89, 1.0
	v_div_fmas_f32 v84, v84, v93, v86
	v_rcp_f32_e32 v86, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v85, v90 :: v_dual_mul_f32 v85, v87, v88
	v_fmac_f32_e32 v89, v96, v89
	v_div_scale_f32 v93, s61, v57, v83, v57
	v_div_scale_f32 v96, null, v83, v83, v55
	v_div_fixup_f32 v60, v84, v83, v60
	v_fma_f32 v84, -v99, v94, v92
	v_fma_f32 v92, -v91, v85, v87
	v_mul_f32_e32 v98, v93, v89
	v_rcp_f32_e32 v99, v96
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v85, v92, v88
	v_div_fmas_f32 v84, v84, v90, v94
	v_fma_f32 v90, -v95, v98, v93
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s62, v56, v83, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v59, v84, v83, v59
	v_fma_f32 v94, -v96, v99, 1.0
	v_fma_f32 v84, -v91, v85, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v98, v90, v89 :: v_dual_mul_f32 v87, v92, v86
	v_div_scale_f32 v91, null, v83, v83, v54
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v99, v94, v99
	v_div_scale_f32 v90, s64, v55, v83, v55
	v_div_fmas_f32 v84, v84, v88, v85
	v_fma_f32 v85, -v95, v98, v93
	v_fma_f32 v88, -v97, v87, v92
	v_rcp_f32_e32 v93, v91
	v_div_scale_f32 v95, null, v83, v83, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v94, v90, v99 :: v_dual_fmac_f32 v87, v88, v86
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v96, v94, v90
	v_div_fixup_f32 v58, v84, v83, v58
	v_fma_f32 v98, -v91, v93, 1.0
	v_fma_f32 v84, -v97, v87, v92
	v_div_fixup_f32 v57, v85, v83, v57
	v_fmac_f32_e32 v94, v89, v99
	v_div_scale_f32 v85, s61, v54, v83, v54
	v_fmac_f32_e32 v93, v98, v93
	v_fma_f32 v89, -v95, v88, 1.0
	v_div_scale_f32 v92, null, v83, v83, v52
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v100, null, v83, v83, v49
	v_div_fmas_f32 v84, v84, v86, v87
	v_fma_f32 v86, -v96, v94, v90
	v_mul_f32_e32 v87, v85, v93
	v_fmac_f32_e32 v88, v89, v88
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v90, s62, v53, v83, v53
	v_div_scale_f32 v96, null, v83, v83, v51
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v97, v90, v88
	v_div_fmas_f32 v86, v86, v99, v94
	v_fma_f32 v94, -v91, v87, v85
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v92, v89, 1.0
	v_div_fixup_f32 v56, v84, v83, v56
	v_fma_f32 v84, -v95, v97, v90
	v_fmac_f32_e32 v87, v94, v93
	v_div_fixup_f32 v55, v86, v83, v55
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v86, s63, v52, v83, v52
	v_div_scale_f32 v94, null, v83, v83, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v85, -v91, v87, v85
	v_fmac_f32_e32 v97, v84, v88
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v84, v86, v89
	v_rcp_f32_e32 v91, v94
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s64, v51, v83, v51
	v_div_fmas_f32 v85, v85, v93, v87
	v_fma_f32 v87, -v95, v97, v90
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v90, -v92, v84, v86
	v_mul_f32_e32 v93, v98, v99
	v_div_fixup_f32 v54, v85, v83, v54
	v_div_fmas_f32 v87, v87, v88, v97
	v_rcp_f32_e32 v88, v100
	v_fma_f32 v95, -v94, v91, 1.0
	v_fmac_f32_e32 v84, v90, v89
	v_fma_f32 v90, -v96, v93, v98
	v_div_fixup_f32 v53, v87, v83, v53
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s61, v50, v83, v50
	v_fmac_f32_e32 v93, v90, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v100, v88, 1.0
	v_div_scale_f32 v90, null, v82, v82, v48
	v_fma_f32 v85, -v92, v84, v86
	v_mul_f32_e32 v86, v95, v91
	v_fmac_f32_e32 v88, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v92, s62, v49, v83, v49
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v96, v93, v98
	v_fma_f32 v89, -v94, v86, v95
	v_div_scale_f32 v96, null, v82, v82, v47
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v52, v84, v83, v52
	v_fmac_f32_e32 v86, v89, v91
	v_rcp_f32_e32 v89, v96
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fmas_f32 v85, v85, v99, v93
	v_mul_f32_e32 v93, v92, v88
	v_fma_f32 v84, -v94, v86, v95
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v97, null, v82, v82, v46
	v_div_fixup_f32 v51, v85, v83, v51
	v_fma_f32 v85, -v100, v93, v92
	v_div_scale_f32 v94, s63, v48, v82, v48
	v_fma_f32 v95, -v96, v89, 1.0
	v_div_fmas_f32 v84, v84, v91, v86
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v93, v85, v88
	v_mul_f32_e32 v85, v94, v87
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v91, s61, v47, v82, v47
	v_div_scale_f32 v95, null, v82, v82, v45
	v_div_fixup_f32 v50, v84, v83, v50
	v_fma_f32 v84, -v100, v93, v92
	v_fma_f32 v92, -v90, v85, v94
	v_mul_f32_e32 v98, v91, v89
	v_rcp_f32_e32 v99, v95
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v85, v92, v87
	v_div_fmas_f32 v84, v84, v88, v93
	v_fma_f32 v88, -v96, v98, v91
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s62, v46, v82, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v49, v84, v83, v49
	v_fma_f32 v93, -v95, v99, 1.0
	v_fma_f32 v83, -v90, v85, v94
	v_fmac_f32_e32 v98, v88, v89
	v_mul_f32_e32 v84, v92, v86
	v_div_scale_f32 v90, null, v82, v82, v44
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v99, v93, v99
	v_div_scale_f32 v88, s64, v45, v82, v45
	v_div_fmas_f32 v83, v83, v87, v85
	v_fma_f32 v85, -v96, v98, v91
	v_fma_f32 v87, -v97, v84, v92
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v94, null, v82, v82, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v93, v88, v99 :: v_dual_fmac_f32 v84, v87, v86
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v87, v94
	v_div_fmas_f32 v85, v85, v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v95, v93, v88
	v_div_fixup_f32 v48, v83, v82, v48
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v83, -v97, v84, v92
	v_div_fixup_f32 v47, v85, v82, v47
	v_fmac_f32_e32 v93, v89, v99
	v_div_scale_f32 v85, s61, v44, v82, v44
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v89, -v94, v87, 1.0
	v_div_scale_f32 v92, null, v82, v82, v42
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v95, v93, v88
	v_mul_f32_e32 v86, v85, v91
	v_fmac_f32_e32 v87, v89, v87
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v89, s62, v43, v82, v43
	v_div_scale_f32 v95, null, v82, v82, v41
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v96, v89, v87
	v_div_fmas_f32 v84, v84, v99, v93
	v_fma_f32 v93, -v90, v86, v85
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v88, 1.0
	v_div_fixup_f32 v46, v83, v82, v46
	v_fma_f32 v83, -v94, v96, v89
	v_fmac_f32_e32 v86, v93, v91
	v_div_scale_f32 v93, null, v82, v82, v40
	v_div_fixup_f32 v45, v84, v82, v45
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v84, s63, v42, v82, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v98, 1.0
	v_fma_f32 v85, -v90, v86, v85
	v_fmac_f32_e32 v96, v83, v87
	v_rcp_f32_e32 v90, v93
	s_mov_b32 vcc_lo, s61
	v_dual_mul_f32 v83, v84, v88 :: v_dual_fmac_f32 v98, v97, v98
	v_div_scale_f32 v97, s64, v41, v82, v41
	v_div_fmas_f32 v85, v85, v91, v86
	v_fma_f32 v86, -v94, v96, v89
	v_div_scale_f32 v99, null, v82, v82, v39
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v89, -v92, v83, v84
	v_mul_f32_e32 v91, v97, v98
	v_fma_f32 v94, -v93, v90, 1.0
	v_div_fmas_f32 v86, v86, v87, v96
	v_rcp_f32_e32 v87, v99
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v89, -v95, v91, v97
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s61, v40, v82, v40
	v_div_fixup_f32 v44, v85, v82, v44
	v_div_fixup_f32 v43, v86, v82, v43
	v_fma_f32 v84, -v92, v83, v84
	v_fmac_f32_e32 v91, v89, v98
	v_mul_f32_e32 v85, v94, v90
	v_fma_f32 v86, -v99, v87, 1.0
	v_div_scale_f32 v89, null, v82, v82, v38
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v92, s62, v39, v82, v39
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v95, v91, v97
	v_fma_f32 v88, -v93, v85, v94
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v95, null, v82, v82, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v88, v90
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v42, v83, v82, v42
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v84, v84, v98, v91
	v_mul_f32_e32 v91, v92, v87
	v_fma_f32 v83, -v93, v85, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v41, v84, v82, v41
	v_fma_f32 v84, -v99, v91, v92
	v_div_scale_f32 v93, s63, v38, v82, v38
	v_fmac_f32_e32 v86, v96, v86
	v_fma_f32 v94, -v95, v88, 1.0
	v_div_scale_f32 v96, null, v82, v82, v36
	v_div_fmas_f32 v83, v83, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v84, v87 :: v_dual_fmac_f32 v88, v94, v88
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, null, v82, v82, v35
	v_mul_f32_e32 v84, v93, v86
	v_div_scale_f32 v90, s61, v37, v82, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v94
	v_div_fixup_f32 v40, v83, v82, v40
	v_fma_f32 v83, -v99, v91, v92
	v_fma_f32 v92, -v89, v84, v93
	v_mul_f32_e32 v97, v90, v88
	v_fma_f32 v99, -v96, v85, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v91
	v_fmac_f32_e32 v84, v92, v86
	v_fma_f32 v87, -v95, v97, v90
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v91, s62, v36, v82, v36
	v_fma_f32 v92, -v94, v98, 1.0
	v_div_fixup_f32 v39, v83, v82, v39
	v_fma_f32 v83, -v89, v84, v93
	v_fmac_f32_e32 v97, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v87, v91, v85 :: v_dual_fmac_f32 v98, v92, v98
	v_div_scale_f32 v92, null, v82, v82, v34
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s64, v35, v82, v35
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v95, v97, v90
	v_fma_f32 v86, -v96, v87, v91
	v_rcp_f32_e32 v90, v92
	v_div_scale_f32 v95, null, v82, v82, v33
	v_mul_f32_e32 v93, v89, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v86, v85
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v86, v95
	v_div_fmas_f32 v84, v84, v88, v97
	v_fma_f32 v88, -v94, v93, v89
	v_div_fixup_f32 v38, v83, v82, v38
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v90, 1.0
	v_fma_f32 v83, -v96, v87, v91
	v_div_fixup_f32 v37, v84, v82, v37
	v_fmac_f32_e32 v93, v88, v98
	v_div_scale_f32 v84, s61, v34, v82, v34
	v_fmac_f32_e32 v90, v97, v90
	v_fma_f32 v88, -v95, v86, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v96, null, v65, v65, v25
	v_div_fmas_f32 v83, v83, v85, v87
	v_fma_f32 v85, -v94, v93, v89
	v_mul_f32_e32 v87, v84, v90
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, null, v65, v65, v26
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v89, s62, v33, v82, v33
	v_div_fmas_f32 v85, v85, v98, v93
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v93, -v92, v87, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v94, v89, v86
	v_div_fixup_f32 v36, v83, v82, v36
	v_div_fixup_f32 v35, v85, v82, v35
	v_rcp_f32_e32 v85, v96
	v_fmac_f32_e32 v87, v93, v90
	v_fma_f32 v83, -v95, v94, v89
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v98, null, v65, v65, v23
	v_fma_f32 v93, -v88, v91, 1.0
	v_fma_f32 v84, -v92, v87, v84
	v_div_scale_f32 v92, null, v65, v65, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v83, v86 :: v_dual_fmac_f32 v91, v93, v91
	v_div_scale_f32 v83, s63, v26, v65, v26
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v97, -v96, v85, 1.0
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v95, v94, v89
	v_mul_f32_e32 v89, v83, v91
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v85, v97, v85
	v_div_scale_f32 v90, s61, v25, v65, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v97, -v88, v89, v83
	v_fma_f32 v95, -v92, v93, 1.0
	v_rcp_f32_e32 v100, v98
	v_div_fmas_f32 v86, v87, v86, v94
	v_mul_f32_e32 v99, v90, v85
	v_fmac_f32_e32 v89, v97, v91
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s64, v24, v65, v24
	v_div_fixup_f32 v34, v84, v82, v34
	v_div_fixup_f32 v33, v86, v82, v33
	v_fma_f32 v82, -v88, v89, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v95, v93
	v_div_scale_f32 v86, null, v65, v65, v21
	v_fma_f32 v87, -v96, v99, v90
	v_fma_f32 v84, -v98, v100, 1.0
	v_fma_f32 v83, -v92, v94, v95
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v99, v87, v85 :: v_dual_fmac_f32 v100, v84, v100
	v_fmac_f32_e32 v94, v83, v93
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s62, v23, v65, v23
	v_div_fmas_f32 v82, v82, v91, v89
	v_fma_f32 v87, -v96, v99, v90
	v_div_scale_f32 v89, null, v65, v65, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v88, v84, v100
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v26, v82, v65, v26
	v_fma_f32 v90, -v86, v83, 1.0
	v_div_fmas_f32 v85, v87, v85, v99
	v_fma_f32 v87, -v92, v94, v95
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v92, -v98, v88, v84
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s61, v21, v65, v21
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v88, v92, v100
	v_div_fmas_f32 v87, v87, v93, v94
	v_mul_f32_e32 v82, v90, v83
	v_div_fixup_f32 v25, v85, v65, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v89, v91, 1.0
	v_fma_f32 v84, -v98, v88, v84
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v92, -v86, v82, v90
	v_div_fixup_f32 v24, v87, v65, v24
	v_div_scale_f32 v87, null, v65, v65, v19
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v85, s63, v20, v65, v20
	v_div_fmas_f32 v84, v84, v100, v88
	v_fmac_f32_e32 v82, v92, v83
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v85, v91
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v23, v84, v65, v23
	v_fma_f32 v84, -v86, v82, v90
	v_div_scale_f32 v92, null, v65, v65, v18
	v_fma_f32 v86, -v89, v88, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v84, v83, v82
	v_div_scale_f32 v83, null, v65, v65, v17
	v_fma_f32 v90, -v87, v93, 1.0
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v88, v86, v91
	v_rcp_f32_e32 v86, v83
	v_div_scale_f32 v84, s61, v19, v65, v19
	v_fmac_f32_e32 v93, v90, v93
	v_div_scale_f32 v90, null, v65, v65, v16
	v_div_fixup_f32 v21, v82, v65, v21
	v_fma_f32 v85, -v89, v88, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v92, v94, 1.0
	v_rcp_f32_e32 v96, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v83, v86, 1.0
	v_mul_f32_e32 v89, v84, v93
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v94, v82, v94
	v_div_scale_f32 v82, s62, v18, v65, v18
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v65, v65, v15
	v_div_fmas_f32 v85, v85, v91, v88
	v_fma_f32 v88, -v87, v89, v84
	v_mul_f32_e32 v91, v82, v94
	v_div_scale_f32 v97, s63, v17, v65, v17
	v_fma_f32 v98, -v90, v96, 1.0
	v_rcp_f32_e32 v99, v95
	v_fmac_f32_e32 v89, v88, v93
	v_fma_f32 v88, -v92, v91, v82
	v_mul_f32_e32 v100, v97, v86
	v_fmac_f32_e32 v96, v98, v96
	v_div_scale_f32 v98, s64, v16, v65, v16
	v_div_fixup_f32 v20, v85, v65, v20
	v_fma_f32 v84, -v87, v89, v84
	v_fmac_f32_e32 v91, v88, v94
	v_fma_f32 v85, -v83, v100, v97
	v_mul_f32_e32 v87, v98, v96
	v_fma_f32 v88, -v95, v99, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v82, -v92, v91, v82
	v_fmac_f32_e32 v100, v85, v86
	v_fma_f32 v85, -v90, v87, v98
	v_fmac_f32_e32 v99, v88, v99
	v_div_scale_f32 v88, s61, v15, v65, v15
	v_div_fmas_f32 v84, v84, v93, v89
	v_fma_f32 v83, -v83, v100, v97
	v_fmac_f32_e32 v87, v85, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v88, v99
	v_div_scale_f32 v89, null, v65, v65, v14
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v19, v84, v65, v19
	v_div_fmas_f32 v82, v82, v94, v91
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v91, v89
	v_div_fmas_f32 v83, v83, v86, v100
	v_fma_f32 v86, -v90, v87, v98
	v_fma_f32 v90, -v95, v85, v88
	v_div_fixup_f32 v18, v82, v65, v18
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v17, v83, v65, v17
	v_div_fmas_f32 v86, v86, v96, v87
	v_fmac_f32_e32 v85, v90, v99
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v84, -v89, v91, 1.0
	v_div_scale_f32 v83, null, v65, v65, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v95, v85, v88
	v_div_fixup_f32 v16, v86, v65, v16
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, null, v65, v65, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v99, v85
	v_div_scale_f32 v87, vcc_lo, v14, v65, v14
	v_rcp_f32_e32 v85, v83
	v_rcp_f32_e32 v88, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v82, v65, v15
	v_mul_f32_e32 v92, v87, v91
	v_div_scale_f32 v86, null, v65, v65, v11
	v_div_scale_f32 v93, null, v65, v65, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v89, v92, v87
	v_rcp_f32_e32 v90, v86
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v83, v85, 1.0
	v_fma_f32 v94, -v84, v88, 1.0
	v_rcp_f32_e32 v95, v93
	v_fmac_f32_e32 v92, v96, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, s61, v13, v65, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v86, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v93, v95, 1.0
	v_div_fmas_f32 v87, v87, v91, v92
	s_mov_b32 vcc_lo, s61
	s_mov_b32 s61, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_med3_f32 v77, v77, s61, 0x40e00000
	v_med3_f32 v67, v67, s61, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v82, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v94, v88
	v_div_scale_f32 v94, s62, v12, v65, v12
	v_fma_f32 v96, -v83, v98, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v96, v85
	v_mul_f32_e32 v100, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v97, v90
	v_div_scale_f32 v97, s63, v11, v65, v11
	v_fma_f32 v82, -v83, v98, v82
	v_fmac_f32_e32 v95, v99, v95
	v_div_scale_f32 v99, s64, v10, v65, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v85, v98
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_med3_f32 v62, v62, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v101, v97, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v82, v65, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v57
	v_and_b32_e32 v57, 15, v77
	v_and_b32_e32 v77, 15, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v84, v100, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v102, v99, v95
	v_fmac_f32_e32 v100, v89, v88
	v_fma_f32 v96, -v86, v101, v97
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v93, v102, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v106, v15
	v_and_b32_e32 v15, 15, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v84, v100, v94
	v_fmac_f32_e32 v101, v96, v90
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v100
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v102, v83, v95
	v_fma_f32 v83, -v86, v101, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v97, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v25, 15, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v93, v102, v99
	v_div_fmas_f32 v83, v83, v90, v101
	s_mov_b32 vcc_lo, s64
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v87, v65, v14
	v_div_fmas_f32 v85, v85, v95, v102
	v_div_fixup_f32 v12, v84, v65, v12
	v_div_fixup_f32 v11, v83, v65, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v85, v65, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v69
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v83, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_med3_f32 v12, v12, s61, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v89, v42
	v_and_b32_e32 v42, 15, v58
	v_and_b32_e32 v58, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s61, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v94, v35
	v_cvt_i32_f32_e32 v107, v14
	v_cvt_i32_f32_e32 v109, v12
	v_and_b32_e32 v14, 15, v66
	v_and_b32_e32 v66, 15, v52
	v_and_b32_e32 v12, 15, v48
	v_and_b32_e32 v35, 15, v44
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v44, 13, v0
	v_lshlrev_b32_e32 v48, 8, v83
	v_and_b32_e32 v52, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v72, v73
	v_rndne_f32_e32 v73, v75
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v26, v26, s61, 0x40e00000
	v_cvt_i32_f32_e32 v95, v34
	v_and_b32_e32 v34, 15, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v60, 0xe000, v44, v48
	v_xor_b32_e32 v8, v8, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v73, v73, s61, 0x40e00000
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_med3_f32 v13, v13, s61, 0x40e00000
	v_med3_f32 v11, v11, s61, 0x40e00000
	v_med3_f32 v10, v10, s61, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v60, v29, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s61, 0x40e00000
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v100, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v108, v13
	v_cvt_i32_f32_e32 v110, v11
	v_cvt_i32_f32_e32 v111, v10
	v_and_b32_e32 v10, 15, v65
	v_and_b32_e32 v11, 15, v64
	v_and_b32_e32 v13, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v29, 0, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v96, v33
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v67, 15, v36
	v_and_b32_e32 v36, 15, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v29, v[10:13]
	ds_store_b128 v29, v[33:36] offset:256
	v_lshlrev_b32_e32 v11, 6, v0
	v_lshlrev_b32_e32 v12, 5, v22
	v_cndmask_b32_e64 v13, 0x2010, 0, s3
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v76
	v_rndne_f32_e32 v76, v79
	v_rndne_f32_e32 v79, v80
	v_rndne_f32_e32 v80, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s61, 0x40e00000
	v_cvt_i32_f32_e32 v81, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v20, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v11, 0x300, v11, v12
	v_xor_b32_e32 v12, v13, v31
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v31, s3, s66, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v24
	v_and_b32_e32 v24, 15, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v32, null, s67, 0, s3
	v_add_co_u32 v81, s3, s66, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v80, v80, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_med3_f32 v47, v47, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_cvt_i32_f32_e32 v87, v46
	v_and_b32_e32 v46, 15, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s66, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v43, v43, s61, 0x40e00000
	v_med3_f32 v20, v20, s61, 0x40e00000
	v_med3_f32 v72, v72, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v79, v79, s61, 0x40e00000
	v_med3_f32 v78, v78, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_med3_f32 v50, v50, s61, 0x40e00000
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	v_med3_f32 v39, v39, s61, 0x40e00000
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_med3_f32 v37, v37, s61, 0x40e00000
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v104, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[72:73], v[31:32]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[74:75], v[31:32]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 36, v4
	v_lshl_or_b32 v3, s77, 7, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v101, v20
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[72:73], v[81:82]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v50
	v_cvt_i32_f32_e32 v86, v49
	v_cvt_i32_f32_e32 v103, v18
	v_cvt_i32_f32_e32 v105, v16
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v50, 15, v56
	v_and_b32_e32 v16, 15, v47
	v_and_b32_e32 v17, 15, v97
	v_and_b32_e32 v52, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v10, v8, 16, 0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[31:32], null, v31, s72, v[3:4]
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v18, 15, v69
	v_and_b32_e32 v69, 15, v70
	v_and_b32_e32 v70, 15, v51
	v_and_b32_e32 v51, 15, v40
	v_cvt_i32_f32_e32 v91, v39
	v_cvt_i32_f32_e32 v92, v38
	v_cvt_i32_f32_e32 v93, v37
	v_and_b32_e32 v37, 15, v75
	v_and_b32_e32 v65, 15, v71
	v_and_b32_e32 v73, 15, v68
	v_and_b32_e32 v38, 15, v59
	v_and_b32_e32 v39, 15, v43
	v_and_b32_e32 v40, 15, v101
	v_and_b32_e32 v68, 15, v108
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v84, v53
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v29, v[49:52] offset:2048
	ds_store_b128 v29, v[65:68] offset:2304
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[37:40] offset:256
	v_lshlrev_b32_e32 v15, 2, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v102, v19
	v_cvt_i32_f32_e32 v99, v23
	v_cvt_i32_f32_e32 v90, v41
	v_and_b32_e32 v53, 15, v78
	v_and_b32_e32 v61, 15, v74
	v_and_b32_e32 v19, 15, v62
	v_and_b32_e32 v54, 15, v55
	v_and_b32_e32 v62, 15, v84
	v_and_b32_e32 v20, 15, v87
	v_and_b32_e32 v55, 15, v91
	v_and_b32_e32 v59, 15, v92
	v_and_b32_e32 v63, 15, v93
	v_and_b32_e32 v21, 15, v98
	v_and_b32_e32 v56, 15, v105
	v_and_b32_e32 v60, 15, v106
	v_and_b32_e32 v64, 15, v107
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v14, v8, 32, 0
	v_xad_u32 v8, v8, 48, 0
	v_or3_b32 v29, v12, v11, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v23, 15, v72
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v45, 15, v79
	v_and_b32_e32 v74, 15, v85
	v_and_b32_e32 v78, 15, v86
	v_and_b32_e32 v43, 15, v89
	v_and_b32_e32 v71, 15, v94
	v_and_b32_e32 v75, 15, v95
	v_and_b32_e32 v79, 15, v96
	v_and_b32_e32 v44, 15, v102
	v_and_b32_e32 v72, 15, v109
	v_and_b32_e32 v76, 15, v110
	v_and_b32_e32 v80, 15, v111
	v_and_b32_e32 v26, 15, v99
	v_and_b32_e32 v47, 15, v90
	v_and_b32_e32 v48, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v10, v[53:56] offset:2048
	ds_store_b128 v10, v[69:72] offset:2304
	ds_store_b128 v14, v[18:21]
	ds_store_b128 v14, v[41:44] offset:256
	ds_store_b128 v14, v[57:60] offset:2048
	ds_store_b128 v14, v[73:76] offset:2304
	ds_store_b128 v8, v[23:26]
	ds_store_b128 v8, v[45:48] offset:256
	ds_store_b128 v8, v[61:64] offset:2048
	ds_store_b128 v8, v[77:80] offset:2304
	v_xad_u32 v8, 0x4020, v29, 0
	v_xad_u32 v26, 0x8040, v29, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v8
	ds_load_b128 v[37:40], v8 offset:128
	ds_load_b128 v[41:44], v8 offset:4096
	ds_load_b128 v[45:48], v8 offset:4224
	v_xad_u32 v8, 0xc060, v29, 0
	ds_load_b128 v[49:52], v26
	ds_load_b128 v[53:56], v26 offset:128
	ds_load_b128 v[57:60], v26 offset:4096
	ds_load_b128 v[61:64], v26 offset:4224
	ds_load_b128 v[65:68], v8 offset:4096
	ds_load_b128 v[69:72], v8
	ds_load_b128 v[73:76], v8 offset:128
	ds_load_b128 v[77:80], v8 offset:4224
	v_add_nc_u32_e32 v22, 0, v29
	ds_load_b128 v[10:13], v22
	ds_load_b128 v[14:17], v22 offset:128
	ds_load_b128 v[18:21], v22 offset:4096
	ds_load_b128 v[22:25], v22 offset:4224
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[81:82]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v26, 34, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	s_mov_b32 s67, 0x31027000
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v50, v58, 4, v50
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v81, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 38, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v61, v77, 4, v73
	v_lshl_or_b32 v73, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 40, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 42, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	v_lshl_or_b32 v63, v79, 4, v75
	v_lshl_or_b32 v75, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 44, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v37, 46, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 48, v4
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 50, v4
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 52, v4
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	v_add_nc_u32_e32 v41, 54, v4
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	v_add_nc_u32_e32 v42, 56, v4
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	v_add_nc_u32_e32 v43, 58, v4
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v29, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 4, v4
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 6, v4
	v_add_nc_u32_e32 v44, 60, v4
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 8, v4
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v65, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 10, v4
	v_mad_u64_u32 v[41:42], null, v42, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[42:43], null, v43, s72, v[3:4]
	v_add_nc_u32_e32 v15, 12, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v69, v19, 4, v11
	v_lshl_or_b32 v67, v24, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 14, v4
	v_mad_u64_u32 v[10:11], null, v10, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s72, v[3:4]
	v_mad_u64_u32 v[43:44], null, v44, s72, v[3:4]
	v_add_nc_u32_e32 v17, 16, v4
	v_add_nc_u32_e32 v18, 18, v4
	v_mad_u64_u32 v[12:13], null, v13, s72, v[3:4]
	v_add_nc_u32_e32 v19, 20, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	v_add_nc_u32_e32 v20, 22, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	v_add_nc_u32_e32 v21, 24, v4
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_add_nc_u32_e32 v22, 26, v4
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_add_nc_u32_e32 v23, 28, v4
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_add_nc_u32_e32 v24, 30, v4
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_add_nc_u32_e32 v25, 32, v4
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v72, 62, v4
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v29, v6, s[64:67], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v72, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s61
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v81, v4, s[64:67], 0 offen
	buffer_store_b8 v49, v6, s[64:67], 0 offen
	buffer_store_b8 v57, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	buffer_store_b8 v45, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v73, v8, s[64:67], 0 offen
	buffer_store_b8 v50, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v58, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v46, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	buffer_store_b8 v62, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v70, v4, s[64:67], 0 offen
	buffer_store_b8 v74, v6, s[64:67], 0 offen
	buffer_store_b8 v51, v7, s[64:67], 0 offen
	buffer_store_b8 v59, v8, s[64:67], 0 offen
	buffer_store_b8 v67, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v4, s[64:67], 0 offen
	buffer_store_b8 v55, v6, s[64:67], 0 offen
	buffer_store_b8 v63, v7, s[64:67], 0 offen
	buffer_store_b8 v71, v8, s[64:67], 0 offen
	buffer_store_b8 v75, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v4, s[64:67], 0 offen
	buffer_store_b8 v60, v6, s[64:67], 0 offen
	buffer_store_b8 v68, v7, s[64:67], 0 offen
	buffer_store_b8 v48, v8, s[64:67], 0 offen
	buffer_store_b8 v56, v10, s[64:67], 0 offen
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v28
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s76, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v83
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v64, v3, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s76, s76, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s76, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v3, v[1:2]
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v6, 0, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s65, s71, 0xffff
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s64, s70
	v_add_lshl_u32 v0, v2, s77, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_and_b32 v7, 2, v27
	v_add3_u32 v4, v6, v7, v4
	ds_load_u16 v1, v4
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp90:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 202
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 202
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17096
; TotalNumSgprs: 80
; NumVgprs: 202
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 202
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     202
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
