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
	s_load_b32 s76, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v93, 8, v0
	v_lshlrev_b32_e32 v94, 4, v0
	v_and_b32_e32 v95, 0x7f, v0
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
.LBB0_3:                                ; %Flow424
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v29, 0x80, v0
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v28, 15, v0
	v_lshrrev_b32_e32 v27, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s3, 0, v29
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
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
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
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v10, 3, v0
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
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v1, s66, v28
	v_bfe_i32 v11, v0, 3, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[72:73], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[5:6]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[74:75], v[3:4]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v100, v1, s34
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v1, 48, v1
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v21, 0x70, v94
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v10, 0x700, v10
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v11, 0x88, v11
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s77, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v103, v1, s34
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v1, 0xf0, v0
	v_or3_b32 v31, v21, v10, v11
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	v_mul_lo_u32 v101, v2, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, s7, v27
	v_lshlrev_b32_e32 v11, 2, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v10, 32, v10
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
	v_add3_u32 v36, 0, v11, v10
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
	v_or_b32_e32 v32, 0x3f0, v0
	v_lshlrev_b32_e32 v21, 1, v0
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
	v_mul_lo_u32 v102, v3, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xf0, v2
	v_add_nc_u32_e32 v108, 0, v32
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v35, 28, v21
	v_mad_u64_u32 v[20:21], null, v8, s10, s[6:7]
	v_xor_b32_e32 v33, v22, v95
	v_mad_u64_u32 v[21:22], null, v7, s10, s[6:7]
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mad_u64_u32 v[22:23], null, v6, s10, s[6:7]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v96, 6, v0
	v_or_b32_e32 v30, 0x300, v0
	v_xor_b32_e32 v34, 8, v31
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
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v113, 0, v1
	v_mov_b32_e32 v1, s8
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v97, 4, v96
	v_or_b32_e32 v98, 8, v96
	v_or_b32_e32 v99, 12, v96
	v_or_b32_e32 v104, s7, v0
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v105, 0, v0
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v106, 0, v30
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v107, 0, v28
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v109, 0, v33
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v110, 0, v31
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v111, 0, v34
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v112, v36, v35
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v2, s9 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v4, s11 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v6, s13 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v8, s15 :: v_dual_mov_b32 v3, s10
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
	v_or_b32_e32 v114, s6, v96
	v_or_b32_e32 v116, s6, v97
	v_or_b32_e32 v117, s6, v98
	v_or_b32_e32 v118, s6, v99
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
	buffer_load_u8 v122, v122, s[16:19], 0 offen
	buffer_load_u8 v123, v123, s[16:19], 0 offen
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
	ds_store_b8 v105, v114
	s_waitcnt vmcnt(18)
	ds_store_b8 v105, v115 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v105, v116 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v106, v117
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v114, v107 offset:320
	ds_load_u8 v115, v107 offset:256
	ds_load_u8 v116, v107 offset:448
	ds_load_u8 v117, v107 offset:384
	ds_load_u8 v124, v107 offset:64
	ds_load_u8 v125, v107
	ds_load_u8 v134, v107 offset:192
	ds_load_u8 v135, v107 offset:128
	ds_load_u8 v138, v107 offset:832
	ds_load_u8 v139, v107 offset:768
	ds_load_u8 v140, v107 offset:960
	ds_load_u8 v141, v107 offset:896
	ds_load_u8 v142, v107 offset:576
	ds_load_u8 v143, v107 offset:512
	ds_load_u8 v144, v107 offset:704
	ds_load_u8 v145, v107 offset:640
	ds_load_u8 v146, v107 offset:336
	ds_load_u8 v147, v107 offset:272
	ds_load_u8 v148, v107 offset:352
	ds_load_u8 v150, v107 offset:368
	ds_load_u8 v151, v107 offset:304
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s6, s76
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v115, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v116, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v117, v135, v134, 0xc0c0004
	v_lshl_or_b32 v125, v115, 16, v114
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v114, v139, v138, 0xc0c0004
	ds_load_u8 v138, v107 offset:464
	ds_load_u8 v139, v107 offset:400
	v_lshl_or_b32 v124, v117, 16, v116
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v115, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v116, v143, v142, 0xc0c0004
	ds_load_u8 v140, v107 offset:480
	ds_load_u8 v141, v107 offset:416
	ds_load_u8 v149, v107 offset:288
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v117, v145, v144, 0xc0c0004
	ds_load_u8 v142, v107 offset:496
	ds_load_u8 v143, v107 offset:432
	ds_load_u8 v144, v107 offset:80
	ds_load_u8 v145, v107 offset:96
	ds_load_u8 v152, v107 offset:112
	ds_load_u8 v153, v107 offset:16
	ds_load_u8 v154, v107 offset:32
	ds_load_u8 v155, v107 offset:48
	ds_load_u8 v156, v107 offset:208
	ds_load_u8 v157, v107 offset:144
	ds_load_u8 v158, v107 offset:224
	ds_load_u8 v159, v107 offset:160
	ds_load_u8 v160, v107 offset:240
	ds_load_u8 v161, v107 offset:176
	ds_load_u8 v162, v107 offset:848
	ds_load_u8 v163, v107 offset:784
	ds_load_u8 v164, v107 offset:864
	ds_load_u8 v165, v107 offset:800
	ds_load_u8 v166, v107 offset:880
	ds_load_u8 v167, v107 offset:816
	ds_load_u8 v168, v107 offset:976
	ds_load_u8 v169, v107 offset:912
	ds_load_u8 v170, v107 offset:992
	ds_load_u8 v171, v107 offset:928
	ds_load_u8 v172, v108
	ds_load_u8 v173, v107 offset:944
	ds_load_u8 v174, v107 offset:592
	ds_load_u8 v175, v107 offset:528
	ds_load_u8 v176, v107 offset:608
	ds_load_u8 v177, v107 offset:544
	ds_load_u8 v178, v107 offset:624
	ds_load_u8 v179, v107 offset:560
	ds_load_u8 v180, v107 offset:720
	ds_load_u8 v181, v107 offset:656
	ds_load_u8 v182, v107 offset:736
	ds_load_u8 v183, v107 offset:672
	ds_load_u8 v184, v107 offset:752
	ds_load_u8 v185, v107 offset:688
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v109, v118
	s_waitcnt vmcnt(14)
	ds_store_b8 v109, v120 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v109, v121 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v109, v122 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v109, v123 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v109, v136 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v109, v137 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v109, v126 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v109, v127 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v109, v128 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v109, v129 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v109, v130 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v109, v131 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v109, v132 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v109, v133 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v119 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[126:129], v110 offset1:4
	ds_load_2addr_stride64_b64 v[130:133], v111 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v135, v115, 16, v114
	v_lshl_or_b32 v134, v117, 16, v116
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[126:127], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[130:131], v[134:135], v[114:121] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v188, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v189, v117
	v_cvt_f32_i32_e32 v190, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v191, v119
	v_cvt_f32_i32_e32 v192, v120
	v_cvt_f32_i32_e32 v193, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[116:123], v[128:129], v[124:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v186, v114
	v_cvt_f32_i32_e32 v187, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[116:123], v[132:133], v[134:135], v[116:123] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v114, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v195, v117
	v_cvt_f32_i32_e32 v196, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v119
	v_cvt_f32_i32_e32 v117, v120
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v118, v147, v146, 0xc0c0004
	v_perm_b32 v119, v139, v138, 0xc0c0004
	v_perm_b32 v120, v153, v144, 0xc0c0004
	v_perm_b32 v121, v157, v156, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v194, v116
	v_cvt_f32_i32_e32 v115, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v135, v119, 16, v118
	v_perm_b32 v118, v163, v162, 0xc0c0004
	v_lshl_or_b32 v134, v121, 16, v120
	v_perm_b32 v119, v169, v168, 0xc0c0004
	v_perm_b32 v120, v175, v174, 0xc0c0004
	v_perm_b32 v121, v181, v180, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v116, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v137, v119, 16, v118
	v_lshl_or_b32 v136, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[118:125], v[126:127], v[134:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[130:131], v[136:137], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v139, v119
	v_cvt_f32_i32_e32 v144, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v146, v121
	v_cvt_f32_i32_e32 v147, v122
	v_cvt_f32_i32_e32 v153, v123
	v_cvt_f32_i32_e32 v156, v124
	v_cvt_f32_i32_e32 v157, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[128:129], v[134:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[132:133], v[136:137], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v174, v119
	v_cvt_f32_i32_e32 v175, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v180, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v118, v149, v148, 0xc0c0004
	v_perm_b32 v119, v141, v140, 0xc0c0004
	v_perm_b32 v120, v154, v145, 0xc0c0004
	v_perm_b32 v121, v159, v158, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v163, v123
	v_cvt_f32_i32_e32 v168, v124
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v135, v119, 16, v118
	v_perm_b32 v118, v165, v164, 0xc0c0004
	v_lshl_or_b32 v134, v121, 16, v120
	v_perm_b32 v119, v171, v170, 0xc0c0004
	v_perm_b32 v120, v177, v176, 0xc0c0004
	v_perm_b32 v121, v183, v182, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v169, v125
	v_cvt_f32_i32_e32 v181, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v137, v119, 16, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[118:125], v[126:127], v[134:135], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[130:131], v[136:137], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v118
	v_cvt_f32_i32_e32 v141, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v145, v120
	v_cvt_f32_i32_e32 v148, v121
	v_cvt_f32_i32_e32 v149, v122
	v_cvt_f32_i32_e32 v154, v123
	v_cvt_f32_i32_e32 v158, v124
	v_cvt_f32_i32_e32 v159, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[128:129], v[134:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[132:133], v[136:137], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v176, v119
	v_cvt_f32_i32_e32 v177, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v182, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v118, v151, v150, 0xc0c0004
	v_perm_b32 v119, v143, v142, 0xc0c0004
	v_perm_b32 v120, v155, v152, 0xc0c0004
	v_perm_b32 v121, v161, v160, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v165, v123
	v_cvt_f32_i32_e32 v170, v124
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v135, v119, 16, v118
	v_perm_b32 v118, v167, v166, 0xc0c0004
	v_lshl_or_b32 v134, v121, 16, v120
	v_perm_b32 v119, v173, v172, 0xc0c0004
	v_perm_b32 v120, v179, v178, 0xc0c0004
	v_perm_b32 v121, v185, v184, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v125
	v_cvt_f32_i32_e32 v183, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v137, v119, 16, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[118:125], v[126:127], v[134:135], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[130:131], v[136:137], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v126, v118
	v_cvt_f32_i32_e32 v127, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v130, v120
	v_cvt_f32_i32_e32 v131, v121
	v_cvt_f32_i32_e32 v142, v122
	v_cvt_f32_i32_e32 v143, v123
	v_cvt_f32_i32_e32 v150, v124
	v_cvt_f32_i32_e32 v151, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[128:129], v[134:135], v[1:8] neg_lo:[1,1,0]
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v134, v104, s6, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[118:125], v[132:133], v[136:137], v[118:125] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v128, v118
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v118, s8, v100, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v119
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v119, s8, v101, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v120
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v120, s8, v102, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v121
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v121, s8, v103, 1
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v121, 0x80000000, v121, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v134, v134, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v118, v118, s[28:31], 0 offen
	buffer_load_u16 v135, v119, s[28:31], 0 offen
	buffer_load_u16 v136, v120, s[28:31], 0 offen
	buffer_load_u16 v137, v121, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s34
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v119, 16, v134
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v134, 16, v118
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v112, v119
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v113
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v152, v134, v186 :: v_dual_lshlrev_b32 v135, 16, v135
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v137, v126
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v133, v137, v133 :: v_dual_mul_f32 v138, v135, v138
	v_mul_f32_e32 v129, v137, v129
	v_mul_f32_e32 v124, v124, v137
	v_mul_f32_e32 v128, v128, v137
	v_dual_mul_f32 v132, v137, v132 :: v_dual_mul_f32 v123, v123, v137
	v_mul_f32_e32 v125, v125, v137
	v_mul_f32_e32 v122, v137, v122
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v92, v152, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v152, v134, v187
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v77, v138, v118 :: v_dual_mul_f32 v138, v135, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v91, v152, v119 :: v_dual_mul_f32 v152, v134, v188
	v_fmac_f32_e32 v76, v138, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v138, v135, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v152, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v152, v134, v189
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v138, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v138, v135, v146
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v44, v126, v118 :: v_dual_mul_f32 v139, v135, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v152, v121
	v_dual_fmac_f32 v73, v138, v121 :: v_dual_mul_f32 v138, v136, v140
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v140, v135, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v138, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v138, v136, v141
	v_dual_mul_f32 v118, v137, v127 :: v_dual_mul_f32 v127, v115, v134
	v_mul_f32_e32 v141, v163, v135
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v59, v138, v119 :: v_dual_mul_f32 v138, v136, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v118, v119 :: v_dual_mul_f32 v118, v137, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v126, v134, v190 :: v_dual_mul_f32 v145, v136, v176
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v138, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v138, v136, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v42, v118, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v118, v137, v131 :: v_dual_mul_f32 v131, v134, v117
	v_dual_mul_f32 v148, v165, v136 :: v_dual_fmac_f32 v57, v138, v121
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v138, v135, v174 :: v_dual_fmac_f32 v41, v118, v121
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[118:121], v113 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v130, v116, v134
	v_mul_f32_e32 v144, v164, v136
	v_mul_f32_e32 v146, v136, v177
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v88, v126, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v134, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v126, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v134, v192
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v126, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v134, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v126, v121 :: v_dual_mul_f32 v126, v135, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v147, v136, v182
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v126, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v135, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v71, v126, v119 :: v_dual_mul_f32 v126, v135, v156
	v_fmac_f32_e32 v70, v126, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v135, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v126, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v126, v136, v149 :: v_dual_mul_f32 v149, v170, v136
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v126, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v136, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v55, v126, v119 :: v_dual_mul_f32 v126, v136, v158
	v_fmac_f32_e32 v54, v126, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v136, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v53, v126, v121 :: v_dual_mul_f32 v126, v137, v142
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v142, v168, v135
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v40, v126, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v118, v137, v143
	v_mul_f32_e32 v126, v114, v134
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[114:117], v113 offset:512
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v143, v169, v135
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v39, v118, v119 :: v_dual_mul_f32 v118, v137, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v119, v134, v195 :: v_dual_mul_f32 v150, v171, v136
	v_mul_f32_e32 v136, v136, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v38, v118, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v118, v137, v151
	v_mul_f32_e32 v120, v134, v196
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v37, v118, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v118, v194, v134
	v_mul_f32_e32 v121, v134, v197
	v_dual_mul_f32 v134, v162, v135 :: v_dual_mul_f32 v135, v135, v181
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v119, v115 :: v_dual_fmac_f32 v75, v118, v114
	v_dual_fmac_f32 v83, v120, v116 :: v_dual_fmac_f32 v82, v121, v117
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[118:121], v113 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v134, v114
	v_dual_fmac_f32 v67, v138, v115 :: v_dual_fmac_f32 v66, v139, v116
	v_fmac_f32_e32 v65, v140, v117
	v_dual_fmac_f32 v52, v144, v114 :: v_dual_fmac_f32 v51, v145, v115
	v_dual_fmac_f32 v50, v146, v116 :: v_dual_fmac_f32 v49, v147, v117
	v_dual_fmac_f32 v36, v128, v114 :: v_dual_fmac_f32 v35, v129, v115
	v_dual_fmac_f32 v34, v132, v116 :: v_dual_fmac_f32 v33, v133, v117
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v81, v131, v118 :: v_dual_fmac_f32 v80, v126, v119
	v_dual_fmac_f32 v79, v127, v120 :: v_dual_fmac_f32 v78, v130, v121
	v_dual_fmac_f32 v64, v135, v118 :: v_dual_fmac_f32 v63, v141, v119
	v_dual_fmac_f32 v62, v142, v120 :: v_dual_fmac_f32 v61, v143, v121
	v_fmac_f32_e32 v48, v136, v118
	v_dual_fmac_f32 v47, v148, v119 :: v_dual_fmac_f32 v46, v149, v120
	v_fmac_f32_e32 v45, v150, v121
	v_fmac_f32_e32 v26, v122, v118
	v_dual_fmac_f32 v32, v123, v119 :: v_dual_fmac_f32 v31, v124, v120
	v_fmac_f32_e32 v30, v125, v121
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, v93 :: v_dual_mov_b32 v8, v94
	v_dual_mov_b32 v6, v95 :: v_dual_mov_b32 v5, v9
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v7, 7, v29
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v21, 3, v0
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, |v86|, |v85|, |v75|
	v_max_f32_e64 v14, |v59|, |v59|
	v_max_f32_e64 v17, |v60|, |v60|
.Ltmp7:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 62, v7
	v_or_b32_e32 v4, 60, v7
	v_or_b32_e32 v11, 58, v7
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v18, |v44|, |v44|
	s_mov_b32 s27, 0x76543210
.Ltmp9:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	v_add_co_u32 v9, s0, s66, v4
	v_add_co_u32 v11, s1, s66, v11
	v_add_co_ci_u32_e64 v10, null, s67, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[74:75], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 56, v7
	v_or_b32_e32 v4, 54, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[9:10]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[11:12]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s7, s66, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s7
	v_add_co_u32 v9, s7, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 52, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s7
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[11:12]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 50, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[74:75], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s11, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s11
	v_add_co_u32 v11, s11, s66, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[72:73], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s67, 0, s11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[74:75], v[9:10]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 46, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[74:75], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s15, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s15
	v_add_co_u32 v9, s15, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[72:73], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s15
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[74:75], v[11:12]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 42, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[74:75], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s19, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s19
	v_add_co_u32 v11, s19, s66, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 40, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[72:73], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s67, 0, s19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[74:75], v[9:10]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 38, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[74:75], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s23, s66, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s23
	v_add_co_u32 v15, s23, s66, v9
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v91|, |v91|
	v_max_f32_e64 v9, |v92|, |v92|
.Ltmp11:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[74:75], v[2:3]
.Ltmp12:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, |v89|, |v88|, |v87|
.Ltmp13:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[72:73], v[11:12]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v9, v4 :: v_dual_lshlrev_b32 v19, 5, v21
	v_max3_f32 v4, |v84|, |v83|, |v82|
	v_max3_f32 v9, |v81|, |v80|, |v79|
.Ltmp15:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s67, 0, s23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[74:75], v[11:12]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v10, |v76|, |v76|
	v_max_f32_e64 v11, |v77|, |v77|
	v_max3_f32 v2, v2, |v90|, v3
	v_max3_f32 v3, v4, v9, |v78|
	v_max3_f32 v9, |v73|, |v72|, |v71|
.Ltmp17:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 36, v7
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v20, 3, v29
	s_waitcnt lgkmcnt(0)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v2, v13, v3
	v_max_f32_e32 v4, v11, v10
	v_max3_f32 v10, |v67|, |v66|, |v65|
	v_max3_f32 v11, |v64|, |v63|, |v62|
	v_max3_f32 v2, |v70|, |v69|, |v68|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v4, |v74|, v9
	v_max_f32_e32 v9, v17, v14
	v_max3_f32 v4, v10, v11, |v61|
	v_max3_f32 v10, |v57|, |v56|, |v55|
	v_max3_f32 v11, |v51|, |v50|, |v49|
	v_max3_f32 v14, |v48|, |v47|, |v46|
	v_max_f32_e64 v17, |v43|, |v43|
	v_max3_f32 v4, v3, v2, v4
	v_max3_f32 v2, |v54|, |v53|, |v52|
	v_max3_f32 v3, v9, |v58|, v10
	v_max3_f32 v9, v11, v14, |v45|
	v_max_f32_e32 v10, v18, v17
	v_max3_f32 v11, |v41|, |v40|, |v39|
	v_max3_f32 v14, |v35|, |v34|, |v33|
	v_max3_f32 v17, |v26|, |v32|, |v31|
	v_max3_f32 v9, v3, v2, v9
	v_max3_f32 v18, |v38|, |v37|, |v36|
	v_max3_f32 v10, v10, |v42|, v11
.Ltmp22:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s28, s66, v12
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v11, v14, v17, |v30|
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v13, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v4, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v18, v10, v18, v11
	v_max_f32_e32 v12, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v17, v17
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v17, v9, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x60, v0
.Ltmp28:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[2:3]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v13, v12 :: v_dual_max_f32 v12, v4, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v4, v17, v17
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v14, v21, 9, 0
	v_permlanex16_b32 v17, v18, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 4, v0
.Ltmp31:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[2:3]
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v9, v4
.Ltmp33:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 32, v7
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v17, v17
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v4, v22, 2, v14
	v_and_or_b32 v14, 0x680, v8, v19
	v_lshlrev_b32_e32 v17, 1, v29
	v_xor_b32_e32 v19, v19, v10
	v_lshl_add_u32 v24, v22, 6, 0
	v_lshl_add_u32 v4, v1, 4, v4
	v_xor_b32_e32 v23, v14, v10
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v18, v9
.Ltmp37:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 34, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v2, s33, s66, v2
.Ltmp38:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v4, v17, v19
	v_add3_u32 v17, v24, v20, v23
.Ltmp39:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[15:16]
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v4, v[11:14]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v17
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 30, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v17, s27, s66, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v18, null, s67, 0, s27
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[15:16]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s33, s66, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v16, null, s67, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 28, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[15:16]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[17:18]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[17:18]
.Ltmp42:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 3, v1
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v9, v13 :: v_dual_mov_b32 v4, v11
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v15, v14, v14
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v2, v12
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp50:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v23.h, 0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v8, 0x2f0, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v4, v11, v4
.Ltmp52:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s76, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v12, v2
.Ltmp54:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s37, s66, v3
	v_add_co_ci_u32_e64 v3, null, s67, 0, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v11
.Ltmp56:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[2:3]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v13, v13 :: v_dual_max_f32 v13, v14, v14
	v_max_f32_e32 v3, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v9, v12, v9
	v_max_f32_e32 v12, v15, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v3, v11, v3
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v15, v12
	v_mov_b32_e32 v14, v4
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v15, v15 :: v_dual_max_f32 v2, v14, v14
.Ltmp61:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 26, v7
	v_or_b32_e32 v15, 24, v7
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v4, v2
	v_max_f32_e32 v4, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s39, s66, v14
	v_add_co_u32 v19, s40, s66, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v13, v2 :: v_dual_max_f32 v4, v9, v4
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v12, v11
.Ltmp66:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v20, null, s67, 0, s40
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v11, v4 :: v_dual_mov_b32 v12, v9
.Ltmp68:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[72:73], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[19:20]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_mov_b32 v14, v3
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v2, v13
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v11, v11
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v11, 1, v10
.Ltmp76:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[17:18]
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v10, 5, v10
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v15, v4, v2
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v3, v14 :: v_dual_max_f32 v3, v12, v12
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v12, 4, v21
	v_add_nc_u32_e32 v21, 0, v29
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v16, v9, v3 :: v_dual_lshlrev_b32 v29, 3, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v4, 0, v12
	v_add3_u32 v3, v21, v11, v1
.Ltmp83:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 22, v7
	v_or_b32_e32 v11, 18, v7
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v4, v2, v1
	ds_store_b128 v3, v[13:16]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp85:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s40, s66, v9
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v1
.Ltmp87:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s40
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 20, v7
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[74:75], v[17:18]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[72:73], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[74:75], v[13:14]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v13, s45, s66, v9
	v_add_co_ci_u32_e64 v14, null, s67, 0, s45
	v_add_co_u32 v15, s45, s66, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 16, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s67, 0, s45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[72:73], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[74:75], v[13:14]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v13, s49, s66, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[72:73], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[74:75], v[15:16]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v11, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v7
	v_or_b32_e32 v9, 12, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[74:75], v[13:14]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v11
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s49, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v16, null, s67, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s49, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s67, 0, s49
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[72:73], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[74:75], v[15:16]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[72:73], v[13:14]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v15, -v19, v1, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s55, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[72:73], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[74:75], v[17:18]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v1, v15, v1
	v_div_scale_f32 v17, vcc_lo, v11, 0x40e00000, v11
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s55
	v_add_co_u32 v15, s55, s66, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v16, null, s67, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v9, v17, v1 :: v_dual_max_f32 v2, v2, v2
	v_rcp_f32_e32 v20, v18
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[72:73], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[74:75], v[13:14]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[72:73], v[15:16]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v13, -v19, v9, v17
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[74:75], v[15:16]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v15, 0x2b8cbccc, v2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 6, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v18, v20, 1.0
	v_fmac_f32_e32 v9, v13, v1
	v_max_f32_e32 v13, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v15
	v_fmac_f32_e32 v20, v2, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v19, v9, v17
	v_div_scale_f32 v17, s61, v3, 0x40e00000, v3
	v_rcp_f32_e32 v19, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v9, v16, v1, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s59, s66, v14
	v_add_co_ci_u32_e64 v2, null, s67, 0, s59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v9, 0x40e00000, v11
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v14, -v4, v19, 1.0
	v_mul_f32_e32 v16, v17, v20
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[74:75], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v19, v14, v19
	v_div_scale_f32 v14, s62, v15, 0x40e00000, v15
	v_fma_f32 v11, -v18, v16, v17
	v_mul_f32_e32 v24, v14, v19
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v25, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v25, v22
	v_fmac_f32_e32 v16, v11, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v11.l, v9.h
	v_mov_b16_e32 v11.h, v23.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v18, v16, v17
	v_div_scale_f32 v17, s63, v13, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v11, -v4, v24, v14
	v_dual_fmac_f32 v24, v11, v19 :: v_dual_mul_f32 v11, v17, v22
	v_div_fmas_f32 v1, v1, v20, v16
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	v_fma_f32 v3, -v4, v24, v14
	v_fma_f32 v4, -v21, v11, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v23.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v3, v19, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v11, v4, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v9, v2, 0x7fff
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 4, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v14, v14, 0x40e00000, v15
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v19.h, v23.h
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v95, 0xffff0000, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s66, v2
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v21, v11, v17
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v19.l, v14.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v16, null, v95, v95, v92
	v_div_scale_f32 v17, null, v95, v95, v91
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v22, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v18, v16
	v_div_scale_f32 v22, null, v95, v95, v90
	v_rcp_f32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v13
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v24, null, v95, v95, v89
	v_div_scale_f32 v25, s61, v91, v95, v91
	v_fma_f32 v15, -v16, v18, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v11, 1, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v21, -v17, v20, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v23.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v99, null, v95, v95, v88
	v_fmac_f32_e32 v18, v15, v18
	v_div_scale_f32 v15, vcc_lo, v92, v95, v92
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v11, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v20, v21, v20 :: v_dual_and_b32 v11, 1, v19
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v23, 1, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v21, v22
	v_div_scale_f32 v100, null, v95, v95, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v14, v11, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v19, v15, v18 :: v_dual_mul_f32 v96, v25, v20
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v23, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v23, v24
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v94, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v14, -v16, v19, v15
	v_fma_f32 v97, -v22, v21, 1.0
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v13, 2, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v19, v14, v18
	v_dual_fmac_f32 v21, v97, v21 :: v_dual_and_b32 v14, 0xffff0000, v2
	v_div_scale_f32 v97, s62, v90, v95, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v15, -v16, v19, v15
	v_fma_f32 v16, -v17, v96, v25
	v_fma_f32 v98, -v24, v23, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v93, 0xffff0000, v1
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v15, v15, v18, v19
	v_fmac_f32_e32 v96, v16, v20
	v_dual_mul_f32 v18, v97, v21 :: v_dual_fmac_f32 v23, v98, v23
	v_rcp_f32_e32 v19, v99
	v_div_scale_f32 v98, s63, v89, v95, v89
	v_div_fixup_f32 v15, v15, v95, v92
	v_rcp_f32_e32 v92, v100
	v_fma_f32 v16, -v17, v96, v25
	v_fma_f32 v17, -v22, v18, v97
	v_mul_f32_e32 v25, v98, v23
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v101, -v99, v19, 1.0
	v_div_fmas_f32 v16, v16, v20, v96
	v_fmac_f32_e32 v18, v17, v21
	v_fma_f32 v17, -v24, v25, v98
	v_fma_f32 v96, -v100, v92, 1.0
	v_fmac_f32_e32 v19, v101, v19
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v22, -v22, v18, v97
	v_div_scale_f32 v97, null, v95, v95, v86
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s64, v87, v95, v87
	v_fmac_f32_e32 v25, v17, v23
	v_div_scale_f32 v20, s61, v88, v95, v88
	v_div_fmas_f32 v17, v22, v21, v18
	v_rcp_f32_e32 v22, v97
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v18, -v24, v25, v98
	v_mul_f32_e32 v24, v96, v92
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v16, v16, v95, v91
	v_div_scale_f32 v98, null, v95, v95, v85
	v_div_fmas_f32 v18, v18, v23, v25
	v_fma_f32 v23, -v100, v24, v96
	v_mul_f32_e32 v91, v20, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v25, -v97, v22, 1.0
	v_div_fixup_f32 v17, v17, v95, v90
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v24, v23, v92
	v_fma_f32 v21, -v99, v91, v20
	v_fmac_f32_e32 v22, v25, v22
	v_div_scale_f32 v23, s62, v86, v95, v86
	v_div_fixup_f32 v18, v18, v95, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v21, v19
	v_rcp_f32_e32 v21, v98
	v_mul_f32_e32 v90, v23, v22
	v_div_scale_f32 v89, null, v95, v95, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v99, v91, v20
	v_div_scale_f32 v101, null, v95, v95, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v19, v20, v19, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v98, v21, 1.0
	v_fma_f32 v20, -v100, v24, v96
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v96, null, v95, v95, v84
	v_div_scale_f32 v91, s61, v85, v95, v85
	v_div_fmas_f32 v20, v20, v92, v24
	v_fma_f32 v24, -v97, v90, v23
	v_fmac_f32_e32 v21, v25, v21
	v_rcp_f32_e32 v25, v89
	v_rcp_f32_e32 v100, v96
	v_div_fixup_f32 v19, v19, v95, v88
	v_div_scale_f32 v88, null, v95, v95, v83
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v20, v20, v95, v87
	v_div_scale_f32 v87, s63, v75, v95, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v89, v25, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v20, v20
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v25, v99, v25 :: v_dual_fmac_f32 v90, v24, v22
	v_mul_f32_e32 v92, v91, v21
	v_fma_f32 v99, -v96, v100, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v97, v90, v23
	v_fma_f32 v24, -v98, v92, v91
	v_rcp_f32_e32 v97, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s64, v84, v95, v84
	v_fmac_f32_e32 v92, v24, v21
	v_div_fmas_f32 v22, v23, v22, v90
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v23, -v98, v92, v91
	v_fma_f32 v98, -v88, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v98, v97
	v_mul_f32_e32 v91, v99, v100
	v_div_fmas_f32 v23, v23, v21, v92
	v_div_scale_f32 v98, s61, v83, v95, v83
	v_div_fixup_f32 v21, v22, v95, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v92, -v96, v91, v99
	v_mul_f32_e32 v24, v87, v25
	v_div_fixup_f32 v22, v23, v95, v85
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v100
	v_fma_f32 v90, -v89, v24, v87
	v_div_scale_f32 v92, null, v95, v95, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v24, v90, v25
	v_rcp_f32_e32 v90, v101
	v_fma_f32 v23, -v89, v24, v87
	v_div_scale_f32 v89, s62, v82, v95, v82
	v_div_scale_f32 v87, null, v95, v95, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v23, v23, v25, v24
	v_fma_f32 v86, -v101, v90, 1.0
	v_fma_f32 v24, -v96, v91, v99
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v99, null, v95, v95, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v90, v86, v90
	v_mul_f32_e32 v85, v98, v97
	v_rcp_f32_e32 v86, v87
	v_div_fmas_f32 v24, v24, v100, v91
	v_rcp_f32_e32 v91, v92
	v_mul_f32_e32 v96, v89, v90
	v_fma_f32 v25, -v88, v85, v98
	v_div_fixup_f32 v23, v23, v95, v75
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v24, v24, v95, v84
	v_fma_f32 v84, -v101, v96, v89
	v_fmac_f32_e32 v85, v25, v97
	v_fma_f32 v25, -v87, v86, 1.0
	v_rcp_f32_e32 v100, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v88, v85, v98
	v_div_scale_f32 v98, null, v95, v95, v79
	v_fmac_f32_e32 v86, v25, v86
	v_fma_f32 v25, -v92, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v75, v97, v85
	v_rcp_f32_e32 v85, v98
	v_fmac_f32_e32 v96, v84, v90
	v_div_scale_f32 v88, s63, v81, v95, v81
	v_fmac_f32_e32 v91, v25, v91
	v_div_fixup_f32 v25, v75, v95, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v101, v96, v89
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v97, s61, v80, v95, v80
	v_fma_f32 v101, -v98, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v97, v91
	v_fmac_f32_e32 v85, v101, v85
	v_div_fmas_f32 v75, v75, v90, v96
	v_div_scale_f32 v90, s62, v79, v95, v79
	v_mul_f32_e32 v84, v88, v86
	v_fma_f32 v96, -v99, v100, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v75, v75, v95, v82
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v83, -v87, v84, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v100, v96, v100
	v_fmac_f32_e32 v84, v83, v86
	v_fma_f32 v83, -v92, v89, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v87, v84, v88
	v_fmac_f32_e32 v89, v83, v91
	v_mul_f32_e32 v83, v90, v85
	v_div_scale_f32 v87, s64, v78, v95, v78
	v_div_scale_f32 v88, null, v94, v94, v77
	v_div_fmas_f32 v82, v82, v86, v84
	v_fma_f32 v84, -v92, v89, v97
	v_fma_f32 v86, -v98, v83, v90
	v_mul_f32_e32 v96, v87, v100
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v92, v88
	v_div_scale_f32 v97, null, v94, v94, v76
	v_div_fmas_f32 v84, v84, v91, v89
	v_fmac_f32_e32 v83, v86, v85
	v_fma_f32 v89, -v99, v96, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v97
	v_div_fixup_f32 v81, v82, v95, v81
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v82, -v98, v83, v90
	v_fmac_f32_e32 v96, v89, v100
	v_div_scale_f32 v90, null, v94, v94, v74
	v_fma_f32 v91, -v88, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v99, v96, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v90
	v_div_fixup_f32 v80, v84, v95, v80
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v84, s61, v77, v94, v77
	v_fma_f32 v89, -v97, v86, 1.0
	v_div_scale_f32 v91, null, v94, v94, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v84, v92
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s62, v76, v94, v76
	v_fma_f32 v99, -v90, v87, 1.0
	v_div_fixup_f32 v79, v82, v95, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v99, v87
	v_div_fmas_f32 v83, v83, v100, v96
	v_fma_f32 v96, -v88, v85, v84
	v_mul_f32_e32 v98, v89, v86
	v_rcp_f32_e32 v100, v91
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v78, v83, v95, v78
	v_fmac_f32_e32 v85, v96, v92
	v_fma_f32 v82, -v97, v98, v89
	v_div_scale_f32 v95, null, v94, v94, v72
	v_div_scale_f32 v83, s63, v74, v94, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v88, v85, v84
	v_fma_f32 v96, -v91, v100, 1.0
	v_fmac_f32_e32 v98, v82, v86
	v_rcp_f32_e32 v88, v95
	v_mul_f32_e32 v82, v83, v87
	v_div_fmas_f32 v84, v84, v92, v85
	v_fmac_f32_e32 v100, v96, v100
	v_div_scale_f32 v96, s64, v73, v94, v73
	v_fma_f32 v85, -v97, v98, v89
	v_div_scale_f32 v99, null, v94, v94, v71
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v89, -v90, v82, v83
	v_mul_f32_e32 v92, v96, v100
	v_fma_f32 v97, -v95, v88, 1.0
	v_div_fmas_f32 v85, v85, v86, v98
	v_rcp_f32_e32 v86, v99
	v_fmac_f32_e32 v82, v89, v87
	v_fma_f32 v89, -v91, v92, v96
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v97, s61, v72, v94, v72
	v_div_fixup_f32 v77, v84, v94, v77
	v_div_fixup_f32 v76, v85, v94, v76
	v_fma_f32 v83, -v90, v82, v83
	v_fmac_f32_e32 v92, v89, v100
	v_mul_f32_e32 v84, v97, v88
	v_fma_f32 v85, -v99, v86, 1.0
	v_div_scale_f32 v89, null, v94, v94, v70
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v90, s62, v71, v94, v71
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v91, v92, v96
	v_fma_f32 v87, -v95, v84, v97
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v91, null, v94, v94, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v87, v88
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v74, v82, v94, v74
	v_rcp_f32_e32 v87, v91
	v_div_fmas_f32 v83, v83, v100, v92
	v_mul_f32_e32 v92, v90, v86
	v_fma_f32 v82, -v95, v84, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v89, v85, 1.0
	v_div_scale_f32 v97, null, v94, v94, v68
	v_div_fixup_f32 v73, v83, v94, v73
	v_fma_f32 v83, -v99, v92, v90
	v_fmac_f32_e32 v85, v96, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v91, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v95, s63, v70, v94, v70
	v_div_fmas_f32 v82, v82, v88, v84
	v_dual_fmac_f32 v92, v83, v86 :: v_dual_fmac_f32 v87, v96, v87
	v_rcp_f32_e32 v84, v97
	v_div_scale_f32 v96, null, v94, v94, v67
	v_mul_f32_e32 v83, v95, v85
	v_div_scale_f32 v88, s61, v69, v94, v69
	v_div_fixup_f32 v72, v82, v94, v72
	v_fma_f32 v82, -v99, v92, v90
	v_rcp_f32_e32 v99, v96
	v_fma_f32 v90, -v89, v83, v95
	v_mul_f32_e32 v98, v88, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v100, -v97, v84, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v92
	v_fmac_f32_e32 v83, v90, v85
	v_fma_f32 v86, -v91, v98, v88
	v_fmac_f32_e32 v84, v100, v84
	v_div_scale_f32 v90, s62, v68, v94, v68
	v_fma_f32 v92, -v96, v99, 1.0
	v_div_fixup_f32 v71, v82, v94, v71
	v_fma_f32 v82, -v89, v83, v95
	v_fmac_f32_e32 v98, v86, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v86, v90, v84 :: v_dual_fmac_f32 v99, v92, v99
	v_div_scale_f32 v92, null, v94, v94, v66
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s64, v67, v94, v67
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v91, v98, v88
	v_fma_f32 v85, -v97, v86, v90
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v95, null, v94, v94, v65
	v_mul_f32_e32 v91, v89, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v85, v95
	v_div_fmas_f32 v83, v83, v87, v98
	v_fma_f32 v87, -v96, v91, v89
	v_div_fixup_f32 v70, v82, v94, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v92, v88, 1.0
	v_fma_f32 v82, -v97, v86, v90
	v_div_fixup_f32 v69, v83, v94, v69
	v_fmac_f32_e32 v91, v87, v99
	v_div_scale_f32 v83, s61, v66, v94, v66
	v_fmac_f32_e32 v88, v98, v88
	v_fma_f32 v87, -v95, v85, 1.0
	v_div_scale_f32 v90, null, v94, v94, v64
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v100, null, v94, v94, v61
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v84, -v96, v91, v89
	v_mul_f32_e32 v86, v83, v88
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v89, s62, v65, v94, v65
	v_div_scale_f32 v96, null, v94, v94, v63
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v97, v89, v85
	v_div_fmas_f32 v84, v84, v99, v91
	v_fma_f32 v91, -v92, v86, v83
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v90, v87, 1.0
	v_div_fixup_f32 v68, v82, v94, v68
	v_fma_f32 v82, -v95, v97, v89
	v_fmac_f32_e32 v86, v91, v88
	v_div_scale_f32 v91, null, v94, v94, v62
	v_div_fixup_f32 v67, v84, v94, v67
	v_fmac_f32_e32 v87, v98, v87
	v_div_scale_f32 v84, s63, v64, v94, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v83, -v92, v86, v83
	v_fmac_f32_e32 v97, v82, v85
	v_rcp_f32_e32 v92, v91
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v82, v84, v87
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s64, v63, v94, v63
	v_div_fmas_f32 v83, v83, v88, v86
	v_fma_f32 v86, -v95, v97, v89
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v88, -v90, v82, v84
	v_mul_f32_e32 v89, v98, v99
	v_fma_f32 v95, -v91, v92, 1.0
	v_div_fmas_f32 v85, v86, v85, v97
	v_rcp_f32_e32 v86, v100
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v96, v89, v98
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, s61, v62, v94, v62
	v_div_fixup_f32 v66, v83, v94, v66
	v_div_fixup_f32 v65, v85, v94, v65
	v_fma_f32 v83, -v90, v82, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v88, v99 :: v_dual_mul_f32 v84, v95, v92
	v_fma_f32 v85, -v100, v86, 1.0
	v_div_scale_f32 v88, null, v93, v93, v60
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v90, s62, v61, v94, v61
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v96, v89, v98
	v_fma_f32 v87, -v91, v84, v95
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v96, null, v93, v93, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v87, v92
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v64, v82, v94, v64
	v_rcp_f32_e32 v87, v96
	v_div_fmas_f32 v83, v83, v99, v89
	v_mul_f32_e32 v89, v90, v86
	v_fma_f32 v82, -v91, v84, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v88, v85, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v63, v83, v94, v63
	v_fma_f32 v83, -v100, v89, v90
	v_div_scale_f32 v91, s63, v60, v93, v60
	v_fmac_f32_e32 v85, v97, v85
	v_fma_f32 v95, -v96, v87, 1.0
	v_div_scale_f32 v97, null, v93, v93, v58
	v_div_fmas_f32 v82, v82, v92, v84
	v_fmac_f32_e32 v89, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v95, v87
	v_rcp_f32_e32 v84, v97
	v_div_scale_f32 v95, null, v93, v93, v57
	v_mul_f32_e32 v83, v91, v85
	v_div_scale_f32 v92, s61, v59, v93, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v99, v95
	v_div_fixup_f32 v62, v82, v94, v62
	v_fma_f32 v82, -v100, v89, v90
	v_fma_f32 v90, -v88, v83, v91
	v_mul_f32_e32 v98, v92, v87
	v_fma_f32 v100, -v97, v84, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v89
	v_fmac_f32_e32 v83, v90, v85
	v_fma_f32 v86, -v96, v98, v92
	v_fmac_f32_e32 v84, v100, v84
	v_div_scale_f32 v89, s62, v58, v93, v58
	v_fma_f32 v90, -v95, v99, 1.0
	v_div_fixup_f32 v61, v82, v94, v61
	v_fma_f32 v82, -v88, v83, v91
	v_fmac_f32_e32 v98, v86, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v86, v89, v84 :: v_dual_fmac_f32 v99, v90, v99
	v_div_scale_f32 v90, null, v93, v93, v56
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s64, v57, v93, v57
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v85, -v97, v86, v89
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v94, null, v93, v93, v55
	v_fma_f32 v83, -v96, v98, v92
	v_mul_f32_e32 v92, v88, v99
	v_fmac_f32_e32 v86, v85, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v94
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v60, v82, v93, v60
	v_div_fmas_f32 v83, v83, v87, v98
	v_fma_f32 v87, -v95, v92, v88
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v82, -v97, v86, v89
	v_div_scale_f32 v89, null, v93, v93, v54
	v_div_fixup_f32 v59, v83, v93, v59
	v_fmac_f32_e32 v92, v87, v99
	v_fmac_f32_e32 v91, v96, v91
	v_div_scale_f32 v83, s61, v56, v93, v56
	v_fma_f32 v87, -v94, v85, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v84, -v95, v92, v88
	v_mul_f32_e32 v86, v83, v91
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v88, s62, v55, v93, v55
	v_div_scale_f32 v95, null, v93, v93, v53
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v96, v88, v85
	v_div_fmas_f32 v84, v84, v99, v92
	v_fma_f32 v92, -v90, v86, v83
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v89, v87, 1.0
	v_div_fixup_f32 v58, v82, v93, v58
	v_fma_f32 v82, -v94, v96, v88
	v_fmac_f32_e32 v86, v92, v91
	v_div_scale_f32 v92, null, v93, v93, v52
	v_div_fixup_f32 v57, v84, v93, v57
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v84, s63, v54, v93, v54
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v98, 1.0
	v_fma_f32 v83, -v90, v86, v83
	v_fmac_f32_e32 v96, v82, v85
	v_rcp_f32_e32 v90, v92
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v82, v84, v87
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s64, v53, v93, v53
	v_div_fmas_f32 v83, v83, v91, v86
	v_fma_f32 v86, -v94, v96, v88
	v_div_scale_f32 v99, null, v93, v93, v51
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v88, -v89, v82, v84
	v_mul_f32_e32 v91, v97, v98
	v_fma_f32 v94, -v92, v90, 1.0
	v_div_fmas_f32 v85, v86, v85, v96
	v_rcp_f32_e32 v86, v99
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v95, v91, v97
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s61, v52, v93, v52
	v_div_fixup_f32 v56, v83, v93, v56
	v_div_fixup_f32 v55, v85, v93, v55
	v_fma_f32 v83, -v89, v82, v84
	v_fmac_f32_e32 v91, v88, v98
	v_mul_f32_e32 v84, v94, v90
	v_fma_f32 v85, -v99, v86, 1.0
	v_div_scale_f32 v88, null, v93, v93, v50
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s62, v51, v93, v51
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v95, v91, v97
	v_fma_f32 v87, -v92, v84, v94
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v95, null, v93, v93, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v87, v90
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v54, v82, v93, v54
	v_rcp_f32_e32 v87, v95
	v_div_fmas_f32 v83, v83, v98, v91
	v_mul_f32_e32 v91, v89, v86
	v_fma_f32 v82, -v92, v84, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v88, v85, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v53, v83, v93, v53
	v_fma_f32 v83, -v99, v91, v89
	v_div_scale_f32 v92, s63, v50, v93, v50
	v_fmac_f32_e32 v85, v96, v85
	v_fma_f32 v94, -v95, v87, 1.0
	v_div_scale_f32 v96, null, v93, v93, v48
	v_div_fmas_f32 v82, v82, v90, v84
	v_fmac_f32_e32 v91, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v94, v87
	v_rcp_f32_e32 v84, v96
	v_div_scale_f32 v94, null, v93, v93, v47
	v_mul_f32_e32 v83, v92, v85
	v_div_scale_f32 v90, s61, v49, v93, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v94
	v_div_fixup_f32 v52, v82, v93, v52
	v_fma_f32 v82, -v99, v91, v89
	v_fma_f32 v89, -v88, v83, v92
	v_mul_f32_e32 v97, v90, v87
	v_fma_f32 v99, -v96, v84, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v91
	v_fmac_f32_e32 v83, v89, v85
	v_fma_f32 v86, -v95, v97, v90
	v_fmac_f32_e32 v84, v99, v84
	v_div_scale_f32 v89, s62, v48, v93, v48
	v_fma_f32 v91, -v94, v98, 1.0
	v_div_fixup_f32 v51, v82, v93, v51
	v_fma_f32 v82, -v88, v83, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v97, v86, v87 :: v_dual_mul_f32 v86, v89, v84
	v_fmac_f32_e32 v98, v91, v98
	v_div_scale_f32 v91, null, v93, v93, v46
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s64, v47, v93, v47
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v95, v97, v90
	v_fma_f32 v85, -v96, v86, v89
	v_rcp_f32_e32 v90, v91
	v_div_scale_f32 v95, null, v93, v93, v45
	v_mul_f32_e32 v92, v88, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v85, v95
	v_div_fmas_f32 v83, v83, v87, v97
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v50, v82, v93, v50
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v91, v90, 1.0
	v_fma_f32 v82, -v96, v86, v89
	v_div_fixup_f32 v49, v83, v93, v49
	v_fmac_f32_e32 v92, v87, v98
	v_div_scale_f32 v83, s61, v46, v93, v46
	v_fmac_f32_e32 v90, v97, v90
	v_fma_f32 v87, -v95, v85, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v96, null, v14, v14, v43
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v86, v83, v90
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, null, v14, v14, v44
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v88, s62, v45, v93, v45
	v_div_fmas_f32 v84, v84, v98, v92
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v92, -v91, v86, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v94, v88, v85
	v_div_fixup_f32 v48, v82, v93, v48
	v_div_fixup_f32 v47, v84, v93, v47
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v86, v92, v90
	v_fma_f32 v82, -v95, v94, v88
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v98, null, v14, v14, v41
	v_fma_f32 v92, -v87, v89, 1.0
	v_fma_f32 v83, -v91, v86, v83
	v_div_scale_f32 v91, null, v14, v14, v42
	v_fmac_f32_e32 v94, v82, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v92, v89
	v_fma_f32 v97, -v96, v84, 1.0
	v_rcp_f32_e32 v92, v91
	v_div_fmas_f32 v83, v83, v90, v86
	v_fma_f32 v86, -v95, v94, v88
	v_div_scale_f32 v90, s61, v43, v14, v43
	v_fmac_f32_e32 v84, v97, v84
	v_div_scale_f32 v82, s63, v44, v14, v44
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v100, v98
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v91, v92, 1.0
	v_mul_f32_e32 v99, v90, v84
	v_mul_f32_e32 v88, v82, v89
	v_div_fmas_f32 v85, v86, v85, v94
	v_div_fixup_f32 v46, v83, v93, v46
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, s64, v42, v14, v42
	v_fma_f32 v86, -v96, v99, v90
	v_fma_f32 v97, -v87, v88, v82
	v_div_fixup_f32 v45, v85, v93, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v95, v92
	v_fma_f32 v85, -v98, v100, 1.0
	v_fmac_f32_e32 v99, v86, v84
	v_div_scale_f32 v86, null, v14, v14, v40
	v_fma_f32 v83, -v91, v94, v95
	v_fmac_f32_e32 v88, v97, v89
	v_fmac_f32_e32 v100, v85, v100
	v_div_scale_f32 v85, s62, v41, v14, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v94, v83, v92
	v_rcp_f32_e32 v83, v86
	v_fma_f32 v82, -v87, v88, v82
	v_fma_f32 v87, -v96, v99, v90
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v89, v88
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v88, v85, v100
	v_div_fmas_f32 v84, v87, v84, v99
	v_fma_f32 v87, -v91, v94, v95
	v_div_scale_f32 v89, null, v14, v14, v39
	v_fma_f32 v90, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v44, v82, v14, v44
	v_div_fmas_f32 v87, v87, v92, v94
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v92, -v98, v88, v85
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s61, v40, v14, v40
	v_div_fixup_f32 v43, v84, v14, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v92, v100
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v82, v90, v83
	v_div_fixup_f32 v42, v87, v14, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v89, v91, 1.0
	v_fma_f32 v85, -v98, v88, v85
	v_div_scale_f32 v87, null, v14, v14, v38
	v_fma_f32 v92, -v86, v82, v90
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, s63, v39, v14, v39
	v_div_fmas_f32 v85, v85, v100, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v92, v83
	v_rcp_f32_e32 v93, v87
	v_mul_f32_e32 v88, v84, v91
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v41, v85, v14, v41
	v_fma_f32 v85, -v86, v82, v90
	v_div_scale_f32 v92, null, v14, v14, v37
	v_fma_f32 v86, -v89, v88, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v85, v83, v82
	v_div_scale_f32 v83, null, v14, v14, v36
	v_fma_f32 v90, -v87, v93, 1.0
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v88, v86, v91
	v_rcp_f32_e32 v86, v83
	v_div_scale_f32 v85, s61, v38, v14, v38
	v_fmac_f32_e32 v93, v90, v93
	v_div_scale_f32 v90, null, v14, v14, v35
	v_div_fixup_f32 v40, v82, v14, v40
	v_fma_f32 v84, -v89, v88, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v92, v94, 1.0
	v_rcp_f32_e32 v96, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v83, v86, 1.0
	v_mul_f32_e32 v89, v85, v93
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v94, v82, v94
	v_div_scale_f32 v82, s62, v37, v14, v37
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v14, v14, v34
	v_div_fmas_f32 v84, v84, v91, v88
	v_fma_f32 v88, -v87, v89, v85
	v_mul_f32_e32 v91, v82, v94
	v_div_scale_f32 v97, s63, v36, v14, v36
	v_fma_f32 v98, -v90, v96, 1.0
	v_rcp_f32_e32 v99, v95
	v_fmac_f32_e32 v89, v88, v93
	v_fma_f32 v88, -v92, v91, v82
	v_mul_f32_e32 v100, v97, v86
	v_fmac_f32_e32 v96, v98, v96
	v_div_scale_f32 v98, s64, v35, v14, v35
	v_div_fixup_f32 v39, v84, v14, v39
	v_fma_f32 v84, -v87, v89, v85
	v_fmac_f32_e32 v91, v88, v94
	v_fma_f32 v85, -v83, v100, v97
	v_mul_f32_e32 v87, v98, v96
	v_fma_f32 v88, -v95, v99, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v82, -v92, v91, v82
	v_fmac_f32_e32 v100, v85, v86
	v_fma_f32 v85, -v90, v87, v98
	v_fmac_f32_e32 v99, v88, v99
	v_div_scale_f32 v88, s61, v34, v14, v34
	v_div_fmas_f32 v84, v84, v93, v89
	v_div_scale_f32 v89, null, v14, v14, v33
	v_fma_f32 v83, -v83, v100, v97
	v_fmac_f32_e32 v87, v85, v96
	v_mul_f32_e32 v85, v88, v99
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v38, v84, v14, v38
	v_div_fmas_f32 v82, v82, v94, v91
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v91, v89
	v_div_fmas_f32 v83, v83, v86, v100
	v_fma_f32 v86, -v90, v87, v98
	v_fma_f32 v90, -v95, v85, v88
	v_div_fixup_f32 v37, v82, v14, v37
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v36, v83, v14, v36
	v_div_scale_f32 v83, null, v14, v14, v26
	v_fmac_f32_e32 v85, v90, v99
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v89, v91, 1.0
	v_div_fmas_f32 v86, v86, v96, v87
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v95, v85, v88
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, null, v14, v14, v32
	v_div_fixup_f32 v35, v86, v14, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v99, v85
	v_div_scale_f32 v87, vcc_lo, v33, v14, v33
	v_rcp_f32_e32 v85, v83
	v_rcp_f32_e32 v88, v84
	v_div_fixup_f32 v34, v82, v14, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v91
	v_div_scale_f32 v86, null, v14, v14, v31
	v_div_scale_f32 v93, null, v14, v14, v30
	v_fma_f32 v96, -v89, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v83, v85, 1.0
	v_fma_f32 v94, -v84, v88, 1.0
	v_rcp_f32_e32 v90, v86
	v_fmac_f32_e32 v92, v96, v91
	v_rcp_f32_e32 v95, v93
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, s61, v26, v14, v26
	v_fmac_f32_e32 v88, v94, v88
	v_div_scale_f32 v94, s62, v32, v14, v32
	v_fma_f32 v87, -v89, v92, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v98, v82, v85
	v_fma_f32 v97, -v86, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v100, v94, v88
	v_fma_f32 v99, -v93, v95, 1.0
	v_div_fmas_f32 v87, v87, v91, v92
	s_mov_b32 vcc_lo, s61
	s_mov_b32 s61, 0xc1000000
	v_fma_f32 v96, -v83, v98, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v84, v100, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v97, v90
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v103, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v96, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v105, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v89, v88
	v_div_scale_f32 v97, s63, v31, v14, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v83, v98, v82
	v_fmac_f32_e32 v95, v99, v95
	v_fma_f32 v84, -v84, v100, v94
	v_div_scale_f32 v99, s64, v30, v14, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v85, v98
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v100
	v_mul_f32_e32 v101, v97, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_cvt_i32_f32_e32 v104, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v102, v99, v95
	v_div_fixup_f32 v32, v84, v14, v32
	v_fma_f32 v96, -v86, v101, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v93, v102, v99
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v101, v96, v90
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v106, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v102, v83, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v86, v101, v97
	v_div_fixup_f32 v33, v87, v14, v33
	v_div_fixup_f32 v26, v82, v14, v26
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v109, v32
	v_and_b32_e32 v32, 15, v57
	v_and_b32_e32 v57, 15, v106
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v93, v102, v99
	v_div_fmas_f32 v83, v83, v90, v101
	s_mov_b32 vcc_lo, s64
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v95, v102
	v_div_fixup_f32 v31, v83, v14, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v80, v80, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v85, v14, v30
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s61, 0x40e00000
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_med3_f32 v62, v62, s61, 0x40e00000
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_med3_f32 v30, v30, s61, 0x40e00000
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_med3_f32 v45, v45, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v79, v79, s61, 0x40e00000
	v_cvt_i32_f32_e32 v83, v30
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_med3_f32 v61, v61, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v88, v62
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v45, v45
	v_and_b32_e32 v62, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v85, v70
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v91, v55
	v_cvt_i32_f32_e32 v95, v48
	v_and_b32_e32 v70, 15, v80
	v_and_b32_e32 v55, 15, v67
	v_and_b32_e32 v67, 15, v64
	v_and_b32_e32 v48, 15, v53
	v_and_b32_e32 v64, 15, v49
	v_and_b32_e32 v80, 15, v45
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v45, 13, v0
	v_lshlrev_b32_e32 v49, 8, v83
	v_and_b32_e32 v53, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_med3_f32 v77, v77, s61, 0x40e00000
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v26, v26, s61, 0x40e00000
	v_cvt_i32_f32_e32 v84, v74
	v_and_b32_e32 v74, 15, v79
	v_and_b32_e32 v79, 15, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v61, 0xe000, v45, v49
	v_xor_b32_e32 v8, v8, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v81
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v72, v72, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_med3_f32 v20, v20, s61, 0x40e00000
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_med3_f32 v22, v22, s61, 0x40e00000
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_med3_f32 v47, v47, s61, 0x40e00000
	v_med3_f32 v43, v43, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v98, v44
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v61, v29, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	v_med3_f32 v39, v39, s61, 0x40e00000
	v_med3_f32 v34, v34, s61, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v101, v40
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_med3_f32 v50, v50, s61, 0x40e00000
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_cvt_i32_f32_e32 v81, v18
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v82, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v89, v59
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v96, v47
	v_cvt_i32_f32_e32 v99, v43
	v_cvt_i32_f32_e32 v111, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v18, 15, v16
	v_and_b32_e32 v22, 15, v17
	v_and_b32_e32 v15, 15, v77
	v_and_b32_e32 v47, 15, v69
	v_and_b32_e32 v16, 15, v60
	v_and_b32_e32 v17, 15, v98
	v_and_b32_e32 v69, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v26, 0, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v33, v33, s61, 0x40e00000
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v102, v39
	v_cvt_i32_f32_e32 v107, v34
	v_and_b32_e32 v34, 15, v19
	v_and_b32_e32 v35, 15, v72
	v_and_b32_e32 v36, 15, v56
	v_and_b32_e32 v37, 15, v101
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v31, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v93, v51
	v_cvt_i32_f32_e32 v94, v50
	v_cvt_i32_f32_e32 v100, v42
	v_and_b32_e32 v38, 15, v20
	v_and_b32_e32 v42, 15, v21
	v_and_b32_e32 v50, 15, v23
	v_and_b32_e32 v19, 15, v76
	v_and_b32_e32 v51, 15, v68
	v_and_b32_e32 v20, 15, v89
	v_and_b32_e32 v52, 15, v52
	v_and_b32_e32 v21, 15, v99
	v_and_b32_e32 v53, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v26, v[14:17]
	ds_store_b128 v26, v[34:37] offset:256
	v_xad_u32 v14, v8, 16, 0
	v_lshlrev_b32_e32 v15, 6, v0
	v_cndmask_b32_e64 v16, 0x2010, 0, s3
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v66
	v_cvt_i32_f32_e32 v108, v33
	v_and_b32_e32 v66, 15, v75
	v_and_b32_e32 v39, 15, v71
	v_and_b32_e32 v40, 15, v91
	v_and_b32_e32 v68, 15, v95
	v_and_b32_e32 v33, 15, v41
	v_and_b32_e32 v41, 15, v102
	v_med3_f32 v24, v24, s61, 0x40e00000
	v_med3_f32 v25, v25, s61, 0x40e00000
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_med3_f32 v78, v78, s61, 0x40e00000
	v_med3_f32 v73, v73, s61, 0x40e00000
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	v_med3_f32 v46, v46, s61, 0x40e00000
	v_med3_f32 v31, v31, s61, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v26, v[50:53] offset:2048
	ds_store_b128 v26, v[66:69] offset:2304
	ds_store_b128 v14, v[18:21]
	ds_store_b128 v14, v[38:41] offset:256
	v_lshlrev_b32_e32 v18, 2, v83
	v_and_or_b32 v10, 0x300, v15, v10
	v_xor_b32_e32 v12, v16, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v90, v58
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v87, v63
	v_cvt_i32_f32_e32 v92, v54
	v_cvt_i32_f32_e32 v97, v46
	v_cvt_i32_f32_e32 v110, v31
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v10, v12, v10, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v24
	v_and_b32_e32 v58, 15, v25
	v_and_b32_e32 v23, 15, v84
	v_and_b32_e32 v59, 15, v86
	v_and_b32_e32 v63, 15, v65
	v_and_b32_e32 v24, 15, v90
	v_and_b32_e32 v56, 15, v93
	v_and_b32_e32 v60, 15, v94
	v_and_b32_e32 v25, 15, v100
	v_and_b32_e32 v61, 15, v107
	v_and_b32_e32 v65, 15, v108
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v17, v8, 32, 0
	v_xad_u32 v8, v8, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v30, 15, v81
	v_and_b32_e32 v78, 15, v78
	v_and_b32_e32 v31, 15, v73
	v_and_b32_e32 v43, 15, v85
	v_and_b32_e32 v71, 15, v87
	v_and_b32_e32 v75, 15, v88
	v_and_b32_e32 v44, 15, v92
	v_and_b32_e32 v72, 15, v96
	v_and_b32_e32 v76, 15, v97
	v_and_b32_e32 v45, 15, v103
	v_and_b32_e32 v73, 15, v109
	v_and_b32_e32 v77, 15, v110
	v_and_b32_e32 v81, 15, v111
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v12, 0, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v46, 15, v82
	v_and_b32_e32 v49, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v14, v[54:57] offset:2048
	ds_store_b128 v14, v[70:73] offset:2304
	ds_store_b128 v17, v[22:25]
	ds_store_b128 v17, v[42:45] offset:256
	ds_store_b128 v17, v[58:61] offset:2048
	ds_store_b128 v17, v[74:77] offset:2304
	ds_store_b128 v8, v[30:33]
	ds_store_b128 v8, v[46:49] offset:256
	ds_store_b128 v8, v[62:65] offset:2048
	ds_store_b128 v8, v[78:81] offset:2304
	v_xad_u32 v8, 0x4020, v10, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v12
	ds_load_b128 v[18:21], v12 offset:128
	ds_load_b128 v[22:25], v12 offset:4096
	ds_load_b128 v[29:32], v12 offset:4224
	v_xad_u32 v12, 0x8040, v10, 0
	ds_load_b128 v[33:36], v8
	ds_load_b128 v[37:40], v8 offset:128
	ds_load_b128 v[41:44], v8 offset:4096
	ds_load_b128 v[45:48], v8 offset:4224
	v_xad_u32 v8, 0xc060, v10, 0
	ds_load_b128 v[49:52], v12
	ds_load_b128 v[53:56], v12 offset:128
	ds_load_b128 v[57:60], v12 offset:4096
	ds_load_b128 v[61:64], v12 offset:4224
	ds_load_b128 v[65:68], v8 offset:4096
	ds_load_b128 v[69:72], v8
	ds_load_b128 v[73:76], v8 offset:128
	ds_load_b128 v[77:80], v8 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s3, s66, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s67, 0, s3
	v_add_co_u32 v81, s3, s66, v7
	v_add_co_ci_u32_e64 v82, null, s67, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s66, v7
	v_lshl_or_b32 v3, s77, 7, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[72:73], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[74:75], v[12:13]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v51, v59, 4, v51
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 4, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v65, v29, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 32, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v67, v31, 4, v20
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 34, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v10, v22, 4, v14
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v32, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 6, v4
	v_add_nc_u32_e32 v32, 36, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[81:82]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v81, v41, 4, v33
	v_lshl_or_b32 v69, v23, 4, v15
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 8, v4
	v_add_nc_u32_e32 v33, 38, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v61, v77, 4, v73
	v_lshl_or_b32 v73, v42, 4, v34
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v24, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v4
	v_add_nc_u32_e32 v34, 40, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v30, 4, v19
	v_lshl_or_b32 v54, v62, 4, v54
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v35
	v_lshl_or_b32 v71, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 12, v4
	v_add_nc_u32_e32 v35, 42, v4
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_mad_u64_u32 v[29:30], null, v29, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	v_lshl_or_b32 v63, v79, 4, v75
	v_lshl_or_b32 v75, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 14, v4
	v_add_nc_u32_e32 v36, 44, v4
	v_mad_u64_u32 v[12:13], null, v12, s72, v[3:4]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v19, 16, v4
	v_add_nc_u32_e32 v37, 46, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 18, v4
	v_add_nc_u32_e32 v38, 48, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 20, v4
	v_add_nc_u32_e32 v39, 50, v4
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 22, v4
	v_add_nc_u32_e32 v40, 52, v4
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	v_add_nc_u32_e32 v23, 24, v4
	v_add_nc_u32_e32 v41, 54, v4
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 26, v4
	v_add_nc_u32_e32 v42, 56, v4
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	v_add_nc_u32_e32 v25, 28, v4
	v_add_nc_u32_e32 v43, 58, v4
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v26, 30, v4
	v_add_nc_u32_e32 v44, 60, v4
	v_add_nc_u32_e32 v72, 62, v4
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_mad_u64_u32 v[41:42], null, v42, s72, v[3:4]
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	v_mad_u64_u32 v[42:43], null, v43, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v10, v6, s[64:67], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	v_mad_u64_u32 v[43:44], null, v44, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v72, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s61
	v_cndmask_b32_e32 v7, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v81, v4, s[64:67], 0 offen
	buffer_store_b8 v49, v6, s[64:67], 0 offen
	buffer_store_b8 v57, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	buffer_store_b8 v45, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v73, v8, s[64:67], 0 offen
	buffer_store_b8 v50, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v58, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v46, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	buffer_store_b8 v62, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v30, vcc_lo
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
	s_clause 0x4
	buffer_store_b8 v52, v4, s[64:67], 0 offen
	buffer_store_b8 v60, v6, s[64:67], 0 offen
	buffer_store_b8 v68, v7, s[64:67], 0 offen
	buffer_store_b8 v48, v8, s[64:67], 0 offen
	buffer_store_b8 v56, v10, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v83
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v28
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v7, 2, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s76, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v64, v3, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v4, v6, v7, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s76, s76, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s76, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v2, s77, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp88:
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
		.amdhsa_next_free_vgpr 198
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 198
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16368
; TotalNumSgprs: 80
; NumVgprs: 198
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 198
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
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
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
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
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     198
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
