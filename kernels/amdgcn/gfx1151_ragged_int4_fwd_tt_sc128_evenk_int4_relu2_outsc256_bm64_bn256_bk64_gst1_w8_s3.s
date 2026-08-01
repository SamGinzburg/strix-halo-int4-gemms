	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s76, s[0:1], 0x54
	s_load_b64 s[24:25], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_dual_mov_b32 v109, v0 :: v_dual_mov_b32 v8, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_and_b32_e32 v0, 0x7f, v109
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s76, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
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
	s_sub_i32 s5, s25, s4
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v109
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	v_add_co_u32 v2, s2, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s2
	v_add_nc_u32_e32 v173, s66, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[74:75], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s24, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v6, 0x7f, v109
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v106, 0x80, v109
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v105, 15, v109
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s3, 0, v106
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v80, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s8, s66, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s8
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_clause 0x1
	s_load_b32 s27, s[0:1], 0x58
	s_load_b32 s25, s[0:1], 0x50
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[74:75], v[1:2]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s66, v105
	v_cndmask_b32_e64 v35, 0x88, 0, s3
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s6, s4
	s_addc_u32 s9, s7, s5
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v2, v1, s24
	v_xor_b32_e32 v0, v35, v0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s9, s[8:9], 0x0
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v36, 5, v105
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v105, off offset:400
	scratch_store_b32 off, v0, off offset:104
	v_add_nc_u32_e32 v119, 0, v105
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v2, off offset:372 ; 4-byte Folded Spill
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[3:4]
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v4, 32, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v2, v2, s24
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v1, 48, v1
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v3, 5, v109
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_lshl_b32 s20, s77, 8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[7:8]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[74:75], v[7:8]
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:376
	scratch_store_b32 off, v106, off offset:404
	v_or_b32_e32 v2, s20, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	s_and_b32 s5, s6, s8
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v23, 0x58, v2
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_and_b32_e32 v1, 0xe0, v109
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s27, s76
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v34, 1, v109
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v41, 0xf0, v109
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v42, 5, v109
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s7, s24, s9
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s6, s9
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v19, 0x78, v2
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v3, v4, s24
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v11, 0xb8, v2
	v_or_b32_e32 v18, 0x80, v2
	v_or_b32_e32 v20, 0x70, v2
	v_mad_u64_u32 v[95:96], null, v23, s27, s[6:7]
	v_or_b32_e32 v17, 0x88, v2
	v_and_b32_e32 v37, 24, v34
	v_lshlrev_b32_e32 v44, 2, v41
	v_and_b32_e32 v42, 32, v42
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	v_or_b32_e32 v33, 8, v2
	v_or_b32_e32 v15, 0x98, v2
	v_or_b32_e32 v32, 16, v2
	v_mad_u64_u32 v[128:129], null, v19, s27, s[6:7]
	v_or_b32_e32 v9, 0xc8, v2
	v_or_b32_e32 v14, 0xa0, v2
	v_or_b32_e32 v31, 24, v2
	v_mad_u64_u32 v[93:94], null, v20, s27, s[6:7]
	v_mad_u64_u32 v[129:130], null, v18, s27, s[6:7]
	v_mad_u64_u32 v[91:92], null, v11, s27, s[6:7]
	v_or_b32_e32 v5, 0xe8, v2
	v_or_b32_e32 v8, 0xd0, v2
	v_or_b32_e32 v13, 0xa8, v2
	v_or_b32_e32 v21, 0x68, v2
	v_or_b32_e32 v30, 32, v2
	v_and_b32_e32 v34, 28, v34
	v_mad_u64_u32 v[130:131], null, v17, s27, s[6:7]
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v92, 0
	v_or3_b32 v117, v36, v37, v1
	v_xor_b32_e32 v36, 0x110, v0
	v_or_b32_e32 v0, s20, v109
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v19, 0
	v_add3_u32 v42, 0, v44, v42
	v_or_b32_e32 v4, 0xf0, v2
	v_or_b32_e32 v7, 0xd8, v2
	v_or_b32_e32 v12, 0xb0, v2
	v_or_b32_e32 v29, 40, v2
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:380
	scratch_store_b32 off, v0, off offset:388
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xf8, v2
	v_or_b32_e32 v6, 0xe0, v2
	v_or_b32_e32 v10, 0xc0, v2
	v_or_b32_e32 v16, 0x90, v2
	v_or_b32_e32 v22, 0x60, v2
	v_or_b32_e32 v24, 0x50, v2
	v_or_b32_e32 v25, 0x48, v2
	v_or_b32_e32 v26, 64, v2
	v_or_b32_e32 v27, 56, v2
	v_or_b32_e32 v28, 48, v2
	v_mad_u64_u32 v[110:111], null, v33, s27, s[6:7]
	v_mad_u64_u32 v[111:112], null, v32, s27, s[6:7]
	v_mad_u64_u32 v[132:133], null, v15, s27, s[6:7]
	v_mad_u64_u32 v[112:113], null, v31, s27, s[6:7]
	v_mad_u64_u32 v[133:134], null, v14, s27, s[6:7]
	v_mad_u64_u32 v[138:139], null, v9, s27, s[6:7]
	v_or_b32_e32 v38, 0x300, v109
	v_or_b32_e32 v39, 0x700, v109
	v_or_b32_e32 v1, 0x3f0, v109
	v_or_b32_e32 v35, 0x7f0, v109
	v_xor_b32_e32 v37, 8, v117
	v_xor_b32_e32 v40, 16, v117
	v_xor_b32_e32 v43, 24, v117
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v41, 1, v41
	v_mad_u64_u32 v[113:114], null, v30, s27, s[6:7]
	v_mad_u64_u32 v[174:175], null, v21, s27, s[6:7]
	v_mad_u64_u32 v[134:135], null, v13, s27, s[6:7]
	v_mad_u64_u32 v[139:140], null, v8, s27, s[6:7]
	v_mad_u64_u32 v[144:145], null, v5, s27, s[6:7]
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v0, v42, v34
	v_mov_b32_e32 v23, 0
	v_mad_u64_u32 v[114:115], null, v29, s27, s[6:7]
	v_mad_u64_u32 v[135:136], null, v12, s27, s[6:7]
	v_mad_u64_u32 v[140:141], null, v7, s27, s[6:7]
	v_mad_u64_u32 v[145:146], null, v4, s27, s[6:7]
	v_mad_u64_u32 v[81:82], null, v2, s27, s[6:7]
	v_mad_u64_u32 v[115:116], null, v28, s27, s[6:7]
	v_mad_u64_u32 v[120:121], null, v27, s27, s[6:7]
	v_mad_u64_u32 v[97:98], null, v26, s27, s[6:7]
	v_mad_u64_u32 v[79:80], null, v25, s27, s[6:7]
	v_mad_u64_u32 v[65:66], null, v24, s27, s[6:7]
	v_mad_u64_u32 v[124:125], null, v22, s27, s[6:7]
	v_mad_u64_u32 v[89:90], null, v16, s27, s[6:7]
	v_mad_u64_u32 v[136:137], null, v10, s27, s[6:7]
	v_mad_u64_u32 v[141:142], null, v6, s27, s[6:7]
	v_mad_u64_u32 v[146:147], null, v3, s27, s[6:7]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v168, 6, v109
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v118, 0, v38
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v143, 0, v39
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v161, 0, v1
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v166, 0, v35
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v170, 0, v36
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v116, 0, v37
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v103, 0, v40
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v86, 0, v43
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v0, 0, v41
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v147, 0, v109
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v90, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v46, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_mov_b32 s26, 0
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	s_and_b32 s17, s19, 0xffff
	s_mov_b32 s16, s18
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:396
	scratch_store_b32 off, v109, off offset:108
	scratch_store_b32 off, v86, off offset:112
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v106, off offset:368
	scratch_store_b32 off, v105, off offset:364
	scratch_store_b32 off, v104, off offset:360
	scratch_store_b32 off, v96, off offset:356
	scratch_store_b32 off, v94, off offset:352
	scratch_store_b32 off, v92, off offset:348
	scratch_store_b32 off, v90, off offset:344
	scratch_store_b32 off, v88, off offset:340
	scratch_store_b32 off, v87, off offset:336
	scratch_store_b32 off, v84, off offset:332
	scratch_store_b32 off, v83, off offset:328
	scratch_store_b32 off, v82, off offset:324
	scratch_store_b32 off, v80, off offset:320
	scratch_store_b32 off, v78, off offset:316
	scratch_store_b32 off, v77, off offset:312
	scratch_store_b32 off, v76, off offset:308
	scratch_store_b32 off, v75, off offset:304
	scratch_store_b32 off, v17, off offset:300
	scratch_store_b32 off, v18, off offset:296
	scratch_store_b32 off, v19, off offset:292
	scratch_store_b32 off, v20, off offset:288
	scratch_store_b32 off, v21, off offset:284
	scratch_store_b32 off, v22, off offset:280
	scratch_store_b32 off, v23, off offset:276
	scratch_store_b32 off, v24, off offset:272
	scratch_store_b32 off, v25, off offset:268
	scratch_store_b32 off, v26, off offset:264
	scratch_store_b32 off, v27, off offset:260
	scratch_store_b32 off, v28, off offset:256
	scratch_store_b32 off, v29, off offset:252
	scratch_store_b32 off, v30, off offset:248
	scratch_store_b32 off, v31, off offset:244
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v32, off offset:240
	scratch_store_b32 off, v33, off offset:236
	scratch_store_b32 off, v34, off offset:232
	scratch_store_b32 off, v35, off offset:228
	scratch_store_b32 off, v36, off offset:224
	scratch_store_b32 off, v37, off offset:220
	scratch_store_b32 off, v38, off offset:216
	scratch_store_b32 off, v39, off offset:212
	scratch_store_b32 off, v40, off offset:208
	scratch_store_b32 off, v41, off offset:204
	scratch_store_b32 off, v42, off offset:200
	scratch_store_b32 off, v43, off offset:196
	scratch_store_b32 off, v74, off offset:192
	scratch_store_b32 off, v73, off offset:188
	scratch_store_b32 off, v72, off offset:184
	scratch_store_b32 off, v71, off offset:180
	scratch_store_b32 off, v44, off offset:176
	scratch_store_b32 off, v70, off offset:172
	scratch_store_b32 off, v69, off offset:168
	scratch_store_b32 off, v68, off offset:164
	scratch_store_b32 off, v67, off offset:160
	scratch_store_b32 off, v66, off offset:156
	scratch_store_b32 off, v54, off offset:152
	scratch_store_b32 off, v53, off offset:148
	scratch_store_b32 off, v52, off offset:144
	scratch_store_b32 off, v51, off offset:140
	scratch_store_b32 off, v50, off offset:136
	scratch_store_b32 off, v49, off offset:132
	scratch_store_b32 off, v48, off offset:128
	scratch_store_b32 off, v47, off offset:124
	scratch_store_b32 off, v46, off offset:120
	scratch_store_b32 off, v45, off offset:116
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s6, s26, 6
	s_mov_b32 s18, -1
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v0
	v_dual_mov_b32 v12, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v0
	v_dual_mov_b32 v14, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
	s_mov_b32 s19, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s19, s19, s6
	s_clause 0xc                            ; 104-byte Folded Spill
	scratch_store_b64 off, v[65:66], off offset:96
	scratch_store_b64 off, v[132:133], off offset:88
	scratch_store_b64 off, v[97:98], off offset:80
	scratch_store_b64 off, v[130:131], off offset:72
	scratch_store_b64 off, v[81:82], off offset:64
	scratch_store_b64 off, v[140:141], off offset:56
	scratch_store_b64 off, v[136:137], off offset:48
	scratch_store_b64 off, v[93:94], off offset:40
	scratch_store_b64 off, v[91:92], off offset:32
	scratch_store_b64 off, v[124:125], off offset:24
	scratch_store_b64 off, v[95:96], off offset:16
	scratch_store_b64 off, v[89:90], off offset:8
	scratch_store_b64 off, v[79:80], off
	v_or_b32_e32 v98, s19, v168
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s18
	s_mov_b32 s18, 0
	v_mov_b32_e32 v84, v111
	v_mov_b32_e32 v86, v113
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[173:174]
	v_dual_mov_b32 v87, v114 :: v_dual_mov_b32 v88, v115
	v_mov_b32_e32 v80, v135
	v_mov_b32_e32 v94, v138
	v_mov_b32_e32 v92, v139
	v_mov_b32_e32 v82, v103
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v100, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 4, v168
	v_mov_b32_e32 v90, v133
	v_mov_b32_e32 v172, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[173:174]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v101, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 8, v168
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[173:174]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v104, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 12, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[173:174]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v105, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 16, v168
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[173:174]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v106, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 20, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[173:174]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v107, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 24, v168
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[173:174]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v108, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 28, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[173:174]
	.loc	1 1131 28                       ; ragged.py:1131:28
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v99, 31, v109
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v99, s19, v99
	v_mov_b32_e32 v85, v112
	v_mov_b32_e32 v83, v110
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	v_mov_b32_e32 v103, v116
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v109, v81, v99
	v_add_nc_u32_e32 v111, v84, v99
	v_add_nc_u32_e32 v112, v85, v99
	v_add_nc_u32_e32 v110, v83, v99
	v_add_nc_u32_e32 v113, v86, v99
	v_add_nc_u32_e32 v114, v87, v99
	v_add_nc_u32_e32 v115, v88, v99
	v_add_nc_u32_e32 v116, v120, v99
	v_dual_mov_b32 v96, v120 :: v_dual_add_nc_u32 v121, v79, v99
	v_add_nc_u32_e32 v120, v97, v99
	v_add_nc_u32_e32 v122, v65, v99
	v_add_nc_u32_e32 v123, v95, v99
	v_add_nc_u32_e32 v124, v124, v99
	v_add_nc_u32_e32 v125, v174, v99
	v_add_nc_u32_e32 v126, v93, v99
	v_add_nc_u32_e32 v127, v128, v99
	v_dual_mov_b32 v95, v128 :: v_dual_add_nc_u32 v128, v129, v99
	v_mov_b32_e32 v65, v147
	v_mov_b32_e32 v97, v129
	v_add_nc_u32_e32 v129, v130, v99
	v_dual_mov_b32 v79, v144 :: v_dual_add_nc_u32 v130, v89, v99
	v_add_nc_u32_e32 v131, v132, v99
	v_dual_mov_b32 v93, v134 :: v_dual_add_nc_u32 v132, v133, v99
	v_add_nc_u32_e32 v136, v136, v99
	v_add_nc_u32_e32 v137, v138, v99
	v_add_nc_u32_e32 v138, v139, v99
	v_add_nc_u32_e32 v139, v140, v99
	v_add_nc_u32_e32 v140, v141, v99
	v_add_nc_u32_e32 v141, v144, v99
	v_mov_b32_e32 v89, v146
	v_add_nc_u32_e32 v133, v134, v99
	v_add_nc_u32_e32 v134, v135, v99
	v_add_nc_u32_e32 v135, v91, v99
	v_mov_b32_e32 v91, v145
	v_add_nc_u32_e32 v142, v145, v99
	v_add_nc_u32_e32 v99, v146, v99
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v151, v109, s[12:15], 0 offen
	buffer_load_u8 v186, v110, s[12:15], 0 offen
	buffer_load_u8 v152, v111, s[12:15], 0 offen
	buffer_load_u8 v187, v112, s[12:15], 0 offen
	buffer_load_u8 v153, v113, s[12:15], 0 offen
	buffer_load_u8 v188, v114, s[12:15], 0 offen
	buffer_load_u8 v154, v115, s[12:15], 0 offen
	buffer_load_u8 v189, v116, s[12:15], 0 offen
	buffer_load_u8 v155, v120, s[12:15], 0 offen
	buffer_load_u8 v190, v121, s[12:15], 0 offen
	buffer_load_u8 v156, v122, s[12:15], 0 offen
	buffer_load_u8 v191, v123, s[12:15], 0 offen
	buffer_load_u8 v157, v124, s[12:15], 0 offen
	buffer_load_u8 v192, v125, s[12:15], 0 offen
	buffer_load_u8 v158, v126, s[12:15], 0 offen
	buffer_load_u8 v193, v127, s[12:15], 0 offen
	buffer_load_u8 v159, v128, s[12:15], 0 offen
	buffer_load_u8 v194, v129, s[12:15], 0 offen
	buffer_load_u8 v160, v130, s[12:15], 0 offen
	buffer_load_u8 v195, v131, s[12:15], 0 offen
	buffer_load_u8 v163, v132, s[12:15], 0 offen
	buffer_load_u8 v196, v133, s[12:15], 0 offen
	buffer_load_u8 v165, v134, s[12:15], 0 offen
	buffer_load_u8 v197, v135, s[12:15], 0 offen
	buffer_load_u8 v167, v136, s[12:15], 0 offen
	buffer_load_u8 v198, v137, s[12:15], 0 offen
	buffer_load_u8 v169, v138, s[12:15], 0 offen
	buffer_load_u8 v199, v139, s[12:15], 0 offen
	buffer_load_u8 v171, v140, s[12:15], 0 offen
	buffer_load_u8 v200, v141, s[12:15], 0 offen
	buffer_load_u8 v176, v142, s[12:15], 0 offen
	buffer_load_u8 v201, v99, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v99, v100, s[20:23], 0 offen
	buffer_load_u8 v100, v101, s[20:23], 0 offen
	buffer_load_u8 v101, v104, s[20:23], 0 offen
	buffer_load_u8 v104, v106, s[20:23], 0 offen
	buffer_load_u8 v106, v107, s[20:23], 0 offen
	buffer_load_u8 v107, v108, s[20:23], 0 offen
	buffer_load_u8 v98, v98, s[20:23], 0 offen
	buffer_load_u8 v105, v105, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s19, 32
	s_waitcnt vmcnt(7)
	ds_store_b8 v147, v99
	s_waitcnt vmcnt(6)
	ds_store_b8 v147, v100 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v147, v101 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v147, v104 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v147, v106 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v105
	ds_store_b8 v147, v107 offset:1536
	ds_store_b8 v143, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v177, v119 offset:192
	ds_load_u8 v178, v119 offset:128
	ds_load_u8 v179, v119 offset:208
	ds_load_u8 v180, v119 offset:144
	ds_load_u8 v236, v119 offset:224
	ds_load_u8 v239, v119 offset:160
	ds_load_u8 v133, v119 offset:240
	ds_load_u8 v136, v119 offset:176
	ds_load_u8 v181, v119 offset:448
	ds_load_u8 v182, v119 offset:384
	ds_load_u8 v183, v119 offset:464
	ds_load_u8 v185, v119 offset:400
	ds_load_u8 v150, v119 offset:480
	ds_load_u8 v102, v119 offset:416
	ds_load_u8 v146, v119 offset:496
	ds_load_u8 v147, v119 offset:432
	ds_load_u8 v0, v119 offset:320
	ds_load_u8 v81, v119 offset:256
	ds_load_u8 v164, v119 offset:336
	ds_load_u8 v66, v119 offset:272
	ds_load_u8 v67, v119 offset:352
	ds_load_u8 v68, v119 offset:288
	ds_load_u8 v148, v119 offset:368
	ds_load_u8 v149, v119 offset:304
	ds_load_u8 v69, v119 offset:64
	ds_load_u8 v70, v119 offset:80
	ds_load_u8 v71, v119 offset:96
	ds_load_u8 v72, v119 offset:112
	ds_load_u8 v73, v119
	ds_load_u8 v74, v119 offset:16
	ds_load_u8 v75, v119 offset:32
	ds_load_u8 v76, v119 offset:48
	ds_load_u8 v230, v119 offset:960
	ds_load_u8 v233, v119 offset:896
	ds_load_u8 v202, v119 offset:1024
	ds_load_u8 v224, v119 offset:976
	ds_load_u8 v227, v119 offset:912
	ds_load_u8 v213, v119 offset:992
	ds_load_u8 v216, v119 offset:928
	ds_load_u8 v208, v119 offset:944
	ds_load_u8 v134, v119 offset:832
	ds_load_u8 v175, v119 offset:768
	ds_load_u8 v251, v119 offset:848
	ds_load_u8 v255, v119 offset:784
	ds_load_u8 v237, v119 offset:864
	ds_load_u8 v240, v119 offset:800
	ds_load_u8 v222, v119 offset:880
	ds_load_u8 v225, v119 offset:816
	ds_load_u8 v121, v119 offset:704
	ds_load_u8 v124, v119 offset:640
	ds_load_u8 v98, v119 offset:720
	ds_load_u8 v108, v119 offset:656
	ds_load_u8 v99, v119 offset:736
	ds_load_u8 v100, v119 offset:672
	ds_load_u8 v248, v119 offset:752
	ds_load_u8 v253, v119 offset:688
	ds_load_u8 v142, v119 offset:576
	ds_load_u8 v144, v119 offset:512
	ds_load_u8 v135, v119 offset:592
	ds_load_u8 v138, v119 offset:528
	ds_load_u8 v126, v119 offset:608
	ds_load_u8 v128, v119 offset:544
	ds_load_u8 v116, v119 offset:624
	ds_load_u8 v123, v119 offset:560
	ds_load_u8 v226, v119 offset:1216
	ds_load_u8 v235, v119 offset:1280
	ds_load_u8 v214, v119 offset:1232
	ds_load_u8 v218, v119 offset:1168
	ds_load_u8 v209, v119 offset:1248
	ds_load_u8 v211, v119 offset:1184
	ds_load_u8 v205, v119 offset:1264
	ds_load_u8 v207, v119 offset:1200
	ds_load_u8 v250, v119 offset:1152
	ds_load_u8 v101, v119 offset:1088
	ds_load_u8 v238, v119 offset:1104
	ds_load_u8 v242, v119 offset:1040
	ds_load_u8 v229, v119 offset:1120
	ds_load_u8 v231, v119 offset:1056
	ds_load_u8 v220, v119 offset:1136
	ds_load_u8 v223, v119 offset:1072
	ds_load_u8 v125, v119 offset:1472
	ds_load_u8 v203, v119 offset:1536
	ds_load_u8 v109, v119 offset:1488
	ds_load_u8 v112, v119 offset:1424
	ds_load_u8 v104, v119 offset:1504
	ds_load_u8 v107, v119 offset:1440
	ds_load_u8 v244, v119 offset:1520
	ds_load_u8 v249, v119 offset:1456
	ds_load_u8 v162, v119 offset:1408
	ds_load_u8 v145, v119 offset:1344
	ds_load_u8 v139, v119 offset:1360
	ds_load_u8 v140, v119 offset:1296
	ds_load_u8 v129, v119 offset:1376
	ds_load_u8 v131, v119 offset:1312
	ds_load_u8 v113, v119 offset:1392
	ds_load_u8 v120, v119 offset:1328
	ds_load_u8 v228, v119 offset:1984
	ds_load_u8 v215, v119 offset:2000
	ds_load_u8 v219, v119 offset:1936
	ds_load_u8 v210, v119 offset:2016
	ds_load_u8 v212, v119 offset:1952
	ds_load_u8 v77, v161
	ds_load_u8 v204, v166
	ds_load_u8 v206, v119 offset:1968
	ds_load_u8 v254, v119 offset:1920
	ds_load_u8 v105, v119 offset:1856
	ds_load_u8 v243, v119 offset:1872
	ds_load_u8 v246, v119 offset:1808
	ds_load_u8 v232, v119 offset:1888
	ds_load_u8 v234, v119 offset:1824
	ds_load_u8 v217, v119 offset:1904
	ds_load_u8 v221, v119 offset:1840
	ds_load_u8 v111, v119 offset:1728
	ds_load_u8 v127, v119 offset:1792
	ds_load_u8 v106, v119 offset:1744
	ds_load_u8 v184, v119 offset:1680
	ds_load_u8 v247, v119 offset:1760
	ds_load_u8 v252, v119 offset:1696
	ds_load_u8 v241, v119 offset:1776
	ds_load_u8 v245, v119 offset:1712
	ds_load_u8 v137, v119 offset:1664
	ds_load_u8 v141, v119 offset:1600
	ds_load_u8 v130, v119 offset:1616
	ds_load_u8 v132, v119 offset:1552
	ds_load_u8 v115, v119 offset:1632
	ds_load_u8 v122, v119 offset:1568
	ds_load_u8 v110, v119 offset:1648
	ds_load_u8 v114, v119 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v78, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v81, v0, 0xc0c0004
	v_perm_b32 v69, v73, v69, 0xc0c0004
	v_perm_b32 v73, v178, v177, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, 0, v78
	ds_store_b8 v78, v151
	ds_store_b8 v78, v152 offset:512
	ds_store_b8 v78, v153 offset:1024
	ds_store_b8 v78, v154 offset:1536
	ds_store_b8 v78, v155 offset:2048
	ds_store_b8 v78, v156 offset:2560
	ds_store_b8 v78, v157 offset:3072
	ds_store_b8 v78, v158 offset:3584
	ds_store_b8 v78, v159 offset:4096
	ds_store_b8 v78, v160 offset:4608
	ds_store_b8 v78, v163 offset:5120
	ds_store_b8 v78, v165 offset:5632
	ds_store_b8 v78, v167 offset:6144
	ds_store_b8 v78, v169 offset:6656
	ds_store_b8 v78, v171 offset:7168
	ds_store_b8 v78, v176 offset:7680
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v78, v182, v181, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_store_b8 v170, v186
	ds_store_b8 v170, v187 offset:512
	ds_store_b8 v170, v188 offset:1024
	ds_store_b8 v170, v189 offset:1536
	ds_store_b8 v170, v190 offset:2048
	ds_store_b8 v170, v191 offset:2560
	ds_store_b8 v170, v192 offset:3072
	ds_store_b8 v170, v193 offset:3584
	ds_store_b8 v170, v194 offset:4096
	ds_store_b8 v170, v195 offset:4608
	ds_store_b8 v170, v196 offset:5120
	ds_store_b8 v170, v197 offset:5632
	ds_store_b8 v170, v198 offset:6144
	ds_store_b8 v170, v199 offset:6656
	ds_store_b8 v170, v200 offset:7168
	ds_store_b8 v170, v201 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v151, v73, 16, v69
	v_lshl_or_b32 v152, v78, 16, v0
	v_perm_b32 v0, v66, v164, 0xc0c0004
	v_perm_b32 v66, v185, v183, 0xc0c0004
	v_perm_b32 v69, v74, v70, 0xc0c0004
	v_perm_b32 v70, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v154, v66, 16, v0
	v_perm_b32 v0, v68, v67, 0xc0c0004
	v_perm_b32 v66, v102, v150, 0xc0c0004
	v_perm_b32 v67, v75, v71, 0xc0c0004
	v_perm_b32 v68, v239, v236, 0xc0c0004
	v_lshl_or_b32 v153, v70, 16, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v156, v66, 16, v0
	v_perm_b32 v0, v149, v148, 0xc0c0004
	v_perm_b32 v66, v147, v146, 0xc0c0004
	v_lshl_or_b32 v155, v68, 16, v67
	v_perm_b32 v67, v76, v72, 0xc0c0004
	v_perm_b32 v68, v136, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v158, v66, 16, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v0, 0, v117
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v66, v233, v230, 0xc0c0004
	v_lshl_or_b32 v157, v68, 16, v67
	v_perm_b32 v67, v144, v142, 0xc0c0004
	v_perm_b32 v68, v124, v121, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[146:149], v0 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v175, v134, 0xc0c0004
	v_mov_b32_e32 v144, v79
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[146:147], v[151:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[146:147], v[153:154], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[146:147], v[155:156], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[146:147], v[157:158], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v147, v66, 16, v0
	v_perm_b32 v0, v255, v251, 0xc0c0004
	v_perm_b32 v66, v227, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[148:149], v[151:152], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[148:149], v[153:154], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[148:149], v[155:156], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[148:149], v[157:158], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v146, v68, 16, v67
	v_perm_b32 v67, v138, v135, 0xc0c0004
	v_perm_b32 v68, v108, v98, 0xc0c0004
	v_lshl_or_b32 v149, v66, 16, v0
	v_perm_b32 v0, v240, v237, 0xc0c0004
	v_perm_b32 v66, v216, v213, 0xc0c0004
	v_mov_b32_e32 v138, v94
	v_lshl_or_b32 v148, v68, 16, v67
	v_perm_b32 v68, v100, v99, 0xc0c0004
	v_perm_b32 v67, v128, v126, 0xc0c0004
	v_lshl_or_b32 v99, v66, 16, v0
	v_perm_b32 v0, v123, v116, 0xc0c0004
	v_mov_b32_e32 v116, v103
	v_perm_b32 v66, v253, v248, 0xc0c0004
	v_lshl_or_b32 v98, v68, 16, v67
	v_perm_b32 v67, v225, v222, 0xc0c0004
	v_perm_b32 v68, v208, v77, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[133:136], v116 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v123, v66, 16, v0
	v_perm_b32 v0, v235, v145, 0xc0c0004
	v_perm_b32 v66, v162, v125, 0xc0c0004
	v_lshl_or_b32 v124, v68, 16, v67
	v_perm_b32 v67, v202, v101, 0xc0c0004
	v_perm_b32 v68, v250, v226, 0xc0c0004
	v_mov_b32_e32 v103, v82
	v_mov_b32_e32 v145, v91
	v_mov_b32_e32 v128, v95
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[133:134], v[123:124], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[135:136], v[123:124], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v66, 16, v0
	v_perm_b32 v0, v140, v139, 0xc0c0004
	v_perm_b32 v66, v112, v109, 0xc0c0004
	v_lshl_or_b32 v123, v68, 16, v67
	v_perm_b32 v67, v242, v238, 0xc0c0004
	v_perm_b32 v68, v218, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[146:147], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v66, 16, v0
	v_perm_b32 v0, v131, v129, 0xc0c0004
	v_perm_b32 v66, v107, v104, 0xc0c0004
	v_lshl_or_b32 v108, v68, 16, v67
	v_perm_b32 v67, v231, v229, 0xc0c0004
	v_perm_b32 v68, v211, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[146:147], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v126, v66, 16, v0
	v_perm_b32 v0, v120, v113, 0xc0c0004
	v_perm_b32 v66, v249, v244, 0xc0c0004
	v_lshl_or_b32 v125, v68, 16, v67
	v_perm_b32 v67, v223, v220, 0xc0c0004
	v_perm_b32 v68, v207, v205, 0xc0c0004
	v_mov_b32_e32 v147, v65
	v_lshl_or_b32 v113, v66, 16, v0
	scratch_load_b64 v[65:66], off, off offset:96 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[33:40], v[133:134], v[98:99], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v68, 16, v67
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[66:67], off, off offset:40
	scratch_load_b64 v[68:69], off, off offset:56
	v_wmma_i32_16x16x16_iu4 v[41:48], v[135:136], v[98:99], v[41:48] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[98:101], v82 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[148:149], v[25:32] neg_lo:[1,1,0]
	scratch_load_b64 v[81:82], off, off offset:64 ; 8-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_perm_b32 v67, v203, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[148:149], v[17:24] neg_lo:[1,1,0]
	v_dual_mov_b32 v135, v80 :: v_dual_mov_b32 v134, v93
	v_perm_b32 v0, v127, v105, 0xc0c0004
	v_dual_mov_b32 v146, v89 :: v_dual_mov_b32 v133, v90
	v_mov_b32_e32 v120, v96
	v_mov_b32_e32 v139, v92
	v_mov_b32_e32 v141, v172
	v_mov_b32_e32 v129, v97
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[112:113], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[112:113], v[57:64] neg_lo:[1,1,0]
	v_mov_b32_e32 v113, v86
	scratch_load_b32 v86, off, off offset:112 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[125:126], v[33:40] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[79:80], off, off
	scratch_load_b64 v[97:98], off, off offset:80
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[123:124], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[108:109], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[125:126], v[41:48] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[124:125], off, off offset:24
	scratch_load_b64 v[95:96], off, off offset:16
	v_dual_mov_b32 v112, v85 :: v_dual_mov_b32 v93, v66
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v140, v68
	v_perm_b32 v68, v137, v111, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[136:137], off, off offset:48
	scratch_load_b64 v[69:70], off, off offset:32
	v_perm_b32 v66, v254, v228, 0xc0c0004
	v_lshl_or_b32 v104, v68, 16, v67
	v_perm_b32 v67, v132, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v105, v66, 16, v0
	v_perm_b32 v0, v246, v243, 0xc0c0004
	v_perm_b32 v66, v219, v215, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[89:90], off, off offset:8
	scratch_load_b64 v[130:131], off, off offset:72
	v_lshl_or_b32 v107, v66, 16, v0
	v_perm_b32 v0, v234, v232, 0xc0c0004
	v_perm_b32 v66, v212, v210, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v66, 16, v0
	v_perm_b32 v0, v114, v110, 0xc0c0004
	v_perm_b32 v66, v245, v241, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(6)
	ds_load_2addr_stride64_b64 v[98:101], v86 offset1:8
	v_mov_b32_e32 v114, v87
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v110, v66, 16, v0
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[104:105], v[9:16] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v91, v69
	scratch_load_b64 v[68:69], off, off offset:88 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v132, v68
	v_perm_b32 v68, v184, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v106, v68, 16, v67
	v_perm_b32 v67, v122, v115, 0xc0c0004
	v_perm_b32 v68, v252, v247, 0xc0c0004
	v_mov_b32_e32 v115, v88
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[106:107], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v108, v68, 16, v67
	v_perm_b32 v67, v221, v217, 0xc0c0004
	v_perm_b32 v68, v206, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[108:109], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[108:109], v[41:48] neg_lo:[1,1,0]
	scratch_load_b32 v109, off, off offset:108 ; 4-byte Folded Reload
	v_lshl_or_b32 v111, v68, 16, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[110:111], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[110:111], v[57:64] neg_lo:[1,1,0]
	v_dual_mov_b32 v111, v84 :: v_dual_mov_b32 v110, v83
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:372
	scratch_load_b32 v66, off, off offset:376
	scratch_load_b32 v67, off, off offset:380
	scratch_load_b32 v68, off, off offset:384
	scratch_load_b32 v69, off, off offset:388
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s6, s26, s7
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s18, s10
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s6, s76
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s19, s11
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v101, v13
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	v_cvt_f32_i32_e32 v74, v5
	v_cvt_f32_i32_e32 v75, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v77, v8
	v_cvt_f32_i32_e32 v78, v9
	v_cvt_f32_i32_e32 v98, v10
	v_cvt_f32_i32_e32 v99, v11
	v_cvt_f32_i32_e32 v100, v12
	v_cvt_f32_i32_e32 v102, v14
	v_cvt_f32_i32_e32 v104, v15
	v_cvt_f32_i32_e32 v105, v16
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s26, v0, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v66, s26, v66, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v67, s26, v67, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v68, s26, v68, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v69, v69, s6, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s4
	v_cndmask_b32_e64 v68, 0x80000000, v68, s5
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v66, v66, s[8:11], 0 offen
	buffer_load_u16 v67, v67, s[8:11], 0 offen
	buffer_load_u16 v68, v68, s[8:11], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s26, s26, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s26, s24
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v17, v17, v66 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v70, v0
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v70, v71, v0 :: v_dual_lshlrev_b32 v67, 16, v67
	v_dual_mul_f32 v71, v72, v0 :: v_dual_mul_f32 v18, v18, v66
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v13, off, off offset:396
	scratch_load_b32 v82, off, off offset:324
	scratch_load_b32 v90, off, off offset:344
	scratch_load_b32 v80, off, off offset:320
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v72, v73, v0
	v_dual_mul_f32 v73, v74, v0 :: v_dual_mul_f32 v20, v20, v66
	v_dual_mul_f32 v74, v75, v0 :: v_dual_mul_f32 v21, v21, v66
	v_dual_mul_f32 v75, v76, v0 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v19, v19, v66 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_mul_f32 v76, v77, v0 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v77, v78, v0 :: v_dual_mul_f32 v24, v24, v66
	v_dual_mul_f32 v78, v98, v0 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v98, v99, v0 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v99, v100, v0 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v100, v101, v0 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v101, v102, v0 :: v_dual_mul_f32 v28, v28, v66
	scratch_load_b32 v106, off, off offset:368 ; 4-byte Folded Reload
	v_dual_mul_f32 v102, v104, v0 :: v_dual_mul_f32 v31, v31, v66
	v_dual_mul_f32 v0, v105, v0 :: v_dual_mul_f32 v35, v35, v67
	scratch_load_b32 v105, off, off offset:364 ; 4-byte Folded Reload
	v_dual_mul_f32 v30, v30, v66 :: v_dual_mul_f32 v33, v33, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:360
	scratch_load_b32 v96, off, off offset:356
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v37, v37, v67
	scratch_load_b32 v94, off, off offset:352 ; 4-byte Folded Reload
	v_dual_mul_f32 v45, v45, v67 :: v_dual_mul_f32 v56, v56, v68
	scratch_load_b32 v92, off, off offset:348 ; 4-byte Folded Reload
	v_dual_mul_f32 v34, v34, v67 :: v_dual_mul_f32 v49, v49, v68
	scratch_load_b32 v88, off, off offset:340 ; 4-byte Folded Reload
	v_dual_mul_f32 v38, v38, v67 :: v_dual_mul_f32 v53, v53, v68
	scratch_load_b32 v87, off, off offset:336 ; 4-byte Folded Reload
	v_dual_mul_f32 v36, v36, v67 :: v_dual_mul_f32 v51, v51, v68
	scratch_load_b32 v84, off, off offset:332 ; 4-byte Folded Reload
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v58, v58, v68
	scratch_load_b32 v83, off, off offset:328 ; 4-byte Folded Reload
	v_dual_mul_f32 v39, v39, v67 :: v_dual_mul_f32 v50, v50, v68
	v_dual_mul_f32 v40, v40, v67 :: v_dual_mul_f32 v55, v55, v68
	v_dual_mul_f32 v44, v44, v67 :: v_dual_mul_f32 v59, v59, v68
	v_dual_mul_f32 v41, v41, v67 :: v_dual_mul_f32 v52, v52, v68
	v_dual_mul_f32 v42, v42, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v43, v43, v67 :: v_dual_mul_f32 v54, v54, v68
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v61, v61, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v63, v63, v68
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(13)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:156
	scratch_load_b32 v67, off, off offset:160
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(13) lgkmcnt(2)
	v_fmac_f32_e32 v90, v75, v7
	scratch_load_b32 v75, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v66, v54, v6
	scratch_load_b32 v54, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v67, v53, v5
	scratch_load_b32 v53, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v75, v17, v1
	scratch_load_b32 v17, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v54, v55, v7 :: v_dual_fmac_f32 v53, v56, v8
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v18, v2
	scratch_load_b32 v18, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v19, v3
	scratch_load_b32 v19, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v19, v20, v4
	scratch_load_b32 v20, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v20, v21, v5
	scratch_load_b32 v21, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v21, v22, v6
	scratch_load_b32 v22, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v22, v23, v7
	scratch_load_b32 v23, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v23, v24, v8
	scratch_load_b32 v24, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_fmac_f32_e32 v24, v25, v9
	scratch_load_b32 v25, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v25, v26, v10
	scratch_load_b32 v26, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v27, v11
	scratch_load_b32 v27, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v27, v28, v12
	scratch_load_b32 v28, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fmac_f32_e32 v28, v29, v13
	scratch_load_b32 v29, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v60, v60, v68 :: v_dual_fmac_f32 v105, v70, v2
	scratch_load_b32 v70, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v29, v30, v14
	scratch_load_b32 v30, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v30, v31, v15
	scratch_load_b32 v31, off, off offset:244 ; 4-byte Folded Reload
	v_fmac_f32_e32 v104, v71, v3
	scratch_load_b32 v71, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v31, v32, v16
	scratch_load_b32 v32, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v71, v48, v16
	scratch_load_b32 v48, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v32, v33, v1
	scratch_load_b32 v33, off, off offset:236 ; 4-byte Folded Reload
	v_fmac_f32_e32 v96, v72, v4
	scratch_load_b32 v72, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v33, v34, v2
	scratch_load_b32 v34, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v34, v35, v3
	scratch_load_b32 v35, off, off offset:228 ; 4-byte Folded Reload
	v_fmac_f32_e32 v94, v73, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v62, v62, v68 :: v_dual_fmac_f32 v87, v77, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:312
	scratch_load_b32 v73, off, off offset:188
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v35, v36, v4
	scratch_load_b32 v36, off, off offset:224 ; 4-byte Folded Reload
	v_fmac_f32_e32 v84, v78, v10
	scratch_load_b32 v78, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v73, v46, v14
	scratch_load_b32 v46, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v36, v37, v5
	scratch_load_b32 v37, off, off offset:220 ; 4-byte Folded Reload
	v_fmac_f32_e32 v88, v76, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v64, v64, v68 :: v_dual_fmac_f32 v83, v98, v11
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:308
	scratch_load_b32 v68, off, off offset:164
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v50, v2
	scratch_load_b32 v50, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v37, v38, v6
	scratch_load_b32 v38, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v68, v52, v4
	scratch_load_b32 v52, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v38, v39, v7
	scratch_load_b32 v39, off, off offset:212 ; 4-byte Folded Reload
	v_fmac_f32_e32 v92, v74, v6
	scratch_load_b32 v74, off, off offset:192 ; 4-byte Folded Reload
	v_fmac_f32_e32 v80, v100, v13
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v39, v40, v8
	scratch_load_b32 v40, off, off offset:208 ; 4-byte Folded Reload
	v_fmac_f32_e32 v78, v101, v14
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v74, v45, v13
	scratch_load_b32 v45, off, off offset:116 ; 4-byte Folded Reload
	v_fmac_f32_e32 v46, v63, v15
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v40, v41, v9
	scratch_load_b32 v41, off, off offset:204 ; 4-byte Folded Reload
	v_fmac_f32_e32 v82, v99, v12
	v_dual_fmac_f32 v106, v69, v1 :: v_dual_fmac_f32 v77, v102, v15
	scratch_load_b32 v69, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v45, v64, v16
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v41, v42, v10
	scratch_load_b32 v42, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v69, v51, v3
	scratch_load_b32 v51, off, off offset:140 ; 4-byte Folded Reload
	v_fmac_f32_e32 v52, v57, v9
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v42, v43, v11
	scratch_load_b32 v43, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v76, v0, v16 :: v_dual_fmac_f32 v51, v58, v10
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v44, v12
	scratch_load_b32 v44, off, off offset:176 ; 4-byte Folded Reload
	v_fmac_f32_e32 v72, v47, v15
	scratch_load_b32 v47, off, off offset:124 ; 4-byte Folded Reload
	v_fmac_f32_e32 v48, v61, v13
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v44, v49, v1
	scratch_load_b32 v49, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v50, v59, v11 :: v_dual_fmac_f32 v47, v62, v14
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v49, v60, v12
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v38, v38, v38
	v_dual_max_f32 v4, v94, v94 :: v_dual_max_f32 v5, v92, v92
	v_max_f32_e32 v8, v87, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v38, 0, v38
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v40, v40, v40
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v6, v90, v90
	v_max_f32_e32 v7, v88, v88
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v11, v82, v82 :: v_dual_max_f32 v62, 0, v40
	v_max_f32_e32 v79, 0, v41
	v_dual_max_f32 v81, 0, v42 :: v_dual_max_f32 v82, 0, v43
	v_dual_max_f32 v40, v74, v74 :: v_dual_max_f32 v41, v73, v73
	v_dual_max_f32 v42, v72, v72 :: v_dual_max_f32 v43, v71, v71
	v_max_f32_e32 v44, v44, v44
	v_dual_max_f32 v0, v106, v106 :: v_dual_max_f32 v1, v105, v105
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, v84, v84
	v_dual_max_f32 v10, v83, v83 :: v_dual_max_f32 v13, v78, v78
	v_dual_max_f32 v83, 0, v40 :: v_dual_max_f32 v84, 0, v41
	v_dual_max_f32 v85, 0, v42 :: v_dual_max_f32 v86, 0, v43
	v_dual_max_f32 v87, 0, v44 :: v_dual_max_f32 v40, v70, v70
	v_dual_max_f32 v41, v69, v69 :: v_dual_max_f32 v44, v66, v66
	v_dual_max_f32 v2, v104, v104 :: v_dual_max_f32 v1, 0, v1
	v_max_f32_e32 v3, v96, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v89, 0, v41 :: v_dual_max_f32 v92, 0, v44
	v_max_f32_e32 v44, v50, v50
	v_max_f32_e32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v42, v68, v68 :: v_dual_max_f32 v43, v67, v67
	v_max_f32_e32 v88, 0, v40
	v_dual_max_f32 v40, v54, v54 :: v_dual_max_f32 v97, 0, v44
	v_dual_max_f32 v44, v45, v45 :: v_dual_mul_f32 v63, v0, v0
	v_dual_max_f32 v16, v75, v75 :: v_dual_max_f32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v75, v6, v6 :: v_dual_max_f32 v102, 0, v44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:408
	scratch_load_b32 v105, off, off offset:400
	scratch_load_b32 v106, off, off offset:404
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v14, v77, v77 :: v_dual_max_f32 v15, v76, v76
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	v_max_f32_e32 v28, v28, v28
	v_dual_max_f32 v90, 0, v42 :: v_dual_max_f32 v41, v53, v53
	v_dual_max_f32 v91, 0, v43 :: v_dual_max_f32 v42, v52, v52
	v_dual_max_f32 v43, v51, v51 :: v_dual_max_f32 v12, v80, v80
	v_max_f32_e32 v9, 0, v9
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max_f32_e32 v19, 0, v19
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
	v_max_f32_e32 v29, 0, v29
	v_dual_max_f32 v93, 0, v40 :: v_dual_max_f32 v96, 0, v43
	v_dual_max_f32 v43, v46, v46 :: v_dual_max_f32 v94, 0, v41
	v_dual_max_f32 v95, 0, v42 :: v_dual_max_f32 v40, v49, v49
	v_dual_max_f32 v41, v48, v48 :: v_dual_max_f32 v42, v47, v47
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v99, 0, v41 :: v_dual_max_f32 v100, 0, v42
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v73, v5, v5
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v101, 0, v43 :: v_dual_max_f32 v98, 0, v40
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v67, v2, v2 :: v_dual_mul_f32 v80, v1, v1
	v_mul_f32_e32 v71, v11, v11
	v_dual_mul_f32 v68, v3, v3 :: v_dual_mul_f32 v77, v9, v9
	v_dual_mul_f32 v72, v4, v4 :: v_dual_mul_f32 v69, v13, v13
	v_dual_mul_f32 v76, v7, v7 :: v_dual_mul_f32 v61, v16, v16
	v_dual_mul_f32 v78, v8, v8 :: v_dual_mul_f32 v59, v18, v18
	v_dual_mul_f32 v74, v10, v10 :: v_dual_mul_f32 v57, v20, v20
	v_dual_mul_f32 v70, v12, v12 :: v_dual_mul_f32 v55, v22, v22
	v_dual_mul_f32 v66, v14, v14 :: v_dual_mul_f32 v53, v24, v24
	v_dual_mul_f32 v64, v15, v15 :: v_dual_mul_f32 v51, v26, v26
	v_dual_mul_f32 v60, v17, v17 :: v_dual_mul_f32 v49, v28, v28
	v_dual_mul_f32 v58, v19, v19 :: v_dual_mul_f32 v47, v30, v30
	v_dual_mul_f32 v56, v21, v21 :: v_dual_mul_f32 v45, v32, v32
	v_dual_mul_f32 v54, v23, v23 :: v_dual_mul_f32 v43, v34, v34
	v_dual_mul_f32 v52, v25, v25 :: v_dual_mul_f32 v41, v36, v36
	v_mul_f32_e32 v50, v27, v27
	v_mul_f32_e32 v48, v29, v29
	v_dual_mul_f32 v46, v31, v31 :: v_dual_mul_f32 v27, v86, v86
	v_mul_f32_e32 v44, v33, v33
	v_dual_mul_f32 v42, v35, v35 :: v_dual_mul_f32 v23, v89, v89
	v_dual_mul_f32 v40, v37, v37 :: v_dual_mul_f32 v25, v87, v87
	v_dual_mul_f32 v38, v38, v38 :: v_dual_mul_f32 v19, v91, v91
	v_dual_mul_f32 v37, v39, v39 :: v_dual_mul_f32 v36, v62, v62
	v_mul_f32_e32 v17, v93, v93
	v_dual_mul_f32 v35, v79, v79 :: v_dual_mul_f32 v34, v81, v81
	v_mul_f32_e32 v21, v90, v90
	v_dual_mul_f32 v33, v82, v82 :: v_dual_mul_f32 v32, v83, v83
	v_dual_mul_f32 v13, v97, v97 :: v_dual_mul_f32 v30, v84, v84
	v_dual_mul_f32 v15, v95, v95 :: v_dual_mul_f32 v28, v85, v85
	v_dual_mul_f32 v11, v99, v99 :: v_dual_mul_f32 v24, v88, v88
	v_dual_mul_f32 v9, v101, v101 :: v_dual_mul_f32 v18, v92, v92
	v_dual_mov_b32 v5, v173 :: v_dual_mul_f32 v16, v94, v94
	v_mul_f32_e32 v14, v96, v96
	v_mul_f32_e32 v12, v98, v98
	v_mul_f32_e32 v10, v100, v100
	v_mul_f32_e32 v8, v102, v102
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v7, 7, v106
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v75, v76, v78
	s_mov_b32 s27, 0x76543210
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v62, 8, v109
	v_lshrrev_b32_e32 v85, 3, v106
.Ltmp5:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v7
	v_or_b32_e32 v3, 60, v7
	v_or_b32_e32 v20, 58, v7
	v_or_b32_e32 v22, 36, v7
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s0
	v_add_co_u32 v3, s0, s66, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s0
	v_add_co_u32 v81, s1, s66, v20
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[74:75], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s66, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 54, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s7
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v7
	v_or_b32_e32 v20, 50, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s7, s66, v3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[74:75], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s11, s66, v0
	v_add_co_ci_u32_e64 v4, null, s67, 0, s7
	v_add_co_ci_u32_e64 v2, null, s67, 0, s11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v81, s11, s66, v20
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[72:73], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 46, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[74:75], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s15, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s15
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 44, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s15, s66, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 42, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s15
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[74:75], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s19, s66, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[74:75], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s19
	v_add_co_u32 v81, s19, s66, v20
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[72:73], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[74:75], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 38, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[74:75], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s23, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s23
	v_add_co_u32 v83, s23, s66, v3
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v80, v80 :: v_dual_max_f32 v3, v63, v63
.Ltmp9:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[74:75], v[1:2]
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v68, v72, v73
	v_max3_f32 v2, v77, v74, v71
	v_dual_max_f32 v0, v3, v0 :: v_dual_max_f32 v31, v45, v45
	v_max3_f32 v3, v70, v69, v66
	v_dual_max_f32 v4, v60, v60 :: v_dual_max_f32 v39, v25, v25
	v_dual_max_f32 v20, v61, v61 :: v_dual_max_f32 v29, v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v0, v0, v67, v1
	v_max3_f32 v1, v2, v3, v64
	v_max3_f32 v3, v58, v57, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v2, v20, v4
	v_max3_f32 v4, v52, v51, v50
	v_max3_f32 v20, v49, v48, v47
	v_max3_f32 v0, v0, v26, v1
	v_max3_f32 v1, v55, v54, v53
	v_max3_f32 v2, v2, v59, v3
	v_max3_f32 v26, v35, v34, v33
	v_max3_f32 v3, v4, v20, v46
	v_dual_max_f32 v4, v31, v29 :: v_dual_max_f32 v31, v24, v24
	v_max3_f32 v20, v42, v41, v40
	v_max3_f32 v29, v32, v30, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v2, v2, v1, v3
	v_max3_f32 v1, v38, v37, v36
.Ltmp11:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[72:73], v[81:82]
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v4, v43, v20
	v_max3_f32 v4, v26, v29, v27
	v_max_f32_e32 v20, v39, v31
	v_max3_f32 v26, v21, v19, v18
	v_max3_f32 v29, v14, v13, v12
	v_max3_f32 v31, v11, v10, v9
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v39, v0, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v1, v4
	v_max3_f32 v1, v17, v16, v15
	v_max3_f32 v4, v20, v23, v26
	v_max3_f32 v20, v29, v31, v8
	v_max_f32_e32 v26, v39, v39
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v29, v2, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v3, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[74:75], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s28, s66, v22
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v29, v29 :: v_dual_lshlrev_b32 v79, 1, v106
	v_max_f32_e32 v29, v31, v31
	v_max3_f32 v4, v4, v1, v20
	v_dual_max_f32 v1, v0, v26 :: v_dual_and_b32 v0, 3, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v2, v2, v22 :: v_dual_max_f32 v3, v3, v29
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v20, v4, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v26, 4, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v31, v0, 9, 0
	v_lshlrev_b32_e32 v39, 5, v0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v20, v20, v20 :: v_dual_lshlrev_b32 v29, 4, v109
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v22, 0x60, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v31, v26, 2, v31
	v_lshl_add_u32 v86, v26, 6, 0
	v_and_or_b32 v65, 0x680, v29, v39
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v20
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v39, v39, v22
	v_lshl_add_u32 v31, v62, 4, v31
	s_barrier
	v_xor_b32_e32 v65, v65, v22
.Ltmp23:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v20, v31, v79, v39
.Ltmp25:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v31, 34, v7
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v39, v86, v85, v65
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[81:82]
.Ltmp28:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v20, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v39
.Ltmp29:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 32, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v85, s27, s66, v31
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v31, 30, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[83:84]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s33, s66, v20
	v_add_co_ci_u32_e64 v86, null, s67, 0, s27
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s33
	v_add_co_u32 v83, s33, s66, v31
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v39, 28, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[81:82]
.Ltmp30:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v31, v2
	v_mov_b32_e32 v65, v3
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v4, v4
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v31, v31
	v_max_f32_e32 v65, v65, v65
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v31, v2, v31
	v_max_f32_e32 v3, v3, v65
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[83:84]
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v79, v4
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v81, v31
.Ltmp44:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[83:84]
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
.Ltmp46:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[85:86]
.Ltmp47:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v65, v3 :: v_dual_max_f32 v20, v1, v20
.Ltmp48:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s37, s66, v39
	v_add_co_ci_u32_e64 v2, null, s67, 0, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v39, v20
.Ltmp50:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[1:2]
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp51:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v81, v81
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v65, v65 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v79, v4
.Ltmp54:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s76, s65
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v39, v39
	v_max_f32_e32 v2, v31, v2
.Ltmp56:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v39, 26, v7
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v20, v1
	v_max_f32_e32 v20, v65, v65
.Ltmp59:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s39, s66, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v82, null, s67, 0, s39
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp61:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[81:82]
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v65, v2 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v31, v79, v79
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v79, 24, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v65 :: v_dual_mov_b32 v39, v1
	v_max_f32_e32 v4, v4, v31
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v65, 1, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s40, s66, v79
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v31, v4
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s40
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[72:73], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v39
	v_max_f32_e32 v39, v31, v31
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v31, 4, v0
	v_lshlrev_b32_e32 v0, 3, v62
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v20 :: v_dual_add_nc_u32 v62, 0, v106
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v20, 5, v26
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v39
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v26, 0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v62, v65, v0
.Ltmp79:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v62, 22, v7
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v26, v20, v0
	ds_store_b128 v39, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp81:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s40, s66, v62
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v0
.Ltmp83:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 20, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s40
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[74:75], v[81:82]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 18, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v81, s45, s66, v0
	v_add_co_ci_u32_e64 v82, null, s67, 0, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v83, s45, s66, v20
	v_add_co_ci_u32_e64 v84, null, s67, 0, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[74:75], v[81:82]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v20, 12, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[72:73], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[74:75], v[83:84]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[72:73], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v1, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[74:75], v[85:86]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s49, s66, v1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s49, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v84, null, s67, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s49, s66, v20
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v20, 10, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s49
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[74:75], v[81:82]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v81, s55, s66, v20
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v20, 8, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v39, -v26, v1, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[72:73], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[74:75], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s55, s66, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v1, v39, v1
	v_div_scale_f32 v39, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s55
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[74:75], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_dual_max_f32 v82, 0x2b8cbccc, v2 :: v_dual_max_f32 v3, 0x2b8cbccc, v3
	v_mul_f32_e32 v20, v39, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[72:73], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[74:75], v[83:84]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v81, 6, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v62, null, 0x40e00000, 0x40e00000, v3
	v_fma_f32 v79, -v26, v20, v39
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[72:73], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[74:75], v[85:86]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v65, v62
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v20, v79, v1 :: v_dual_max_f32 v79, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v82
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v26, -v26, v20, v39
	v_div_scale_f32 v39, s61, v3, 0x40e00000, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v2, -v62, v65, 1.0
	v_rcp_f32_e32 v83, v4
	v_div_fmas_f32 v20, v26, v1, v20
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v2, v65
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s59, s66, v81
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v20, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v84
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v4, v83, 1.0
	v_mul_f32_e32 v26, v39, v65
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[74:75], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v81, v83
	v_fma_f32 v20, -v62, v26, v39
	v_div_scale_f32 v81, s62, v82, 0x40e00000, v82
	v_fma_f32 v88, -v84, v85, 1.0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v26, v20, v65 :: v_dual_mul_f32 v87, v81, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v86.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v62, v26, v39
	v_div_scale_f32 v39, s63, v79, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v4, v87, v81
	v_div_fmas_f32 v1, v1, v65, v26
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v20, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v0, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v88, v85
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v88, 0xffff0000, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v26, v39, v85
	v_fma_f32 v2, -v4, v87, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v65, null, v88, v88, v63
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v84, v26, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v2, v2, v83, v87
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v88, v88, v68
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v3, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s66, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v84, v26, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v88, v88, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s61
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v39, v85, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, vcc_lo, v63, v88, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v65, v0, 1.0
	v_rcp_f32_e32 v83, v82
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v79, v26, 0x40e00000, v79
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v26.l, v2.h
	v_mov_b16_e32 v26.h, v86.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v39, v0
	v_div_scale_f32 v91, s61, v80, v88, v80
	v_div_scale_f32 v95, null, v88, v88, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v85, v84, v0 :: v_dual_and_b32 v62, 1, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v79.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, null, v88, v88, v67
	v_div_scale_f32 v96, null, v88, v88, v73
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v81, 1, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v65, v85, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v89, v87
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v39, 2, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v86, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v62, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v62, -v82, v83, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v26, 1, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v90
	v_fma_f32 v65, -v65, v85, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v89, 1.0
	v_fmac_f32_e32 v83, v62, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v26, 0x7fff
	v_add3_u32 v2, v79, v81, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v65, v0, v85
	v_rcp_f32_e32 v85, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v92, v91, v83 :: v_dual_and_b32 v81, 0xffff0000, v26
	v_fma_f32 v94, -v90, v86, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v63, v0, v88, v63
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v84, -v82, v92, v91
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v89, v93, v89 :: v_dual_and_b32 v62, 0xffff0000, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v95, v85, 1.0
	v_fmac_f32_e32 v92, v84, v83
	v_fmac_f32_e32 v86, v94, v86
	v_div_scale_f32 v94, s63, v68, v88, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v97, v85
	v_fma_f32 v0, -v82, v92, v91
	v_rcp_f32_e32 v91, v96
	v_div_scale_f32 v93, s62, v67, v88, v67
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v83, v92
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v72, v88, v72
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v20.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v96, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v82, v94, v86 :: v_dual_fmac_f32 v91, v97, v91
	v_fma_f32 v83, -v90, v82, v94
	v_div_scale_f32 v97, null, v88, v88, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v86
	v_div_scale_f32 v83, s64, v73, v88, v73
	v_mul_f32_e32 v84, v93, v89
	v_fma_f32 v65, -v87, v84, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v65, v89
	v_div_fixup_f32 v65, v0, v88, v80
	v_fma_f32 v0, -v87, v84, v93
	v_div_scale_f32 v87, null, v88, v88, v75
	v_mul_f32_e32 v93, v83, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v89, v84
	v_fma_f32 v84, -v90, v82, v94
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v90, v87
	v_div_scale_f32 v94, null, v88, v88, v76
	v_div_fmas_f32 v82, v84, v86, v82
	v_div_fixup_f32 v67, v0, v88, v67
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v94
	v_fma_f32 v86, -v96, v93, v83
	v_div_fixup_f32 v68, v82, v88, v68
	v_div_scale_f32 v82, s62, v75, v88, v75
	v_dual_mul_f32 v80, v92, v85 :: v_dual_fmac_f32 v93, v86, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v95, v80, v92
	v_fma_f32 v86, -v94, v84, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v89, v85
	v_fma_f32 v89, -v87, v90, 1.0
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s61, v76, v88, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v95, v80, v92
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, null, v88, v88, v78
	v_div_scale_f32 v92, null, v88, v88, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v85, v80
	v_rcp_f32_e32 v85, v89
	v_fma_f32 v80, -v96, v93, v83
	s_mov_b32 vcc_lo, s64
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v72, v0, v88, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v80, v80, v91, v93
	v_mul_f32_e32 v93, v86, v84
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v95, -v89, v85, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v73, v80, v88, v73
	v_fma_f32 v0, -v94, v93, v86
	v_div_scale_f32 v80, s63, v78, v88, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v95, v85
	v_mul_f32_e32 v83, v82, v90
	v_fmac_f32_e32 v93, v0, v84
	v_fma_f32 v95, -v92, v96, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v91, -v87, v83, v82
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s64, v77, v88, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v91, v90
	v_div_scale_f32 v91, null, v88, v88, v74
	v_fma_f32 v82, -v87, v83, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v87, v91
	v_div_fmas_f32 v82, v82, v90, v83
	v_fma_f32 v83, -v94, v93, v86
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v90, v95, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v75, v82, v88, v75
	v_fma_f32 v94, -v91, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v0, v80, v85 :: v_dual_fmac_f32 v87, v94, v87
	v_fma_f32 v86, -v89, v0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v0, v86, v85
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v97
	v_fma_f32 v86, -v92, v90, v95
	v_div_scale_f32 v93, s61, v74, v88, v74
	v_div_fixup_f32 v76, v83, v88, v76
	v_fma_f32 v80, -v89, v0, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v86, v96
	v_mul_f32_e32 v82, v93, v87
	v_div_scale_f32 v86, null, v88, v88, v70
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v97, v84, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s62, v71, v88, v71
	v_div_fmas_f32 v0, v80, v85, v0
	v_fma_f32 v80, -v92, v90, v95
	v_fma_f32 v85, -v91, v82, v93
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v88, v88, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v78, v0, v88, v78
	v_rcp_f32_e32 v85, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v0, -v91, v82, v93
	v_div_scale_f32 v91, s63, v70, v88, v70
	v_fma_f32 v94, -v86, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v83, v94, v83
	v_div_fmas_f32 v80, v80, v96, v90
	v_mul_f32_e32 v90, v89, v84
	v_fma_f32 v93, -v92, v85, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v88, v88, v66
	v_div_fixup_f32 v77, v80, v88, v77
	v_fma_f32 v80, -v97, v90, v89
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v93, null, v88, v88, v64
	v_div_fmas_f32 v0, v0, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v80, v84
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v96, v93
	v_rcp_f32_e32 v82, v94
	v_div_fixup_f32 v74, v0, v88, v74
	v_fma_f32 v0, -v97, v90, v89
	v_div_scale_f32 v87, s61, v69, v88, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v84, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v95, v87, v85
	v_fma_f32 v90, -v93, v96, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v71, v0, v88, v71
	v_fma_f32 v84, -v92, v95, v87
	v_fmac_f32_e32 v96, v90, v96
	v_mul_f32_e32 v80, v91, v83
	v_fmac_f32_e32 v82, v97, v82
	v_div_scale_f32 v90, null, v81, v81, v61
	v_fmac_f32_e32 v95, v84, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v86, v80, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v89, v83
	v_div_scale_f32 v89, s62, v66, v88, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v86, v80, v91
	v_mul_f32_e32 v84, v89, v82
	v_div_scale_f32 v86, s64, v64, v88, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v83, v80
	v_fma_f32 v80, -v92, v95, v87
	v_fma_f32 v83, -v94, v84, v89
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v92, null, v81, v81, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v96 :: v_dual_fmac_f32 v84, v83, v82
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v80, v80, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v93, v91, v86
	v_div_fixup_f32 v70, v0, v88, v70
	v_fma_f32 v95, -v90, v87, 1.0
	v_fma_f32 v0, -v94, v84, v89
	v_div_fixup_f32 v69, v80, v88, v69
	v_fmac_f32_e32 v91, v85, v96
	v_div_scale_f32 v80, s61, v61, v81, v61
	v_fmac_f32_e32 v87, v95, v87
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v89, null, v81, v81, v59
	v_div_fmas_f32 v0, v0, v82, v84
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v84, v80, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v86, s62, v60, v81, v60
	s_mov_b32 vcc_lo, s64
	v_rcp_f32_e32 v85, v89
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v90, v84, v80
	v_mul_f32_e32 v94, v86, v83
	v_div_fixup_f32 v66, v0, v88, v66
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v93, null, v81, v81, v58
	v_fmac_f32_e32 v84, v91, v87
	v_fma_f32 v0, -v92, v94, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v89, v85, 1.0
	v_rcp_f32_e32 v96, v93
	v_div_fixup_f32 v64, v82, v88, v64
	v_fma_f32 v80, -v90, v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v0, v83 :: v_dual_fmac_f32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v56
	v_div_fmas_f32 v80, v80, v87, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v92, v94, v86
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v82, s63, v59, v81, v59
	v_div_scale_f32 v88, null, v81, v81, v57
	v_div_fmas_f32 v83, v84, v83, v94
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v91, -v93, v96, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v90, v88
	v_div_fixup_f32 v61, v80, v81, v61
	v_div_fixup_f32 v60, v83, v81, v60
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s64, v58, v81, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v95, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v87, v91, v96
	v_fma_f32 v92, -v88, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v83, v84
	v_mul_f32_e32 v0, v82, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s61, v57, v81, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v89, v0, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v86, v85
	v_fma_f32 v86, -v93, v87, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v89, v0, v82
	v_fmac_f32_e32 v87, v86, v96
	v_div_scale_f32 v86, null, v81, v81, v55
	v_mul_f32_e32 v82, v92, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v80, v85, v0
	v_fma_f32 v80, -v93, v87, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v91, null, v81, v81, v54
	v_fma_f32 v85, -v88, v82, v92
	v_div_scale_f32 v89, s62, v56, v81, v56
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v59, v0, v81, v59
	v_fmac_f32_e32 v82, v85, v90
	v_rcp_f32_e32 v85, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v80, v80, v96, v87
	v_mul_f32_e32 v87, v89, v84
	v_fma_f32 v0, -v88, v82, v92
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v81, v81, v53
	v_div_fixup_f32 v58, v80, v81, v58
	v_fma_f32 v80, -v95, v87, v89
	v_div_scale_f32 v88, s63, v55, v81, v55
	v_fma_f32 v92, -v91, v85, 1.0
	v_div_fmas_f32 v0, v0, v90, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v87, v80, v84
	v_mul_f32_e32 v80, v88, v83
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v90, s61, v54, v81, v54
	v_div_scale_f32 v92, null, v81, v81, v52
	v_div_fixup_f32 v57, v0, v81, v57
	v_fma_f32 v0, -v95, v87, v89
	v_fma_f32 v89, -v86, v80, v88
	v_mul_f32_e32 v94, v90, v85
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v80, v89, v83
	v_div_fmas_f32 v0, v0, v84, v87
	v_fma_f32 v84, -v91, v94, v90
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v87, s62, v53, v81, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v56, v0, v81, v56
	v_fma_f32 v89, -v92, v95, 1.0
	v_fma_f32 v0, -v86, v80, v88
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v84, v87, v82
	v_div_scale_f32 v88, null, v81, v81, v51
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v86, s64, v52, v81, v52
	v_div_fmas_f32 v0, v0, v83, v80
	v_fma_f32 v80, -v91, v94, v90
	v_fma_f32 v83, -v93, v84, v87
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v91, null, v81, v81, v50
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v80, v80, v85, v94
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v55, v0, v81, v55
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v0, -v93, v84, v87
	v_div_fixup_f32 v54, v80, v81, v54
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v80, s61, v51, v81, v51
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v83, 1.0
	v_div_scale_f32 v87, null, v81, v81, v49
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v96, null, v81, v81, v46
	v_div_fmas_f32 v0, v0, v82, v84
	v_fma_f32 v82, -v92, v90, v86
	v_dual_mul_f32 v84, v80, v89 :: v_dual_fmac_f32 v83, v85, v83
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v86, s62, v50, v81, v50
	v_div_scale_f32 v92, null, v81, v81, v48
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v93, v86, v83
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v88, v84, v80
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v85, 1.0
	v_div_fixup_f32 v53, v0, v81, v53
	v_fma_f32 v0, -v91, v93, v86
	v_fmac_f32_e32 v84, v90, v89
	v_div_fixup_f32 v52, v82, v81, v52
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s63, v49, v81, v49
	v_div_scale_f32 v90, null, v81, v81, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v80, -v88, v84, v80
	v_fmac_f32_e32 v93, v0, v83
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v82, v85
	v_rcp_f32_e32 v88, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s64, v48, v81, v48
	v_div_fmas_f32 v80, v80, v89, v84
	v_fma_f32 v84, -v91, v93, v86
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v87, v0, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v51, v80, v81, v51
	v_div_fmas_f32 v83, v84, v83, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v88, 1.0
	v_fmac_f32_e32 v0, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v50, v83, v81, v50
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s61, v47, v81, v47
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v79, v79, v45
	v_fma_f32 v80, -v87, v0, v82
	v_mul_f32_e32 v82, v91, v88
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v87, s62, v46, v81, v46
	v_div_fmas_f32 v0, v80, v85, v0
	v_fma_f32 v80, -v92, v89, v94
	v_fma_f32 v85, -v90, v82, v91
	v_div_scale_f32 v92, null, v79, v79, v44
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v49, v0, v81, v49
	v_fmac_f32_e32 v82, v85, v88
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v80, v80, v95, v89
	v_mul_f32_e32 v89, v87, v84
	v_fma_f32 v0, -v90, v82, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v79, v79, v43
	v_div_fixup_f32 v48, v80, v81, v48
	v_fma_f32 v80, -v96, v89, v87
	v_div_scale_f32 v90, s63, v45, v79, v45
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v0, v0, v88, v82
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v80, v84 :: v_dual_mul_f32 v80, v90, v83
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v88, s61, v44, v79, v44
	v_div_scale_f32 v91, null, v79, v79, v42
	v_div_fixup_f32 v47, v0, v81, v47
	v_fma_f32 v0, -v96, v89, v87
	v_fma_f32 v87, -v86, v80, v90
	v_mul_f32_e32 v94, v88, v85
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v80, v87, v83
	v_div_fmas_f32 v0, v0, v84, v89
	v_fma_f32 v84, -v92, v94, v88
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v87, s62, v43, v79, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v46, v0, v81, v46
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v0, -v86, v80, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v84, v85 :: v_dual_mul_f32 v81, v87, v82
	v_div_scale_f32 v86, null, v79, v79, v41
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v84, s64, v42, v79, v42
	v_div_fmas_f32 v0, v0, v83, v80
	v_fma_f32 v80, -v92, v94, v88
	v_fma_f32 v83, -v93, v81, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v79, v79, v40
	v_mul_f32_e32 v89, v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v83, v82
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v80, v80, v85, v94
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v45, v0, v79, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v88, 1.0
	v_fma_f32 v0, -v93, v81, v87
	v_div_fixup_f32 v44, v80, v79, v44
	v_fmac_f32_e32 v89, v85, v95
	v_div_scale_f32 v80, s61, v41, v79, v41
	v_fmac_f32_e32 v88, v92, v88
	v_fma_f32 v85, -v90, v83, 1.0
	v_div_scale_f32 v87, null, v79, v79, v38
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v82, v81
	v_fma_f32 v81, -v91, v89, v84
	v_dual_mul_f32 v82, v80, v88 :: v_dual_fmac_f32 v83, v85, v83
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s62, v40, v79, v40
	v_div_scale_f32 v91, null, v79, v79, v37
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v81, v81, v95, v89
	v_fma_f32 v89, -v86, v82, v80
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_fixup_f32 v43, v0, v79, v43
	v_fma_f32 v0, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v88
	v_div_scale_f32 v89, null, v79, v79, v36
	v_div_fixup_f32 v42, v81, v79, v42
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v81, s63, v38, v79, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v80, -v86, v82, v80
	v_fmac_f32_e32 v92, v0, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v81, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s64, v37, v79, v37
	v_div_fmas_f32 v80, v80, v88, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v95, null, v79, v79, v35
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v85, -v87, v0, v81
	v_mul_f32_e32 v88, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v0, v85, v84
	v_fma_f32 v85, -v91, v88, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s61, v36, v79, v36
	v_div_fixup_f32 v41, v80, v79, v41
	v_div_fixup_f32 v40, v82, v79, v40
	v_fma_f32 v80, -v87, v0, v81
	v_fmac_f32_e32 v88, v85, v94
	v_mul_f32_e32 v81, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v79, v79, v34
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v87, s62, v35, v79, v35
	v_div_fmas_f32 v0, v80, v84, v0
	v_fma_f32 v80, -v91, v88, v93
	v_fma_f32 v84, -v89, v81, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v79, v79, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v38, v0, v79, v38
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v88
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v0, -v89, v81, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v37, v80, v79, v37
	v_fma_f32 v80, -v95, v88, v87
	v_div_scale_f32 v89, s63, v34, v79, v34
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v79, v79, v32
	v_div_fmas_f32 v0, v0, v86, v81
	v_fmac_f32_e32 v88, v80, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v90, v84
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v90, null, v79, v79, v30
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s61, v33, v79, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v0, v0, v79, v36
	v_fma_f32 v36, -v95, v88, v87
	v_fma_f32 v87, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v83, v88
	v_fmac_f32_e32 v80, v87, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s62, v32, v79, v32
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v35, v36, v79, v35
	v_fma_f32 v36, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v81 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v79, v79, v28
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v85, s64, v30, v79, v30
	v_div_fmas_f32 v36, v36, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v79, v79, v27
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v34, v36, v79, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v36, -v92, v83, v87
	v_div_fixup_f32 v33, v80, v79, v33
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s61, v28, v79, v28
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, null, v62, v62, v24
	v_div_fmas_f32 v36, v36, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v62, v62, v25
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v85, s62, v27, v79, v27
	v_div_fmas_f32 v81, v81, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v32, v36, v79, v32
	v_div_fixup_f32 v30, v81, v79, v30
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v36, -v91, v90, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v62, v62, v21
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v62, v62, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v36, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_div_fmas_f32 v80, v80, v86, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v36, s63, v25, v62, v25
	v_fma_f32 v83, -v91, v90, v85
	v_fma_f32 v93, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v36, v87
	v_div_scale_f32 v86, s61, v24, v62, v24
	v_fmac_f32_e32 v81, v93, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v90
	v_fma_f32 v93, -v84, v85, v36
	v_mul_f32_e32 v95, v86, v81
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s64, v23, v62, v23
	v_div_fixup_f32 v28, v80, v79, v28
	v_div_fixup_f32 v27, v82, v79, v27
	v_div_scale_f32 v82, null, v62, v62, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v90, v91, v89 :: v_dual_fmac_f32 v85, v93, v87
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v80, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v79, -v88, v90, v91
	v_fma_f32 v36, -v84, v85, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v95, v83, v81 :: v_dual_fmac_f32 v96, v80, v96
	v_div_scale_f32 v80, s62, v21, v62, v21
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_fmas_f32 v36, v36, v87, v85
	v_fma_f32 v83, -v92, v95, v86
	v_mul_f32_e32 v84, v80, v96
	v_div_scale_f32 v85, null, v62, v62, v18
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v25, v36, v62, v25
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v82, v79, 1.0
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v24, v81, v62, v24
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s61, v19, v62, v19
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v36, v86, v79
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	v_div_fixup_f32 v23, v83, v62, v23
	v_div_scale_f32 v83, null, v62, v62, v17
	v_fma_f32 v88, -v82, v36, v86
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s63, v18, v62, v18
	v_div_fmas_f32 v80, v80, v96, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v88, v79
	v_rcp_f32_e32 v89, v83
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v21, v80, v62, v21
	v_fma_f32 v80, -v82, v36, v86
	v_div_scale_f32 v88, null, v62, v62, v16
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v80, v79, v36
	v_div_scale_f32 v79, null, v62, v62, v15
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s61, v17, v62, v17
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v62, v62, v14
	v_div_fixup_f32 v19, v36, v62, v19
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v90, v36, v90
	v_div_scale_f32 v36, s62, v16, v62, v16
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v62, v62, v13
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v36, v90
	v_div_scale_f32 v93, s63, v15, v62, v15
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v36
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s64, v14, v62, v14
	v_div_fixup_f32 v18, v81, v62, v18
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v36, -v88, v87, v36
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s61, v13, v62, v13
	v_div_fmas_f32 v80, v80, v89, v85
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v95
	v_div_scale_f32 v85, null, v62, v62, v12
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v17, v80, v62, v17
	v_div_fmas_f32 v36, v36, v90, v87
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_div_fixup_f32 v16, v36, v62, v16
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v15, v79, v62, v15
	v_div_fmas_f32 v82, v82, v92, v83
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_scale_f32 v79, null, v62, v62, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v91, v81, v84
	v_div_fixup_f32 v14, v82, v62, v14
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v82, null, v62, v62, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v95, v81
	v_div_scale_f32 v83, vcc_lo, v12, v62, v12
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v80, null, v62, v62, v10
	v_mul_f32_e32 v88, v83, v87
	v_div_fixup_f32 v13, v36, v62, v13
	v_rcp_f32_e32 v86, v82
	v_div_scale_f32 v89, null, v62, v62, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fma_f32 v92, -v85, v88, v83
	v_rcp_f32_e32 v84, v80
	v_fma_f32 v36, -v79, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v36, v81
	v_div_scale_f32 v36, s61, v11, v62, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v93, -v82, v86, 1.0
	v_fma_f32 v90, -v80, v84, 1.0
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s61
	s_mov_b32 s61, 0xc1000000
	v_fmac_f32_e32 v91, v95, v91
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s61, 0x40e00000
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v25, v25, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v95, s64, v8, v62, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v36, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s63, v9, v62, v9
	v_fma_f32 v92, -v79, v94, v36
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s62, v10, v62, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v94, v92, v81 :: v_dual_mul_f32 v97, v93, v86
	v_mul_f32_e32 v98, v95, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v36, -v79, v94, v36
	v_fma_f32 v92, -v82, v97, v93
	v_fma_f32 v79, -v89, v98, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v18, v18, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v81, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v97, v92, v86 :: v_dual_fmac_f32 v98, v79, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v11, v36, v62, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v79, -v82, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v93, v19
	v_cvt_i32_f32_e32 v94, v18
	v_and_b32_e32 v18, 15, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v19, 15, v23
	v_and_b32_e32 v43, 15, v93
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v98, v95
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v11, v11, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v83, v62, v12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v101, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v96, v90, v84 :: v_dual_and_b32 v11, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v25, 64, v109
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_med3_f32 v0, v0, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v96, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v35, v35, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v85, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s61, 0x40e00000
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v80, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s61, 0x40e00000
	v_med3_f32 v27, v27, s61, 0x40e00000
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_med3_f32 v12, v12, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v10, v80, v62, v10
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v79, v62, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v8, v81, v62, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v33, 15, v58
	v_and_b32_e32 v58, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 16, v109
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v62, v62, s61, 0x40e00000
	v_med3_f32 v10, v10, s61, 0x40e00000
	v_cvt_i32_f32_e32 v86, v45
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v97, v15
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v100, v12
	v_and_b32_e32 v15, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v23, 0x2f0, v29
	v_lshlrev_b32_e32 v24, 8, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v12, 15, v62
	v_and_b32_e32 v62, 15, v35
	v_and_b32_e32 v35, 15, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v21, 13, v109
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v72
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v65, v68
	v_rndne_f32_e32 v68, v73
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v73, v76
	v_rndne_f32_e32 v75, v78
	v_rndne_f32_e32 v76, v77
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_med3_f32 v61, v61, s61, 0x40e00000
	v_cvt_i32_f32_e32 v102, v10
	v_and_b32_e32 v10, 15, v86
	v_and_b32_e32 v86, 15, v27
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v27, 3, v106
	v_and_or_b32 v21, 0xe000, v21, v24
	v_xor_b32_e32 v23, v23, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s61, 0x40e00000
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_med3_f32 v9, v9, s61, 0x40e00000
	v_med3_f32 v8, v8, s61, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v21, v21, v27, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s61, 0x40e00000
	v_med3_f32 v73, v73, s61, 0x40e00000
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_med3_f32 v34, v34, s61, 0x40e00000
	v_med3_f32 v32, v32, s61, 0x40e00000
	v_med3_f32 v30, v30, s61, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v88, v41
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v81, v53
	v_cvt_i32_f32_e32 v82, v52
	v_cvt_i32_f32_e32 v98, v14
	v_cvt_i32_f32_e32 v103, v9
	v_cvt_i32_f32_e32 v104, v8
	v_and_b32_e32 v8, 15, v36
	v_and_b32_e32 v9, 15, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v23, 0, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s61, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v77, v64
	v_cvt_i32_f32_e32 v78, v60
	v_cvt_i32_f32_e32 v79, v56
	v_cvt_i32_f32_e32 v83, v49
	v_cvt_i32_f32_e32 v85, v48
	v_cvt_i32_f32_e32 v89, v40
	v_cvt_i32_f32_e32 v90, v34
	v_cvt_i32_f32_e32 v92, v32
	v_cvt_i32_f32_e32 v30, v30
	v_and_b32_e32 v40, 15, v67
	v_and_b32_e32 v41, 15, v57
	v_and_b32_e32 v34, 15, v42
	v_and_b32_e32 v42, 15, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v17
	v_cvt_i32_f32_e32 v96, v16
	v_and_b32_e32 v16, 15, v63
	v_and_b32_e32 v56, 15, v75
	v_and_b32_e32 v60, 15, v76
	v_and_b32_e32 v17, 15, v59
	v_and_b32_e32 v57, 15, v81
	v_and_b32_e32 v61, 15, v82
	v_and_b32_e32 v59, 15, v97
	v_and_b32_e32 v63, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v23, v[8:11]
	ds_store_b128 v23, v[40:43] offset:256
	v_xad_u32 v8, v21, 16, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v99, v13
	v_and_b32_e32 v48, 15, v72
	v_and_b32_e32 v52, 15, v73
	v_and_b32_e32 v64, 15, v74
	v_and_b32_e32 v72, 15, v70
	v_and_b32_e32 v76, 15, v69
	v_and_b32_e32 v84, 15, v77
	v_and_b32_e32 v13, 15, v78
	v_and_b32_e32 v45, 15, v79
	v_and_b32_e32 v73, 15, v83
	v_and_b32_e32 v77, 15, v85
	v_and_b32_e32 v74, 15, v92
	v_and_b32_e32 v78, 15, v30
	v_and_b32_e32 v75, 15, v101
	v_and_b32_e32 v79, 15, v102
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_med3_f32 v47, v47, s61, 0x40e00000
	v_med3_f32 v46, v46, s61, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v23, v[56:59] offset:2048
	ds_store_b128 v23, v[72:75] offset:2304
	v_cndmask_b32_e64 v11, 0x2010, 0, s3
	ds_store_b128 v8, v[60:63] offset:2048
	ds_store_b128 v8, v[76:79] offset:2304
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v76, s3, s66, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v77, null, s67, 0, s3
	v_add_co_u32 v78, s3, s66, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v44
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s67, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v14, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v9, 6, v109
	v_lshlrev_b32_e32 v10, 5, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v44, 15, v68
	v_and_b32_e32 v81, 15, v47
	v_and_b32_e32 v85, 15, v46
	v_and_b32_e32 v46, 15, v89
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v47, 15, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_med3_f32 v50, v50, s61, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[12:15]
	ds_store_b128 v8, v[44:47] offset:256
	v_lshlrev_b32_e32 v13, 2, v0
	v_and_or_b32 v9, 0x300, v9, v10
	v_xor_b32_e32 v10, v11, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_med3_f32 v28, v28, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	v_med3_f32 v37, v37, s61, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v25, v10, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v37, v37
	v_and_b32_e32 v32, 15, v65
	v_and_b32_e32 v68, 15, v71
	v_and_b32_e32 v80, 15, v66
	v_and_b32_e32 v65, 15, v51
	v_and_b32_e32 v69, 15, v50
	v_and_b32_e32 v66, 15, v90
	v_and_b32_e32 v70, 15, v91
	v_and_b32_e32 v67, 15, v99
	v_and_b32_e32 v71, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v21, 32, 0
	v_xad_u32 v8, v21, 48, 0
	v_xad_u32 v40, 0x4020, v25, 0
	v_xad_u32 v56, 0x8040, v25, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v49, 15, v55
	v_and_b32_e32 v50, 15, v38
	v_and_b32_e32 v82, 15, v28
	v_and_b32_e32 v51, 15, v95
	v_and_b32_e32 v83, 15, v103
	v_and_b32_e32 v87, 15, v104
	v_and_b32_e32 v53, 15, v54
	v_and_b32_e32 v54, 15, v37
	v_and_b32_e32 v55, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v21, 0, v25
	v_xad_u32 v25, 0xc060, v25, 0
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[48:51] offset:256
	ds_store_b128 v12, v[64:67] offset:2048
	ds_store_b128 v12, v[80:83] offset:2304
	ds_store_b128 v8, v[32:35]
	ds_store_b128 v8, v[52:55] offset:256
	ds_store_b128 v8, v[68:71] offset:2048
	ds_store_b128 v8, v[84:87] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v40
	ds_load_b128 v[31:34], v40 offset:128
	ds_load_b128 v[35:38], v40 offset:4096
	ds_load_b128 v[40:43], v40 offset:4224
	ds_load_b128 v[44:47], v56
	ds_load_b128 v[48:51], v56 offset:128
	ds_load_b128 v[52:55], v56 offset:4096
	ds_load_b128 v[56:59], v56 offset:4224
	ds_load_b128 v[60:63], v25 offset:4096
	ds_load_b128 v[64:67], v25
	ds_load_b128 v[68:71], v25 offset:128
	ds_load_b128 v[72:75], v25 offset:4224
	ds_load_b128 v[8:11], v21
	ds_load_b128 v[12:15], v21 offset:128
	ds_load_b128 v[16:19], v21 offset:4096
	ds_load_b128 v[21:24], v21 offset:4224
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s66, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[72:73], v[76:77]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[74:75], v[76:77]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_lshl_or_b32 v3, s77, 7, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[72:73], v[78:79]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 56, v4
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[78:79]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_add_nc_u32_e32 v25, 32, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_mov_b32 s67, 0x31027000
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v44, v52, 4, v44
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v77, v35, 4, v27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v27, 34, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v73, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 36, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v70, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 38, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v64, v40, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 40, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v65, v41, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 42, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v72, v36, 4, v28
	v_lshl_or_b32 v42, v42, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 44, v4
	v_mad_u64_u32 v[27:28], null, v27, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v43, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 46, v4
	v_mad_u64_u32 v[28:29], null, v29, s72, v[3:4]
	v_add_nc_u32_e32 v35, 48, v4
	v_mad_u64_u32 v[29:30], null, v30, s72, v[3:4]
	v_add_nc_u32_e32 v36, 50, v4
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	v_add_nc_u32_e32 v37, 52, v4
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	v_add_nc_u32_e32 v38, 54, v4
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	v_add_nc_u32_e32 v40, 58, v4
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v76, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	v_add_nc_u32_e32 v9, 4, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v69, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 6, v4
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v66, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	v_add_nc_u32_e32 v11, 8, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v60, v21, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 10, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v22, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 12, v4
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v23, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 14, v4
	v_mad_u64_u32 v[8:9], null, v9, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v63, v24, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 16, v4
	v_mad_u64_u32 v[9:10], null, v10, s72, v[3:4]
	v_add_nc_u32_e32 v16, 18, v4
	v_add_nc_u32_e32 v21, 26, v4
	v_mad_u64_u32 v[10:11], null, v11, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 20, v4
	v_add_nc_u32_e32 v23, 28, v4
	v_mad_u64_u32 v[11:12], null, v12, s72, v[3:4]
	v_add_nc_u32_e32 v18, 22, v4
	v_add_nc_u32_e32 v24, 30, v4
	v_mad_u64_u32 v[12:13], null, v13, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 24, v4
	v_add_nc_u32_e32 v41, 60, v4
	v_add_nc_u32_e32 v67, 62, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_mad_u64_u32 v[21:22], null, v21, s72, v[3:4]
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v76, v6, s[64:67], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v67, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s61
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v77, v4, s[64:67], 0 offen
	buffer_store_b8 v44, v6, s[64:67], 0 offen
	buffer_store_b8 v52, v7, s[64:67], 0 offen
	buffer_store_b8 v60, v8, s[64:67], 0 offen
	buffer_store_b8 v64, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v75, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v7, 0x80000000, v14 :: v_dual_add_nc_u32 v0, 0, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s76, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v48, v4, s[64:67], 0 offen
	buffer_store_b8 v56, v6, s[64:67], 0 offen
	buffer_store_b8 v68, v7, s[64:67], 0 offen
	buffer_store_b8 v72, v8, s[64:67], 0 offen
	buffer_store_b8 v45, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
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
	v_cndmask_b32_e32 v9, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v65, v7, s[64:67], 0 offen
	buffer_store_b8 v49, v8, s[64:67], 0 offen
	buffer_store_b8 v57, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v69, v4, s[64:67], 0 offen
	buffer_store_b8 v73, v6, s[64:67], 0 offen
	buffer_store_b8 v46, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	buffer_store_b8 v62, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v42, v4, s[64:67], 0 offen
	buffer_store_b8 v50, v6, s[64:67], 0 offen
	buffer_store_b8 v58, v7, s[64:67], 0 offen
	buffer_store_b8 v66, v8, s[64:67], 0 offen
	buffer_store_b8 v70, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b8 v47, v4, s[64:67], 0 offen
	buffer_store_b8 v55, v6, s[64:67], 0 offen
	buffer_store_b8 v63, v7, s[64:67], 0 offen
	buffer_store_b8 v43, v8, s[64:67], 0 offen
	buffer_store_b8 v51, v9, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v109
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v105
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s76, s76, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v59, v3, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v0, v0, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s76, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v109
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s77, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp84:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 416
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 416
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21116
; TotalNumSgprs: 80
; NumVgprs: 256
; ScratchSize: 416
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 416
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 103
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
