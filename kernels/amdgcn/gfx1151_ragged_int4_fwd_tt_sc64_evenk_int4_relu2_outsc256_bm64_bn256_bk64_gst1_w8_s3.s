	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v123, v0 :: v_dual_mov_b32 v8, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v123
	v_and_b32_e32 v0, 0x7f, v123
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
	v_add_nc_u32_e32 v1, s66, v2
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
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v6, 0x7f, v123
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v107, 0x80, v123
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v106, 15, v123
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s3, 0, v107
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
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
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v65, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s8, s66, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s8
	s_clause 0x1
	s_load_b32 s30, s[0:1], 0x58
	s_load_b32 s33, s[0:1], 0x50
	v_add_co_u32 v4, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[2:3]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s6, s4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[74:75], v[2:3]
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v2, s66, v106
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s9, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[72:73], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[6:7]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v3, v2, s34
	v_cndmask_b32_e64 v44, 0x88, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_mov_b32_e32 v38, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s77, 8
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v5, 32, v2
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_xor_b32_e32 v50, v44, v0
	v_or_b32_e32 v0, s7, v123
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v3, off          ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 16, v2
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v2, 48, v2
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s9, s[8:9], 0x0
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v45, 1, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v3, v3, s34
	v_mul_lo_u32 v2, v2, s34
	v_dual_mov_b32 v113, 0 :: v_dual_lshlrev_b32 v46, 5, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v47, 24, v45
	v_mov_b32_e32 v115, 0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v4, 5, v123
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:4
	scratch_store_b32 off, v107, off offset:104
	scratch_store_b32 off, v2, off offset:12
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_and_b32_e32 v2, 0xe0, v123
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[74:75], v[8:9]
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v54, 5, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v3, s7, v4
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v4, v5, s34
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v54, 32, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or3_b32 v46, v46, v47, v2
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v2, 0xf0, v123
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	s_and_b32 s4, s6, s8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s30, s76
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v57, 2, v2
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s6, s9
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:8
	scratch_store_b32 off, v106, off offset:100
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v34, 0xf8, v3
	v_or_b32_e32 v33, 0xf0, v3
	v_or_b32_e32 v32, 0xe8, v3
	v_or_b32_e32 v31, 0xe0, v3
	v_or_b32_e32 v30, 0xd8, v3
	v_or_b32_e32 v29, 0xd0, v3
	v_or_b32_e32 v28, 0xc8, v3
	v_or_b32_e32 v27, 0xc0, v3
	v_or_b32_e32 v26, 0xb8, v3
	v_or_b32_e32 v25, 0xb0, v3
	v_or_b32_e32 v24, 0xa8, v3
	v_or_b32_e32 v23, 0xa0, v3
	v_or_b32_e32 v22, 0x98, v3
	v_or_b32_e32 v21, 0x90, v3
	v_or_b32_e32 v20, 0x88, v3
	v_or_b32_e32 v19, 0x80, v3
	v_or_b32_e32 v18, 0x78, v3
	v_or_b32_e32 v17, 0x70, v3
	v_or_b32_e32 v16, 0x68, v3
	v_or_b32_e32 v15, 0x60, v3
	v_or_b32_e32 v14, 0x58, v3
	v_or_b32_e32 v13, 0x50, v3
	v_or_b32_e32 v12, 0x48, v3
	v_or_b32_e32 v11, 64, v3
	v_or_b32_e32 v10, 56, v3
	v_or_b32_e32 v9, 48, v3
	v_or_b32_e32 v8, 40, v3
	v_or_b32_e32 v7, 32, v3
	v_or_b32_e32 v6, 24, v3
	v_or_b32_e32 v5, 16, v3
	v_or_b32_e32 v4, 8, v3
	v_add3_u32 v54, 0, v57, v54
	v_lshlrev_b32_e32 v57, 1, v2
	v_mad_u64_u32 v[2:3], null, v3, s30, s[6:7]
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v48, 0x300, v123
	v_or_b32_e32 v49, 0x700, v123
	v_or_b32_e32 v47, 0x3f0, v123
	v_or_b32_e32 v51, 0x7f0, v123
	v_xor_b32_e32 v52, 0x110, v50
	scratch_store_b64 off, v[2:3], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v4, s30, s[6:7]
	v_xor_b32_e32 v53, 8, v46
	v_xor_b32_e32 v55, 16, v46
	v_xor_b32_e32 v56, 24, v46
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v45, 28, v45
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v39, 6, v123
	scratch_store_b64 off, v[2:3], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v5, s30, s[6:7]
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v44, 0, v106
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v92, v54, v45
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v95, 0, v48
	scratch_store_b64 off, v[2:3], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v6, s30, s[6:7]
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v97, 0, v49
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v98, 0, v47
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v99, 0, v51
	scratch_store_b64 off, v[2:3], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v7, s30, s[6:7]
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v100, 0, v50
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v101, 0, v52
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v103, 0, v46
	scratch_store_b64 off, v[2:3], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v8, s30, s[6:7]
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v105, 0, v53
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v107, 0, v55
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v109, 0, v56
	scratch_store_b64 off, v[2:3], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v9, s30, s[6:7]
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v120, 0, v123
	v_mov_b32_e32 v106, 0
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v114, 0, v57
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	scratch_store_b64 off, v[2:3], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v10, s30, s[6:7]
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	scratch_store_b64 off, v[2:3], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v11, s30, s[6:7]
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v63, 0
	scratch_store_b64 off, v[2:3], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v12, s30, s[6:7]
	v_mad_u64_u32 v[12:13], null, v13, s30, s[6:7]
	v_mad_u64_u32 v[13:14], null, v14, s30, s[6:7]
	v_mad_u64_u32 v[14:15], null, v15, s30, s[6:7]
	v_mad_u64_u32 v[15:16], null, v16, s30, s[6:7]
	v_mad_u64_u32 v[16:17], null, v17, s30, s[6:7]
	v_mad_u64_u32 v[17:18], null, v18, s30, s[6:7]
	v_mad_u64_u32 v[18:19], null, v19, s30, s[6:7]
	v_mad_u64_u32 v[19:20], null, v20, s30, s[6:7]
	v_mad_u64_u32 v[20:21], null, v21, s30, s[6:7]
	v_mad_u64_u32 v[21:22], null, v22, s30, s[6:7]
	v_mad_u64_u32 v[22:23], null, v23, s30, s[6:7]
	v_mad_u64_u32 v[23:24], null, v24, s30, s[6:7]
	v_mad_u64_u32 v[24:25], null, v25, s30, s[6:7]
	v_mad_u64_u32 v[25:26], null, v26, s30, s[6:7]
	v_mad_u64_u32 v[26:27], null, v27, s30, s[6:7]
	v_mad_u64_u32 v[27:28], null, v28, s30, s[6:7]
	v_mad_u64_u32 v[28:29], null, v29, s30, s[6:7]
	v_mad_u64_u32 v[29:30], null, v30, s30, s[6:7]
	v_mad_u64_u32 v[30:31], null, v31, s30, s[6:7]
	v_mad_u64_u32 v[31:32], null, v32, s30, s[6:7]
	v_mad_u64_u32 v[32:33], null, v33, s30, s[6:7]
	v_mad_u64_u32 v[33:34], null, v34, s30, s[6:7]
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v34, 0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s20, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s34, s9
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	s_mov_b32 s6, s20
	scratch_store_b64 off, v[2:3], off offset:92 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s7, s6, 5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s10
	v_or_b32_e32 v121, s7, v39
	s_mov_b32 s31, s11
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	v_mov_b32_e32 v11, v123
	v_mad_u64_u32 v[121:122], null, v121, s33, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v153, 0x80000000, v121, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v121, 4, v39
	v_or_b32_e32 v121, s7, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[121:122], null, v121, s33, v[1:2]
	v_cndmask_b32_e64 v154, 0x80000000, v121, s2
	v_or_b32_e32 v121, 8, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v121, s7, v121
	v_mad_u64_u32 v[121:122], null, v121, s33, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v155, 0x80000000, v121, s2
	v_or_b32_e32 v121, 12, v39
	v_or_b32_e32 v121, s7, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[121:122], null, v121, s33, v[1:2]
	v_cndmask_b32_e64 v156, 0x80000000, v121, s2
	v_or_b32_e32 v121, 16, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v121, s7, v121
	v_mad_u64_u32 v[121:122], null, v121, s33, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v157, 0x80000000, v121, s2
	v_or_b32_e32 v121, 20, v39
	v_or_b32_e32 v121, s7, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[121:122], null, v121, s33, v[1:2]
	v_cndmask_b32_e64 v158, 0x80000000, v121, s2
	v_or_b32_e32 v121, 24, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v121, s7, v121
	v_mad_u64_u32 v[121:122], null, v121, s33, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v159, 0x80000000, v121, s2
	v_or_b32_e32 v121, 28, v39
	v_or_b32_e32 v121, s7, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[121:122], null, v121, s33, v[1:2]
	scratch_load_b64 v[2:3], off, off offset:20 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v160, 0x80000000, v121, s2
	v_and_b32_e32 v121, 31, v123
	v_or_b32_e32 v121, s7, v121
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s7, s7, s76
	v_add_nc_u32_e32 v132, v12, v121
	v_add_nc_u32_e32 v133, v13, v121
	v_add_nc_u32_e32 v134, v14, v121
	v_add_nc_u32_e32 v135, v15, v121
	v_add_nc_u32_e32 v137, v16, v121
	v_add_nc_u32_e32 v145, v17, v121
	v_add_nc_u32_e32 v146, v18, v121
	v_add_nc_u32_e32 v147, v19, v121
	v_add_nc_u32_e32 v148, v20, v121
	v_add_nc_u32_e32 v149, v21, v121
	v_add_nc_u32_e32 v150, v22, v121
	v_add_nc_u32_e32 v151, v23, v121
	v_add_nc_u32_e32 v152, v24, v121
	v_add_nc_u32_e32 v161, v25, v121
	v_add_nc_u32_e32 v162, v26, v121
	v_add_nc_u32_e32 v163, v27, v121
	v_add_nc_u32_e32 v164, v28, v121
	v_add_nc_u32_e32 v165, v29, v121
	v_add_nc_u32_e32 v166, v30, v121
	v_add_nc_u32_e32 v167, v31, v121
	v_add_nc_u32_e32 v168, v32, v121
	v_add_nc_u32_e32 v169, v33, v121
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v122, v2, v121
	scratch_load_b64 v[2:3], off, off offset:28 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, v2, v121
	scratch_load_b64 v[2:3], off, off offset:36 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, v2, v121
	scratch_load_b64 v[2:3], off, off offset:44 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, v2, v121
	scratch_load_b64 v[2:3], off, off offset:52 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v126, v2, v121
	scratch_load_b64 v[2:3], off, off offset:60 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v127, v2, v121
	scratch_load_b64 v[2:3], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, v2, v121
	scratch_load_b64 v[2:3], off, off offset:76 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, v2, v121
	scratch_load_b64 v[2:3], off, off offset:84 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, v2, v121
	scratch_load_b64 v[2:3], off, off offset:92 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, v2, v121
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v136, v122, s[8:11], 0 offen
	buffer_load_u8 v121, v123, s[8:11], 0 offen
	buffer_load_u8 v138, v124, s[8:11], 0 offen
	buffer_load_u8 v122, v125, s[8:11], 0 offen
	buffer_load_u8 v139, v126, s[8:11], 0 offen
	buffer_load_u8 v123, v127, s[8:11], 0 offen
	buffer_load_u8 v140, v128, s[8:11], 0 offen
	buffer_load_u8 v124, v129, s[8:11], 0 offen
	buffer_load_u8 v141, v130, s[8:11], 0 offen
	buffer_load_u8 v125, v131, s[8:11], 0 offen
	buffer_load_u8 v142, v132, s[8:11], 0 offen
	buffer_load_u8 v126, v133, s[8:11], 0 offen
	buffer_load_u8 v143, v134, s[8:11], 0 offen
	buffer_load_u8 v127, v135, s[8:11], 0 offen
	buffer_load_u8 v144, v137, s[8:11], 0 offen
	buffer_load_u8 v128, v145, s[8:11], 0 offen
	buffer_load_u8 v145, v146, s[8:11], 0 offen
	buffer_load_u8 v129, v147, s[8:11], 0 offen
	buffer_load_u8 v146, v148, s[8:11], 0 offen
	buffer_load_u8 v130, v149, s[8:11], 0 offen
	buffer_load_u8 v147, v150, s[8:11], 0 offen
	buffer_load_u8 v131, v151, s[8:11], 0 offen
	buffer_load_u8 v148, v152, s[8:11], 0 offen
	buffer_load_u8 v132, v161, s[8:11], 0 offen
	buffer_load_u8 v149, v162, s[8:11], 0 offen
	buffer_load_u8 v133, v163, s[8:11], 0 offen
	buffer_load_u8 v150, v164, s[8:11], 0 offen
	buffer_load_u8 v134, v165, s[8:11], 0 offen
	buffer_load_u8 v151, v166, s[8:11], 0 offen
	buffer_load_u8 v135, v167, s[8:11], 0 offen
	buffer_load_u8 v152, v168, s[8:11], 0 offen
	buffer_load_u8 v137, v169, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v153, v153, s[12:15], 0 offen
	buffer_load_u8 v154, v154, s[12:15], 0 offen
	buffer_load_u8 v155, v155, s[12:15], 0 offen
	buffer_load_u8 v157, v157, s[12:15], 0 offen
	buffer_load_u8 v158, v158, s[12:15], 0 offen
	buffer_load_u8 v159, v159, s[12:15], 0 offen
	buffer_load_u8 v160, v160, s[12:15], 0 offen
	buffer_load_u8 v156, v156, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v120, v153
	s_waitcnt vmcnt(6)
	ds_store_b8 v120, v154 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v120, v155 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v120, v157 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v120, v158 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v95, v156
	ds_store_b8 v120, v159 offset:1536
	ds_store_b8 v97, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v155, v44 offset:320
	ds_load_u8 v156, v44 offset:256
	ds_load_u8 v199, v44 offset:336
	ds_load_u8 v200, v44 offset:272
	ds_load_u8 v164, v44 offset:352
	ds_load_u8 v165, v44 offset:288
	ds_load_u8 v153, v44 offset:368
	ds_load_u8 v154, v44 offset:304
	ds_load_u8 v249, v44 offset:1168
	ds_load_u8 v250, v44 offset:1184
	ds_load_u8 v251, v44 offset:1040
	ds_load_u8 v252, v44 offset:1056
	ds_load_u8 v253, v44 offset:1424
	ds_load_u8 v254, v44 offset:1440
	ds_load_u8 v255, v44 offset:1296
	ds_load_u8 v35, v44 offset:1312
	ds_load_u8 v37, v44 offset:1680
	ds_load_u8 v36, v44 offset:1696
	ds_load_u8 v40, v44 offset:1552
	ds_load_u8 v0, v44 offset:1568
	ds_load_u8 v41, v44 offset:1936
	ds_load_u8 v42, v44 offset:1952
	ds_load_u8 v43, v44 offset:1808
	ds_load_u8 v59, v44 offset:1824
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v161, v156, v155, 0xc0c0004
	ds_load_u8 v157, v44 offset:448
	ds_load_u8 v158, v44 offset:384
	ds_load_u8 v201, v44 offset:464
	ds_load_u8 v202, v44 offset:400
	ds_load_u8 v168, v44 offset:480
	ds_load_u8 v169, v44 offset:416
	ds_load_u8 v155, v44 offset:496
	ds_load_u8 v156, v44 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v162, v158, v157, 0xc0c0004
	ds_load_u8 v159, v44 offset:64
	ds_load_u8 v160, v44
	ds_load_u8 v203, v44 offset:80
	ds_load_u8 v173, v44 offset:96
	ds_load_u8 v157, v44 offset:112
	ds_load_u8 v204, v44 offset:16
	ds_load_u8 v176, v44 offset:32
	ds_load_u8 v158, v44 offset:48
	v_lshl_or_b32 v192, v162, 16, v161
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v163, v160, v159, 0xc0c0004
	ds_load_u8 v166, v44 offset:192
	ds_load_u8 v167, v44 offset:128
	ds_load_u8 v205, v44 offset:208
	ds_load_u8 v206, v44 offset:144
	ds_load_u8 v179, v44 offset:224
	ds_load_u8 v180, v44 offset:160
	ds_load_u8 v159, v44 offset:240
	ds_load_u8 v160, v44 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v166, 16, v163
	ds_load_u8 v163, v44 offset:832
	ds_load_u8 v166, v44 offset:768
	ds_load_u8 v207, v44 offset:848
	ds_load_u8 v208, v44 offset:784
	ds_load_u8 v181, v44 offset:864
	ds_load_u8 v182, v44 offset:800
	ds_load_u8 v161, v44 offset:880
	ds_load_u8 v162, v44 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v170, v166, v163, 0xc0c0004
	ds_load_u8 v166, v44 offset:960
	ds_load_u8 v167, v44 offset:896
	ds_load_u8 v209, v44 offset:976
	ds_load_u8 v210, v44 offset:912
	ds_load_u8 v211, v44 offset:992
	ds_load_u8 v212, v44 offset:928
	ds_load_u8 v163, v44 offset:944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v174, v167, v166, 0xc0c0004
	ds_load_u8 v171, v44 offset:576
	ds_load_u8 v172, v44 offset:512
	ds_load_u8 v213, v44 offset:592
	ds_load_u8 v214, v44 offset:528
	ds_load_u8 v215, v44 offset:608
	ds_load_u8 v216, v44 offset:544
	ds_load_u8 v166, v44 offset:624
	ds_load_u8 v167, v44 offset:560
	v_lshl_or_b32 v194, v174, 16, v170
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v175, v172, v171, 0xc0c0004
	ds_load_u8 v177, v44 offset:704
	ds_load_u8 v178, v44 offset:640
	ds_load_u8 v217, v44 offset:720
	ds_load_u8 v218, v44 offset:656
	ds_load_u8 v219, v44 offset:736
	ds_load_u8 v220, v44 offset:672
	ds_load_u8 v171, v44 offset:752
	ds_load_u8 v172, v44 offset:688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v177, 16, v175
	ds_load_u8 v177, v44 offset:1344
	ds_load_u8 v178, v44 offset:1280
	ds_load_u8 v170, v44 offset:1264
	ds_load_u8 v221, v44 offset:1360
	ds_load_u8 v222, v44 offset:1376
	ds_load_u8 v174, v44 offset:1392
	ds_load_u8 v175, v44 offset:1328
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v183, v178, v177, 0xc0c0004
	ds_load_u8 v184, v44 offset:1408
	ds_load_u8 v185, v44 offset:1472
	ds_load_u8 v223, v44 offset:1488
	ds_load_u8 v224, v44 offset:1504
	ds_load_u8 v177, v44 offset:1520
	ds_load_u8 v178, v44 offset:1456
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v35, v222, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v184, v185, 0xc0c0004
	ds_load_u8 v185, v44 offset:1024
	ds_load_u8 v186, v44 offset:1088
	ds_load_u8 v225, v44 offset:1104
	ds_load_u8 v226, v44 offset:1120
	ds_load_u8 v227, v44 offset:1136
	ds_load_u8 v228, v44 offset:1072
	v_lshl_or_b32 v196, v184, 16, v183
	ds_load_u8 v183, v44 offset:1792
	ds_load_u8 v184, v44 offset:1856
	ds_load_u8 v232, v44 offset:1872
	ds_load_u8 v233, v44 offset:1888
	ds_load_u8 v234, v44 offset:1904
	ds_load_u8 v235, v44 offset:1840
	ds_load_u8 v236, v44 offset:1776
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v185, v185, v186, 0xc0c0004
	ds_load_u8 v186, v44 offset:1152
	ds_load_u8 v187, v44 offset:1216
	ds_load_u8 v229, v44 offset:1232
	ds_load_u8 v230, v44 offset:1248
	ds_load_u8 v231, v44 offset:1200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v183, v183, v184, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v43, v232, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v186, v186, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v195, v186, 16, v185
	ds_load_u8 v184, v44 offset:1920
	ds_load_u8 v185, v44 offset:1984
	ds_load_u8 v237, v44 offset:2000
	ds_load_u8 v238, v44 offset:2016
	ds_load_u8 v239, v98
	ds_load_u8 v240, v99
	ds_load_u8 v241, v44 offset:1968
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v184, v184, v185, 0xc0c0004
	ds_load_u8 v185, v44 offset:1536
	ds_load_u8 v186, v44 offset:1600
	ds_load_u8 v242, v44 offset:1616
	ds_load_u8 v243, v44 offset:1632
	ds_load_u8 v244, v44 offset:1648
	ds_load_u8 v245, v44 offset:1584
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v41, v41, v237, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v42, v42, v238, 0xc0c0004
	v_lshl_or_b32 v198, v184, 16, v183
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v185, v185, v186, 0xc0c0004
	ds_load_u8 v186, v44 offset:1664
	ds_load_u8 v187, v44 offset:1728
	ds_load_u8 v246, v44 offset:1744
	ds_load_u8 v247, v44 offset:1760
	ds_load_u8 v248, v44 offset:1712
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v100, v136
	ds_store_b8 v100, v138 offset:512
	ds_store_b8 v100, v139 offset:1024
	ds_store_b8 v100, v140 offset:1536
	ds_store_b8 v100, v141 offset:2048
	ds_store_b8 v100, v142 offset:2560
	ds_store_b8 v100, v143 offset:3072
	ds_store_b8 v100, v144 offset:3584
	ds_store_b8 v100, v145 offset:4096
	ds_store_b8 v100, v146 offset:4608
	ds_store_b8 v100, v147 offset:5120
	ds_store_b8 v100, v148 offset:5632
	ds_store_b8 v100, v149 offset:6144
	ds_store_b8 v100, v150 offset:6656
	ds_store_b8 v100, v151 offset:7168
	ds_store_b8 v100, v152 offset:7680
	ds_store_b8 v101, v121
	ds_store_b8 v101, v122 offset:512
	ds_store_b8 v101, v123 offset:1024
	ds_store_b8 v101, v124 offset:1536
	ds_store_b8 v101, v125 offset:2048
	ds_store_b8 v101, v126 offset:2560
	ds_store_b8 v101, v127 offset:3072
	ds_store_b8 v101, v128 offset:3584
	ds_store_b8 v101, v129 offset:4096
	ds_store_b8 v101, v130 offset:4608
	ds_store_b8 v101, v131 offset:5120
	ds_store_b8 v101, v132 offset:5632
	ds_store_b8 v101, v133 offset:6144
	ds_store_b8 v101, v134 offset:6656
	ds_store_b8 v101, v135 offset:7168
	ds_store_b8 v101, v137 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[144:147], v103 offset1:8
	ds_load_2addr_stride64_b64 v[148:151], v105 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v135, s27 :: v_dual_mov_b32 v134, s26
	v_dual_mov_b32 v133, s25 :: v_dual_mov_b32 v132, s24
	v_dual_mov_b32 v131, s23 :: v_dual_mov_b32 v130, s22
	v_dual_mov_b32 v129, s21 :: v_dual_mov_b32 v128, s20
	v_perm_b32 v40, v40, v242, 0xc0c0004
	v_perm_b32 v0, v0, v243, 0xc0c0004
	v_perm_b32 v186, v186, v187, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[187:190], v109 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v37, v37, v246, 0xc0c0004
	v_perm_b32 v36, v36, v247, 0xc0c0004
	v_lshl_or_b32 v197, v186, 16, v185
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[183:186], v107 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[144:145], v[191:192], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[148:149], v[193:194], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[183:184], v[195:196], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[187:188], v[197:198], v[136:143] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v2, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v137
	v_cvt_f32_i32_e32 v4, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v139
	v_cvt_f32_i32_e32 v6, v140
	v_cvt_f32_i32_e32 v7, v141
	v_cvt_f32_i32_e32 v8, v142
	v_cvt_f32_i32_e32 v9, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[146:147], v[191:192], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[150:151], v[193:194], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[185:186], v[195:196], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[189:190], v[197:198], v[136:143] neg_lo:[1,1,0]
	v_lshl_or_b32 v198, v41, 16, v43
	v_lshl_or_b32 v197, v37, 16, v40
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v10, v136
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v127, v137
	v_cvt_f32_i32_e32 v126, v138
	v_cvt_f32_i32_e32 v125, v139
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v136, v200, v199, 0xc0c0004
	v_perm_b32 v137, v202, v201, 0xc0c0004
	v_perm_b32 v138, v204, v203, 0xc0c0004
	v_perm_b32 v139, v206, v205, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v121, v140
	v_cvt_f32_i32_e32 v122, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v192, v137, 16, v136
	v_perm_b32 v136, v208, v207, 0xc0c0004
	v_lshl_or_b32 v191, v139, 16, v138
	v_perm_b32 v137, v210, v209, 0xc0c0004
	v_perm_b32 v138, v214, v213, 0xc0c0004
	v_perm_b32 v139, v218, v217, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v123, v142
	v_cvt_f32_i32_e32 v124, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v194, v137, 16, v136
	v_perm_b32 v136, v255, v221, 0xc0c0004
	v_lshl_or_b32 v193, v139, 16, v138
	v_perm_b32 v137, v253, v223, 0xc0c0004
	v_perm_b32 v138, v251, v225, 0xc0c0004
	v_perm_b32 v139, v249, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v196, v137, 16, v136
	v_lshl_or_b32 v195, v139, 16, v138
	v_wmma_i32_16x16x16_iu4 v[136:143], v[144:145], v[191:192], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[148:149], v[193:194], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[183:184], v[195:196], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[187:188], v[197:198], v[136:143] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v37, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v40, v137
	v_cvt_f32_i32_e32 v41, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v139
	v_cvt_f32_i32_e32 v199, v140
	v_cvt_f32_i32_e32 v200, v141
	v_cvt_f32_i32_e32 v201, v142
	v_cvt_f32_i32_e32 v202, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[146:147], v[191:192], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[150:151], v[193:194], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[185:186], v[195:196], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[189:190], v[197:198], v[136:143] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v191, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v192, v137
	v_cvt_f32_i32_e32 v193, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v139
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v136, v165, v164, 0xc0c0004
	v_perm_b32 v137, v169, v168, 0xc0c0004
	v_perm_b32 v138, v176, v173, 0xc0c0004
	v_perm_b32 v139, v180, v179, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v195, v140
	v_cvt_f32_i32_e32 v196, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v165, v137, 16, v136
	v_perm_b32 v136, v182, v181, 0xc0c0004
	v_lshl_or_b32 v164, v139, 16, v138
	v_perm_b32 v137, v212, v211, 0xc0c0004
	v_perm_b32 v138, v216, v215, 0xc0c0004
	v_perm_b32 v139, v220, v219, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v197, v142
	v_cvt_f32_i32_e32 v198, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v169, v137, 16, v136
	v_perm_b32 v136, v254, v224, 0xc0c0004
	v_lshl_or_b32 v168, v139, 16, v138
	v_perm_b32 v137, v252, v226, 0xc0c0004
	v_perm_b32 v138, v250, v230, 0xc0c0004
	v_lshl_or_b32 v181, v36, 16, v0
	v_lshl_or_b32 v180, v136, 16, v35
	v_perm_b32 v35, v59, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v179, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[136:143], v[144:145], v[164:165], v[128:135] neg_lo:[1,1,0]
	v_lshl_or_b32 v182, v42, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[148:149], v[168:169], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[183:184], v[179:180], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[187:188], v[181:182], v[136:143] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v137
	v_cvt_f32_i32_e32 v36, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v139
	v_cvt_f32_i32_e32 v59, v140
	v_cvt_f32_i32_e32 v173, v141
	v_cvt_f32_i32_e32 v176, v142
	v_cvt_f32_i32_e32 v203, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[146:147], v[164:165], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[150:151], v[168:169], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[185:186], v[179:180], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[189:190], v[181:182], v[136:143] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v165, v137
	v_cvt_f32_i32_e32 v168, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v169, v139
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v136, v154, v153, 0xc0c0004
	v_perm_b32 v137, v156, v155, 0xc0c0004
	v_perm_b32 v138, v158, v157, 0xc0c0004
	v_perm_b32 v139, v160, v159, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v179, v140
	v_cvt_f32_i32_e32 v180, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v153, v137, 16, v136
	v_perm_b32 v136, v167, v166, 0xc0c0004
	v_lshl_or_b32 v152, v139, 16, v138
	v_perm_b32 v137, v172, v171, 0xc0c0004
	v_perm_b32 v138, v162, v161, 0xc0c0004
	v_perm_b32 v139, v163, v239, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v181, v142
	v_cvt_f32_i32_e32 v182, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v154, v137, 16, v136
	v_perm_b32 v136, v175, v174, 0xc0c0004
	v_lshl_or_b32 v155, v139, 16, v138
	v_perm_b32 v137, v178, v177, 0xc0c0004
	v_perm_b32 v138, v228, v227, 0xc0c0004
	v_perm_b32 v139, v231, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v157, v137, 16, v136
	v_perm_b32 v136, v245, v244, 0xc0c0004
	v_lshl_or_b32 v156, v139, 16, v138
	v_perm_b32 v137, v248, v236, 0xc0c0004
	v_perm_b32 v138, v235, v234, 0xc0c0004
	v_perm_b32 v139, v241, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v158, v137, 16, v136
	v_lshl_or_b32 v159, v139, 16, v138
	v_wmma_i32_16x16x16_iu4 v[136:143], v[144:145], v[152:153], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[148:149], v[154:155], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[183:184], v[156:157], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[187:188], v[158:159], v[136:143] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v145, v137
	v_cvt_f32_i32_e32 v148, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v149, v139
	v_cvt_f32_i32_e32 v160, v140
	v_cvt_f32_i32_e32 v161, v141
	v_cvt_f32_i32_e32 v162, v142
	v_cvt_f32_i32_e32 v163, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[146:147], v[152:153], v[128:135] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v128, off, off
	scratch_load_b32 v129, off, off offset:4
	scratch_load_b32 v130, off, off offset:8
	scratch_load_b32 v131, off, off offset:12
	scratch_load_b32 v132, off, off offset:16
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[150:151], v[154:155], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[185:186], v[156:157], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[189:190], v[158:159], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v128, s6, v128, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v129, s6, v129, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v130, s6, v130, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v131, s6, v131, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v132, v132, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v128, 0x80000000, v128, vcc_lo
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s1
	v_cndmask_b32_e64 v131, 0x80000000, v131, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v132, v132, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v128, v128, s[16:19], 0 offen
	buffer_load_u16 v146, v129, s[16:19], 0 offen
	buffer_load_u16 v147, v130, s[16:19], 0 offen
	buffer_load_u16 v150, v131, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s34
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v129, 16, v132
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v151, 16, v128
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v92, v129
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[128:131], v114
	ds_load_b128 v[132:135], v114 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v2, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v2, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v3, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v119, v2, v129 :: v_dual_mul_f32 v2, v4, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v118, v2, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v5, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v117, v2, v131 :: v_dual_lshlrev_b32 v2, 16, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v37, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v3, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v40, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v3, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v41, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v3, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v43, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v3, v131
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v0, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v0, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v36, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v0, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v42, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v73, v0, v131 :: v_dual_lshlrev_b32 v0, 16, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v144, v0 :: v_dual_mul_f32 v37, v181, v3
	v_mul_f32_e32 v41, v141, v0
	v_mul_f32_e32 v42, v142, v0
	v_mul_f32_e32 v36, v180, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v60, v4, v128 :: v_dual_mul_f32 v35, v179, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v145, v0
	v_mul_f32_e32 v40, v140, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v148, v0 :: v_dual_mul_f32 v5, v122, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v57, v4, v130 :: v_dual_mul_f32 v4, v149, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v56, v4, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v6, v151
	v_mul_f32_e32 v6, v123, v151
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v123, v11 :: v_dual_fmac_f32 v116, v4, v132
	v_mul_f32_e32 v4, v7, v151
	v_mul_f32_e32 v7, v124, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v4, v133
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v8, v151
	v_mul_f32_e32 v8, v195, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v113, v4, v134 :: v_dual_mul_f32 v4, v9, v151
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v196, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v4, v135
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v199, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v4, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v200, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v87, v4, v133 :: v_dual_mul_f32 v4, v201, v2
	v_fmac_f32_e32 v86, v4, v134
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v202, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v4, v135
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v59, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v4, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v173, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v4, v133
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v176, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v4, v134
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v203, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v4, v135
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v4, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v161, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v4, v133
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v162, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v53, v4, v134 :: v_dual_mul_f32 v4, v163, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v4, v135
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[128:131], v114 offset:512
	ds_load_b128 v[132:135], v114 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v10, v151
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v10, v197, v2 :: v_dual_fmac_f32 v111, v4, v128
	v_mul_f32_e32 v4, v127, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v102, v5, v133
	v_fmac_f32_e32 v96, v6, v134
	v_fmac_f32_e32 v94, v7, v135
	v_fmac_f32_e32 v80, v8, v132
	v_fmac_f32_e32 v110, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v126, v151 :: v_dual_fmac_f32 v79, v9, v133
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v10, v134
	v_dual_fmac_f32 v64, v35, v132 :: v_dual_fmac_f32 v63, v36, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v108, v4, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v125, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v62, v37, v134 :: v_dual_fmac_f32 v47, v40, v132
	v_dual_fmac_f32 v46, v41, v133 :: v_dual_fmac_f32 v45, v42, v134
	v_fmac_f32_e32 v106, v4, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v191, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v192, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v83, v4, v129 :: v_dual_mul_f32 v4, v193, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v4, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v194, v2
	v_dual_mul_f32 v2, v198, v2 :: v_dual_fmac_f32 v81, v4, v131
	v_mul_f32_e32 v4, v164, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v77, v2, v135 :: v_dual_fmac_f32 v68, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v165, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v168, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v4, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v169, v3
	v_mul_f32_e32 v3, v182, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v65, v4, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v136, v0 :: v_dual_fmac_f32 v61, v3, v135
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v137, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v50, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v138, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v49, v4, v130 :: v_dual_mul_f32 v4, v139, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v143, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v4, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v121, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v34, v0, v135
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v104, v4, v132
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v2, v119, v119 :: v_dual_max_f32 v3, v118, v118
	v_dual_max_f32 v4, v117, v117 :: v_dual_max_f32 v5, v116, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v10, v110, v110 :: v_dual_max_f32 v13, v104, v104
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v9, v111, v111
	v_max_f32_e32 v6, v115, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v11, v108, v108
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v12, v106, v106 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v32, v77, v77 :: v_dual_max_f32 v35, v75, v75
	v_dual_max_f32 v36, v74, v74 :: v_dual_max_f32 v37, v73, v73
	v_max_f32_e32 v40, v70, v70
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v70, v4, v4 :: v_dual_mul_f32 v75, v6, v6
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:108
	scratch_load_b32 v106, off, off offset:100
	scratch_load_b32 v107, off, off offset:104
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v0, v38, v38 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v38, v72, v72 :: v_dual_max_f32 v39, v71, v71
	v_dual_max_f32 v20, v89, v89 :: v_dual_max_f32 v23, v86, v86
	v_dual_max_f32 v22, v87, v87 :: v_dual_max_f32 v25, v84, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v38, 0, v38
	v_dual_max_f32 v41, v69, v69 :: v_dual_max_f32 v40, 0, v40
	v_dual_max_f32 v43, v67, v67 :: v_dual_max_f32 v42, v68, v68
	v_dual_max_f32 v59, v65, v65 :: v_dual_max_f32 v44, v66, v66
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v27, v82, v82
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v29, v80, v80
	v_max_f32_e32 v26, v83, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v28, v81, v81 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v81, 0, v41 :: v_dual_max_f32 v82, 0, v42
	v_dual_max_f32 v83, 0, v43 :: v_dual_max_f32 v84, 0, v44
	v_dual_max_f32 v41, v64, v64 :: v_dual_max_f32 v42, v63, v63
	v_dual_max_f32 v43, v62, v62 :: v_dual_max_f32 v44, v61, v61
	v_dual_max_f32 v18, v91, v91 :: v_dual_max_f32 v21, v88, v88
	v_dual_max_f32 v24, v85, v85 :: v_dual_max_f32 v23, 0, v23
	v_max_f32_e32 v85, 0, v59
	v_dual_max_f32 v59, v60, v60 :: v_dual_max_f32 v64, 0, v41
	v_dual_max_f32 v86, 0, v42 :: v_dual_max_f32 v87, 0, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v88, 0, v44 :: v_dual_max_f32 v89, 0, v59
	v_dual_max_f32 v41, v58, v58 :: v_dual_max_f32 v42, v57, v57
	v_dual_max_f32 v43, v56, v56 :: v_dual_max_f32 v44, v55, v55
	v_max_f32_e32 v54, v54, v54
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v17, v93, v93
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v19, v90, v90
	v_max_f32_e32 v16, v94, v94
	v_dual_max_f32 v90, 0, v41 :: v_dual_max_f32 v91, 0, v42
	v_dual_max_f32 v92, 0, v43 :: v_dual_max_f32 v41, v53, v53
	v_dual_max_f32 v93, 0, v44 :: v_dual_max_f32 v94, 0, v54
	v_dual_max_f32 v43, v51, v51 :: v_dual_max_f32 v42, v52, v52
	v_dual_max_f32 v49, v49, v49 :: v_dual_max_f32 v44, v50, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v95, 0, v41 :: v_dual_max_f32 v0, 0, v0
	v_dual_max_f32 v7, v113, v113 :: v_dual_max_f32 v8, v112, v112
	v_dual_max_f32 v14, v102, v102 :: v_dual_max_f32 v15, v96, v96
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, v78, v78
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v33, v76, v76 :: v_dual_max_f32 v30, v79, v79
	v_dual_max_f32 v96, 0, v42 :: v_dual_max_f32 v97, 0, v43
	v_dual_max_f32 v98, 0, v44 :: v_dual_max_f32 v99, 0, v49
	v_dual_max_f32 v41, v48, v48 :: v_dual_max_f32 v42, v47, v47
	v_dual_max_f32 v43, v46, v46 :: v_dual_max_f32 v44, v45, v45
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v24, 0, v24
	v_max_f32_e32 v25, 0, v25
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_max_f32_e32 v35, 0, v35
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v39, 0, v39
	v_dual_max_f32 v100, 0, v41 :: v_dual_max_f32 v101, 0, v42
	v_dual_max_f32 v102, 0, v43 :: v_dual_mul_f32 v65, v0, v0
	v_dual_max_f32 v103, 0, v44 :: v_dual_max_f32 v104, 0, v34
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v69, v3, v3 :: v_dual_mul_f32 v68, v2, v2
	v_dual_mul_f32 v77, v7, v7 :: v_dual_mul_f32 v74, v5, v5
	v_dual_mul_f32 v79, v10, v10 :: v_dual_mul_f32 v78, v8, v8
	v_dual_mul_f32 v71, v14, v14 :: v_dual_mul_f32 v80, v9, v9
	v_dual_mul_f32 v73, v12, v12 :: v_dual_mul_f32 v76, v11, v11
	v_mul_f32_e32 v63, v17, v17
	v_dual_mul_f32 v72, v13, v13 :: v_dual_mul_f32 v67, v15, v15
	v_dual_mul_f32 v66, v16, v16 :: v_dual_mul_f32 v61, v19, v19
	v_dual_mul_f32 v62, v18, v18 :: v_dual_mul_f32 v59, v21, v21
	v_dual_mul_f32 v60, v20, v20 :: v_dual_mul_f32 v57, v23, v23
	v_dual_mul_f32 v58, v22, v22 :: v_dual_mul_f32 v55, v25, v25
	v_dual_mul_f32 v56, v24, v24 :: v_dual_mul_f32 v53, v27, v27
	v_dual_mul_f32 v54, v26, v26 :: v_dual_mul_f32 v51, v29, v29
	v_dual_mul_f32 v52, v28, v28 :: v_dual_mul_f32 v49, v31, v31
	v_dual_mul_f32 v50, v30, v30 :: v_dual_mul_f32 v47, v33, v33
	v_dual_mul_f32 v48, v32, v32 :: v_dual_mul_f32 v43, v38, v38
	v_dual_mul_f32 v46, v35, v35 :: v_dual_mul_f32 v45, v36, v36
	v_dual_mul_f32 v44, v37, v37 :: v_dual_mul_f32 v41, v40, v40
	v_dual_mul_f32 v42, v39, v39 :: v_dual_mul_f32 v39, v82, v82
	v_dual_mul_f32 v40, v81, v81 :: v_dual_mul_f32 v27, v88, v88
	v_dual_mul_f32 v38, v83, v83 :: v_dual_mul_f32 v33, v85, v85
	v_dual_mul_f32 v34, v84, v84 :: v_dual_mul_f32 v25, v89, v89
	v_dual_mul_f32 v32, v64, v64 :: v_dual_mul_f32 v23, v91, v91
	v_dual_mul_f32 v30, v86, v86 :: v_dual_mul_f32 v21, v92, v92
	v_dual_mul_f32 v28, v87, v87 :: v_dual_mul_f32 v19, v93, v93
	v_dual_mul_f32 v24, v90, v90 :: v_dual_mul_f32 v17, v95, v95
	v_dual_mul_f32 v18, v94, v94 :: v_dual_mul_f32 v15, v97, v97
	v_dual_mul_f32 v16, v96, v96 :: v_dual_mul_f32 v13, v99, v99
	v_dual_mul_f32 v14, v98, v98 :: v_dual_mul_f32 v11, v101, v101
	v_dual_mul_f32 v12, v100, v100 :: v_dual_mul_f32 v9, v103, v103
	v_dual_mul_f32 v10, v102, v102 :: v_dual_mov_b32 v5, v1
	v_mul_f32_e32 v8, v104, v104
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v7, 7, v107
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v77, v78, v80
	s_mov_b32 s27, 0x76543210
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v36, 8, v123
	v_lshlrev_b32_e32 v64, 1, v107
