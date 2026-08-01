	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[10:11], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b128 s[12:15], s[0:1], 0x28
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
	s_add_i32 s3, s74, 0xff
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
	s_sub_i32 s5, s11, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s9, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s9
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
	s_xor_b32 s7, s9, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s8, s2, 1
	s_sub_i32 s11, s3, s6
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s8, s2
	s_cselect_b32 s3, s11, s3
	s_add_i32 s8, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s8, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s75, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s9, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[6:7], s[4:5], 3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s4, s12, s6
	s_addc_u32 s5, s13, s7
	s_load_b64 s[68:69], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s14, s6
	s_addc_u32 s5, s15, s7
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s6
	s_addc_u32 s3, s3, s7
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[4:5], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s10, 0
	s_mov_b32 s5, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s2, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s2
	v_add_nc_u32_e32 v9, s68, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e64 s3, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
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
	v_add_nc_u32_e32 v5, s68, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[64:67], s[0:1], 0x40
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v29, 0x80, v0
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v28, 15, v0
	v_lshrrev_b32_e32 v27, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v29
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
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v69, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_and_b32 s76, s3, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s3, s68, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s3
	s_clause 0x1
	s_load_b32 s9, s[0:1], 0x58
	s_load_b32 s11, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s4, s6
	s_addc_u32 s7, s5, s7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[1:2]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s8, s[6:7], 0x0
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v1, s68, v28
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v10, 3, v0
	v_bfe_i32 v11, v0, 3, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v35, v1, s10
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v1, 48, v1
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v21, 0x70, v31
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v10, 0x700, v10
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v11, 0x88, v11
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s5, s75, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v38, v1, s10
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v1, 0xf0, v0
	v_or3_b32 v40, v21, v10, v11
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	v_mul_lo_u32 v36, v2, s10
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, s5, v27
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v11, 2, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v10, 32, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s9, s74
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v12, 16, v2
	v_or_b32_e32 v13, 32, v2
	v_or_b32_e32 v14, 48, v2
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s8
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v15, 64, v2
	v_or_b32_e32 v16, 0x50, v2
	v_add3_u32 v45, 0, v11, v10
	v_mad_u64_u32 v[10:11], null, v2, s9, s[4:5]
	v_or_b32_e32 v17, 0x60, v2
	v_mad_u64_u32 v[11:12], null, v12, s9, s[4:5]
	v_or_b32_e32 v18, 0x70, v2
	v_mad_u64_u32 v[12:13], null, v13, s9, s[4:5]
	v_or_b32_e32 v19, 0x80, v2
	v_mad_u64_u32 v[13:14], null, v14, s9, s[4:5]
	v_or_b32_e32 v20, 0x90, v2
	v_mad_u64_u32 v[14:15], null, v15, s9, s[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[70:71], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v8, 0xa0, v2
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v21, 1, v0
	v_mad_u64_u32 v[15:16], null, v16, s9, s[4:5]
	v_or_b32_e32 v7, 0xb0, v2
	v_cndmask_b32_e64 v22, 0x88, 0, s2
	v_mad_u64_u32 v[16:17], null, v17, s9, s[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[5:6]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v6, 0xc0, v2
	v_mad_u64_u32 v[17:18], null, v18, s9, s[4:5]
	v_or_b32_e32 v5, 0xd0, v2
	v_mad_u64_u32 v[18:19], null, v19, s9, s[4:5]
	v_or_b32_e32 v4, 0xe0, v2
	v_mad_u64_u32 v[19:20], null, v20, s9, s[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v37, v3, s10
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xf0, v2
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v44, 28, v21
	v_mad_u64_u32 v[20:21], null, v8, s9, s[4:5]
	v_xor_b32_e32 v42, v22, v32
	v_mad_u64_u32 v[21:22], null, v7, s9, s[4:5]
	v_dual_mov_b32 v90, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mad_u64_u32 v[22:23], null, v6, s9, s[4:5]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v34, 6, v0
	v_or_b32_e32 v39, 0x300, v0
	v_or_b32_e32 v41, 0x3f0, v0
	v_xor_b32_e32 v43, 8, v40
	v_mad_u64_u32 v[23:24], null, v5, s9, s[4:5]
	s_mov_b32 s12, 0
	v_mad_u64_u32 v[24:25], null, v4, s9, s[4:5]
	v_mad_u64_u32 v[25:26], null, v3, s9, s[4:5]
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v103, 0, v1
	v_mov_b32_e32 v1, s12
	v_or_b32_e32 v68, s5, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_or_b32_e32 v73, 12, v34
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v85, 0, v0
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v87, 0, v39
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v89, 0, v28
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v91, 0, v41
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v93, 0, v42
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v95, 0, v40
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v96, 0, v43
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v102, v45, v44
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v3, s14
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s27, s27, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s3, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s33, s10, s8
	s_mov_b32 s28, s20
	s_mov_b32 s29, s21
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
	s_mov_b32 s36, s24
	s_mov_b32 s37, s25
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s4, s12, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v115, s4, v34
	v_or_b32_e32 v114, s4, v73
	v_or_b32_e32 v116, s4, v28
	v_mad_u64_u32 v[112:113], null, v115, s11, v[9:10]
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s5, s9, v114
	v_mad_u64_u32 v[113:114], null, v114, s11, v[9:10]
	v_or_b32_e32 v114, 4, v115
	v_or_b32_e32 v117, 8, v115
	v_cmp_gt_i32_e64 s4, s9, v115
	v_add_nc_u32_e32 v118, v10, v116
	v_cmp_gt_i32_e64 s6, s9, v116
	v_cmp_gt_i32_e64 s7, s9, v114
	v_mad_u64_u32 v[114:115], null, v114, s11, v[9:10]
	v_add_nc_u32_e32 v119, v11, v116
	v_add_nc_u32_e32 v120, v12, v116
	v_add_nc_u32_e32 v121, v13, v116
	v_add_nc_u32_e32 v122, v14, v116
	v_add_nc_u32_e32 v123, v15, v116
	v_add_nc_u32_e32 v124, v16, v116
	v_add_nc_u32_e32 v125, v17, v116
	v_add_nc_u32_e32 v126, v18, v116
	v_add_nc_u32_e32 v127, v19, v116
	v_add_nc_u32_e32 v128, v20, v116
	v_add_nc_u32_e32 v129, v21, v116
	v_add_nc_u32_e32 v130, v22, v116
	v_add_nc_u32_e32 v131, v23, v116
	v_add_nc_u32_e32 v132, v24, v116
	v_add_nc_u32_e32 v133, v25, v116
	v_mad_u64_u32 v[115:116], null, v117, s11, v[9:10]
	v_cmp_gt_i32_e64 s8, s9, v117
	s_and_b32 s5, s76, s5
	s_and_b32 s4, s76, s4
	v_cndmask_b32_e64 v116, 0x80000000, v118, s6
	v_cndmask_b32_e64 v112, 0x80000000, v112, s4
	v_cndmask_b32_e64 v113, 0x80000000, v113, s5
	s_and_b32 s5, s76, s7
	v_cndmask_b32_e64 v117, 0x80000000, v119, s6
	s_and_b32 s4, s76, s8
	v_cndmask_b32_e64 v118, 0x80000000, v120, s6
	v_cndmask_b32_e64 v114, 0x80000000, v114, s5
	v_cndmask_b32_e64 v119, 0x80000000, v121, s6
	v_cndmask_b32_e64 v115, 0x80000000, v115, s4
	v_cndmask_b32_e64 v120, 0x80000000, v122, s6
	v_cndmask_b32_e64 v121, 0x80000000, v123, s6
	v_cndmask_b32_e64 v122, 0x80000000, v124, s6
	v_cndmask_b32_e64 v123, 0x80000000, v125, s6
	v_cndmask_b32_e64 v124, 0x80000000, v126, s6
	v_cndmask_b32_e64 v125, 0x80000000, v127, s6
	v_cndmask_b32_e64 v126, 0x80000000, v128, s6
	v_cndmask_b32_e64 v127, 0x80000000, v129, s6
	v_cndmask_b32_e64 v128, 0x80000000, v130, s6
	v_cndmask_b32_e64 v129, 0x80000000, v131, s6
	v_cndmask_b32_e64 v130, 0x80000000, v132, s6
	v_cndmask_b32_e64 v131, 0x80000000, v133, s6
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v132, v116, s[20:23], 0 offen
	buffer_load_u8 v133, v117, s[20:23], 0 offen
	buffer_load_u8 v118, v118, s[20:23], 0 offen
	buffer_load_u8 v119, v119, s[20:23], 0 offen
	buffer_load_u8 v120, v120, s[20:23], 0 offen
	buffer_load_u8 v121, v121, s[20:23], 0 offen
	buffer_load_u8 v122, v122, s[20:23], 0 offen
	buffer_load_u8 v123, v123, s[20:23], 0 offen
	buffer_load_u8 v124, v124, s[20:23], 0 offen
	buffer_load_u8 v125, v125, s[20:23], 0 offen
	buffer_load_u8 v126, v126, s[20:23], 0 offen
	buffer_load_u8 v127, v127, s[20:23], 0 offen
	buffer_load_u8 v128, v128, s[20:23], 0 offen
	buffer_load_u8 v129, v129, s[20:23], 0 offen
	buffer_load_u8 v130, v130, s[20:23], 0 offen
	buffer_load_u8 v131, v131, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v112, v112, s[28:31], 0 offen
	buffer_load_u8 v113, v113, s[28:31], 0 offen
	buffer_load_u8 v114, v114, s[28:31], 0 offen
	buffer_load_u8 v115, v115, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s4, s12, s33
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	ds_store_b8 v85, v112
	s_waitcnt vmcnt(1)
	ds_store_b8 v85, v114 offset:256
	ds_store_b8 v87, v113
	s_waitcnt vmcnt(0)
	ds_store_b8 v85, v115 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v134, v89 offset:320
	ds_load_u8 v135, v89 offset:256
	ds_load_u8 v116, v89 offset:336
	ds_load_u8 v117, v89 offset:272
	ds_load_u8 v114, v89 offset:352
	ds_load_u8 v115, v89 offset:288
	ds_load_u8 v112, v89 offset:368
	ds_load_u8 v113, v89 offset:304
	ds_load_u8 v136, v89 offset:448
	ds_load_u8 v137, v89 offset:384
	ds_load_u8 v138, v89 offset:464
	ds_load_u8 v139, v89 offset:400
	ds_load_u8 v140, v89 offset:480
	ds_load_u8 v141, v89 offset:416
	ds_load_u8 v142, v89 offset:496
	ds_load_u8 v143, v89 offset:432
	ds_load_u8 v144, v89 offset:64
	ds_load_u8 v145, v89
	ds_load_u8 v146, v89 offset:80
	ds_load_u8 v147, v89 offset:96
	ds_load_u8 v148, v89 offset:112
	ds_load_u8 v149, v89 offset:16
	ds_load_u8 v150, v89 offset:32
	ds_load_u8 v151, v89 offset:48
	ds_load_u8 v152, v89 offset:192
	ds_load_u8 v153, v89 offset:128
	ds_load_u8 v154, v89 offset:208
	ds_load_u8 v155, v89 offset:144
	ds_load_u8 v156, v89 offset:224
	ds_load_u8 v157, v89 offset:160
	ds_load_u8 v158, v89 offset:240
	ds_load_u8 v159, v89 offset:176
	ds_load_u8 v160, v89 offset:832
	ds_load_u8 v161, v89 offset:768
	ds_load_u8 v162, v89 offset:848
	ds_load_u8 v163, v89 offset:784
	ds_load_u8 v164, v89 offset:864
	ds_load_u8 v165, v89 offset:800
	ds_load_u8 v166, v89 offset:880
	ds_load_u8 v167, v89 offset:816
	ds_load_u8 v168, v89 offset:960
	ds_load_u8 v169, v89 offset:896
	ds_load_u8 v170, v89 offset:976
	ds_load_u8 v171, v89 offset:912
	ds_load_u8 v172, v89 offset:992
	ds_load_u8 v173, v89 offset:928
	ds_load_u8 v174, v91
	ds_load_u8 v175, v89 offset:944
	ds_load_u8 v176, v89 offset:576
	ds_load_u8 v177, v89 offset:512
	ds_load_u8 v178, v89 offset:592
	ds_load_u8 v179, v89 offset:528
	ds_load_u8 v180, v89 offset:608
	ds_load_u8 v181, v89 offset:544
	ds_load_u8 v182, v89 offset:624
	ds_load_u8 v183, v89 offset:560
	ds_load_u8 v184, v89 offset:704
	ds_load_u8 v185, v89 offset:640
	ds_load_u8 v186, v89 offset:720
	ds_load_u8 v187, v89 offset:656
	ds_load_u8 v188, v89 offset:736
	ds_load_u8 v189, v89 offset:672
	ds_load_u8 v190, v89 offset:752
	ds_load_u8 v191, v89 offset:688
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v93, v132
	ds_store_b8 v93, v133 offset:256
	ds_store_b8 v93, v118 offset:512
	ds_store_b8 v93, v119 offset:768
	ds_store_b8 v93, v120 offset:1024
	ds_store_b8 v93, v121 offset:1280
	ds_store_b8 v93, v122 offset:1536
	ds_store_b8 v93, v123 offset:1792
	ds_store_b8 v93, v124 offset:2048
	ds_store_b8 v93, v125 offset:2304
	ds_store_b8 v93, v126 offset:2560
	ds_store_b8 v93, v127 offset:2816
	ds_store_b8 v93, v128 offset:3072
	ds_store_b8 v93, v129 offset:3328
	ds_store_b8 v93, v130 offset:3584
	ds_store_b8 v93, v131 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[126:129], v95 offset1:4
	ds_load_2addr_stride64_b64 v[130:133], v96 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v118, v135, v134, 0xc0c0004
	v_perm_b32 v119, v137, v136, 0xc0c0004
	v_perm_b32 v120, v145, v144, 0xc0c0004
	v_perm_b32 v121, v153, v152, 0xc0c0004
	v_perm_b32 v122, v161, v160, 0xc0c0004
	v_perm_b32 v123, v169, v168, 0xc0c0004
	v_perm_b32 v124, v177, v176, 0xc0c0004
	v_perm_b32 v125, v185, v184, 0xc0c0004
	v_lshl_or_b32 v135, v119, 16, v118
	v_lshl_or_b32 v134, v121, 16, v120
	v_lshl_or_b32 v137, v123, 16, v122
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_lshl_or_b32 v136, v125, 16, v124
	v_perm_b32 v117, v139, v138, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_perm_b32 v115, v141, v140, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v113, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[126:127], v[134:135], v[1:8] neg_lo:[1,1,0]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s4, s4, s74
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[130:131], v[136:137], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v145, v119
	v_cvt_f32_i32_e32 v152, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v153, v121
	v_cvt_f32_i32_e32 v160, v122
	v_cvt_f32_i32_e32 v161, v123
	v_cvt_f32_i32_e32 v168, v124
	v_cvt_f32_i32_e32 v169, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[128:129], v[134:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[132:133], v[136:137], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v118
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v137, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v118, v149, v146, 0xc0c0004
	v_perm_b32 v119, v155, v154, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v176, v120
	v_cvt_f32_i32_e32 v177, v121
	v_cvt_f32_i32_e32 v184, v122
	v_cvt_f32_i32_e32 v185, v123
	v_cvt_f32_i32_e32 v192, v124
	v_cvt_f32_i32_e32 v193, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v120, v163, v162, 0xc0c0004
	v_perm_b32 v121, v171, v170, 0xc0c0004
	v_perm_b32 v122, v179, v178, 0xc0c0004
	v_perm_b32 v123, v187, v186, 0xc0c0004
	v_lshl_or_b32 v125, v117, 16, v116
	v_lshl_or_b32 v124, v119, 16, v118
	v_lshl_or_b32 v135, v121, 16, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v134, v123, 16, v122
	v_wmma_i32_16x16x16_iu4 v[116:123], v[126:127], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[130:131], v[134:135], v[116:123] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v139, v117
	v_cvt_f32_i32_e32 v146, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v149, v119
	v_cvt_f32_i32_e32 v154, v120
	v_cvt_f32_i32_e32 v155, v121
	v_cvt_f32_i32_e32 v162, v122
	v_cvt_f32_i32_e32 v163, v123
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[116:123], v[128:129], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[132:133], v[134:135], v[116:123] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v116
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v135, v117
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v116, v150, v147, 0xc0c0004
	v_perm_b32 v117, v157, v156, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v170, v118
	v_cvt_f32_i32_e32 v171, v119
	v_cvt_f32_i32_e32 v178, v120
	v_cvt_f32_i32_e32 v179, v121
	v_cvt_f32_i32_e32 v186, v122
	v_cvt_f32_i32_e32 v187, v123
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v118, v165, v164, 0xc0c0004
	v_perm_b32 v119, v173, v172, 0xc0c0004
	v_perm_b32 v120, v181, v180, 0xc0c0004
	v_perm_b32 v121, v189, v188, 0xc0c0004
	v_lshl_or_b32 v123, v115, 16, v114
	v_lshl_or_b32 v122, v117, 16, v116
	v_lshl_or_b32 v125, v119, 16, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v124, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[114:121], v[126:127], v[122:123], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[130:131], v[124:125], v[114:121] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v141, v115
	v_cvt_f32_i32_e32 v147, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v150, v117
	v_cvt_f32_i32_e32 v156, v118
	v_cvt_f32_i32_e32 v157, v119
	v_cvt_f32_i32_e32 v164, v120
	v_cvt_f32_i32_e32 v165, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[114:121], v[128:129], v[122:123], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[132:133], v[124:125], v[114:121] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v124, v114
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v125, v115
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v114, v151, v148, 0xc0c0004
	v_perm_b32 v115, v159, v158, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v172, v116
	v_cvt_f32_i32_e32 v173, v117
	v_cvt_f32_i32_e32 v180, v118
	v_cvt_f32_i32_e32 v181, v119
	v_cvt_f32_i32_e32 v188, v120
	v_cvt_f32_i32_e32 v189, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v116, v167, v166, 0xc0c0004
	v_perm_b32 v117, v175, v174, 0xc0c0004
	v_perm_b32 v118, v183, v182, 0xc0c0004
	v_perm_b32 v119, v191, v190, 0xc0c0004
	v_lshl_or_b32 v121, v113, 16, v112
	v_lshl_or_b32 v120, v115, 16, v114
	v_lshl_or_b32 v123, v117, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v122, v119, 16, v118
	v_wmma_i32_16x16x16_iu4 v[112:119], v[126:127], v[120:121], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[130:131], v[122:123], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v126, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v127, v113
	v_cvt_f32_i32_e32 v130, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v131, v115
	v_cvt_f32_i32_e32 v142, v116
	v_cvt_f32_i32_e32 v143, v117
	v_cvt_f32_i32_e32 v148, v118
	v_cvt_f32_i32_e32 v151, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[128:129], v[120:121], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v120, s12, v35, 1
	v_add_lshl_u32 v121, s12, v36, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v128, v68, s4, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[132:133], v[122:123], v[112:119] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v122, s12, v37, 1
	v_add_lshl_u32 v123, s12, v38, 1
	v_cndmask_b32_e32 v120, 0x80000000, v120, vcc_lo
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v122, 0x80000000, v122, s1
	v_cndmask_b32_e64 v123, 0x80000000, v123, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v128, v128, s[24:27], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v120, v120, s[36:39], 0 offen
	buffer_load_u16 v121, v121, s[36:39], 0 offen
	buffer_load_u16 v122, v122, s[36:39], 0 offen
	buffer_load_u16 v123, v123, s[36:39], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s12, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s12, s10
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v120, 16, v120
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v102, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v129, v145, v120
	v_mul_f32_e32 v132, v152, v120
	v_mul_f32_e32 v133, v153, v120
	v_mul_f32_e32 v145, v161, v120
	v_mul_f32_e32 v153, v169, v120
	v_mul_f32_e32 v136, v136, v120
	v_mul_f32_e32 v137, v137, v120
	v_mul_f32_e32 v158, v176, v120
	v_mul_f32_e32 v159, v177, v120
	v_mul_f32_e32 v128, v144, v120
	v_mul_f32_e32 v144, v160, v120
	v_mul_f32_e32 v160, v184, v120
	v_mul_f32_e32 v161, v185, v120
	v_mul_f32_e32 v152, v168, v120
	v_mul_f32_e32 v166, v192, v120
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v167, v193, v120 :: v_dual_lshlrev_b32 v120, 16, v121
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v121, v138, v120
	v_mul_f32_e32 v138, v139, v120
	v_mul_f32_e32 v134, v134, v120
	v_mul_f32_e32 v135, v135, v120
	v_mul_f32_e32 v139, v146, v120
	v_mul_f32_e32 v146, v149, v120
	v_mul_f32_e32 v168, v171, v120
	v_mul_f32_e32 v149, v154, v120
	v_mul_f32_e32 v154, v155, v120
	v_mul_f32_e32 v155, v162, v120
	v_mul_f32_e32 v162, v163, v120
	v_mul_f32_e32 v163, v170, v120
	v_mul_f32_e32 v169, v178, v120
	v_mul_f32_e32 v170, v179, v120
	v_mul_f32_e32 v171, v186, v120
	v_mul_f32_e32 v174, v187, v120
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v120, 16, v122
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v122, v140, v120
	v_mul_f32_e32 v140, v141, v120
	v_mul_f32_e32 v141, v147, v120
	v_mul_f32_e32 v147, v150, v120
	v_mul_f32_e32 v150, v156, v120
	v_mul_f32_e32 v156, v157, v120
	v_mul_f32_e32 v157, v164, v120
	v_mul_f32_e32 v164, v165, v120
	v_mul_f32_e32 v165, v124, v120
	v_mul_f32_e32 v172, v172, v120
	v_mul_f32_e32 v173, v173, v120
	v_mul_f32_e32 v176, v180, v120
	v_mul_f32_e32 v177, v181, v120
	v_mul_f32_e32 v178, v188, v120
	v_mul_f32_e32 v179, v189, v120
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v175, v125, v120 :: v_dual_lshlrev_b32 v120, 16, v123
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v124, v126, v120
	v_mul_f32_e32 v126, v130, v120
	v_mul_f32_e32 v130, v131, v120
	v_mul_f32_e32 v131, v142, v120
	v_mul_f32_e32 v142, v143, v120
	v_mul_f32_e32 v143, v148, v120
	v_mul_f32_e32 v148, v151, v120
	v_mul_f32_e32 v151, v112, v120
	v_mul_f32_e32 v180, v113, v120
	v_mul_f32_e32 v181, v114, v120
	v_mul_f32_e32 v182, v115, v120
	v_mul_f32_e32 v183, v116, v120
	v_mul_f32_e32 v184, v117, v120
	v_mul_f32_e32 v185, v118, v120
	v_mul_f32_e32 v186, v119, v120
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[112:115], v103
	ds_load_b128 v[116:119], v103 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v125, v127, v120
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v70, v122, v112
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v53, v124, v112 :: v_dual_fmac_f32 v52, v125, v113
	v_fmac_f32_e32 v51, v126, v114
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[124:127], v103 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v46, v148, v119
	v_fmac_f32_e32 v90, v121, v112
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[120:123], v103 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v129, v113
	v_fmac_f32_e32 v109, v133, v115
	v_dual_fmac_f32 v84, v146, v115 :: v_dual_fmac_f32 v69, v140, v113
	v_dual_fmac_f32 v50, v130, v115 :: v_dual_fmac_f32 v107, v145, v117
	v_dual_fmac_f32 v82, v154, v117 :: v_dual_fmac_f32 v105, v153, v119
	v_fmac_f32_e32 v80, v162, v119
	v_dual_fmac_f32 v65, v150, v116 :: v_dual_fmac_f32 v64, v156, v117
	v_fmac_f32_e32 v62, v164, v119
	v_dual_fmac_f32 v48, v142, v117 :: v_dual_fmac_f32 v47, v143, v118
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v97, v161, v125 :: v_dual_fmac_f32 v106, v152, v118
	v_fmac_f32_e32 v94, v166, v126
	v_fmac_f32_e32 v63, v157, v118
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v101, v137, v121
	v_fmac_f32_e32 v99, v159, v123
	v_fmac_f32_e32 v33, v128, v112
	v_dual_fmac_f32 v79, v134, v120 :: v_dual_fmac_f32 v76, v168, v123
	v_fmac_f32_e32 v83, v149, v116
	v_dual_fmac_f32 v59, v172, v122 :: v_dual_fmac_f32 v88, v138, v113
	v_dual_fmac_f32 v45, v151, v120 :: v_dual_fmac_f32 v44, v180, v121
	v_dual_fmac_f32 v43, v181, v122 :: v_dual_fmac_f32 v108, v144, v116
	v_dual_fmac_f32 v42, v182, v123 :: v_dual_fmac_f32 v67, v141, v114
	v_dual_fmac_f32 v92, v167, v127 :: v_dual_fmac_f32 v75, v169, v124
	v_dual_fmac_f32 v74, v170, v125 :: v_dual_fmac_f32 v61, v165, v120
	v_fmac_f32_e32 v72, v171, v126
	v_fmac_f32_e32 v66, v147, v115
	v_dual_fmac_f32 v71, v174, v127 :: v_dual_fmac_f32 v104, v136, v120
	v_fmac_f32_e32 v57, v176, v124
	v_fmac_f32_e32 v55, v178, v126
	v_fmac_f32_e32 v100, v158, v122
	v_fmac_f32_e32 v78, v135, v121
	v_fmac_f32_e32 v86, v139, v114
	v_fmac_f32_e32 v54, v179, v127
	v_fmac_f32_e32 v60, v175, v121
	v_fmac_f32_e32 v81, v155, v118
	v_dual_fmac_f32 v41, v183, v124 :: v_dual_fmac_f32 v40, v184, v125
	v_dual_fmac_f32 v58, v173, v123 :: v_dual_fmac_f32 v77, v163, v122
	v_fmac_f32_e32 v110, v132, v114
	v_dual_fmac_f32 v39, v185, v126 :: v_dual_fmac_f32 v98, v160, v124
	v_fmac_f32_e32 v26, v186, v127
	v_dual_fmac_f32 v56, v177, v125 :: v_dual_fmac_f32 v49, v131, v116
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v1, v33, v33 :: v_dual_max_f32 v2, v111, v111
	v_dual_max_f32 v5, v108, v108 :: v_dual_max_f32 v6, v107, v107
	v_dual_max_f32 v7, v106, v106 :: v_dual_max_f32 v8, v105, v105
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v10, v104, v104 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v16, v94, v94 :: v_dual_max_f32 v17, v92, v92
	v_dual_max_f32 v18, v90, v90 :: v_dual_max_f32 v19, v88, v88
	v_dual_max_f32 v20, v86, v86 :: v_dual_max_f32 v33, v79, v79
	v_dual_max_f32 v34, v78, v78 :: v_dual_max_f32 v35, v77, v77
	v_dual_max_f32 v36, v76, v76 :: v_dual_max_f32 v37, v75, v75
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v64, v64, v64
	v_max_f32_e32 v63, v63, v63
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v56, v56, v56
	v_dual_max_f32 v55, v55, v55 :: v_dual_max_f32 v54, v54, v54
	v_max_f32_e32 v53, v53, v53
	v_dual_max_f32 v47, v47, v47 :: v_dual_max_f32 v46, v46, v46
	v_dual_max_f32 v45, v45, v45 :: v_dual_max_f32 v44, v44, v44
	v_max_f32_e32 v43, v43, v43
	v_dual_max_f32 v3, v110, v110 :: v_dual_max_f32 v4, v109, v109
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, v101, v101
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, v99, v99
	v_dual_max_f32 v12, v100, v100 :: v_dual_max_f32 v15, v97, v97
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v14, v98, v98 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v18, 0, v18
	v_max_f32_e32 v21, v84, v84
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v23, v82, v82
	v_dual_max_f32 v22, v83, v83 :: v_dual_max_f32 v25, v80, v80
	v_max_f32_e32 v24, v81, v81
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v38, v74, v74 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v68, v72, v72 :: v_dual_max_f32 v71, v71, v71
	v_dual_max_f32 v70, v70, v70 :: v_dual_max_f32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v67, v67, v67
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v65, 0, v65
	v_max_f32_e32 v62, v62, v62
	v_dual_max_f32 v88, 0, v64 :: v_dual_max_f32 v89, 0, v63
	v_dual_max_f32 v60, v60, v60 :: v_dual_max_f32 v61, v61, v61
	v_dual_max_f32 v58, v58, v58 :: v_dual_max_f32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max_f32_e32 v90, 0, v62
	v_dual_max_f32 v96, 0, v56 :: v_dual_max_f32 v97, 0, v55
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v99, 0, v53
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v51, v51, v51
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v49, v49, v49
	v_max_f32_e32 v100, 0, v52
	v_dual_max_f32 v106, 0, v46 :: v_dual_max_f32 v107, 0, v45
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v109, 0, v43
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v41, v41, v41
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v110, 0, v42 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_max_f32_e32 v25, 0, v25
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v82, 0, v68 :: v_dual_max_f32 v83, 0, v71
	v_dual_max_f32 v84, 0, v70 :: v_dual_max_f32 v85, 0, v69
	v_dual_max_f32 v86, 0, v67 :: v_dual_max_f32 v87, 0, v66
	v_dual_max_f32 v91, 0, v61 :: v_dual_max_f32 v92, 0, v60
	v_dual_max_f32 v93, 0, v59 :: v_dual_max_f32 v94, 0, v58
	v_dual_max_f32 v95, 0, v57 :: v_dual_max_f32 v98, 0, v54
	v_dual_max_f32 v101, 0, v51 :: v_dual_max_f32 v102, 0, v50
	v_dual_max_f32 v103, 0, v49 :: v_dual_max_f32 v104, 0, v48
	v_dual_max_f32 v105, 0, v47 :: v_dual_max_f32 v108, 0, v44
	v_dual_max_f32 v111, 0, v41 :: v_dual_max_f32 v112, 0, v40
	v_dual_max_f32 v113, 0, v39 :: v_dual_max_f32 v114, 0, v26
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v66, v1, v1 :: v_dual_mul_f32 v69, v2, v2
	v_dual_mul_f32 v72, v3, v3 :: v_dual_mul_f32 v73, v4, v4
	v_dual_mul_f32 v75, v5, v5 :: v_dual_mul_f32 v76, v6, v6
	v_dual_mul_f32 v80, v7, v7 :: v_dual_mul_f32 v81, v8, v8
	v_dual_mul_f32 v79, v10, v10 :: v_dual_mul_f32 v78, v11, v11
	v_dual_mul_f32 v77, v12, v12 :: v_dual_mul_f32 v74, v13, v13
	v_dual_mul_f32 v71, v14, v14 :: v_dual_mul_f32 v70, v15, v15
	v_dual_mul_f32 v68, v16, v16 :: v_dual_mul_f32 v67, v17, v17
	v_dual_mul_f32 v64, v18, v18 :: v_dual_mul_f32 v63, v19, v19
	v_dual_mul_f32 v62, v20, v20 :: v_dual_mul_f32 v61, v21, v21
	v_dual_mul_f32 v60, v22, v22 :: v_dual_mul_f32 v59, v23, v23
	v_dual_mul_f32 v58, v24, v24 :: v_dual_mul_f32 v57, v25, v25
	v_dual_mul_f32 v56, v33, v33 :: v_dual_mul_f32 v55, v34, v34
	v_dual_mul_f32 v54, v35, v35 :: v_dual_mul_f32 v53, v36, v36
	v_dual_mul_f32 v52, v37, v37 :: v_dual_mul_f32 v51, v38, v38
	v_dual_mul_f32 v50, v82, v82 :: v_dual_mul_f32 v49, v83, v83
	v_dual_mul_f32 v48, v84, v84 :: v_dual_mul_f32 v47, v85, v85
	v_dual_mul_f32 v46, v86, v86 :: v_dual_mul_f32 v45, v87, v87
	v_dual_mul_f32 v44, v65, v65 :: v_dual_mul_f32 v43, v88, v88
	v_dual_mul_f32 v42, v89, v89 :: v_dual_mul_f32 v41, v90, v90
	v_dual_mul_f32 v40, v91, v91 :: v_dual_mul_f32 v39, v92, v92
	v_dual_mul_f32 v38, v93, v93 :: v_dual_mul_f32 v37, v94, v94
	v_dual_mul_f32 v36, v95, v95 :: v_dual_mul_f32 v35, v96, v96
	v_dual_mul_f32 v34, v97, v97 :: v_dual_mul_f32 v33, v98, v98
	v_dual_mul_f32 v26, v99, v99 :: v_dual_mul_f32 v25, v100, v100
	v_dual_mul_f32 v24, v101, v101 :: v_dual_mul_f32 v23, v102, v102
	v_dual_mul_f32 v21, v103, v103 :: v_dual_mul_f32 v20, v104, v104
	v_dual_mul_f32 v19, v105, v105 :: v_dual_mul_f32 v18, v106, v106
	v_dual_mul_f32 v17, v107, v107 :: v_dual_mul_f32 v16, v108, v108
	v_dual_mul_f32 v15, v109, v109 :: v_dual_mul_f32 v14, v110, v110
	v_dual_mul_f32 v13, v111, v111 :: v_dual_mul_f32 v12, v112, v112
	v_dual_mul_f32 v11, v113, v113 :: v_dual_mul_f32 v10, v114, v114
	v_dual_mov_b32 v1, v30 :: v_dual_mov_b32 v8, v31
	v_dual_mov_b32 v6, v32 :: v_dual_mov_b32 v5, v9
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
	v_add_co_u32 v2, s0, s68, v2
	v_add_co_ci_u32_e64 v3, null, s69, 0, s0
	v_add_co_u32 v30, s0, s68, v4
	v_add_co_u32 v82, s1, s68, v9
	v_add_co_ci_u32_e64 v31, null, s69, 0, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s69, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 56, v7
	v_or_b32_e32 v4, 54, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[70:71], v[30:31]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[30:31]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 50, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v2, s6, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s6
	v_add_co_u32 v30, s6, s68, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 52, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[70:71], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s69, 0, s6
	v_add_co_u32 v2, s10, s68, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v7
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s10, s68, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s14, s68, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 46, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s69, 0, s14
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[70:71], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s69, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v30, s14, s68, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 42, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s18, s68, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s18
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 40, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[70:71], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s69, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s18, s68, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 38, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s22, s68, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[70:71], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s69, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s69, 0, s22
	v_add_co_u32 v30, s22, s68, v9
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v69, v69 :: v_dual_max_f32 v9, v66, v66
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp11:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[2:3]
.Ltmp12:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v73, v75, v76
.Ltmp13:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[70:71], v[82:83]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v9, v4
	v_max3_f32 v4, v78, v77, v74
	v_max3_f32 v9, v71, v70, v68
.Ltmp15:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v31, null, s69, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[82:83]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v82, v80, v81, v79
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
	s_mov_b32 s26, 0x76543210
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
	v_permlanex16_b32 v83, v82, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v84, v4, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s27, s68, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v32, v22, v85, v32
	v_max_f32_e32 v65, v83, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v83, v84, v84
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v84, v9, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x60, v0
	v_permlanex16_b32 v86, v32, s26, 0xfedcba98 op_sel:[1,0]
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
	v_add_co_ci_u32_e64 v3, null, s69, 0, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v4, v65, 2, v85
	v_and_or_b32 v85, 0x680, v8, v87
	v_xor_b32_e32 v87, v87, v22
.Ltmp29:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[2:3]
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
	v_cmp_le_i64_e64 s25, s[70:71], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s26, s68, v9
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
	v_add_co_u32 v2, s31, s68, v2
	v_add_co_ci_u32_e64 v87, null, s69, 0, s26
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[30:31]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s69, 0, s31
	v_add_co_u32 v30, s31, s68, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v31, null, s69, 0, s31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 28, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[70:71], v[30:31]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[30:31]
.Ltmp37:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 3, v1
.Ltmp38:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[70:71], v[86:87]
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
	v_cmp_gt_i64_e64 s30, s[72:73], v[86:87]
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v82, v82
	v_max_f32_e32 v82, v85, v85
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v30, v4
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v2, v83 :: v_dual_mov_b32 v83, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v30, v31, v2 :: v_dual_max_f32 v31, v84, v84
.Ltmp48:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s36, s68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s36
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v84, v30 :: v_dual_max_f32 v9, v31, v9
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v32, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[2:3]
.Ltmp52:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v82, v31
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v83, v83
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v83, 26, v7
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v84, v84
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v32, v32 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v4, v2
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s38, s68, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v30, v3 :: v_dual_max_f32 v4, v32, v32
	v_max_f32_e32 v30, v82, v82
.Ltmp60:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v83, 24, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s69, 0, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v3
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v9, v4 :: v_dual_max_f32 v9, v31, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v88, s39, s68, v83
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v30, v4 :: v_dual_mov_b32 v31, v9
.Ltmp65:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v89, null, s69, 0, s39
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v30, v30 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[70:71], v[86:87]
	v_cmp_le_i64_e64 s40, s[70:71], v[88:89]
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v3, v84
.Ltmp70:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[88:89]
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v31, v31
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v31, 4, v90
.Ltmp73:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v90.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v85, v9, v3 :: v_dual_mov_b32 v32, v2
.Ltmp75:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 22, v7
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v32, v32 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v32, v32, v32
	v_max_f32_e32 v82, v2, v32
	v_max_f32_e32 v2, v30, v30
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v30, 1, v22
	v_add_nc_u32_e32 v32, 0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v84, v4, v2 :: v_dual_lshlrev_b32 v29, 3, v29
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v65
	v_add_nc_u32_e32 v4, 0, v31
	v_add3_u32 v3, v32, v30, v1
.Ltmp81:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v30, 18, v7
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v4, v2, v1
	ds_store_b128 v3, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp83:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s39, s68, v9
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v1
.Ltmp85:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s69, 0, s39
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 20, v7
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[86:87]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[70:71], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v82, s44, s68, v9
	v_add_co_ci_u32_e64 v83, null, s69, 0, s44
	v_add_co_u32 v84, s44, s68, v30
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 16, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s69, 0, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[70:71], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v82, s48, s68, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[70:71], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s69, 0, s48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v30, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v7
	v_or_b32_e32 v9, 12, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v32, null, 0x40e00000, 0x40e00000, v30
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s48, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v85, null, s69, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v32
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s48, s68, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v87, null, s69, 0, s48
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[70:71], v[82:83]
	v_cmp_le_i64_e64 s52, s[70:71], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[86:87]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v65, -v32, v1, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s54, s68, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v3
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v30, 0x40e00000, v30
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[70:71], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s69, 0, s54
	v_add_co_u32 v84, s54, s68, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v9, v65, v1
	v_rcp_f32_e32 v87, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s69, 0, s54
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[70:71], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	v_fma_f32 v82, -v32, v9, v65
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[70:71], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[84:85]
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
	v_div_scale_f32 v65, s60, v3, 0x40e00000, v3
	v_max_f32_e32 v82, 0x2b8cbccc, v4
	v_div_fmas_f32 v9, v32, v1, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s58, s68, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v32, v65, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v9, 0x40e00000, v30
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v86, v32, v65
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v89, v88
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v32, v30, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v30.l, v9.h
	v_mov_b16_e32 v30.h, v90.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v86, v32, v65
	v_div_scale_f32 v65, s62, v82, 0x40e00000, v82
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
	v_div_scale_f32 v83, s61, v84, 0x40e00000, v84
	s_mov_b32 vcc_lo, s61
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
	v_add_co_u32 v3, s60, s68, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v88, v30, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v85
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
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
	v_add_co_ci_u32_e64 v4, null, s69, 0, s60
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
	v_div_scale_f32 v94, s60, v69, v86, v69
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
	v_div_scale_f32 v97, s61, v72, v86, v72
	v_div_fmas_f32 v85, v85, v87, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v89, v88
	v_div_scale_f32 v91, s62, v73, v86, v73
	v_mul_f32_e32 v87, v97, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v66, v85, v86, v66
	v_fma_f32 v84, -v84, v96, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v95
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v85, -v92, v87, v97
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v30.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v96
	v_fma_f32 v96, -v98, v100, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v87, v85, v90
	v_fma_f32 v85, -v93, v94, v91
	v_div_fixup_f32 v69, v84, v86, v69
	v_fmac_f32_e32 v100, v96, v100
	v_div_scale_f32 v96, null, v86, v86, v80
	v_fma_f32 v84, -v92, v87, v97
	v_fmac_f32_e32 v94, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v93, v94, v91
	v_rcp_f32_e32 v91, v96
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v87, v87, v95, v94
	v_fma_f32 v95, -v96, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v99, null, v86, v86, v75
	v_div_scale_f32 v88, s60, v75, v86, v75
	v_div_scale_f32 v92, s63, v76, v86, v76
	v_rcp_f32_e32 v89, v99
	v_div_scale_f32 v97, null, v86, v86, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v92, v100
	v_div_fixup_f32 v72, v84, v86, v72
	v_div_fixup_f32 v73, v87, v86, v73
	v_div_scale_f32 v87, s61, v80, v86, v80
	v_fma_f32 v94, -v98, v93, v92
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v101, -v99, v89, 1.0
	v_div_scale_f32 v95, null, v86, v86, v78
	v_fmac_f32_e32 v93, v94, v100
	v_div_scale_f32 v94, null, v86, v86, v79
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
	v_div_scale_f32 v92, s60, v81, v86, v81
	v_fmac_f32_e32 v90, v88, v90
	v_rcp_f32_e32 v88, v94
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v75, v84, v86, v75
	v_div_fmas_f32 v85, v85, v100, v93
	v_fma_f32 v93, -v96, v89, v87
	v_mul_f32_e32 v98, v92, v90
	v_rcp_f32_e32 v100, v95
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v76, v85, v86, v76
	v_fmac_f32_e32 v89, v93, v91
	v_fma_f32 v99, -v94, v88, 1.0
	v_fma_f32 v84, -v97, v98, v92
	v_div_scale_f32 v93, null, v86, v86, v77
	v_div_scale_f32 v85, s62, v79, v86, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v99, v88
	v_fma_f32 v99, -v95, v100, 1.0
	v_fma_f32 v87, -v96, v89, v87
	v_fmac_f32_e32 v98, v84, v90
	v_rcp_f32_e32 v96, v93
	v_mul_f32_e32 v84, v85, v88
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s63, v78, v86, v78
	v_div_fmas_f32 v87, v87, v91, v89
	v_fma_f32 v89, -v97, v98, v92
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v91, -v94, v84, v85
	v_mul_f32_e32 v92, v99, v100
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v93, v96, 1.0
	v_div_fmas_f32 v89, v89, v90, v98
	v_rcp_f32_e32 v90, v101
	v_fmac_f32_e32 v84, v91, v88
	v_fma_f32 v91, -v95, v92, v99
	v_fmac_f32_e32 v96, v97, v96
	v_div_scale_f32 v97, s60, v77, v86, v77
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v80, v87, v86, v80
	v_div_fixup_f32 v81, v89, v86, v81
	v_fma_f32 v85, -v94, v84, v85
	v_fmac_f32_e32 v92, v91, v100
	v_mul_f32_e32 v87, v97, v96
	v_fma_f32 v89, -v101, v90, 1.0
	v_div_scale_f32 v91, null, v86, v86, v71
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v94, s61, v74, v86, v74
	v_div_fmas_f32 v84, v85, v88, v84
	v_fma_f32 v85, -v95, v92, v99
	v_fma_f32 v88, -v93, v87, v97
	v_fmac_f32_e32 v90, v89, v90
	v_rcp_f32_e32 v89, v91
	v_div_scale_f32 v95, null, v86, v86, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v88, v96
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v79, v84, v86, v79
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v100, v92
	v_mul_f32_e32 v92, v94, v90
	v_fma_f32 v84, -v93, v87, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v91, v89, 1.0
	v_div_scale_f32 v93, s62, v71, v86, v71
	v_div_fixup_f32 v78, v85, v86, v78
	v_fma_f32 v85, -v101, v92, v94
	v_fmac_f32_e32 v89, v98, v89
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v88, 1.0
	v_div_scale_f32 v98, null, v86, v86, v68
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v92, v85, v90
	v_div_fmas_f32 v84, v84, v96, v87
	v_mul_f32_e32 v85, v93, v89
	v_fmac_f32_e32 v88, v97, v88
	v_rcp_f32_e32 v87, v98
	v_div_scale_f32 v96, s60, v70, v86, v70
	v_div_scale_f32 v97, null, v86, v86, v67
	v_div_fixup_f32 v77, v84, v86, v77
	v_fma_f32 v84, -v101, v92, v94
	v_fma_f32 v94, -v91, v85, v93
	v_mul_f32_e32 v99, v96, v88
	v_rcp_f32_e32 v100, v97
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v101, -v98, v87, 1.0
	v_div_fmas_f32 v84, v84, v90, v92
	v_fmac_f32_e32 v85, v94, v89
	v_fma_f32 v90, -v95, v99, v96
	v_div_scale_f32 v92, s61, v68, v86, v68
	v_fmac_f32_e32 v87, v101, v87
	v_div_fixup_f32 v74, v84, v86, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v97, v100, 1.0
	v_fma_f32 v84, -v91, v85, v93
	v_fmac_f32_e32 v99, v90, v88
	v_div_scale_f32 v93, null, v83, v83, v64
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v90, v92, v87
	v_fmac_f32_e32 v100, v94, v100
	v_div_scale_f32 v91, s63, v67, v86, v67
	v_div_fmas_f32 v84, v84, v89, v85
	v_fma_f32 v85, -v95, v99, v96
	v_rcp_f32_e32 v94, v93
	v_div_scale_f32 v96, null, v83, v83, v63
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v89, -v98, v90, v92
	v_mul_f32_e32 v95, v91, v100
	v_div_fmas_f32 v85, v85, v88, v99
	v_rcp_f32_e32 v88, v96
	v_div_fixup_f32 v71, v84, v86, v71
	v_fmac_f32_e32 v90, v89, v87
	v_fma_f32 v89, -v97, v95, v91
	v_fma_f32 v99, -v93, v94, 1.0
	v_div_fixup_f32 v70, v85, v86, v70
	v_div_scale_f32 v85, s60, v64, v83, v64
	v_fma_f32 v84, -v98, v90, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v95, v89, v100 :: v_dual_fmac_f32 v94, v99, v94
	v_fma_f32 v89, -v96, v88, 1.0
	v_div_scale_f32 v92, null, v83, v83, v62
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v87, v90
	v_fma_f32 v87, -v97, v95, v91
	v_mul_f32_e32 v90, v85, v94
	v_fmac_f32_e32 v88, v89, v88
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v91, s61, v63, v83, v63
	v_div_scale_f32 v97, null, v83, v83, v61
	s_mov_b32 vcc_lo, s63
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
	v_div_scale_f32 v86, s62, v62, v83, v62
	v_div_scale_f32 v87, null, v83, v83, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v97, v100, 1.0
	v_fma_f32 v85, -v93, v90, v85
	v_fmac_f32_e32 v98, v84, v88
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v84, v86, v89
	v_rcp_f32_e32 v93, v87
	v_fmac_f32_e32 v100, v95, v100
	v_div_scale_f32 v95, s63, v61, v83, v61
	v_div_fmas_f32 v85, v85, v94, v90
	v_fma_f32 v90, -v96, v98, v91
	v_div_scale_f32 v99, null, v83, v83, v59
	s_mov_b32 vcc_lo, s61
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
	v_div_scale_f32 v96, s60, v60, v83, v60
	v_fmac_f32_e32 v94, v91, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v99, v90, 1.0
	v_div_scale_f32 v91, null, v83, v83, v58
	v_fma_f32 v85, -v92, v84, v86
	v_mul_f32_e32 v86, v96, v93
	v_fmac_f32_e32 v90, v88, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v59, v83, v59
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v97, v94, v95
	v_fma_f32 v89, -v87, v86, v96
	v_div_scale_f32 v95, null, v83, v83, v57
	s_mov_b32 vcc_lo, s63
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
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v61, v85, v83, v61
	v_fma_f32 v85, -v99, v94, v92
	v_div_scale_f32 v87, s62, v58, v83, v58
	v_fma_f32 v96, -v95, v89, 1.0
	v_div_fmas_f32 v84, v84, v93, v86
	v_rcp_f32_e32 v86, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v85, v90 :: v_dual_mul_f32 v85, v87, v88
	v_fmac_f32_e32 v89, v96, v89
	v_div_scale_f32 v93, s60, v57, v83, v57
	v_div_scale_f32 v96, null, v83, v83, v55
	v_div_fixup_f32 v60, v84, v83, v60
	v_fma_f32 v84, -v99, v94, v92
	v_fma_f32 v92, -v91, v85, v87
	v_mul_f32_e32 v98, v93, v89
	v_rcp_f32_e32 v99, v96
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v92, v88
	v_div_fmas_f32 v84, v84, v90, v94
	v_fma_f32 v90, -v95, v98, v93
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s61, v56, v83, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v59, v84, v83, v59
	v_fma_f32 v94, -v96, v99, 1.0
	v_fma_f32 v84, -v91, v85, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v98, v90, v89 :: v_dual_mul_f32 v87, v92, v86
	v_div_scale_f32 v91, null, v83, v83, v54
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v99, v94, v99
	v_div_scale_f32 v90, s63, v55, v83, v55
	v_div_fmas_f32 v84, v84, v88, v85
	v_fma_f32 v85, -v95, v98, v93
	v_fma_f32 v88, -v97, v87, v92
	v_rcp_f32_e32 v93, v91
	v_div_scale_f32 v95, null, v83, v83, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v94, v90, v99 :: v_dual_fmac_f32 v87, v88, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v96, v94, v90
	v_div_fixup_f32 v58, v84, v83, v58
	v_fma_f32 v98, -v91, v93, 1.0
	v_fma_f32 v84, -v97, v87, v92
	v_div_fixup_f32 v57, v85, v83, v57
	v_fmac_f32_e32 v94, v89, v99
	v_div_scale_f32 v85, s60, v54, v83, v54
	v_fmac_f32_e32 v93, v98, v93
	v_fma_f32 v89, -v95, v88, 1.0
	v_div_scale_f32 v92, null, v83, v83, v52
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v100, null, v83, v83, v49
	v_div_fmas_f32 v84, v84, v86, v87
	v_fma_f32 v86, -v96, v94, v90
	v_mul_f32_e32 v87, v85, v93
	v_fmac_f32_e32 v88, v89, v88
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v90, s61, v53, v83, v53
	v_div_scale_f32 v96, null, v83, v83, v51
	s_mov_b32 vcc_lo, s63
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
	v_div_scale_f32 v86, s62, v52, v83, v52
	v_div_scale_f32 v94, null, v83, v83, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v85, -v91, v87, v85
	v_fmac_f32_e32 v97, v84, v88
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v84, v86, v89
	v_rcp_f32_e32 v91, v94
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s63, v51, v83, v51
	v_div_fmas_f32 v85, v85, v93, v87
	v_fma_f32 v87, -v95, v97, v90
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v90, -v92, v84, v86
	v_mul_f32_e32 v93, v98, v99
	v_div_fixup_f32 v54, v85, v83, v54
	v_div_fmas_f32 v87, v87, v88, v97
	v_rcp_f32_e32 v88, v100
	v_fma_f32 v95, -v94, v91, 1.0
	v_fmac_f32_e32 v84, v90, v89
	v_fma_f32 v90, -v96, v93, v98
	v_div_fixup_f32 v53, v87, v83, v53
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s60, v50, v83, v50
	v_fmac_f32_e32 v93, v90, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v100, v88, 1.0
	v_div_scale_f32 v90, null, v82, v82, v48
	v_fma_f32 v85, -v92, v84, v86
	v_mul_f32_e32 v86, v95, v91
	v_fmac_f32_e32 v88, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v92, s61, v49, v83, v49
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v96, v93, v98
	v_fma_f32 v89, -v94, v86, v95
	v_div_scale_f32 v96, null, v82, v82, v47
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v52, v84, v83, v52
	v_fmac_f32_e32 v86, v89, v91
	v_rcp_f32_e32 v89, v96
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fmas_f32 v85, v85, v99, v93
	v_mul_f32_e32 v93, v92, v88
	v_fma_f32 v84, -v94, v86, v95
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v97, null, v82, v82, v46
	v_div_fixup_f32 v51, v85, v83, v51
	v_fma_f32 v85, -v100, v93, v92
	v_div_scale_f32 v94, s62, v48, v82, v48
	v_fma_f32 v95, -v96, v89, 1.0
	v_div_fmas_f32 v84, v84, v91, v86
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v93, v85, v88
	v_mul_f32_e32 v85, v94, v87
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v91, s60, v47, v82, v47
	v_div_scale_f32 v95, null, v82, v82, v45
	v_div_fixup_f32 v50, v84, v83, v50
	v_fma_f32 v84, -v100, v93, v92
	v_fma_f32 v92, -v90, v85, v94
	v_mul_f32_e32 v98, v91, v89
	v_rcp_f32_e32 v99, v95
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v92, v87
	v_div_fmas_f32 v84, v84, v88, v93
	v_fma_f32 v88, -v96, v98, v91
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s61, v46, v82, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v49, v84, v83, v49
	v_fma_f32 v93, -v95, v99, 1.0
	v_fma_f32 v83, -v90, v85, v94
	v_fmac_f32_e32 v98, v88, v89
	v_mul_f32_e32 v84, v92, v86
	v_div_scale_f32 v90, null, v82, v82, v44
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v99, v93, v99
	v_div_scale_f32 v88, s63, v45, v82, v45
	v_div_fmas_f32 v83, v83, v87, v85
	v_fma_f32 v85, -v96, v98, v91
	v_fma_f32 v87, -v97, v84, v92
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v94, null, v82, v82, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v93, v88, v99 :: v_dual_fmac_f32 v84, v87, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v94
	v_div_fmas_f32 v85, v85, v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v95, v93, v88
	v_div_fixup_f32 v48, v83, v82, v48
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v83, -v97, v84, v92
	v_div_fixup_f32 v47, v85, v82, v47
	v_fmac_f32_e32 v93, v89, v99
	v_div_scale_f32 v85, s60, v44, v82, v44
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v89, -v94, v87, 1.0
	v_div_scale_f32 v92, null, v82, v82, v42
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v95, v93, v88
	v_mul_f32_e32 v86, v85, v91
	v_fmac_f32_e32 v87, v89, v87
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v89, s61, v43, v82, v43
	v_div_scale_f32 v95, null, v82, v82, v41
	s_mov_b32 vcc_lo, s63
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
	v_div_scale_f32 v84, s62, v42, v82, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v98, 1.0
	v_fma_f32 v85, -v90, v86, v85
	v_fmac_f32_e32 v96, v83, v87
	v_rcp_f32_e32 v90, v93
	s_mov_b32 vcc_lo, s60
	v_dual_mul_f32 v83, v84, v88 :: v_dual_fmac_f32 v98, v97, v98
	v_div_scale_f32 v97, s63, v41, v82, v41
	v_div_fmas_f32 v85, v85, v91, v86
	v_fma_f32 v86, -v94, v96, v89
	v_div_scale_f32 v99, null, v82, v82, v39
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v92, v83, v84
	v_mul_f32_e32 v91, v97, v98
	v_fma_f32 v94, -v93, v90, 1.0
	v_div_fmas_f32 v86, v86, v87, v96
	v_rcp_f32_e32 v87, v99
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v89, -v95, v91, v97
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s60, v40, v82, v40
	v_div_fixup_f32 v44, v85, v82, v44
	v_div_fixup_f32 v43, v86, v82, v43
	v_fma_f32 v84, -v92, v83, v84
	v_fmac_f32_e32 v91, v89, v98
	v_mul_f32_e32 v85, v94, v90
	v_fma_f32 v86, -v99, v87, 1.0
	v_div_scale_f32 v89, null, v82, v82, v38
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v39, v82, v39
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v95, v91, v97
	v_fma_f32 v88, -v93, v85, v94
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v95, null, v82, v82, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v88, v90
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v42, v83, v82, v42
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v84, v84, v98, v91
	v_mul_f32_e32 v91, v92, v87
	v_fma_f32 v83, -v93, v85, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v41, v84, v82, v41
	v_fma_f32 v84, -v99, v91, v92
	v_div_scale_f32 v93, s62, v38, v82, v38
	v_fmac_f32_e32 v86, v96, v86
	v_fma_f32 v94, -v95, v88, 1.0
	v_div_scale_f32 v96, null, v82, v82, v36
	v_div_fmas_f32 v83, v83, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v84, v87 :: v_dual_fmac_f32 v88, v94, v88
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, null, v82, v82, v35
	v_mul_f32_e32 v84, v93, v86
	v_div_scale_f32 v90, s60, v37, v82, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v94
	v_div_fixup_f32 v40, v83, v82, v40
	v_fma_f32 v83, -v99, v91, v92
	v_fma_f32 v92, -v89, v84, v93
	v_mul_f32_e32 v97, v90, v88
	v_fma_f32 v99, -v96, v85, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v91
	v_fmac_f32_e32 v84, v92, v86
	v_fma_f32 v87, -v95, v97, v90
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v91, s61, v36, v82, v36
	v_fma_f32 v92, -v94, v98, 1.0
	v_div_fixup_f32 v39, v83, v82, v39
	v_fma_f32 v83, -v89, v84, v93
	v_fmac_f32_e32 v97, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v87, v91, v85 :: v_dual_fmac_f32 v98, v92, v98
	v_div_scale_f32 v92, null, v82, v82, v34
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v89, s63, v35, v82, v35
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v95, v97, v90
	v_fma_f32 v86, -v96, v87, v91
	v_rcp_f32_e32 v90, v92
	v_div_scale_f32 v95, null, v82, v82, v33
	v_mul_f32_e32 v93, v89, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v86, v85
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v86, v95
	v_div_fmas_f32 v84, v84, v88, v97
	v_fma_f32 v88, -v94, v93, v89
	v_div_fixup_f32 v38, v83, v82, v38
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v90, 1.0
	v_fma_f32 v83, -v96, v87, v91
	v_div_fixup_f32 v37, v84, v82, v37
	v_fmac_f32_e32 v93, v88, v98
	v_div_scale_f32 v84, s60, v34, v82, v34
	v_fmac_f32_e32 v90, v97, v90
	v_fma_f32 v88, -v95, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v96, null, v65, v65, v25
	v_div_fmas_f32 v83, v83, v85, v87
	v_fma_f32 v85, -v94, v93, v89
	v_mul_f32_e32 v87, v84, v90
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, null, v65, v65, v26
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s61, v33, v82, v33
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
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v98, null, v65, v65, v23
	v_fma_f32 v93, -v88, v91, 1.0
	v_fma_f32 v84, -v92, v87, v84
	v_div_scale_f32 v92, null, v65, v65, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v83, v86 :: v_dual_fmac_f32 v91, v93, v91
	v_div_scale_f32 v83, s62, v26, v65, v26
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v97, -v96, v85, 1.0
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v95, v94, v89
	v_mul_f32_e32 v89, v83, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v97, v85
	v_div_scale_f32 v90, s60, v25, v65, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v97, -v88, v89, v83
	v_fma_f32 v95, -v92, v93, 1.0
	v_rcp_f32_e32 v100, v98
	v_div_fmas_f32 v86, v87, v86, v94
	v_mul_f32_e32 v99, v90, v85
	v_fmac_f32_e32 v89, v97, v91
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s63, v24, v65, v24
	v_div_fixup_f32 v34, v84, v82, v34
	v_div_fixup_f32 v33, v86, v82, v33
	v_fma_f32 v82, -v88, v89, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v95, v93
	v_div_scale_f32 v86, null, v65, v65, v21
	v_fma_f32 v87, -v96, v99, v90
	v_fma_f32 v84, -v98, v100, 1.0
	v_fma_f32 v83, -v92, v94, v95
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v99, v87, v85 :: v_dual_fmac_f32 v100, v84, v100
	v_fmac_f32_e32 v94, v83, v93
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s61, v23, v65, v23
	v_div_fmas_f32 v82, v82, v91, v89
	v_fma_f32 v87, -v96, v99, v90
	v_div_scale_f32 v89, null, v65, v65, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v88, v84, v100
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v26, v82, v65, v26
	v_fma_f32 v90, -v86, v83, 1.0
	v_div_fmas_f32 v85, v87, v85, v99
	v_fma_f32 v87, -v92, v94, v95
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v92, -v98, v88, v84
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s60, v21, v65, v21
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v88, v92, v100
	v_div_fmas_f32 v87, v87, v93, v94
	v_mul_f32_e32 v82, v90, v83
	v_div_fixup_f32 v25, v85, v65, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v89, v91, 1.0
	v_fma_f32 v84, -v98, v88, v84
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v92, -v86, v82, v90
	v_div_fixup_f32 v24, v87, v65, v24
	v_div_scale_f32 v87, null, v65, v65, v19
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v85, s62, v20, v65, v20
	v_div_fmas_f32 v84, v84, v100, v88
	v_fmac_f32_e32 v82, v92, v83
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v85, v91
	s_mov_b32 vcc_lo, s60
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
	v_div_scale_f32 v84, s60, v19, v65, v19
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
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v94, v82, v94
	v_div_scale_f32 v82, s61, v18, v65, v18
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v65, v65, v15
	v_div_fmas_f32 v85, v85, v91, v88
	v_fma_f32 v88, -v87, v89, v84
	v_mul_f32_e32 v91, v82, v94
	v_div_scale_f32 v97, s62, v17, v65, v17
	v_fma_f32 v98, -v90, v96, 1.0
	v_rcp_f32_e32 v99, v95
	v_fmac_f32_e32 v89, v88, v93
	v_fma_f32 v88, -v92, v91, v82
	v_mul_f32_e32 v100, v97, v86
	v_fmac_f32_e32 v96, v98, v96
	v_div_scale_f32 v98, s63, v16, v65, v16
	v_div_fixup_f32 v20, v85, v65, v20
	v_fma_f32 v84, -v87, v89, v84
	v_fmac_f32_e32 v91, v88, v94
	v_fma_f32 v85, -v83, v100, v97
	v_mul_f32_e32 v87, v98, v96
	v_fma_f32 v88, -v95, v99, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v82, -v92, v91, v82
	v_fmac_f32_e32 v100, v85, v86
	v_fma_f32 v85, -v90, v87, v98
	v_fmac_f32_e32 v99, v88, v99
	v_div_scale_f32 v88, s60, v15, v65, v15
	v_div_fmas_f32 v84, v84, v93, v89
	v_fma_f32 v83, -v83, v100, v97
	v_fmac_f32_e32 v87, v85, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v88, v99
	v_div_scale_f32 v89, null, v65, v65, v14
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v19, v84, v65, v19
	v_div_fmas_f32 v82, v82, v94, v91
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v91, v89
	v_div_fmas_f32 v83, v83, v86, v100
	v_fma_f32 v86, -v90, v87, v98
	v_fma_f32 v90, -v95, v85, v88
	v_div_fixup_f32 v18, v82, v65, v18
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v17, v83, v65, v17
	v_div_fmas_f32 v86, v86, v96, v87
	v_fmac_f32_e32 v85, v90, v99
	s_mov_b32 vcc_lo, s60
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
	v_div_scale_f32 v82, s60, v13, v65, v13
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
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v82, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v94, v88
	v_div_scale_f32 v94, s61, v12, v65, v12
	v_fma_f32 v96, -v83, v98, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v96, v85
	v_mul_f32_e32 v100, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v97, v90
	v_div_scale_f32 v97, s62, v11, v65, v11
	v_fma_f32 v82, -v83, v98, v82
	v_fmac_f32_e32 v95, v99, v95
	v_div_scale_f32 v99, s63, v10, v65, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v85, v98
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
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
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v102, v99, v95
	v_fmac_f32_e32 v100, v89, v88
	v_fma_f32 v96, -v86, v101, v97
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v93, v102, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v106, v15
	v_and_b32_e32 v15, 15, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v84, v100, v94
	v_fmac_f32_e32 v101, v96, v90
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
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
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v25, 15, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v93, v102, v99
	v_div_fmas_f32 v83, v83, v90, v101
	s_mov_b32 vcc_lo, s63
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
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v83, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
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
	v_med3_f32 v34, v34, s60, 0x40e00000
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
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_cvt_i32_f32_e32 v95, v34
	v_and_b32_e32 v34, 15, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v60, 0xe000, v44, v48
	v_xor_b32_e32 v8, v8, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v60, v29, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s60, 0x40e00000
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
	v_med3_f32 v61, v61, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v29, v[10:13]
	ds_store_b128 v29, v[33:36] offset:256
	v_lshlrev_b32_e32 v11, 6, v0
	v_lshlrev_b32_e32 v12, 5, v22
	v_cndmask_b32_e64 v13, 0x2010, 0, s2
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v76
	v_rndne_f32_e32 v76, v80
	v_rndne_f32_e32 v80, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v79
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v20, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v11, 0x300, v11, v12
	v_xor_b32_e32 v12, v13, v31
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v31, s2, s68, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v24
	v_and_b32_e32 v24, 15, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v32, null, s69, 0, s2
	v_add_co_u32 v81, s2, s68, v7
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
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v79, v79, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_cvt_i32_f32_e32 v87, v46
	v_and_b32_e32 v46, 15, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s69, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s68, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s69, s74, 31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v80, v80, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v104, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[70:71], v[31:32]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[72:73], v[31:32]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 36, v4
	v_lshl_or_b32 v3, s75, 7, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v101, v20
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s74, s69
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[72:73], v[81:82]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s68, 1
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v50
	v_cvt_i32_f32_e32 v86, v49
	v_cvt_i32_f32_e32 v103, v18
	v_cvt_i32_f32_e32 v105, v16
	v_and_b32_e32 v49, 15, v79
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
	v_cvt_i32_f32_e32 v80, v80
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
	v_and_b32_e32 v45, 15, v80
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
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[70:71], v[81:82]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v26, 34, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	s_mov_b32 s71, 0x31027000
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
	v_cndmask_b32_e64 v6, 0x80000000, v6, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v72, 62, v4
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v29, v6, s[68:71], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v72, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s60
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v81, v4, s[68:71], 0 offen
	buffer_store_b8 v49, v6, s[68:71], 0 offen
	buffer_store_b8 v57, v7, s[68:71], 0 offen
	buffer_store_b8 v65, v8, s[68:71], 0 offen
	buffer_store_b8 v45, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v4, s[68:71], 0 offen
	buffer_store_b8 v61, v6, s[68:71], 0 offen
	buffer_store_b8 v69, v7, s[68:71], 0 offen
	buffer_store_b8 v73, v8, s[68:71], 0 offen
	buffer_store_b8 v50, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v58, v4, s[68:71], 0 offen
	buffer_store_b8 v66, v6, s[68:71], 0 offen
	buffer_store_b8 v46, v7, s[68:71], 0 offen
	buffer_store_b8 v54, v8, s[68:71], 0 offen
	buffer_store_b8 v62, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v70, v4, s[68:71], 0 offen
	buffer_store_b8 v74, v6, s[68:71], 0 offen
	buffer_store_b8 v51, v7, s[68:71], 0 offen
	buffer_store_b8 v59, v8, s[68:71], 0 offen
	buffer_store_b8 v67, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v4, s[68:71], 0 offen
	buffer_store_b8 v55, v6, s[68:71], 0 offen
	buffer_store_b8 v63, v7, s[68:71], 0 offen
	buffer_store_b8 v71, v8, s[68:71], 0 offen
	buffer_store_b8 v75, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v4, s[68:71], 0 offen
	buffer_store_b8 v60, v6, s[68:71], 0 offen
	buffer_store_b8 v68, v7, s[68:71], 0 offen
	buffer_store_b8 v48, v8, s[68:71], 0 offen
	buffer_store_b8 v56, v10, s[68:71], 0 offen
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v28
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s74, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v83
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v64, v3, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
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
	s_and_b32 s69, s67, 0xffff
	s_and_b32 vcc_lo, vcc_lo, s76
	s_mov_b32 s68, s66
	v_add_lshl_u32 v0, v2, s75, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_and_b32 v7, 2, v27
	v_add3_u32 v4, v6, v7, v4
	ds_load_u16 v1, v4
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp86:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 194
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17224
; TotalNumSgprs: 79
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 79
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
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