.Ltmp5:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v7
	v_or_b32_e32 v3, 60, v7
	v_or_b32_e32 v20, 58, v7
	v_or_b32_e32 v22, 36, v7
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v85, 3, v107
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
	v_dual_max_f32 v0, v68, v68 :: v_dual_max_f32 v3, v65, v65
.Ltmp9:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[74:75], v[1:2]
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v70, v74, v75
	v_max3_f32 v2, v79, v76, v73
	v_dual_max_f32 v0, v3, v0 :: v_dual_max_f32 v29, v46, v46
	v_max3_f32 v3, v72, v71, v67
	v_dual_max_f32 v4, v62, v62 :: v_dual_max_f32 v31, v47, v47
	v_max_f32_e32 v20, v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v0, v0, v69, v1
	v_max3_f32 v1, v2, v3, v66
	v_max3_f32 v3, v60, v59, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v35, v25, v25 :: v_dual_max_f32 v2, v20, v4
	v_max3_f32 v4, v54, v53, v52
	v_max3_f32 v20, v51, v50, v49
	v_max3_f32 v0, v0, v26, v1
	v_max3_f32 v1, v57, v56, v55
	v_max3_f32 v2, v2, v61, v3
	v_max3_f32 v26, v38, v34, v33
	v_max3_f32 v3, v4, v20, v48
	v_max_f32_e32 v4, v31, v29
	v_max3_f32 v20, v44, v43, v42
	v_max3_f32 v29, v32, v30, v28
	v_max_f32_e32 v31, v24, v24
	v_max3_f32 v2, v2, v1, v3
	v_max3_f32 v1, v41, v40, v39
	v_max3_f32 v3, v4, v45, v20
	v_max3_f32 v4, v26, v29, v27
	v_max_f32_e32 v20, v35, v31
	v_max3_f32 v26, v21, v19, v18
	v_max3_f32 v29, v14, v13, v12
	v_max3_f32 v31, v11, v10, v9
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v35, v0, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v1, v4
	v_max3_f32 v1, v17, v16, v15
	v_max3_f32 v4, v20, v23, v26
	v_max3_f32 v20, v29, v31, v8
	v_max_f32_e32 v26, v35, v35
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v29, v2, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v3, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[72:73], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[74:75], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s28, s66, v22
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v29, v29 :: v_dual_max_f32 v29, v31, v31
	v_max3_f32 v4, v4, v1, v20
	v_dual_max_f32 v1, v0, v26 :: v_dual_and_b32 v0, 3, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v2, v2, v22 :: v_dual_max_f32 v3, v3, v29
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v26, 4, v123
	v_lshlrev_b32_e32 v29, 4, v123
	v_lshl_add_u32 v31, v0, 9, 0
	v_lshlrev_b32_e32 v35, 5, v0
	v_permlanex16_b32 v20, v4, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x60, v123
	v_lshl_add_u32 v86, v26, 6, 0
	v_lshl_add_u32 v31, v26, 2, v31
	v_and_or_b32 v37, 0x680, v29, v35
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v35, v35, v22
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u32 v31, v36, 4, v31
	v_xor_b32_e32 v37, v37, v22
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v20
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp21:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s28
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v20, v31, v64, v35
	v_add3_u32 v35, v86, v85, v37
.Ltmp23:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v31, 34, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[81:82]
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v20, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v35
.Ltmp25:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 32, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v85, s27, s66, v31
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v31, 30, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s33, s66, v20
	v_add_co_ci_u32_e64 v86, null, s67, 0, s27
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s33
	v_add_co_u32 v83, s33, s66, v31
	v_add_co_ci_u32_e64 v84, null, s67, 0, s33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[81:82]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v35, 28, v7
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v31, v2
	v_dual_mov_b32 v37, v3 :: v_dual_mov_b32 v20, v1
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v31, v31
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v2, v2, v2
.Ltmp30:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[83:84]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[85:86]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v37
	v_dual_max_f32 v31, v2, v31 :: v_dual_max_f32 v20, v20, v20
	v_max_f32_e32 v64, v4, v4
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v81, v31 :: v_dual_max_f32 v20, v1, v20
.Ltmp33:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s37, s66, v35
	v_add_co_ci_u32_e64 v2, null, s67, 0, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v35, v20
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp35:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[1:2]
.Ltmp36:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v81, v81
.Ltmp38:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[85:86]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v35, v35
.Ltmp40:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v35, 26, v7
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v31, v2
.Ltmp42:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s76, s65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v20, v1
	v_max_f32_e32 v4, v4, v4
.Ltmp44:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s39, s66, v35
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v37, v37
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v35, v1 :: v_dual_max_f32 v4, v64, v4
	v_mov_b32_e32 v37, v2
.Ltmp47:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v20 :: v_dual_mov_b32 v64, v4
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[81:82]
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v31, v64, v64 :: v_dual_max_f32 v2, v2, v37
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v20, v3 :: v_dual_max_f32 v1, v1, v35
	v_lshrrev_b32_e32 v37, 1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v31
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v64, 24, v7
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v31, v4
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s40, s66, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v84, null, s67, 0, s40
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[72:73], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[83:84]
.Ltmp61:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v31, v31
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v31, 4, v0
	v_lshlrev_b32_e32 v0, 3, v36
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v20 :: v_dual_add_nc_u32 v36, 0, v107
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v20, 5, v26
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v35
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v26, 0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v35, v36, v37, v0
.Ltmp67:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 22, v7
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v26, v20, v0
	ds_store_b128 v35, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s40, s66, v36
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v0
.Ltmp71:
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
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v0, v1, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[74:75], v[85:86]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, 0x2b8cbccc, v3
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s49, s66, v1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v36, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s49
	v_add_co_u32 v83, s49, s66, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v84, null, s67, 0, s49
	v_add_co_u32 v85, s49, s66, v20
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v20, 10, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v37, v36
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s49
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[74:75], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v81, s55, s66, v20
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v20, 8, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s55
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[72:73], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[74:75], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s55, s66, v20
	v_add_co_ci_u32_e64 v84, null, s67, 0, s55
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[72:73], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[74:75], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v82, 0x2b8cbccc, v2
	v_fma_f32 v2, -v36, v37, 1.0
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v81, 6, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[72:73], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[74:75], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v37, v2, v37
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[72:73], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[74:75], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v35, -v26, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v35, v1
	v_div_scale_f32 v35, vcc_lo, v0, 0x40e00000, v0
	v_mul_f32_e32 v20, v35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v26, v20, v35
	v_fmac_f32_e32 v20, v64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v20, v35
	v_div_scale_f32 v35, s61, v3, 0x40e00000, v3
	v_div_fmas_f32 v20, v26, v1, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v35, v37
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s59, s66, v81
	v_add_co_ci_u32_e64 v2, null, s67, 0, s59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v20, 0x40e00000, v0
	v_fma_f32 v20, -v36, v26, v35
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[74:75], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v20, v37
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v86.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v36, v26, v35
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v37, v26
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v64, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v64
	v_rcp_f32_e32 v85, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v84, v85, 1.0
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v4
	v_fma_f32 v81, -v4, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v81, v83
	v_div_scale_f32 v81, s62, v82, 0x40e00000, v82
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v87, v81, v83
	v_fma_f32 v20, -v4, v87, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v20, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v0, v2, 0x7fff
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v4, v87, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v36, 0xffff0000, v20
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v81, 1, v86
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v83, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v88, null, v36, v36, v69
	v_div_scale_f32 v83, null, v36, v36, v65
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v89, v88
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v93, v89
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v35, s63, v64, 0x40e00000, v64
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v93, s62, v69, v36, v69
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v26, v35, v85
	v_fma_f32 v3, -v84, v26, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v3, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s66, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s61
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v35, -v84, v26, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, s61, v68, v36, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v35, v85, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v35, null, v36, v36, v68
	v_fma_f32 v37, -v83, v0, 1.0
	v_div_scale_f32 v85, vcc_lo, v65, v36, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v35
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v64, v26, 0x40e00000, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v37, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v26.h, v86.h
	v_mov_b16_e32 v26.l, v2.h
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v37, 2, v7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v64.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v35, v84, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v84, v81, v84 :: v_dual_and_b32 v81, 0xffff0000, v1
	v_mul_f32_e32 v87, v85, v0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v20.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v91, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v83, v87, v85
	v_fmac_f32_e32 v87, v86, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v83, v87, v85
	v_fma_f32 v85, -v35, v92, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v83, v0, v87
	v_fmac_f32_e32 v92, v85, v84
	v_mul_f32_e32 v83, v93, v89
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v65, v0, v36, v65
	v_fma_f32 v0, -v35, v92, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v88, v83, v93
	v_fmac_f32_e32 v83, v35, v89
	v_div_scale_f32 v90, null, v36, v36, v70
	v_div_scale_f32 v95, null, v36, v36, v74
	v_div_scale_f32 v87, s63, v70, v36, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v90
	v_rcp_f32_e32 v85, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v90, v86, 1.0
	v_fma_f32 v97, -v95, v85, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v94, v86
	v_div_scale_f32 v94, null, v36, v36, v75
	v_fmac_f32_e32 v85, v97, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v26, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v87, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v96, v94
	v_div_scale_f32 v97, null, v36, v36, v73
	v_fma_f32 v35, -v90, v91, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v91, v35, v86
	v_div_fmas_f32 v0, v0, v84, v92
	v_fma_f32 v92, -v94, v96, 1.0
	v_div_scale_f32 v84, s61, v74, v36, v74
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v68, v0, v36, v68
	v_fma_f32 v0, -v88, v83, v93
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v92, null, v36, v36, v77
	v_mul_f32_e32 v35, v84, v85
	v_div_scale_f32 v88, s64, v75, v36, v75
	v_div_fmas_f32 v0, v0, v89, v83
	v_fma_f32 v83, -v90, v91, v87
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v93, null, v36, v36, v78
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v87, -v95, v35, v84
	v_mul_f32_e32 v90, v88, v96
	v_div_fmas_f32 v83, v83, v86, v91
	v_rcp_f32_e32 v86, v93
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v64, v82, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v35, v87, v85 :: v_dual_and_b32 v82, 0xffff0000, v26
	v_fma_f32 v87, -v94, v90, v88
	v_fma_f32 v91, -v92, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v64, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v0, v36, v69
	v_div_fixup_f32 v70, v83, v36, v70
	v_fma_f32 v0, -v95, v35, v84
	v_fmac_f32_e32 v90, v87, v96
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v83, s62, v77, v36, v77
	v_fma_f32 v84, -v93, v86, 1.0
	v_div_scale_f32 v87, null, v36, v36, v80
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v91, null, v36, v36, v79
	v_div_fmas_f32 v0, v0, v85, v35
	v_fma_f32 v35, -v94, v90, v88
	v_dual_mul_f32 v85, v83, v89 :: v_dual_fmac_f32 v86, v84, v86
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v88, s61, v78, v36, v78
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v74, v0, v36, v74
	v_div_fmas_f32 v35, v35, v96, v90
	v_fma_f32 v90, -v92, v85, v83
	v_mul_f32_e32 v94, v88, v86
	v_rcp_f32_e32 v96, v91
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v87, v84, 1.0
	v_fmac_f32_e32 v85, v90, v89
	v_fma_f32 v0, -v93, v94, v88
	v_div_scale_f32 v90, null, v36, v36, v76
	v_div_fixup_f32 v75, v35, v36, v75
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v35, s63, v80, v36, v80
	v_fma_f32 v83, -v92, v85, v83
	v_fmac_f32_e32 v94, v0, v86
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v95, -v91, v96, 1.0
	v_mul_f32_e32 v0, v35, v84
	v_div_fmas_f32 v83, v83, v89, v85
	v_fma_f32 v85, -v93, v94, v88
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s64, v79, v36, v79
	v_fma_f32 v88, -v87, v0, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v90, v92, 1.0
	v_div_fmas_f32 v85, v85, v86, v94
	v_rcp_f32_e32 v86, v97
	v_mul_f32_e32 v89, v95, v96
	v_fmac_f32_e32 v0, v88, v84
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, s61, v76, v36, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v88, -v91, v89, v95
	v_div_fixup_f32 v77, v83, v36, v77
	v_div_fixup_f32 v78, v85, v36, v78
	v_fma_f32 v35, -v87, v0, v35
	v_mul_f32_e32 v83, v93, v92
	v_fma_f32 v85, -v97, v86, 1.0
	v_div_scale_f32 v87, null, v36, v36, v72
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v89, v88, v96
	v_div_fmas_f32 v0, v35, v84, v0
	v_fma_f32 v84, -v90, v83, v93
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v87
	v_fma_f32 v35, -v91, v89, v95
	v_div_scale_f32 v91, null, v36, v36, v71
	v_div_scale_f32 v88, s62, v73, v36, v73
	v_fmac_f32_e32 v83, v84, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v91
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v80, v0, v36, v80
	v_fma_f32 v94, -v87, v85, 1.0
	v_div_fmas_f32 v35, v35, v96, v89
	v_mul_f32_e32 v89, v88, v86
	v_fma_f32 v0, -v90, v83, v93
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v36, v36, v67
	v_div_fixup_f32 v79, v35, v36, v79
	v_fma_f32 v35, -v97, v89, v88
	v_fma_f32 v93, -v91, v84, 1.0
	v_div_fmas_f32 v0, v0, v92, v83
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v90, s63, v72, v36, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v35, v86 :: v_dual_fmac_f32 v84, v93, v84
	v_div_scale_f32 v93, null, v36, v36, v66
	v_mul_f32_e32 v35, v90, v85
	v_div_scale_f32 v92, s61, v71, v36, v71
	v_div_fixup_f32 v76, v0, v36, v76
	v_fma_f32 v0, -v97, v89, v88
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v94, v83, 1.0
	v_fma_f32 v88, -v87, v35, v90
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v86, v89
	v_fmac_f32_e32 v83, v97, v83
	v_mul_f32_e32 v95, v92, v84
	v_fmac_f32_e32 v35, v88, v85
	v_div_scale_f32 v88, s62, v67, v36, v67
	v_fma_f32 v89, -v93, v96, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v86, -v91, v95, v92
	v_div_fixup_f32 v73, v0, v36, v73
	v_fma_f32 v0, -v87, v35, v90
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v96, v89, v96
	v_fmac_f32_e32 v95, v86, v84
	v_div_scale_f32 v89, null, v82, v82, v63
	v_div_scale_f32 v87, s64, v66, v36, v66
	v_mul_f32_e32 v86, v88, v83
	v_div_fmas_f32 v0, v0, v85, v35
	v_fma_f32 v35, -v91, v95, v92
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v82, v82, v62
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v91, v87, v96
	v_fma_f32 v85, -v94, v86, v88
	v_div_fmas_f32 v35, v35, v84, v95
	v_rcp_f32_e32 v84, v92
	v_div_fixup_f32 v72, v0, v36, v72
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v86, v85, v83
	v_fma_f32 v85, -v93, v91, v87
	v_fma_f32 v95, -v89, v90, 1.0
	v_div_fixup_f32 v71, v35, v36, v71
	v_div_scale_f32 v35, s61, v63, v82, v63
	v_fma_f32 v0, -v94, v86, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v85, v96 :: v_dual_fmac_f32 v90, v95, v90
	v_fma_f32 v85, -v92, v84, 1.0
	v_div_scale_f32 v88, null, v82, v82, v61
	v_div_fmas_f32 v0, v0, v83, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v35, v90
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v87, s62, v62, v82, v62
	v_div_scale_f32 v93, null, v82, v82, v60
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v94, v87, v84
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v89, v86, v35
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fixup_f32 v67, v0, v36, v67
	v_fma_f32 v0, -v92, v94, v87
	v_fmac_f32_e32 v86, v91, v90
	v_div_fixup_f32 v66, v83, v36, v66
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v36, s63, v61, v82, v61
	v_div_scale_f32 v83, null, v82, v82, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v35, -v89, v86, v35
	v_fmac_f32_e32 v94, v0, v84
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v36, v85
	v_rcp_f32_e32 v89, v83
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s64, v60, v82, v60
	v_div_fmas_f32 v35, v35, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	v_div_scale_f32 v95, null, v82, v82, v58
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v87, -v88, v0, v36
	v_mul_f32_e32 v90, v91, v96
	v_div_fmas_f32 v84, v86, v84, v94
	v_rcp_f32_e32 v86, v95
	v_fma_f32 v92, -v83, v89, 1.0
	v_fmac_f32_e32 v0, v87, v85
	v_fma_f32 v87, -v93, v90, v91
	v_div_fixup_f32 v62, v84, v82, v62
	v_div_fixup_f32 v63, v35, v82, v63
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s61, v59, v82, v59
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v95, v86, 1.0
	v_div_scale_f32 v87, null, v82, v82, v57
	v_fma_f32 v35, -v88, v0, v36
	v_mul_f32_e32 v36, v92, v89
	v_fmac_f32_e32 v86, v84, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s62, v58, v82, v58
	v_div_fmas_f32 v0, v35, v85, v0
	v_fma_f32 v35, -v93, v90, v91
	v_fma_f32 v85, -v83, v36, v92
	v_div_scale_f32 v91, null, v82, v82, v56
	s_mov_b32 vcc_lo, s64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v87, v84, 1.0
	v_fmac_f32_e32 v36, v85, v89
	v_rcp_f32_e32 v85, v91
	v_div_fmas_f32 v35, v35, v96, v90
	v_mul_f32_e32 v90, v88, v86
	v_div_fixup_f32 v61, v0, v82, v61
	v_fma_f32 v0, -v83, v36, v92
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v82, v82, v55
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v60, v35, v82, v60
	v_fma_f32 v35, -v95, v90, v88
	v_div_scale_f32 v83, s63, v57, v82, v57
	v_fma_f32 v92, -v91, v85, 1.0
	v_div_fmas_f32 v0, v0, v89, v36
	v_rcp_f32_e32 v36, v93
	v_fmac_f32_e32 v90, v35, v86
	v_mul_f32_e32 v35, v83, v84
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v89, s61, v56, v82, v56
	v_div_scale_f32 v92, null, v82, v82, v54
	v_div_fixup_f32 v59, v0, v82, v59
	v_fma_f32 v0, -v95, v90, v88
	v_fma_f32 v88, -v87, v35, v83
	v_mul_f32_e32 v94, v89, v85
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v36, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v35, v88, v84
	v_div_fmas_f32 v0, v0, v86, v90
	v_fma_f32 v86, -v91, v94, v89
	v_fmac_f32_e32 v36, v96, v36
	v_div_scale_f32 v88, s62, v55, v82, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v58, v0, v82, v58
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v0, -v87, v35, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v86, v85 :: v_dual_mul_f32 v83, v88, v36
	v_div_scale_f32 v87, null, v82, v82, v53
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s64, v54, v82, v54
	v_div_fmas_f32 v0, v0, v84, v35
	v_fma_f32 v35, -v91, v94, v89
	v_fma_f32 v84, -v93, v83, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v82, v82, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v83, v84, v36
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v35, v35, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v57, v0, v82, v57
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v0, -v93, v83, v88
	v_div_fixup_f32 v56, v35, v82, v56
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v35, s61, v53, v82, v53
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v84, 1.0
	v_div_scale_f32 v88, null, v82, v82, v51
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v96, null, v82, v82, v48
	v_div_fmas_f32 v0, v0, v36, v83
	v_fma_f32 v36, -v92, v90, v86
	v_dual_mul_f32 v83, v35, v89 :: v_dual_fmac_f32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s62, v52, v82, v52
	v_div_scale_f32 v92, null, v82, v82, v50
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v36, v36, v95, v90
	v_fma_f32 v90, -v87, v83, v35
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v55, v0, v82, v55
	v_fma_f32 v0, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v89
	v_div_fixup_f32 v54, v36, v82, v54
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v36, s63, v51, v82, v51
	v_div_scale_f32 v90, null, v82, v82, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v35, -v87, v83, v35
	v_fmac_f32_e32 v93, v0, v84
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v36, v85
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s64, v50, v82, v50
	v_div_fmas_f32 v35, v35, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v88, v0, v36
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v53, v35, v82, v53
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v0, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v52, v83, v82, v52
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s61, v49, v82, v49
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v81, v81, v47
	v_fma_f32 v35, -v88, v0, v36
	v_mul_f32_e32 v36, v91, v87
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s62, v48, v82, v48
	v_div_fmas_f32 v0, v35, v85, v0
	v_fma_f32 v35, -v92, v89, v94
	v_fma_f32 v85, -v90, v36, v91
	v_div_scale_f32 v92, null, v81, v81, v46
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v51, v0, v82, v51
	v_fmac_f32_e32 v36, v85, v87
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v35, v35, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v0, -v90, v36, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v81, v81, v45
	v_div_fixup_f32 v50, v35, v82, v50
	v_fma_f32 v35, -v96, v89, v88
	v_div_scale_f32 v90, s63, v47, v81, v47
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v0, v0, v87, v36
	v_rcp_f32_e32 v36, v93
	v_fmac_f32_e32 v89, v35, v84
	v_mul_f32_e32 v35, v90, v83
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v87, s61, v46, v81, v46
	v_div_scale_f32 v91, null, v81, v81, v44
	v_div_fixup_f32 v49, v0, v82, v49
	v_fma_f32 v0, -v96, v89, v88
	v_fma_f32 v88, -v86, v35, v90
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v36, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v35, v88, v83
	v_div_fmas_f32 v0, v0, v84, v89
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v36, v96, v36
	v_div_scale_f32 v88, s62, v45, v81, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v48, v0, v82, v48
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v0, -v86, v35, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v82, v88, v36
	v_div_scale_f32 v86, null, v81, v81, v43
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v84, s64, v44, v81, v44
	v_div_fmas_f32 v0, v0, v83, v35
	v_fma_f32 v35, -v92, v94, v87
	v_fma_f32 v83, -v93, v82, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v81, v81, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v84, v95 :: v_dual_fmac_f32 v82, v83, v36
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v35, v35, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v47, v0, v81, v47
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v0, -v93, v82, v88
	v_div_fixup_f32 v46, v35, v81, v46
	v_fmac_f32_e32 v89, v85, v95
	v_div_scale_f32 v35, s61, v43, v81, v43
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v85, -v90, v83, 1.0
	v_div_scale_f32 v88, null, v81, v81, v41
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v36, v82
	v_fma_f32 v36, -v91, v89, v84
	v_mul_f32_e32 v82, v35, v87
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v85, s62, v42, v81, v42
	v_div_scale_f32 v91, null, v81, v81, v40
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v36, v36, v95, v89
	v_fma_f32 v89, -v86, v82, v35
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v45, v0, v81, v45
	v_fma_f32 v0, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v87
	v_div_scale_f32 v89, null, v81, v81, v39
	v_div_fixup_f32 v44, v36, v81, v44
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v36, s63, v41, v81, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v35, -v86, v82, v35
	v_fmac_f32_e32 v92, v0, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v36, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s64, v40, v81, v40
	v_div_fmas_f32 v35, v35, v87, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v95, null, v81, v81, v38
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v85, -v88, v0, v36
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v0, v85, v84
	v_fma_f32 v85, -v91, v87, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s61, v39, v81, v39
	v_div_fixup_f32 v43, v35, v81, v43
	v_div_fixup_f32 v42, v82, v81, v42
	v_fma_f32 v35, -v88, v0, v36
	v_fmac_f32_e32 v87, v85, v94
	v_mul_f32_e32 v36, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v81, v81, v34
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s62, v38, v81, v38
	v_div_fmas_f32 v0, v35, v84, v0
	v_fma_f32 v35, -v91, v87, v93
	v_fma_f32 v84, -v89, v36, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v81, v81, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v84, v86
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v41, v0, v81, v41
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v35, v35, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v0, -v89, v36, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v40, v35, v81, v40
	v_fma_f32 v35, -v95, v87, v88
	v_div_scale_f32 v89, s63, v34, v81, v34
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v81, v81, v32
	v_div_fmas_f32 v0, v0, v86, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v35, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v36, v92
	v_div_scale_f32 v90, null, v81, v81, v30
	v_mul_f32_e32 v35, v89, v82
	v_div_scale_f32 v86, s61, v33, v81, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v0, v0, v81, v39
	v_fma_f32 v39, -v95, v87, v88
	v_fma_f32 v88, -v85, v35, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v36, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v39, v39, v83, v87
	v_fmac_f32_e32 v35, v88, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v36, v95, v36
	v_div_scale_f32 v87, s62, v32, v81, v32
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v38, v39, v81, v38
	v_fma_f32 v39, -v85, v35, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v36 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v81, v81, v28
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v85, s64, v30, v81, v30
	v_div_fmas_f32 v35, v39, v82, v35
	v_fma_f32 v39, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v81, v81, v27
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v36
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v39, v39, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v34, v35, v81, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v35, -v92, v83, v87
	v_div_fixup_f32 v33, v39, v81, v33
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v39, s61, v28, v81, v28
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, null, v64, v64, v24
	v_div_fmas_f32 v35, v35, v36, v83
	v_fma_f32 v36, -v90, v89, v85
	v_mul_f32_e32 v83, v39, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v64, v64, v25
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v85, s62, v27, v81, v27
	v_div_fmas_f32 v36, v36, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v32, v35, v81, v32
	v_div_fixup_f32 v30, v36, v81, v30
	v_rcp_f32_e32 v36, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v35, -v91, v90, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v64, v64, v21
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v39, -v88, v83, v39
	v_div_scale_f32 v88, null, v64, v64, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v90, v35, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_fma_f32 v93, -v92, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v88
	v_div_fmas_f32 v39, v39, v86, v83
	v_fma_f32 v83, -v91, v90, v85
	v_div_scale_f32 v35, s63, v25, v64, v25
	v_fmac_f32_e32 v36, v93, v36
	v_div_scale_f32 v86, s61, v24, v64, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v35, v87
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v91, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v95, v86, v36
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v90
	v_fma_f32 v93, -v84, v85, v35
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s64, v23, v64, v23
	v_fma_f32 v83, -v92, v95, v86
	v_div_fixup_f32 v28, v39, v81, v28
	v_div_fixup_f32 v27, v82, v81, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v91, v89
	v_div_scale_f32 v82, null, v64, v64, v19
	v_fmac_f32_e32 v85, v93, v87
	v_fmac_f32_e32 v95, v83, v36
	v_fma_f32 v39, -v88, v90, v91
	v_fma_f32 v81, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v35, -v84, v85, v35
	v_fma_f32 v83, -v92, v95, v86
	v_fmac_f32_e32 v90, v39, v89
	v_rcp_f32_e32 v39, v82
	v_fmac_f32_e32 v96, v81, v96
	v_div_scale_f32 v81, s62, v21, v64, v21
	v_div_fmas_f32 v35, v35, v87, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v85, null, v64, v64, v18
	v_div_fmas_f32 v36, v83, v36, v95
	v_fma_f32 v83, -v88, v90, v91
	v_mul_f32_e32 v84, v81, v96
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v82, v39, 1.0
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v25, v35, v64, v25
	v_div_fmas_f32 v83, v83, v89, v90
	v_fma_f32 v88, -v94, v84, v81
	v_fmac_f32_e32 v39, v86, v39
	v_div_scale_f32 v86, s61, v19, v64, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v23, v83, v64, v23
	v_fmac_f32_e32 v84, v88, v96
	v_div_scale_f32 v83, null, v64, v64, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v35, v86, v39
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v81, -v94, v84, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v89, v83
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v82, v35, v86
	v_div_fixup_f32 v24, v36, v64, v24
	v_div_fmas_f32 v81, v81, v96, v84
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v35, v88, v39
	v_div_scale_f32 v88, null, v64, v64, v16
	v_div_fixup_f32 v21, v81, v64, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v85, v87, 1.0
	v_fma_f32 v81, -v82, v35, v86
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v36, v87
	v_div_scale_f32 v36, s63, v18, v64, v18
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v64, v64, v14
	v_div_fmas_f32 v35, v81, v39, v35
	v_div_scale_f32 v39, null, v64, v64, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v86
	v_div_scale_f32 v81, s61, v17, v64, v17
	v_div_fixup_f32 v19, v35, v64, v19
	v_fma_f32 v35, -v88, v90, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v93, s63, v15, v64, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v35, v90
	v_fma_f32 v94, -v86, v92, 1.0
	v_div_scale_f32 v35, s62, v16, v64, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v94, v92
	v_mul_f32_e32 v84, v36, v87
	v_div_scale_f32 v94, s64, v14, v64, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v85, v84, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v36, -v85, v84, v36
	v_mul_f32_e32 v85, v81, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v87, v84
	v_fma_f32 v91, -v39, v82, 1.0
	v_fma_f32 v84, -v83, v85, v81
	v_mul_f32_e32 v87, v35, v90
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v18, v36, v64, v18
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v64, v64, v13
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v93, v82
	v_rcp_f32_e32 v95, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v36, -v83, v85, v81
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v81, -v39, v96, v93
	v_fmac_f32_e32 v87, v84, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v89, v85
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v84, -v91, v95, 1.0
	v_fma_f32 v81, -v86, v83, v94
	v_fma_f32 v35, -v88, v87, v35
	v_div_scale_f32 v85, null, v64, v64, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s61, v13, v64, v13
	v_fma_f32 v39, -v39, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	v_div_fixup_f32 v17, v36, v64, v17
	v_mul_f32_e32 v81, v84, v95
	v_div_fmas_f32 v35, v35, v90, v87
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v39, v39, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	s_mov_b32 vcc_lo, s64
	v_fma_f32 v86, -v91, v81, v84
	v_div_fixup_f32 v16, v35, v64, v16
	v_div_fixup_f32 v15, v39, v64, v15
	v_div_fmas_f32 v82, v82, v92, v83
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v81, v86, v95
	v_fma_f32 v39, -v85, v87, 1.0
	v_div_scale_f32 v36, null, v64, v64, v11
	v_div_fixup_f32 v14, v82, v64, v14
	v_div_scale_f32 v82, null, v64, v64, v9
	v_fma_f32 v35, -v91, v81, v84
	v_fmac_f32_e32 v87, v39, v87
	v_div_scale_f32 v39, null, v64, v64, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v82
	v_div_fmas_f32 v35, v35, v95, v81
	v_div_scale_f32 v83, vcc_lo, v12, v64, v12
	v_rcp_f32_e32 v81, v36
	v_rcp_f32_e32 v84, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v13, v35, v64, v13
	v_div_scale_f32 v89, null, v64, v64, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v82, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v36, v81, 1.0
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s63, v9, v64, v9
	v_fma_f32 v90, -v39, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v35, v81
	v_div_scale_f32 v35, s61, v11, v64, v11
	v_dual_mul_f32 v97, v93, v86 :: v_dual_mul_f32 v88, v83, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v85, v88, v83
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s64, v8, v64, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v95, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v85, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s61
	s_mov_b32 s61, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v61, v61, s61, 0x40e00000
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s62, v10, v64, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v35, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v90, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v83, v64, v12
	v_fma_f32 v92, -v36, v94, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v39, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v43, v43, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v92, v81
	v_fma_f32 v92, -v82, v97, v93
	v_fmac_f32_e32 v96, v85, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v59, v59
	v_med3_f32 v67, v67, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v36, v94, v35
	v_fma_f32 v36, -v89, v98, v95
	v_fma_f32 v39, -v39, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_cvt_i32_f32_e32 v90, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v35, v81, v94
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v39, v39, v84, v96
	v_fmac_f32_e32 v97, v92, v86
	v_div_fixup_f32 v11, v35, v64, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s61, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v39, v64, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v69
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v36, v91
	v_fma_f32 v36, -v82, v97, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	v_med3_f32 v25, v25, s61, 0x40e00000
	v_med3_f32 v24, v24, s61, 0x40e00000
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v82, 15, v67
	v_and_b32_e32 v67, 15, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v98, v95
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v86, v97
	s_mov_b32 vcc_lo, s64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s61, 0x40e00000
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_med3_f32 v11, v11, s61, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v97, v16
	v_and_b32_e32 v16, 15, v39
	v_and_b32_e32 v39, 15, v60
	v_and_b32_e32 v60, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 16, v123
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v36, v64, v9
	v_div_fixup_f32 v8, v81, v64, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v65
	v_rndne_f32_e32 v64, v70
	v_rndne_f32_e32 v70, v78
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v10, v10, s61, 0x40e00000
	v_cvt_i32_f32_e32 v88, v47
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v94, v19
	v_cvt_i32_f32_e32 v98, v15
	v_cvt_i32_f32_e32 v102, v11
	v_and_b32_e32 v78, 15, v71
	v_and_b32_e32 v71, 15, v52
	v_and_b32_e32 v52, 15, v41
	v_and_b32_e32 v11, 15, v25
	v_and_b32_e32 v15, 15, v24
	v_and_b32_e32 v19, 15, v23
	v_and_b32_e32 v41, 15, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v21, 13, v123
	v_and_b32_e32 v23, 0x2f0, v29
	v_lshlrev_b32_e32 v24, 8, v0
	v_and_b32_e32 v25, 64, v123
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v74
	v_rndne_f32_e32 v36, v68
	v_rndne_f32_e32 v74, v80
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_cvt_i32_f32_e32 v103, v10
	v_and_b32_e32 v10, 15, v88
	v_and_b32_e32 v88, 15, v27
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v27, 3, v107
	v_and_or_b32 v21, 0xe000, v21, v24
	v_xor_b32_e32 v23, v23, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v45, v45, s61, 0x40e00000
	v_med3_f32 v44, v44, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_med3_f32 v62, v62, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v46, v46, s61, 0x40e00000
	v_med3_f32 v9, v9, s61, 0x40e00000
	v_med3_f32 v8, v8, s61, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v21, v21, v27, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v72, v72, s61, 0x40e00000
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_med3_f32 v32, v32, s61, 0x40e00000
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_med3_f32 v13, v13, s61, 0x40e00000
	v_med3_f32 v12, v12, s61, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v79, v62
	v_cvt_i32_f32_e32 v81, v55
	v_cvt_i32_f32_e32 v89, v46
	v_cvt_i32_f32_e32 v104, v9
	v_cvt_i32_f32_e32 v105, v8
	v_and_b32_e32 v8, 15, v35
	v_and_b32_e32 v9, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v23, 0, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v77
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v77, v66
	v_cvt_i32_f32_e32 v80, v58
	v_cvt_i32_f32_e32 v84, v51
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v91, v42
	v_cvt_i32_f32_e32 v92, v40
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v95, v18
	v_and_b32_e32 v42, 15, v65
	v_and_b32_e32 v18, 15, v45
	v_and_b32_e32 v40, 15, v44
	v_and_b32_e32 v44, 15, v90
	v_and_b32_e32 v45, 15, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_cvt_i32_f32_e32 v96, v17
	v_cvt_i32_f32_e32 v99, v14
	v_cvt_i32_f32_e32 v100, v13
	v_cvt_i32_f32_e32 v101, v12
	v_and_b32_e32 v12, 15, v36
	v_and_b32_e32 v58, 15, v74
	v_and_b32_e32 v13, 15, v79
	v_and_b32_e32 v17, 15, v61
	v_and_b32_e32 v59, 15, v81
	v_and_b32_e32 v14, 15, v89
	v_and_b32_e32 v61, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v23, v[8:11]
	ds_store_b128 v23, v[42:45] offset:256
	v_xad_u32 v8, v21, 16, 0
	v_lshlrev_b32_e32 v9, 6, v123
	v_lshlrev_b32_e32 v10, 5, v22
	v_cndmask_b32_e64 v11, 0x2010, 0, s3
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s61, 0x40e00000
	v_med3_f32 v30, v30, s61, 0x40e00000
	v_and_b32_e32 v46, 15, v68
	v_and_b32_e32 v62, 15, v75
	v_and_b32_e32 v66, 15, v76
	v_and_b32_e32 v74, 15, v72
	v_and_b32_e32 v86, 15, v77
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v63, 15, v83
	v_and_b32_e32 v75, 15, v84
	v_and_b32_e32 v83, 15, v49
	v_and_b32_e32 v87, 15, v48
	v_and_b32_e32 v48, 15, v91
	v_and_b32_e32 v76, 15, v32
	v_and_b32_e32 v49, 15, v95
	v_and_b32_e32 v77, 15, v102
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_med3_f32 v73, v73, s61, 0x40e00000
	v_med3_f32 v34, v34, s61, 0x40e00000
	v_med3_f32 v33, v33, s61, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v93, v38
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v23, v[58:61] offset:2048
	ds_store_b128 v23, v[74:77] offset:2304
	ds_store_b128 v8, v[12:15]
	ds_store_b128 v8, v[46:49] offset:256
	v_lshlrev_b32_e32 v13, 2, v0
	v_and_or_b32 v9, 0x300, v9, v10
	v_xor_b32_e32 v10, v11, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s61, 0x40e00000
	v_cvt_i32_f32_e32 v85, v50
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v33, v33
	v_and_b32_e32 v38, 15, v64
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v65, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v25, v10, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v28, v28
	v_and_b32_e32 v79, 15, v85
	v_and_b32_e32 v80, 15, v30
	v_and_b32_e32 v81, 15, v103
	v_and_b32_e32 v50, 15, v69
	v_and_b32_e32 v54, 15, v70
	v_and_b32_e32 v70, 15, v73
	v_and_b32_e32 v68, 15, v34
	v_and_b32_e32 v72, 15, v33
	v_and_b32_e32 v69, 15, v100
	v_and_b32_e32 v73, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v21, 32, 0
	ds_store_b128 v8, v[62:65] offset:2048
	ds_store_b128 v8, v[78:81] offset:2304
	v_xad_u32 v8, v21, 48, 0
	v_add_nc_u32_e32 v21, 0, v25
	v_xad_u32 v36, 0x8040, v25, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v57
	v_and_b32_e32 v84, 15, v28
	v_and_b32_e32 v53, 15, v96
	v_and_b32_e32 v85, 15, v104
	v_and_b32_e32 v89, 15, v105
	v_and_b32_e32 v55, 15, v56
	v_and_b32_e32 v56, 15, v92
	v_and_b32_e32 v57, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v35, 0x4020, v25, 0
	v_xad_u32 v25, 0xc060, v25, 0
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[50:53] offset:256
	ds_store_b128 v12, v[66:69] offset:2048
	ds_store_b128 v12, v[82:85] offset:2304
	ds_store_b128 v8, v[38:41]
	ds_store_b128 v8, v[54:57] offset:256
	ds_store_b128 v8, v[70:73] offset:2048
	ds_store_b128 v8, v[86:89] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v21
	ds_load_b128 v[12:15], v21 offset:128
	ds_load_b128 v[16:19], v21 offset:4096
	ds_load_b128 v[21:24], v21 offset:4224
	ds_load_b128 v[46:49], v36
	ds_load_b128 v[50:53], v36 offset:128
	ds_load_b128 v[54:57], v36 offset:4096
	ds_load_b128 v[58:61], v36 offset:4224
	ds_load_b128 v[62:65], v25 offset:4096
	ds_load_b128 v[66:69], v25
	ds_load_b128 v[70:73], v25 offset:128
	ds_load_b128 v[74:77], v25 offset:4224
	ds_load_b128 v[27:30], v35
	ds_load_b128 v[31:34], v35 offset:128
	ds_load_b128 v[38:41], v35 offset:4096
	ds_load_b128 v[42:45], v35 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s3, s66, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v37, null, s67, 0, s3
	v_add_co_u32 v78, s3, s66, v7
	v_add_co_ci_u32_e64 v79, null, s67, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s66, v7
	v_lshl_or_b32 v3, s77, 7, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[72:73], v[36:37]
	v_cmp_le_i64_e64 s63, s[72:73], v[78:79]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v35, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v70, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 4, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[78:79]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v71, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 6, v4
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 8, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v62, v21, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 10, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[74:75], v[36:37]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v78, v38, 4, v27
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v63, v22, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 12, v4
	v_add_nc_u32_e32 v27, 34, v4
	v_add_nc_u32_e32 v36, 48, v4
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v75, v40, 4, v29
	v_lshl_or_b32 v64, v23, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 14, v4
	v_add_nc_u32_e32 v29, 36, v4
	v_add_nc_u32_e32 v38, 50, v4
	v_mad_u64_u32 v[8:9], null, v9, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v74, v39, 4, v28
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v76, 4, v72
	v_lshl_or_b32 v72, v41, 4, v30
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v65, v24, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 16, v4
	v_add_nc_u32_e32 v30, 38, v4
	v_add_nc_u32_e32 v39, 52, v4
	v_mad_u64_u32 v[9:10], null, v10, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v66, v42, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 18, v4
	v_add_nc_u32_e32 v21, 26, v4
	v_add_nc_u32_e32 v31, 40, v4
	v_add_nc_u32_e32 v40, 54, v4
	v_mad_u64_u32 v[10:11], null, v11, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v43, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 20, v4
	v_add_nc_u32_e32 v23, 28, v4
	v_add_nc_u32_e32 v32, 42, v4
	v_add_nc_u32_e32 v41, 56, v4
	v_mad_u64_u32 v[11:12], null, v12, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v44, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 22, v4
	v_add_nc_u32_e32 v24, 30, v4
	v_add_nc_u32_e32 v33, 44, v4
	v_add_nc_u32_e32 v42, 58, v4
	v_mad_u64_u32 v[12:13], null, v13, s72, v[3:4]
	v_mad_u64_u32 v[27:28], null, v27, s72, v[3:4]
	v_mad_u64_u32 v[36:37], null, v36, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 24, v4
	v_add_nc_u32_e32 v25, 32, v4
	v_add_nc_u32_e32 v34, 46, v4
	v_add_nc_u32_e32 v43, 60, v4
	v_add_nc_u32_e32 v69, 62, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	v_mad_u64_u32 v[28:29], null, v29, s72, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_mad_u64_u32 v[21:22], null, v21, s72, v[3:4]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	v_mad_u64_u32 v[41:42], null, v42, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v35, v6, s[64:67], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	v_mad_u64_u32 v[42:43], null, v43, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v69, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s61
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
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
	buffer_store_b8 v78, v4, s[64:67], 0 offen
	buffer_store_b8 v46, v6, s[64:67], 0 offen
	buffer_store_b8 v54, v7, s[64:67], 0 offen
	buffer_store_b8 v62, v8, s[64:67], 0 offen
	buffer_store_b8 v66, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v77, 4, v73
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
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v26.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v50, v4, s[64:67], 0 offen
	buffer_store_b8 v58, v6, s[64:67], 0 offen
	buffer_store_b8 v70, v7, s[64:67], 0 offen
	buffer_store_b8 v74, v8, s[64:67], 0 offen
	buffer_store_b8 v47, v9, s[64:67], 0 offen
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
	buffer_store_b8 v55, v4, s[64:67], 0 offen
	buffer_store_b8 v63, v6, s[64:67], 0 offen
	buffer_store_b8 v67, v7, s[64:67], 0 offen
	buffer_store_b8 v51, v8, s[64:67], 0 offen
	buffer_store_b8 v59, v9, s[64:67], 0 offen
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
	buffer_store_b8 v71, v4, s[64:67], 0 offen
	buffer_store_b8 v75, v6, s[64:67], 0 offen
	buffer_store_b8 v48, v7, s[64:67], 0 offen
	buffer_store_b8 v56, v8, s[64:67], 0 offen
	buffer_store_b8 v64, v9, s[64:67], 0 offen
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
	v_cndmask_b32_e32 v8, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v44, v4, s[64:67], 0 offen
	buffer_store_b8 v52, v6, s[64:67], 0 offen
	buffer_store_b8 v60, v7, s[64:67], 0 offen
	buffer_store_b8 v68, v8, s[64:67], 0 offen
	buffer_store_b8 v72, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v42, vcc_lo
	s_clause 0x4
	buffer_store_b8 v49, v4, s[64:67], 0 offen
	buffer_store_b8 v57, v6, s[64:67], 0 offen
	buffer_store_b8 v65, v7, s[64:67], 0 offen
	buffer_store_b8 v45, v8, s[64:67], 0 offen
	buffer_store_b8 v53, v9, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v123
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v106
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s76, s76, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v61, v3, s[64:67], 0 offen
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
	v_and_b32_e32 v2, 0xc0, v123
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
.Ltmp72:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 116
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 116
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19580
; TotalNumSgprs: 80
; NumVgprs: 256
; ScratchSize: 116
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 116
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 28
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
