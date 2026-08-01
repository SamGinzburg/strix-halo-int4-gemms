	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v107, v0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v107
	v_and_b32_e32 v0, 0x7f, v107
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
	v_and_b32_e32 v6, 0x7f, v107
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow469
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v109, 0x80, v107
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v108, 15, v107
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v51, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s3, 0, v109
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v89, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s8, s66, v108
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
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v2, s66, v108
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s9, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[72:73], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[6:7]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v3, v2, s34
	v_cndmask_b32_e64 v38, 0x88, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_mov_b32_e32 v84, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s77, 8
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v5, 32, v2
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_xor_b32_e32 v38, v38, v0
	v_or_b32_e32 v0, s7, v107
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v3, off          ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 16, v2
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v2, 48, v2
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v35, 1, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v3, v3, s34
	v_mul_lo_u32 v2, v2, s34
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s9, s[8:9], 0x0
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v39, 5, v108
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v40, 24, v35
	v_mov_b32_e32 v77, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:4
	scratch_store_b32 off, v109, off offset:80
	scratch_store_b32 off, v2, off offset:12
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v2, 0xe0, v107
	.loc	1 1045 36 is_stmt 0             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v4, 5, v107
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[74:75], v[8:9]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 4, v2
	v_or_b32_e32 v41, 0x300, v107
	v_lshlrev_b32_e32 v46, 5, v107
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v3, s7, v4
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v4, v5, s34
	v_or3_b32 v39, v39, v40, v2
	v_and_b32_e32 v2, 0xf0, v107
	v_add_nc_u32_e32 v111, 0, v41
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v46, 32, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v45, 8, v39
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	s_and_b32 s4, s6, s8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s30, s76
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:8
	scratch_store_b32 off, v108, off offset:76
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v118, 0, v45
	v_mov_b32_e32 v45, 0
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v49, 2, v2
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s6, s9
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
	v_xor_b32_e32 v47, 16, v39
	v_xor_b32_e32 v48, 24, v39
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v117, 0, v39
	v_mov_b32_e32 v39, 0
	v_add3_u32 v46, 0, v49, v46
	v_lshlrev_b32_e32 v49, 1, v2
	v_mad_u64_u32 v[2:3], null, v3, s30, s[6:7]
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v42, 0x700, v107
	v_or_b32_e32 v40, 0x3f0, v107
	v_or_b32_e32 v43, 0x7f0, v107
	v_xor_b32_e32 v44, 0x110, v38
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v35, 28, v35
	scratch_store_b64 off, v[2:3], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v4, s30, s[6:7]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v103, 6, v107
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v108, 0, v108
	v_add_nc_u32_e32 v110, v46, v35
	v_add_nc_u32_e32 v112, 0, v42
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v113, 0, v40
	scratch_store_b64 off, v[2:3], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v5, s30, s[6:7]
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v114, 0, v43
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v115, 0, v38
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v116, 0, v44
	scratch_store_b64 off, v[2:3], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v6, s30, s[6:7]
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v119, 0, v47
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v120, 0, v48
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v122, 0, v107
	scratch_store_b64 off, v[2:3], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v7, s30, s[6:7]
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v121, 0, v49
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	scratch_store_b64 off, v[2:3], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v8, s30, s[6:7]
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b64 off, v[2:3], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v9, s30, s[6:7]
	v_mad_u64_u32 v[9:10], null, v10, s30, s[6:7]
	v_mad_u64_u32 v[10:11], null, v11, s30, s[6:7]
	v_mad_u64_u32 v[11:12], null, v12, s30, s[6:7]
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
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v38, 0
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
	scratch_store_b64 off, v[2:3], off offset:68 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s7, s6, 5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s10
	v_or_b32_e32 v34, s7, v103
	s_mov_b32 s31, s11
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	v_mov_b32_e32 v8, v107
	v_mad_u64_u32 v[34:35], null, v34, s33, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v123, 0x80000000, v34, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v34, 4, v103
	v_or_b32_e32 v34, s7, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s33, v[1:2]
	v_cndmask_b32_e64 v124, 0x80000000, v34, s2
	v_or_b32_e32 v34, 8, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v34, s7, v34
	v_mad_u64_u32 v[34:35], null, v34, s33, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v125, 0x80000000, v34, s2
	v_or_b32_e32 v34, 12, v103
	v_or_b32_e32 v34, s7, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s33, v[1:2]
	v_cndmask_b32_e64 v126, 0x80000000, v34, s2
	v_or_b32_e32 v34, 16, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v34, s7, v34
	v_mad_u64_u32 v[34:35], null, v34, s33, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v127, 0x80000000, v34, s2
	v_or_b32_e32 v34, 20, v103
	v_or_b32_e32 v34, s7, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s33, v[1:2]
	v_cndmask_b32_e64 v128, 0x80000000, v34, s2
	v_or_b32_e32 v34, 24, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v34, s7, v34
	v_mad_u64_u32 v[34:35], null, v34, s33, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v130, 0x80000000, v34, s2
	v_or_b32_e32 v34, 28, v103
	v_or_b32_e32 v34, s7, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s33, v[1:2]
	scratch_load_b64 v[2:3], off, off offset:20 ; 8-byte Folded Reload
	v_and_b32_e32 v35, 31, v107
	v_or_b32_e32 v35, s7, v35
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_mul_i32 s7, s7, s76
	v_add_nc_u32_e32 v137, v9, v35
	v_add_nc_u32_e32 v138, v10, v35
	v_add_nc_u32_e32 v139, v11, v35
	v_add_nc_u32_e32 v140, v12, v35
	v_add_nc_u32_e32 v141, v13, v35
	v_add_nc_u32_e32 v142, v14, v35
	v_add_nc_u32_e32 v143, v15, v35
	v_add_nc_u32_e32 v144, v16, v35
	v_add_nc_u32_e32 v145, v17, v35
	v_add_nc_u32_e32 v146, v18, v35
	v_add_nc_u32_e32 v147, v19, v35
	v_add_nc_u32_e32 v148, v20, v35
	v_add_nc_u32_e32 v150, v21, v35
	v_add_nc_u32_e32 v160, v22, v35
	v_add_nc_u32_e32 v161, v23, v35
	v_add_nc_u32_e32 v162, v24, v35
	v_add_nc_u32_e32 v163, v25, v35
	v_add_nc_u32_e32 v164, v26, v35
	v_add_nc_u32_e32 v165, v27, v35
	v_add_nc_u32_e32 v166, v28, v35
	v_add_nc_u32_e32 v167, v29, v35
	v_add_nc_u32_e32 v168, v30, v35
	v_add_nc_u32_e32 v169, v31, v35
	v_add_nc_u32_e32 v170, v32, v35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, v2, v35
	scratch_load_b64 v[2:3], off, off offset:28 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, v2, v35
	scratch_load_b64 v[2:3], off, off offset:36 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, v2, v35
	scratch_load_b64 v[2:3], off, off offset:44 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, v2, v35
	scratch_load_b64 v[2:3], off, off offset:52 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v134, v2, v35
	scratch_load_b64 v[2:3], off, off offset:60 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, v2, v35
	scratch_load_b64 v[2:3], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, v2, v35
	v_add_nc_u32_e32 v35, v33, v35
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v149, v129, s[8:11], 0 offen
	buffer_load_u8 v129, v131, s[8:11], 0 offen
	buffer_load_u8 v151, v132, s[8:11], 0 offen
	buffer_load_u8 v131, v133, s[8:11], 0 offen
	buffer_load_u8 v152, v134, s[8:11], 0 offen
	buffer_load_u8 v133, v135, s[8:11], 0 offen
	buffer_load_u8 v153, v136, s[8:11], 0 offen
	buffer_load_u8 v134, v137, s[8:11], 0 offen
	buffer_load_u8 v154, v138, s[8:11], 0 offen
	buffer_load_u8 v135, v139, s[8:11], 0 offen
	buffer_load_u8 v155, v140, s[8:11], 0 offen
	buffer_load_u8 v136, v141, s[8:11], 0 offen
	buffer_load_u8 v156, v142, s[8:11], 0 offen
	buffer_load_u8 v137, v143, s[8:11], 0 offen
	buffer_load_u8 v157, v144, s[8:11], 0 offen
	buffer_load_u8 v139, v145, s[8:11], 0 offen
	buffer_load_u8 v158, v146, s[8:11], 0 offen
	buffer_load_u8 v141, v147, s[8:11], 0 offen
	buffer_load_u8 v159, v148, s[8:11], 0 offen
	buffer_load_u8 v142, v150, s[8:11], 0 offen
	buffer_load_u8 v160, v160, s[8:11], 0 offen
	buffer_load_u8 v143, v161, s[8:11], 0 offen
	buffer_load_u8 v162, v162, s[8:11], 0 offen
	buffer_load_u8 v144, v163, s[8:11], 0 offen
	buffer_load_u8 v164, v164, s[8:11], 0 offen
	buffer_load_u8 v145, v165, s[8:11], 0 offen
	buffer_load_u8 v165, v166, s[8:11], 0 offen
	buffer_load_u8 v146, v167, s[8:11], 0 offen
	buffer_load_u8 v166, v168, s[8:11], 0 offen
	buffer_load_u8 v147, v169, s[8:11], 0 offen
	buffer_load_u8 v167, v170, s[8:11], 0 offen
	buffer_load_u8 v150, v35, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v35, v123, s[12:15], 0 offen
	buffer_load_u8 v123, v124, s[12:15], 0 offen
	buffer_load_u8 v124, v125, s[12:15], 0 offen
	buffer_load_u8 v125, v127, s[12:15], 0 offen
	buffer_load_u8 v127, v128, s[12:15], 0 offen
	buffer_load_u8 v128, v130, s[12:15], 0 offen
	buffer_load_u8 v34, v34, s[12:15], 0 offen
	buffer_load_u8 v126, v126, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v122, v35
	s_waitcnt vmcnt(6)
	ds_store_b8 v122, v123 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v122, v124 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v122, v125 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v122, v127 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v111, v126
	ds_store_b8 v122, v128 offset:1536
	ds_store_b8 v112, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v34, v108 offset:320
	ds_load_u8 v35, v108 offset:256
	ds_load_u8 v193, v108 offset:336
	ds_load_u8 v194, v108 offset:272
	ds_load_u8 v170, v108 offset:352
	ds_load_u8 v172, v108 offset:288
	ds_load_u8 v123, v108 offset:368
	ds_load_u8 v124, v108 offset:304
	ds_load_u8 v249, v108 offset:1168
	ds_load_u8 v250, v108 offset:1184
	ds_load_u8 v251, v108 offset:1040
	ds_load_u8 v252, v108 offset:1056
	ds_load_u8 v253, v108 offset:1424
	ds_load_u8 v254, v108 offset:1440
	ds_load_u8 v255, v108 offset:1296
	ds_load_u8 v36, v108 offset:1312
	ds_load_u8 v102, v108 offset:1680
	ds_load_u8 v37, v108 offset:1696
	ds_load_u8 v104, v108 offset:1552
	ds_load_u8 v0, v108 offset:1568
	ds_load_u8 v105, v108 offset:1936
	ds_load_u8 v106, v108 offset:1952
	ds_load_u8 v107, v108 offset:1808
	ds_load_u8 v109, v108 offset:1824
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v108 offset:448
	ds_load_u8 v127, v108 offset:384
	ds_load_u8 v200, v108 offset:464
	ds_load_u8 v201, v108 offset:400
	ds_load_u8 v175, v108 offset:480
	ds_load_u8 v176, v108 offset:416
	ds_load_u8 v125, v108 offset:496
	ds_load_u8 v126, v108 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v127, v35, 0xc0c0004
	ds_load_u8 v130, v108 offset:64
	ds_load_u8 v132, v108
	ds_load_u8 v205, v108 offset:80
	ds_load_u8 v179, v108 offset:96
	ds_load_u8 v127, v108 offset:112
	ds_load_u8 v206, v108 offset:16
	ds_load_u8 v180, v108 offset:32
	ds_load_u8 v128, v108 offset:48
	v_lshl_or_b32 v35, v35, 16, v34
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v132, v130, 0xc0c0004
	ds_load_u8 v140, v108 offset:192
	ds_load_u8 v148, v108 offset:128
	ds_load_u8 v208, v108 offset:208
	ds_load_u8 v209, v108 offset:144
	ds_load_u8 v181, v108 offset:224
	ds_load_u8 v182, v108 offset:160
	ds_load_u8 v130, v108 offset:240
	ds_load_u8 v132, v108 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v148, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v140, 16, v138
	ds_load_u8 v148, v108 offset:832
	ds_load_u8 v161, v108 offset:768
	ds_load_u8 v210, v108 offset:848
	ds_load_u8 v211, v108 offset:784
	ds_load_u8 v183, v108 offset:864
	ds_load_u8 v184, v108 offset:800
	ds_load_u8 v138, v108 offset:880
	ds_load_u8 v140, v108 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v168, v161, v148, 0xc0c0004
	ds_load_u8 v161, v108 offset:960
	ds_load_u8 v163, v108 offset:896
	ds_load_u8 v212, v108 offset:976
	ds_load_u8 v213, v108 offset:912
	ds_load_u8 v185, v108 offset:992
	ds_load_u8 v186, v108 offset:928
	ds_load_u8 v148, v108 offset:944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v173, v163, v161, 0xc0c0004
	ds_load_u8 v169, v108 offset:576
	ds_load_u8 v171, v108 offset:512
	ds_load_u8 v214, v108 offset:592
	ds_load_u8 v215, v108 offset:528
	ds_load_u8 v187, v108 offset:608
	ds_load_u8 v188, v108 offset:544
	ds_load_u8 v161, v108 offset:624
	ds_load_u8 v163, v108 offset:560
	v_lshl_or_b32 v231, v173, 16, v168
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v174, v171, v169, 0xc0c0004
	ds_load_u8 v177, v108 offset:704
	ds_load_u8 v178, v108 offset:640
	ds_load_u8 v217, v108 offset:720
	ds_load_u8 v218, v108 offset:656
	ds_load_u8 v191, v108 offset:736
	ds_load_u8 v192, v108 offset:672
	ds_load_u8 v169, v108 offset:752
	ds_load_u8 v171, v108 offset:688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v230, v177, 16, v174
	ds_load_u8 v177, v108 offset:1344
	ds_load_u8 v178, v108 offset:1280
	ds_load_u8 v168, v108 offset:1264
	ds_load_u8 v220, v108 offset:1360
	ds_load_u8 v197, v108 offset:1376
	ds_load_u8 v173, v108 offset:1392
	ds_load_u8 v174, v108 offset:1328
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v196, v178, v177, 0xc0c0004
	ds_load_u8 v189, v108 offset:1408
	ds_load_u8 v190, v108 offset:1472
	ds_load_u8 v236, v108 offset:1488
	ds_load_u8 v202, v108 offset:1504
	ds_load_u8 v177, v108 offset:1520
	ds_load_u8 v178, v108 offset:1456
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v36, v197, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v198, v189, v190, 0xc0c0004
	ds_load_u8 v195, v108 offset:1024
	ds_load_u8 v199, v108 offset:1088
	ds_load_u8 v237, v108 offset:1104
	ds_load_u8 v216, v108 offset:1120
	ds_load_u8 v189, v108 offset:1136
	ds_load_u8 v190, v108 offset:1072
	v_lshl_or_b32 v233, v198, 16, v196
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v199, v195, v199, 0xc0c0004
	ds_load_u8 v203, v108 offset:1152
	ds_load_u8 v204, v108 offset:1216
	ds_load_u8 v238, v108 offset:1232
	ds_load_u8 v219, v108 offset:1248
	ds_load_u8 v195, v108 offset:1200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v203, v203, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v232, v203, 16, v199
	ds_load_u8 v203, v108 offset:1792
	ds_load_u8 v204, v108 offset:1856
	ds_load_u8 v239, v108 offset:1872
	ds_load_u8 v221, v108 offset:1888
	ds_load_u8 v196, v108 offset:1904
	ds_load_u8 v198, v108 offset:1840
	ds_load_u8 v199, v108 offset:1776
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v222, v203, v204, 0xc0c0004
	ds_load_u8 v223, v108 offset:1920
	ds_load_u8 v224, v108 offset:1984
	ds_load_u8 v240, v108 offset:2000
	ds_load_u8 v241, v108 offset:2016
	ds_load_u8 v207, v113
	ds_load_u8 v203, v114
	ds_load_u8 v204, v108 offset:1968
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v107, v107, v239, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v223, v223, v224, 0xc0c0004
	ds_load_u8 v224, v108 offset:1536
	ds_load_u8 v225, v108 offset:1600
	ds_load_u8 v242, v108 offset:1616
	ds_load_u8 v243, v108 offset:1632
	ds_load_u8 v244, v108 offset:1648
	ds_load_u8 v245, v108 offset:1584
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v105, v105, v240, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v106, v106, v241, 0xc0c0004
	v_lshl_or_b32 v235, v223, 16, v222
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v224, v224, v225, 0xc0c0004
	ds_load_u8 v225, v108 offset:1664
	ds_load_u8 v226, v108 offset:1728
	ds_load_u8 v246, v108 offset:1744
	ds_load_u8 v247, v108 offset:1760
	ds_load_u8 v248, v108 offset:1712
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v115, v149
	ds_store_b8 v115, v151 offset:512
	ds_store_b8 v115, v152 offset:1024
	ds_store_b8 v115, v153 offset:1536
	ds_store_b8 v115, v154 offset:2048
	ds_store_b8 v115, v155 offset:2560
	ds_store_b8 v115, v156 offset:3072
	ds_store_b8 v115, v157 offset:3584
	ds_store_b8 v115, v158 offset:4096
	ds_store_b8 v115, v159 offset:4608
	ds_store_b8 v115, v160 offset:5120
	ds_store_b8 v115, v162 offset:5632
	ds_store_b8 v115, v164 offset:6144
	ds_store_b8 v115, v165 offset:6656
	ds_store_b8 v115, v166 offset:7168
	ds_store_b8 v115, v167 offset:7680
	ds_store_b8 v116, v129
	ds_store_b8 v116, v131 offset:512
	ds_store_b8 v116, v133 offset:1024
	ds_store_b8 v116, v134 offset:1536
	ds_store_b8 v116, v135 offset:2048
	ds_store_b8 v116, v136 offset:2560
	ds_store_b8 v116, v137 offset:3072
	ds_store_b8 v116, v139 offset:3584
	ds_store_b8 v116, v141 offset:4096
	ds_store_b8 v116, v142 offset:4608
	ds_store_b8 v116, v143 offset:5120
	ds_store_b8 v116, v144 offset:5632
	ds_store_b8 v116, v145 offset:6144
	ds_store_b8 v116, v146 offset:6656
	ds_store_b8 v116, v147 offset:7168
	ds_store_b8 v116, v150 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[133:136], v117 offset1:8
	ds_load_2addr_stride64_b64 v[141:144], v118 offset1:8
	ds_load_2addr_stride64_b64 v[157:160], v119 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v156, s27 :: v_dual_mov_b32 v155, s26
	v_dual_mov_b32 v154, s25 :: v_dual_mov_b32 v153, s24
	v_dual_mov_b32 v152, s23 :: v_dual_mov_b32 v151, s22
	v_dual_mov_b32 v150, s21 :: v_dual_mov_b32 v149, s20
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[164:167], v120 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v225, v225, v226, 0xc0c0004
	v_perm_b32 v129, v206, v205, 0xc0c0004
	v_perm_b32 v131, v209, v208, 0xc0c0004
	v_perm_b32 v137, v215, v214, 0xc0c0004
	v_perm_b32 v139, v218, v217, 0xc0c0004
	v_lshl_or_b32 v234, v225, 16, v224
	v_perm_b32 v104, v104, v242, 0xc0c0004
	v_perm_b32 v102, v102, v246, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[222:229], v[133:134], v[34:35], v[149:156] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v139, 16, v137
	v_perm_b32 v137, v251, v237, 0xc0c0004
	v_perm_b32 v139, v249, v238, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[222:229], v[141:142], v[230:231], v[222:229] neg_lo:[1,1,0]
	v_perm_b32 v0, v0, v243, 0xc0c0004
	v_perm_b32 v37, v37, v247, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[222:229], v[157:158], v[232:233], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[222:229], v[164:165], v[234:235], v[222:229] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v222
	v_cvt_f32_i32_e32 v162, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v224
	v_cvt_f32_i32_e32 v3, v225
	v_cvt_f32_i32_e32 v4, v226
	v_cvt_f32_i32_e32 v5, v227
	v_cvt_f32_i32_e32 v6, v228
	v_cvt_f32_i32_e32 v7, v229
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[222:229], v[135:136], v[34:35], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v34, v194, v193, 0xc0c0004
	v_perm_b32 v35, v201, v200, 0xc0c0004
	v_lshl_or_b32 v193, v139, 16, v137
	v_lshl_or_b32 v201, v105, 16, v107
	v_lshl_or_b32 v200, v102, 16, v104
	v_perm_b32 v137, v188, v187, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v34, v131, 16, v129
	v_perm_b32 v129, v211, v210, 0xc0c0004
	v_perm_b32 v131, v213, v212, 0xc0c0004
	v_perm_b32 v139, v192, v191, 0xc0c0004
	v_lshl_or_b32 v187, v37, 16, v0
	v_wmma_i32_16x16x16_iu4 v[208:215], v[133:134], v[34:35], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v146, v131, 16, v129
	v_perm_b32 v129, v255, v220, 0xc0c0004
	v_perm_b32 v131, v253, v236, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[222:229], v[143:144], v[230:231], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[208:215], v[141:142], v[145:146], v[208:215] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v194, v131, 16, v129
	v_perm_b32 v129, v180, v179, 0xc0c0004
	v_perm_b32 v131, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[222:229], v[159:160], v[232:233], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[208:215], v[157:158], v[193:194], v[208:215] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[222:229], v[166:167], v[234:235], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[208:215], v[164:165], v[200:201], v[208:215] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v228, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v102, v208
	v_cvt_f32_i32_e32 v104, v209
	v_cvt_f32_i32_e32 v105, v210
	v_cvt_f32_i32_e32 v107, v211
	v_cvt_f32_i32_e32 v205, v212
	v_cvt_f32_i32_e32 v206, v213
	v_cvt_f32_i32_e32 v217, v214
	v_cvt_f32_i32_e32 v218, v215
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[208:215], v[135:136], v[34:35], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v34, v172, v170, 0xc0c0004
	v_perm_b32 v35, v176, v175, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v222, v222
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[208:215], v[143:144], v[145:146], v[208:215] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v139, 16, v137
	v_perm_b32 v137, v250, v219, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v34, v131, 16, v129
	v_perm_b32 v129, v184, v183, 0xc0c0004
	v_perm_b32 v131, v186, v185, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v224, v224
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[179:186], v[133:134], v[34:35], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v146, v131, 16, v129
	v_perm_b32 v129, v254, v202, 0xc0c0004
	v_perm_b32 v131, v252, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[208:215], v[159:160], v[193:194], v[208:215] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v225, v225
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[179:186], v[141:142], v[145:146], v[179:186] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v129, 16, v36
	v_lshl_or_b32 v175, v137, 16, v131
	v_perm_b32 v36, v109, v221, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[208:215], v[166:167], v[200:201], v[208:215] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v229, v229
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[179:186], v[157:158], v[175:176], v[179:186] neg_lo:[1,1,0]
	v_lshl_or_b32 v188, v106, 16, v36
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v193, v208
	v_cvt_f32_i32_e32 v208, v209
	v_cvt_f32_i32_e32 v209, v210
	v_cvt_f32_i32_e32 v210, v211
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[179:186], v[164:165], v[187:188], v[179:186] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v200, v214
	v_cvt_f32_i32_e32 v194, v213
	v_cvt_f32_i32_e32 v201, v215
	v_cvt_f32_i32_e32 v211, v212
	v_cvt_f32_i32_e32 v0, v179
	v_cvt_f32_i32_e32 v36, v180
	v_cvt_f32_i32_e32 v37, v181
	v_cvt_f32_i32_e32 v106, v182
	v_cvt_f32_i32_e32 v109, v183
	v_cvt_f32_i32_e32 v170, v184
	v_cvt_f32_i32_e32 v172, v185
	v_cvt_f32_i32_e32 v191, v186
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[179:186], v[135:136], v[34:35], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v34, v124, v123, 0xc0c0004
	v_perm_b32 v35, v126, v125, 0xc0c0004
	v_perm_b32 v123, v128, v127, 0xc0c0004
	v_perm_b32 v124, v132, v130, 0xc0c0004
	v_perm_b32 v125, v140, v138, 0xc0c0004
	v_perm_b32 v126, v148, v207, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[179:186], v[143:144], v[145:146], v[179:186] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v124, 16, v123
	v_perm_b32 v123, v163, v161, 0xc0c0004
	v_perm_b32 v124, v171, v169, 0xc0c0004
	v_lshl_or_b32 v132, v126, 16, v125
	v_perm_b32 v125, v190, v189, 0xc0c0004
	v_perm_b32 v126, v195, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[179:186], v[159:160], v[175:176], v[179:186] neg_lo:[1,1,0]
	v_lshl_or_b32 v131, v124, 16, v123
	v_perm_b32 v123, v174, v173, 0xc0c0004
	v_perm_b32 v124, v178, v177, 0xc0c0004
	v_lshl_or_b32 v137, v126, 16, v125
	v_perm_b32 v125, v198, v196, 0xc0c0004
	v_perm_b32 v126, v204, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[179:186], v[166:167], v[187:188], v[179:186] neg_lo:[1,1,0]
	v_lshl_or_b32 v138, v124, 16, v123
	v_perm_b32 v123, v245, v244, 0xc0c0004
	v_perm_b32 v124, v248, v199, 0xc0c0004
	v_lshl_or_b32 v140, v126, 16, v125
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v176, v186
	v_cvt_f32_i32_e32 v145, v179
	v_cvt_f32_i32_e32 v179, v180
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v139, v124, 16, v123
	v_wmma_i32_16x16x16_iu4 v[123:130], v[133:134], v[34:35], v[149:156] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v180, v181
	v_cvt_f32_i32_e32 v181, v182
	v_cvt_f32_i32_e32 v146, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[123:130], v[141:142], v[131:132], v[123:130] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v175, v185
	v_cvt_f32_i32_e32 v182, v183
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[123:130], v[157:158], v[137:138], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[164:165], v[139:140], v[123:130] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v134, v124
	v_cvt_f32_i32_e32 v141, v125
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v142, v126
	v_cvt_f32_i32_e32 v148, v127
	v_cvt_f32_i32_e32 v157, v128
	v_cvt_f32_i32_e32 v158, v129
	v_cvt_f32_i32_e32 v161, v130
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[123:130], v[135:136], v[34:35], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[143:144], v[131:132], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[159:160], v[137:138], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[166:167], v[139:140], v[123:130] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v34, v123
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v123, off, off         ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v135, v124
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v124, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v125
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v125, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v137, v126
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v126, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v127
	.loc	1 1213 40                       ; ragged.py:1213:40
	scratch_load_b32 v127, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v35, v128
	v_cvt_f32_i32_e32 v131, v129
	v_cvt_f32_i32_e32 v132, v130
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v123, s6, v123, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v124, s6, v124, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v125, s6, v125, 1
	v_cndmask_b32_e32 v123, 0x80000000, v123, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v126, s6, v126, 1
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v127, v127, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v125, 0x80000000, v125, s1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v126, 0x80000000, v126, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v127, v127, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v123, v123, s[16:19], 0 offen
	buffer_load_u16 v139, v124, s[16:19], 0 offen
	buffer_load_u16 v140, v125, s[16:19], 0 offen
	buffer_load_u16 v143, v126, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s34
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v124, 16, v127
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v144, 16, v123
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v110, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[123:126], v121
	ds_load_b128 v[127:130], v121 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v144, v2
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v4, v144, v4 :: v_dual_fmac_f32 v99, v2, v125
	v_mul_f32_e32 v2, v144, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v98, v2, v126
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v139
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v97, v4, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v144, v5 :: v_dual_mul_f32 v3, v2, v102
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v96, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v144, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v86, v3, v123 :: v_dual_mul_f32 v3, v2, v104
	v_fmac_f32_e32 v95, v4, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v144, v7 :: v_dual_fmac_f32 v85, v3, v124
	v_dual_mul_f32 v3, v2, v105 :: v_dual_fmac_f32 v94, v4, v130
	v_mul_f32_e32 v4, v2, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v3, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v2, v107
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v82, v3, v126 :: v_dual_lshlrev_b32 v3, 16, v140
	v_dual_fmac_f32 v81, v4, v127 :: v_dual_mul_f32 v4, v2, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v3, v0
	v_mul_f32_e32 v102, v146, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v2, v217
	v_mul_f32_e32 v104, v175, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v69, v0, v123 :: v_dual_mul_f32 v0, v3, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v105, v176, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v79, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v147, v144, v147 :: v_dual_mul_f32 v4, v2, v218
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v0, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v3, v37 :: v_dual_mul_f32 v7, v144, v226
	v_mul_f32_e32 v5, v228, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v4, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v109
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v67, v0, v125 :: v_dual_mul_f32 v0, v3, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v6, v229, v144 :: v_dual_fmac_f32 v65, v4, v127
	v_mul_f32_e32 v4, v3, v170
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v0, v126
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v143
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v147, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v147, v144, v162
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v172
	v_mul_f32_e32 v36, v0, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v100, v147, v124 :: v_dual_fmac_f32 v63, v4, v129
	v_fmac_f32_e32 v53, v36, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v191
	v_mul_f32_e32 v36, v0, v134
	v_mul_f32_e32 v37, v201, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v62, v4, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v148
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v36, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v0, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v49, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v157
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v36, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v0, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v158
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v50, v36, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v200, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v47, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v161
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v46, v4, v130
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[123:126], v121 offset:512
	ds_load_b128 v[127:130], v121 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v222, v144
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v4, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v144, v223
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v71, v36, v129 :: v_dual_fmac_f32 v90, v7, v127
	v_dual_fmac_f32 v88, v5, v129 :: v_dual_fmac_f32 v87, v6, v130
	v_fmac_f32_e32 v93, v4, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v144, v224
	v_mul_f32_e32 v107, v132, v0
	v_mul_f32_e32 v35, v35, v0
	v_mul_f32_e32 v106, v131, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v37, v130
	v_fmac_f32_e32 v92, v4, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v144, v225 :: v_dual_fmac_f32 v39, v107, v130
	v_dual_mov_b32 v107, v8 :: v_dual_fmac_f32 v56, v102, v128
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v104, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v91, v4, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v193, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v54, v105, v130 :: v_dual_fmac_f32 v41, v35, v128
	v_dual_fmac_f32 v40, v106, v129 :: v_dual_fmac_f32 v77, v4, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v2, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v4, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v2, v209
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v75, v4, v125 :: v_dual_mul_f32 v4, v2, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v4, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v145, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v4, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v4, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v180
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v59, v4, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v181
	v_mul_f32_e32 v3, v3, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v4, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v34, v0 :: v_dual_fmac_f32 v57, v3, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v45, v4, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v135
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v44, v4, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v43, v4, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v137
	v_mul_f32_e32 v0, v0, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v42, v4, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v227, v144
	v_mul_f32_e32 v34, v194, v2
	v_mul_f32_e32 v2, v2, v211
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v38, v0, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v4, v128
	v_fmac_f32_e32 v72, v34, v128
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v73, v2, v127
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:84
	scratch_load_b32 v108, off, off offset:76
	scratch_load_b32 v109, off, off offset:80
	v_mov_b32_e32 v5, v1
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v7, 7, v109
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, |v95|, |v94|, |v84|
	v_max_f32_e64 v11, |v68|, |v68|
	v_max_f32_e64 v14, |v69|, |v69|
	v_max_f32_e64 v15, |v53|, |v53|
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v7
	v_or_b32_e32 v3, 60, v7
	v_or_b32_e32 v8, 58, v7
	s_mov_b32 s27, 0x76543210
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v18, 8, v107
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s0
	v_add_co_u32 v3, s0, s66, v3
	v_add_co_ci_u32_e64 v4, null, s67, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s1, s66, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 54, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s1
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[74:75], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s7
	v_add_co_u32 v3, s7, s66, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 50, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[74:75], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s11, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s11
	v_add_co_u32 v8, s11, s66, v8
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[72:73], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s11
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
	v_add_co_u32 v3, s15, s66, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 44, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s15
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[74:75], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 42, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[74:75], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s19, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s19
	v_add_co_u32 v8, s19, s66, v8
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[72:73], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s19
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
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s23
	v_add_co_u32 v12, s23, s66, v3
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v100|, |v100|
	v_max_f32_e64 v3, |v101|, |v101|
.Ltmp8:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v13, null, s67, 0, s23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[74:75], v[8:9]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[72:73], v[1:2]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[74:75], v[1:2]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v3, v0
	v_max3_f32 v1, |v98|, |v97|, |v96|
	v_max3_f32 v2, |v93|, |v92|, |v91|
	v_max3_f32 v3, |v90|, |v89|, |v88|
	v_max_f32_e64 v4, |v85|, |v85|
	v_max_f32_e64 v8, |v86|, |v86|
	v_max3_f32 v0, v0, |v99|, v1
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 36, v7
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v2, v3, |v87|
	v_max3_f32 v3, |v82|, |v81|, |v80|
	v_max_f32_e32 v2, v8, v4
	v_max3_f32 v4, |v76|, |v75|, |v74|
	v_max3_f32 v8, |v73|, |v72|, |v71|
	v_max3_f32 v0, v0, v10, v1
	v_max3_f32 v1, |v79|, |v78|, |v77|
	v_max3_f32 v2, v2, |v83|, v3
	v_max3_f32 v10, |v60|, |v59|, |v58|
	v_max3_f32 v3, v4, v8, |v70|
	v_max_f32_e32 v4, v14, v11
	v_max3_f32 v8, |v66|, |v65|, |v64|
	v_max3_f32 v11, |v57|, |v56|, |v55|
	v_max_f32_e64 v14, |v52|, |v52|
	v_max3_f32 v2, v2, v1, v3
	v_max3_f32 v1, |v63|, |v62|, |v61|
	v_max3_f32 v3, v4, |v67|, v8
	v_max3_f32 v4, v10, v11, |v54|
	v_max_f32_e32 v8, v15, v14
	v_max3_f32 v10, |v50|, |v49|, |v48|
	v_max3_f32 v11, |v44|, |v43|, |v42|
	v_max3_f32 v14, |v38|, |v41|, |v40|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v15, v0, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v1, v4
	v_max3_f32 v1, |v47|, |v46|, |v45|
	v_max3_f32 v4, v8, |v51|, v10
	v_max3_f32 v8, v11, v14, |v39|
	v_max_f32_e32 v10, v15, v15
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s28, s66, v9
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v1, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v9, v11, v11
	v_max_f32_e32 v11, v16, v16
	v_dual_max_f32 v1, v0, v10 :: v_dual_and_b32 v0, 3, v107
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v10, 4, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v9 :: v_dual_max_f32 v3, v3, v11
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 4, v107
	v_lshl_add_u32 v16, v0, 9, 0
	v_lshlrev_b32_e32 v17, 5, v0
	v_permlanex16_b32 v8, v4, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v9, 0x60, v107
	v_lshlrev_b32_e32 v20, 1, v109
	v_lshl_add_u32 v16, v10, 2, v16
	v_and_or_b32 v19, 0x680, v11, v17
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v17, v17, v9
	v_lshrrev_b32_e32 v21, 3, v109
	v_lshl_add_u32 v16, v18, 4, v16
	v_xor_b32_e32 v19, v19, v9
	v_lshl_add_u32 v22, v10, 6, 0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v8
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v8, v16, v20, v17
	s_barrier
	v_add3_u32 v17, v22, v21, v19
.Ltmp24:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s67, 0, s28
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v8, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v17
.Ltmp26:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 34, v7
	v_or_b32_e32 v8, 32, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 30, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v16, s27, s66, v16
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[12:13]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s67, 0, s27
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[12:13]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s33, s66, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s67, 0, s33
	v_add_co_u32 v14, s33, s66, v14
	v_add_co_ci_u32_e64 v15, null, s67, 0, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v13, 28, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[14:15]
.Ltmp27:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v15, v4, v4
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[16:17]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v17, 24, v7
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp33:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v22.h, 0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v15, v4 :: v_dual_and_b32 v11, 0x2f0, v11
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v1
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp37:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s76, s65
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v8, v1, v8
.Ltmp40:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s37, s66, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v8
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v2
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, v2, v12
.Ltmp45:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s37
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[1:2]
.Ltmp48:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v13, v13 :: v_dual_mov_b32 v14, v3
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp51:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 26, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v8, v1
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v16, v16
.Ltmp55:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s39, s66, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v12, v2
	v_dual_max_f32 v12, v15, v15 :: v_dual_mov_b32 v15, v1
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v12
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v12, v4 :: v_dual_max_f32 v19, v15, v15
.Ltmp60:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s40, s66, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v16, v16
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v1, v1, v19
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v19, 1, v9
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v12, v12
	v_dual_max_f32 v3, v3, v14 :: v_dual_lshlrev_b32 v12, 4, v0
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 3, v18
	v_add_nc_u32_e32 v18, 0, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v17
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v14, v3
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s67, 0, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v17, v18, v19, v0
.Ltmp71:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v18, 22, v7
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[72:73], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[15:16]
.Ltmp74:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v8, v14, v14 :: v_dual_lshlrev_b32 v9, 5, v9
.Ltmp75:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v8
.Ltmp77:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[13:14]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v3
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
	v_dual_max_f32 v3, v3, v8 :: v_dual_lshlrev_b32 v8, 5, v10
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v10, 0, v12
	ds_store_b128 v17, v[1:4]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v10, v8, v0
	s_barrier
.Ltmp81:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s40, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s67, 0, s40
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v0
.Ltmp83:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 20, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[74:75], v[13:14]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 18, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[72:73], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[74:75], v[17:18]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v13, s45, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s67, 0, s45
	v_add_co_u32 v15, s45, s66, v8
	v_add_co_ci_u32_e64 v16, null, s67, 0, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[72:73], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[74:75], v[13:14]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v8, 12, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[72:73], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[74:75], v[15:16]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v1, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s49, s66, v1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s49, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v16, null, s67, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s49, s66, v8
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v8, 10, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s67, 0, s49
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[72:73], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[74:75], v[15:16]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[72:73], v[13:14]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[74:75], v[13:14]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v15, -v10, v1, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s55, s66, v8
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v8, 8, v7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[72:73], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[74:75], v[17:18]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_fmac_f32_e32 v1, v15, v1
	v_div_scale_f32 v17, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s55
	v_add_co_u32 v15, s55, s66, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s67, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v8, v17, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[72:73], v[13:14]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v19, v18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[74:75], v[13:14]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[72:73], v[15:16]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v13, -v10, v8, v17
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[74:75], v[15:16]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v15, 0x2b8cbccc, v2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 6, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v16, s61, v3, 0x40e00000, v3
	v_dual_fmac_f32 v8, v13, v1 :: v_dual_max_f32 v13, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v15
	v_fma_f32 v2, -v18, v19, 1.0
	v_fma_f32 v10, -v10, v8, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v13
	v_rcp_f32_e32 v17, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v2, v19
	v_div_fmas_f32 v8, v10, v1, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s59, s66, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v10, v16, v19
	v_div_fixup_f32 v0, v8, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v4, v17, 1.0
	v_fma_f32 v8, -v18, v10, v16
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[74:75], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v17, v14, v17
	v_div_scale_f32 v14, s62, v15, 0x40e00000, v15
	v_fmac_f32_e32 v10, v8, v19
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v22.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v23, v14, v17
	v_fma_f32 v24, -v20, v21, 1.0
	v_fma_f32 v1, -v18, v10, v16
	v_div_scale_f32 v16, s63, v13, 0x40e00000, v13
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v8, -v4, v23, v14
	v_fmac_f32_e32 v21, v24, v21
	v_div_fmas_f32 v1, v1, v19, v10
	s_mov_b32 vcc_lo, s62
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v23, v8, v17
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v8, v0, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v10, v16, v21
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	v_fma_f32 v2, -v4, v23, v14
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v31, 0xffff0000, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v20, v10, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v22.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v17, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v17, null, v31, v31, v101
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v10, v3, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s66, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v17
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v14, -v20, v10, v16
	v_div_fixup_f32 v2, v2, 0x40e00000, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v16, null, v31, v31, v100
	v_div_scale_f32 v25, null, v31, v31, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v10, v14, v21, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v19, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v17, v0, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v14, 1, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v21, null, v31, v31, v99
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v18, v10, 0x40e00000, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v15, v0
	v_div_scale_f32 v15, vcc_lo, v101, v31, v101
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v10.l, v2.h
	v_mov_b16_e32 v10.h, v22.h
	v_mov_b16_e32 v22.l, v18.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v20, v15, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v14, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v14, -v16, v19, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v22, 1, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v23, -v17, v20, v15
	v_rcp_f32_e32 v24, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v2, v10, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v19, v14, v19
	v_div_scale_f32 v26, s61, v100, v31, v100
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v18, v22, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v20, v23, v0
	v_rcp_f32_e32 v18, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v22, v26, v19
	v_fma_f32 v23, -v21, v24, 1.0
	v_div_scale_f32 v29, null, v31, v31, v97
	v_fma_f32 v15, -v17, v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v16, v22, v26
	v_fmac_f32_e32 v24, v23, v24
	v_div_scale_f32 v23, s62, v99, v31, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v25, v18, 1.0
	v_div_fmas_f32 v0, v15, v0, v20
	v_rcp_f32_e32 v20, v29
	v_dual_fmac_f32 v22, v17, v19 :: v_dual_mul_f32 v17, v23, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v18, v28, v18
	v_div_scale_f32 v28, s63, v98, v31, v98
	v_div_scale_f32 v30, null, v31, v31, v96
	v_div_fixup_f32 v15, v0, v31, v101
	v_fma_f32 v0, -v16, v22, v26
	v_fma_f32 v16, -v21, v17, v23
	v_mul_f32_e32 v26, v28, v18
	v_rcp_f32_e32 v32, v30
	v_fma_f32 v33, -v29, v20, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v17, v16, v24
	v_div_fmas_f32 v0, v0, v19, v22
	v_fma_f32 v19, -v25, v26, v28
	v_fmac_f32_e32 v20, v33, v20
	v_div_scale_f32 v22, s61, v97, v31, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v16, v0, v31, v100
	v_fma_f32 v33, -v30, v32, 1.0
	v_fma_f32 v0, -v21, v17, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v26, v19, v18 :: v_dual_mul_f32 v19, v22, v20
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v21, s64, v96, v31, v96
	v_div_scale_f32 v23, null, v31, v31, v95
	v_div_fmas_f32 v0, v0, v24, v17
	v_fma_f32 v24, -v29, v19, v22
	v_div_scale_f32 v33, null, v31, v31, v94
	v_fma_f32 v17, -v25, v26, v28
	v_rcp_f32_e32 v25, v23
	v_mul_f32_e32 v28, v21, v32
	v_fmac_f32_e32 v19, v24, v20
	v_rcp_f32_e32 v24, v33
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v102, 0xffff0000, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v18, v17, v18, v26
	v_fma_f32 v26, -v30, v28, v21
	v_div_fixup_f32 v17, v0, v31, v99
	v_fma_f32 v0, -v29, v19, v22
	v_fma_f32 v34, -v23, v25, 1.0
	v_div_scale_f32 v29, null, v31, v31, v84
	v_fmac_f32_e32 v28, v26, v32
	v_fma_f32 v26, -v33, v24, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v34, v25
	v_div_scale_f32 v22, s62, v95, v31, v95
	v_div_scale_f32 v34, null, v31, v31, v93
	v_fmac_f32_e32 v24, v26, v24
	v_rcp_f32_e32 v26, v29
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v36, v34
	v_div_fmas_f32 v0, v0, v20, v19
	v_fma_f32 v19, -v30, v28, v21
	v_mul_f32_e32 v21, v22, v25
	v_div_scale_f32 v30, s61, v94, v31, v94
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v18, v18, v31, v98
	v_div_fmas_f32 v20, v19, v32, v28
	v_fma_f32 v28, -v23, v21, v22
	v_mul_f32_e32 v32, v30, v24
	v_fma_f32 v35, -v29, v26, 1.0
	v_div_fixup_f32 v19, v0, v31, v97
	v_fma_f32 v37, -v34, v36, 1.0
	v_fmac_f32_e32 v21, v28, v25
	v_fma_f32 v0, -v33, v32, v30
	v_fmac_f32_e32 v26, v35, v26
	v_div_scale_f32 v28, s63, v84, v31, v84
	v_div_scale_f32 v35, null, v31, v31, v92
	v_div_fixup_f32 v20, v20, v31, v96
	v_fma_f32 v22, -v23, v21, v22
	v_fmac_f32_e32 v32, v0, v24
	v_mul_f32_e32 v0, v28, v26
	v_rcp_f32_e32 v96, v35
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v23, s64, v93, v31, v93
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v37, null, v31, v31, v91
	v_div_fmas_f32 v21, v22, v25, v21
	v_fma_f32 v22, -v33, v32, v30
	v_fma_f32 v25, -v29, v0, v28
	v_mul_f32_e32 v30, v23, v36
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v33, -v35, v96, 1.0
	v_div_fmas_f32 v22, v22, v24, v32
	v_fmac_f32_e32 v0, v25, v26
	v_rcp_f32_e32 v32, v37
	v_fma_f32 v24, -v34, v30, v23
	v_fmac_f32_e32 v96, v33, v96
	v_div_scale_f32 v25, s61, v92, v31, v92
	v_fma_f32 v28, -v29, v0, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v30, v24, v36
	v_div_scale_f32 v33, null, v31, v31, v90
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v22, v22, v31, v94
	v_mul_f32_e32 v29, v25, v96
	v_fma_f32 v24, -v37, v32, 1.0
	v_div_fmas_f32 v0, v28, v26, v0
	v_fma_f32 v23, -v34, v30, v23
	v_rcp_f32_e32 v28, v33
	v_div_scale_f32 v94, null, v31, v31, v89
	s_mov_b32 vcc_lo, s64
	v_fma_f32 v26, -v35, v29, v25
	v_fmac_f32_e32 v32, v24, v32
	v_div_scale_f32 v34, s62, v91, v31, v91
	v_div_fmas_f32 v24, v23, v36, v30
	v_rcp_f32_e32 v30, v94
	v_fmac_f32_e32 v29, v26, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v26, v34, v32
	v_fma_f32 v36, -v33, v28, 1.0
	v_div_fixup_f32 v23, v0, v31, v84
	v_div_scale_f32 v84, null, v31, v31, v88
	v_fma_f32 v0, -v35, v29, v25
	v_fma_f32 v25, -v37, v26, v34
	v_fmac_f32_e32 v28, v36, v28
	v_div_scale_f32 v35, s63, v90, v31, v90
	v_fma_f32 v36, -v94, v30, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v21, v21, v31, v95
	v_div_fixup_f32 v24, v24, v31, v93
	v_div_fmas_f32 v0, v0, v96, v29
	v_fmac_f32_e32 v26, v25, v32
	v_dual_mul_f32 v29, v35, v28 :: v_dual_fmac_f32 v30, v36, v30
	v_rcp_f32_e32 v36, v84
	v_div_scale_f32 v93, s61, v89, v31, v89
	v_div_scale_f32 v95, null, v31, v31, v87
	v_div_fixup_f32 v25, v0, v31, v92
	v_fma_f32 v0, -v37, v26, v34
	v_fma_f32 v34, -v33, v29, v35
	v_mul_f32_e32 v37, v93, v30
	v_rcp_f32_e32 v92, v95
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v84, v36, 1.0
	v_div_fmas_f32 v0, v0, v32, v26
	v_fmac_f32_e32 v29, v34, v28
	v_fma_f32 v32, -v94, v37, v93
	v_div_scale_f32 v34, s62, v88, v31, v88
	v_fmac_f32_e32 v36, v96, v36
	v_div_fixup_f32 v26, v0, v31, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v95, v92, 1.0
	v_fma_f32 v0, -v33, v29, v35
	v_fmac_f32_e32 v37, v32, v30
	v_div_scale_f32 v35, null, v102, v102, v86
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v32, v34, v36
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v33, s64, v87, v31, v87
	v_div_fmas_f32 v0, v0, v28, v29
	v_fma_f32 v28, -v94, v37, v93
	v_rcp_f32_e32 v91, v35
	v_div_scale_f32 v94, null, v102, v102, v85
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v29, -v84, v32, v34
	v_mul_f32_e32 v93, v33, v92
	v_div_fmas_f32 v30, v28, v30, v37
	v_rcp_f32_e32 v37, v94
	v_div_fixup_f32 v28, v0, v31, v90
	v_fmac_f32_e32 v32, v29, v36
	v_fma_f32 v96, -v95, v93, v33
	v_fma_f32 v97, -v35, v91, 1.0
	v_div_fixup_f32 v29, v30, v31, v89
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v0, -v84, v32, v34
	v_fmac_f32_e32 v93, v96, v92
	v_fmac_f32_e32 v91, v97, v91
	v_div_scale_f32 v34, s61, v86, v102, v86
	v_fma_f32 v30, -v94, v37, 1.0
	v_div_fmas_f32 v0, v0, v36, v32
	v_fma_f32 v32, -v95, v93, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v33, v34, v91
	v_div_scale_f32 v89, s62, v85, v102, v85
	v_fmac_f32_e32 v37, v30, v37
	v_div_scale_f32 v90, null, v102, v102, v82
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v30, v0, v31, v88
	v_div_fmas_f32 v32, v32, v92, v93
	v_fma_f32 v92, -v35, v33, v34
	v_mul_f32_e32 v93, v89, v37
	v_rcp_f32_e32 v96, v90
	v_div_scale_f32 v88, null, v102, v102, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v92, v91
	v_fma_f32 v0, -v94, v93, v89
	v_div_fixup_f32 v31, v32, v31, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v34, -v35, v33, v34
	v_fmac_f32_e32 v93, v0, v37
	v_fma_f32 v32, -v90, v96, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v32, v96
	v_div_fmas_f32 v32, v34, v91, v33
	v_fma_f32 v33, -v94, v93, v89
	v_fma_f32 v91, -v88, v92, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v33, v33, v37, v93
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s61, v81, v102, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v33, v102, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v91, v92
	v_div_scale_f32 v84, null, v102, v102, v83
	v_div_scale_f32 v87, s63, v83, v102, v83
	v_div_scale_f32 v35, s64, v82, v102, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v84
	v_div_scale_f32 v94, null, v102, v102, v80
	v_mul_f32_e32 v89, v35, v96
	v_div_fixup_f32 v32, v32, v102, v86
	v_div_scale_f32 v86, null, v102, v102, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v94
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v84, v36, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v36, v95, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v0, v87, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v29, v29
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v13, 2, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v8.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v34, -v84, v0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v0, v34, v36
	v_fma_f32 v34, -v90, v89, v35
	v_fma_f32 v84, -v84, v0, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v34, v96
	v_fma_f32 v34, -v94, v37, 1.0
	v_div_scale_f32 v87, s62, v80, v102, v80
	v_div_fmas_f32 v0, v84, v36, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v90, v89, v35
	v_fma_f32 v36, -v88, v85, v91
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v90, null, v102, v102, v78
	v_fmac_f32_e32 v37, v34, v37
	v_fmac_f32_e32 v85, v36, v92
	s_mov_b32 vcc_lo, s64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v90
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v14, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v35, v96, v89
	v_mul_f32_e32 v89, v87, v37
	v_fma_f32 v93, -v86, v84, 1.0
	v_div_fixup_f32 v34, v0, v102, v83
	v_fma_f32 v0, -v88, v85, v91
	v_div_fixup_f32 v35, v35, v102, v82
	v_fma_f32 v82, -v94, v89, v87
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v83, s63, v79, v102, v79
	v_fma_f32 v88, -v90, v36, 1.0
	v_div_scale_f32 v91, null, v102, v102, v77
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v89, v82, v37
	v_div_fmas_f32 v0, v0, v92, v85
	v_mul_f32_e32 v82, v83, v84
	v_fmac_f32_e32 v36, v88, v36
	v_rcp_f32_e32 v85, v91
	v_div_scale_f32 v88, s61, v78, v102, v78
	v_div_scale_f32 v92, null, v102, v102, v76
	v_div_fixup_f32 v81, v0, v102, v81
	v_fma_f32 v0, -v94, v89, v87
	v_fma_f32 v87, -v86, v82, v83
	v_mul_f32_e32 v93, v88, v36
	v_rcp_f32_e32 v94, v92
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v91, v85, 1.0
	v_div_fmas_f32 v0, v0, v37, v89
	v_fmac_f32_e32 v82, v87, v84
	v_fma_f32 v37, -v90, v93, v88
	v_div_scale_f32 v87, s62, v77, v102, v77
	v_fmac_f32_e32 v85, v95, v85
	v_div_fixup_f32 v80, v0, v102, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v92, v94, 1.0
	v_fma_f32 v0, -v86, v82, v83
	v_fmac_f32_e32 v93, v37, v36
	v_div_scale_f32 v86, null, v102, v102, v75
	s_mov_b32 vcc_lo, s63
	v_dual_mul_f32 v37, v87, v85 :: v_dual_fmac_f32 v94, v89, v94
	v_div_scale_f32 v83, s64, v76, v102, v76
	v_div_fmas_f32 v0, v0, v84, v82
	v_fma_f32 v82, -v90, v93, v88
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v102, v102, v74
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v84, -v91, v37, v87
	v_mul_f32_e32 v89, v83, v94
	v_div_fmas_f32 v36, v82, v36, v93
	v_rcp_f32_e32 v82, v90
	v_div_fixup_f32 v79, v0, v102, v79
	v_fmac_f32_e32 v37, v84, v85
	v_fma_f32 v84, -v92, v89, v83
	v_fma_f32 v93, -v86, v88, 1.0
	v_div_fixup_f32 v78, v36, v102, v78
	v_div_scale_f32 v36, s61, v75, v102, v75
	v_fma_f32 v0, -v91, v37, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v84, v94 :: v_dual_fmac_f32 v88, v93, v88
	v_fma_f32 v84, -v90, v82, 1.0
	v_div_scale_f32 v87, null, v102, v102, v73
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v91, null, v102, v102, v72
	v_div_fmas_f32 v0, v0, v85, v37
	v_fma_f32 v37, -v92, v89, v83
	v_mul_f32_e32 v83, v36, v88
	v_fmac_f32_e32 v82, v84, v82
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s62, v74, v102, v74
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v77, v0, v102, v77
	v_div_fmas_f32 v37, v37, v94, v89
	v_fma_f32 v89, -v86, v83, v36
	v_mul_f32_e32 v92, v85, v82
	v_rcp_f32_e32 v94, v91
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v84, 1.0
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v0, -v90, v92, v85
	v_div_scale_f32 v89, null, v102, v102, v71
	v_div_fixup_f32 v76, v37, v102, v76
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v37, s63, v73, v102, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v36, -v86, v83, v36
	v_fmac_f32_e32 v92, v0, v82
	v_rcp_f32_e32 v86, v89
	v_mul_f32_e32 v0, v37, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s64, v72, v102, v72
	v_div_fmas_f32 v36, v36, v88, v83
	v_fma_f32 v83, -v90, v92, v85
	v_div_scale_f32 v95, null, v102, v102, v70
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v85, -v87, v0, v37
	v_mul_f32_e32 v88, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v83, v82, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v0, v85, v84
	v_fma_f32 v85, -v91, v88, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s61, v71, v102, v71
	v_div_fixup_f32 v75, v36, v102, v75
	v_div_fixup_f32 v74, v82, v102, v74
	v_fma_f32 v36, -v87, v0, v37
	v_fmac_f32_e32 v88, v85, v94
	v_mul_f32_e32 v37, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v27, v27, v69
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v87, s62, v70, v102, v70
	v_div_fmas_f32 v0, v36, v84, v0
	v_fma_f32 v36, -v91, v88, v93
	v_fma_f32 v84, -v89, v37, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v27, v27, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v84, v86
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v73, v0, v102, v73
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v36, v36, v94, v88
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v0, -v89, v37, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v72, v36, v102, v72
	v_fma_f32 v36, -v95, v88, v87
	v_div_scale_f32 v89, s63, v69, v27, v69
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v27, v27, v67
	v_div_fmas_f32 v0, v0, v86, v37
	v_fmac_f32_e32 v88, v36, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v90, v84
	v_rcp_f32_e32 v37, v92
	v_div_scale_f32 v90, null, v27, v27, v66
	v_mul_f32_e32 v36, v89, v82
	v_div_scale_f32 v86, s61, v68, v27, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v71, v0, v102, v71
	v_fma_f32 v0, -v95, v88, v87
	v_fma_f32 v87, -v85, v36, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v37, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v83, v88
	v_fmac_f32_e32 v36, v87, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v37, v95, v37
	v_div_scale_f32 v87, s62, v67, v27, v67
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v70, v0, v102, v70
	v_fma_f32 v0, -v85, v36, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v37 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v27, v27, v65
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v85, s64, v66, v27, v66
	v_div_fmas_f32 v0, v0, v82, v36
	v_fma_f32 v36, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v27, v27, v64
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v37
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v36, v36, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v69, v0, v27, v69
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v0, -v92, v83, v87
	v_div_fixup_f32 v68, v36, v27, v68
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v36, s61, v65, v27, v65
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	v_div_scale_f32 v87, null, v27, v27, v63
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v95, null, v27, v27, v60
	v_div_fmas_f32 v0, v0, v37, v83
	v_fma_f32 v37, -v90, v89, v85
	v_mul_f32_e32 v83, v36, v86
	v_fmac_f32_e32 v82, v84, v82
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s62, v64, v27, v64
	v_div_scale_f32 v90, null, v27, v27, v62
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v92, v85, v82
	v_div_fmas_f32 v37, v37, v94, v89
	v_fma_f32 v89, -v88, v83, v36
	v_rcp_f32_e32 v94, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_fixup_f32 v67, v0, v27, v67
	v_fma_f32 v0, -v91, v92, v85
	v_fmac_f32_e32 v83, v89, v86
	v_div_scale_f32 v89, null, v27, v27, v61
	v_div_fixup_f32 v66, v37, v27, v66
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v37, s63, v63, v27, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v90, v94, 1.0
	v_fma_f32 v36, -v88, v83, v36
	v_fmac_f32_e32 v92, v0, v82
	v_rcp_f32_e32 v88, v89
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v37, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s64, v62, v27, v62
	v_div_fmas_f32 v36, v36, v86, v83
	v_fma_f32 v83, -v91, v92, v85
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v85, -v87, v0, v37
	v_mul_f32_e32 v86, v93, v94
	v_fma_f32 v91, -v89, v88, 1.0
	v_div_fmas_f32 v82, v83, v82, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v0, v85, v84
	v_fma_f32 v85, -v90, v86, v93
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s61, v61, v27, v61
	v_div_fixup_f32 v65, v36, v27, v65
	v_div_fixup_f32 v64, v82, v27, v64
	v_fma_f32 v36, -v87, v0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v86, v85, v94 :: v_dual_mul_f32 v37, v91, v88
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v27, v27, v59
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v87, s62, v60, v27, v60
	v_div_fmas_f32 v0, v36, v84, v0
	v_fma_f32 v36, -v90, v86, v93
	v_fma_f32 v84, -v89, v37, v91
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v90, null, v27, v27, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v84, v88
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v63, v0, v27, v63
	v_rcp_f32_e32 v84, v90
	v_div_fmas_f32 v36, v36, v94, v86
	v_mul_f32_e32 v86, v87, v83
	v_fma_f32 v0, -v89, v37, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v62, v36, v27, v62
	v_fma_f32 v36, -v95, v86, v87
	v_div_scale_f32 v89, s63, v59, v27, v59
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v91, -v90, v84, 1.0
	v_div_scale_f32 v92, null, v27, v27, v57
	v_div_fmas_f32 v0, v0, v88, v37
	v_fmac_f32_e32 v86, v36, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v91, v84
	v_rcp_f32_e32 v37, v92
	v_div_scale_f32 v91, null, v27, v27, v56
	v_mul_f32_e32 v36, v89, v82
	v_div_scale_f32 v88, s61, v58, v27, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v0, v0, v27, v61
	v_fma_f32 v61, -v95, v86, v87
	v_fma_f32 v87, -v85, v36, v89
	v_mul_f32_e32 v93, v88, v84
	v_fma_f32 v95, -v92, v37, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v61, v61, v83, v86
	v_fmac_f32_e32 v36, v87, v82
	v_fma_f32 v83, -v90, v93, v88
	v_fmac_f32_e32 v37, v95, v37
	v_div_scale_f32 v86, s62, v57, v27, v57
	v_fma_f32 v87, -v91, v94, 1.0
	v_div_fixup_f32 v60, v61, v27, v60
	v_fma_f32 v61, -v85, v36, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v86, v37 :: v_dual_fmac_f32 v94, v87, v94
	v_div_scale_f32 v87, null, v27, v27, v55
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v85, s64, v56, v27, v56
	v_div_fmas_f32 v36, v61, v82, v36
	v_fma_f32 v61, -v90, v93, v88
	v_fma_f32 v82, -v92, v83, v86
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v90, null, v27, v27, v54
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v37
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v82, v90
	v_div_fmas_f32 v61, v61, v84, v93
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v36, v36, v27, v59
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v88, 1.0
	v_fma_f32 v59, -v92, v83, v86
	v_div_fixup_f32 v58, v61, v27, v58
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v61, s61, v55, v27, v55
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v84, -v90, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, null, v14, v14, v52
	v_div_fmas_f32 v37, v59, v37, v83
	v_fma_f32 v59, -v91, v89, v85
	v_dual_mul_f32 v83, v61, v88 :: v_dual_fmac_f32 v82, v84, v82
	v_div_scale_f32 v84, null, v14, v14, v53
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v85, s62, v54, v27, v54
	v_div_fmas_f32 v59, v59, v94, v89
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v89, -v87, v83, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v85, v82
	v_div_fixup_f32 v37, v37, v27, v57
	v_div_fixup_f32 v56, v59, v27, v56
	v_rcp_f32_e32 v59, v92
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v57, -v90, v91, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v14, v14, v50
	v_fma_f32 v89, -v84, v86, 1.0
	v_fma_f32 v61, -v87, v83, v61
	v_div_scale_f32 v87, null, v14, v14, v51
	v_fmac_f32_e32 v91, v57, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v57, s63, v53, v14, v53
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v93, -v92, v59, 1.0
	v_div_fmas_f32 v61, v61, v88, v83
	v_fma_f32 v83, -v90, v91, v85
	v_mul_f32_e32 v85, v57, v86
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v59, v93, v59
	v_div_scale_f32 v88, s61, v52, v14, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v84, v85, v57
	v_fma_f32 v90, -v87, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v91
	v_mul_f32_e32 v95, v88, v59
	v_fmac_f32_e32 v85, v93, v86
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, s64, v51, v14, v51
	v_div_fixup_f32 v55, v61, v27, v55
	v_div_fixup_f32 v27, v82, v27, v54
	v_fma_f32 v54, -v84, v85, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v90, v89
	v_div_scale_f32 v82, null, v14, v14, v49
	v_fma_f32 v83, -v92, v95, v88
	v_fma_f32 v61, -v94, v96, 1.0
	v_fma_f32 v57, -v87, v91, v90
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v95, v83, v59 :: v_dual_fmac_f32 v96, v61, v96
	v_fmac_f32_e32 v91, v57, v89
	v_rcp_f32_e32 v57, v82
	v_div_scale_f32 v61, s62, v50, v14, v50
	v_div_fmas_f32 v54, v54, v86, v85
	v_fma_f32 v83, -v92, v95, v88
	v_div_scale_f32 v85, null, v14, v14, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v61, v96
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v53, v54, v14, v53
	v_fma_f32 v86, -v82, v57, 1.0
	v_div_fmas_f32 v59, v83, v59, v95
	v_fma_f32 v83, -v87, v91, v90
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v61
	v_fmac_f32_e32 v57, v86, v57
	v_div_scale_f32 v86, s61, v49, v14, v49
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v91
	v_mul_f32_e32 v54, v86, v57
	v_div_fixup_f32 v52, v59, v14, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v85, v87, 1.0
	v_fma_f32 v61, -v94, v84, v61
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v88, -v82, v54, v86
	v_div_fixup_f32 v51, v83, v14, v51
	v_div_scale_f32 v83, null, v14, v14, v47
	v_fmac_f32_e32 v87, v59, v87
	v_div_scale_f32 v59, s63, v48, v14, v48
	v_div_fmas_f32 v61, v61, v96, v84
	v_fmac_f32_e32 v54, v88, v57
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v59, v87
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v50, v61, v14, v50
	v_fma_f32 v61, -v82, v54, v86
	v_div_scale_f32 v88, null, v14, v14, v46
	v_fma_f32 v82, -v85, v84, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v61, v57, v54
	v_div_scale_f32 v57, null, v14, v14, v45
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v57
	v_div_scale_f32 v61, s61, v47, v14, v47
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v14, v14, v44
	v_div_fixup_f32 v49, v54, v14, v49
	v_fma_f32 v59, -v85, v84, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v57, v82, 1.0
	v_mul_f32_e32 v85, v61, v89
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v90, v54, v90
	v_div_scale_f32 v54, s62, v46, v14, v46
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v14, v14, v43
	v_div_fmas_f32 v59, v59, v87, v84
	v_fma_f32 v84, -v83, v85, v61
	v_mul_f32_e32 v87, v54, v90
	v_div_scale_f32 v93, s63, v45, v14, v45
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v54
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s64, v44, v14, v44
	v_div_fixup_f32 v48, v59, v14, v48
	v_fma_f32 v59, -v83, v85, v61
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v61, -v57, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v54, -v88, v87, v54
	v_fmac_f32_e32 v96, v61, v82
	v_fma_f32 v61, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s61, v43, v14, v43
	v_div_fmas_f32 v59, v59, v89, v85
	v_fma_f32 v57, -v57, v96, v93
	v_fmac_f32_e32 v83, v61, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v61, v84, v95
	v_div_scale_f32 v85, null, v14, v14, v42
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v47, v59, v14, v47
	v_div_fmas_f32 v54, v54, v90, v87
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v57, v57, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v61, v84
	v_div_fixup_f32 v46, v54, v14, v46
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v45, v57, v14, v45
	v_div_fmas_f32 v82, v82, v92, v83
	v_fmac_f32_e32 v61, v86, v95
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v59, -v85, v87, 1.0
	v_div_scale_f32 v57, null, v14, v14, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v91, v61, v84
	v_div_fixup_f32 v44, v82, v14, v44
	v_fmac_f32_e32 v87, v59, v87
	v_div_scale_f32 v59, null, v14, v14, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v54, v54, v95, v61
	v_div_scale_f32 v83, vcc_lo, v42, v14, v42
	v_rcp_f32_e32 v61, v57
	v_rcp_f32_e32 v84, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v43, v54, v14, v43
	v_mul_f32_e32 v88, v83, v87
	v_div_scale_f32 v82, null, v14, v14, v40
	v_div_scale_f32 v89, null, v14, v14, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v85, v88, v83
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v54, -v57, v61, 1.0
	v_fma_f32 v90, -v59, v84, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v88, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v61, v54, v61
	v_div_scale_f32 v54, s61, v38, v14, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v93, -v82, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v89, v91, 1.0
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s61
	s_mov_b32 s61, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v42, v83, v14, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s64, v39, v14, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v73, v73
	v_med3_f32 v0, v0, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v95, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v102, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v54, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v34, v34, s61, 0x40e00000
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_med3_f32 v60, v60, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v57, v94, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v20, v20, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v92, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_med3_f32 v37, v37, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v27, v27, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v57, v94, v54
	v_fma_f32 v57, -v89, v98, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s61, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v54, v61, v94
	v_fmac_f32_e32 v98, v57, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v54, v14, v38
	v_fma_f32 v61, -v89, v98, v95
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v95, v50
	v_and_b32_e32 v50, 15, v23
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_and_b32_e32 v23, 15, v34
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v34, 13, v107
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v49, v49
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v103, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s62, v41, v14, v41
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v15, v15, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v90, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_med3_f32 v32, v32, s61, 0x40e00000
	v_med3_f32 v69, v69, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v59, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_and_b32_e32 v38, 15, v20
	v_and_b32_e32 v20, 15, v68
	v_and_b32_e32 v68, 15, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v85, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v67
	v_and_b32_e32 v67, 15, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v37, 3, v109
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v80
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v59, -v59, v96, v90
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v56
	v_and_b32_e32 v56, 15, v60
	v_and_b32_e32 v60, 15, v36
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v36, 64, v107
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v59, v84, v96
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v46, v46
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_xor_b32_e32 v11, v11, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v41, v59, v14, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v22, v22, s61, 0x40e00000
	v_med3_f32 v31, v31, s61, 0x40e00000
	v_med3_f32 v33, v33, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v49, v49, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_med3_f32 v45, v45, s61, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v104, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s63, v40, v14, v40
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v104
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v93, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v78
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v92, -v82, v97, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v28, v28, s61, 0x40e00000
	v_med3_f32 v30, v30, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v92, v27
	v_and_b32_e32 v27, 15, v35
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v82, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v93, v52
	v_and_b32_e32 v52, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 16, v107
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v57, v57, v86, v97
	s_mov_b32 vcc_lo, s64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v61, v61, v91, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v35, 8, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v57, v14, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v22
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v61, v14, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v81
	v_rndne_f32_e32 v61, v77
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_and_or_b32 v34, 0xe000, v34, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s61, 0x40e00000
	v_med3_f32 v61, v61, s61, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v11, v34, v37, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v33, v33
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v49, v49
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_cvt_i32_f32_e32 v77, v18
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v99, v45
	v_cvt_i32_f32_e32 v106, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v18, 15, v16
	v_and_b32_e32 v22, 15, v17
	v_and_b32_e32 v15, 15, v32
	v_and_b32_e32 v16, 15, v69
	v_and_b32_e32 v17, 15, v53
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v34, 0, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v80, v30
	v_cvt_i32_f32_e32 v81, v54
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v96, v48
	v_cvt_i32_f32_e32 v98, v46
	v_and_b32_e32 v30, 15, v19
	v_and_b32_e32 v46, 15, v78
	v_and_b32_e32 v78, 15, v31
	v_and_b32_e32 v19, 15, v33
	v_and_b32_e32 v31, 15, v39
	v_and_b32_e32 v32, 15, v65
	v_and_b32_e32 v33, 15, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v79
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v51
	v_and_b32_e32 v42, 15, v21
	v_and_b32_e32 v51, 15, v61
	v_and_b32_e32 v21, 15, v93
	v_and_b32_e32 v53, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v34, v[14:17]
	ds_store_b128 v34, v[30:33] offset:256
	v_xad_u32 v14, v11, 16, 0
	v_lshlrev_b32_e32 v15, 6, v107
	v_cndmask_b32_e64 v16, 0x2010, 0, s3
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v66
	v_cvt_i32_f32_e32 v105, v40
	v_and_b32_e32 v66, 15, v28
	v_and_b32_e32 v39, 15, v81
	v_and_b32_e32 v40, 15, v64
	v_and_b32_e32 v41, 15, v96
	v_and_b32_e32 v69, 15, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s61, 0x40e00000
	v_med3_f32 v25, v25, s61, 0x40e00000
	v_med3_f32 v26, v26, s61, 0x40e00000
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v43, v43, s61, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v34, v[50:53] offset:2048
	ds_store_b128 v34, v[66:69] offset:2304
	ds_store_b128 v14, v[18:21]
	ds_store_b128 v14, v[38:41] offset:256
	v_lshlrev_b32_e32 v18, 2, v0
	v_and_or_b32 v9, 0x300, v15, v9
	v_xor_b32_e32 v12, v16, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s61, 0x40e00000
	v_med3_f32 v72, v72, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v47, v47, s61, 0x40e00000
	v_med3_f32 v62, v62, s61, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v79, v26
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v82, v74
	v_cvt_i32_f32_e32 v89, v58
	v_cvt_i32_f32_e32 v100, v44
	v_cvt_i32_f32_e32 v101, v43
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v9, v12, v9, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v83, v71
	v_cvt_i32_f32_e32 v84, v70
	v_cvt_i32_f32_e32 v87, v63
	v_cvt_i32_f32_e32 v91, v55
	v_cvt_i32_f32_e32 v97, v47
	v_cvt_i32_f32_e32 v88, v62
	v_and_b32_e32 v54, 15, v24
	v_and_b32_e32 v58, 15, v25
	v_and_b32_e32 v62, 15, v79
	v_and_b32_e32 v43, 15, v57
	v_and_b32_e32 v47, 15, v59
	v_and_b32_e32 v55, 15, v76
	v_and_b32_e32 v59, 15, v75
	v_and_b32_e32 v63, 15, v82
	v_and_b32_e32 v24, 15, v85
	v_and_b32_e32 v64, 15, v89
	v_and_b32_e32 v25, 15, v94
	v_and_b32_e32 v57, 15, v100
	v_and_b32_e32 v61, 15, v101
	v_and_b32_e32 v65, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v17, v11, 32, 0
	v_xad_u32 v11, v11, 48, 0
	v_add_nc_u32_e32 v12, 0, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v26, 15, v77
	v_and_b32_e32 v70, 15, v29
	v_and_b32_e32 v74, 15, v80
	v_and_b32_e32 v71, 15, v72
	v_and_b32_e32 v75, 15, v83
	v_and_b32_e32 v79, 15, v84
	v_and_b32_e32 v44, 15, v87
	v_and_b32_e32 v72, 15, v90
	v_and_b32_e32 v76, 15, v91
	v_and_b32_e32 v80, 15, v92
	v_and_b32_e32 v45, 15, v97
	v_and_b32_e32 v77, 15, v105
	v_and_b32_e32 v81, 15, v106
	v_and_b32_e32 v28, 15, v86
	v_and_b32_e32 v29, 15, v95
	v_and_b32_e32 v48, 15, v88
	v_and_b32_e32 v49, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v14, v[54:57] offset:2048
	ds_store_b128 v14, v[70:73] offset:2304
	ds_store_b128 v17, v[22:25]
	ds_store_b128 v17, v[42:45] offset:256
	ds_store_b128 v17, v[58:61] offset:2048
	ds_store_b128 v17, v[74:77] offset:2304
	ds_store_b128 v11, v[26:29]
	ds_store_b128 v11, v[46:49] offset:256
	ds_store_b128 v11, v[62:65] offset:2048
	ds_store_b128 v11, v[78:81] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v12
	ds_load_b128 v[18:21], v12 offset:128
	ds_load_b128 v[22:25], v12 offset:4096
	ds_load_b128 v[26:29], v12 offset:4224
	v_xad_u32 v12, 0x8040, v9, 0
	v_xad_u32 v11, 0x4020, v9, 0
	v_xad_u32 v9, 0xc060, v9, 0
	ds_load_b128 v[49:52], v12
	ds_load_b128 v[53:56], v12 offset:128
	ds_load_b128 v[57:60], v12 offset:4096
	ds_load_b128 v[61:64], v12 offset:4224
	ds_load_b128 v[65:68], v9 offset:4096
	ds_load_b128 v[69:72], v9
	ds_load_b128 v[73:76], v9 offset:128
	ds_load_b128 v[77:80], v9 offset:4224
	ds_load_b128 v[30:33], v11
	ds_load_b128 v[37:40], v11 offset:128
	ds_load_b128 v[41:44], v11 offset:4096
	ds_load_b128 v[45:48], v11 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s3, s66, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, s67, 0, s3
	v_add_co_u32 v34, s3, s66, v7
	v_add_co_ci_u32_e64 v35, null, s67, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s66, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[72:73], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[74:75], v[11:12]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_lshl_or_b32 v3, s77, 7, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v9, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 2, v4
	v_add_nc_u32_e32 v13, 4, v4
	v_add_nc_u32_e32 v14, 6, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[72:73], v[34:35]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v49, v57, 4, v49
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v23, 4, v15
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 8, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v24, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 12, v4
	v_mad_u64_u32 v[11:12], null, v11, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 14, v4
	v_mad_u64_u32 v[12:13], null, v13, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v45, 4, v37
	v_lshl_or_b32 v66, v27, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 16, v4
	v_add_nc_u32_e32 v37, 50, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v28, 4, v20
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 18, v4
	v_add_nc_u32_e32 v39, 52, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 20, v4
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 22, v4
	v_add_nc_u32_e32 v40, 54, v4
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_add_nc_u32_e32 v23, 24, v4
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 26, v4
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_mad_u64_u32 v[37:38], null, v37, s72, v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[34:35]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	v_add_nc_u32_e32 v25, 28, v4
	v_add_nc_u32_e32 v26, 30, v4
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	v_add_nc_u32_e32 v27, 32, v4
	v_add_nc_u32_e32 v28, 34, v4
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	v_add_nc_u32_e32 v29, 36, v4
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v41, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 38, v4
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v61, v77, 4, v73
	v_lshl_or_b32 v73, v42, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 40, v4
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 42, v4
	v_mad_u64_u32 v[26:27], null, v27, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v44, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 44, v4
	v_add_nc_u32_e32 v41, 56, v4
	v_mad_u64_u32 v[27:28], null, v28, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 46, v4
	v_add_nc_u32_e32 v42, 58, v4
	v_mad_u64_u32 v[28:29], null, v29, s72, v[3:4]
	v_add_nc_u32_e32 v35, 48, v4
	v_add_nc_u32_e32 v43, 60, v4
	v_add_nc_u32_e32 v72, 62, v4
	v_mad_u64_u32 v[29:30], null, v30, s72, v[3:4]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v9, v6, s[64:67], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	v_mad_u64_u32 v[41:42], null, v42, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	v_mad_u64_u32 v[42:43], null, v43, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v72, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v11, s61
	v_cndmask_b32_e32 v9, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v36, v4, s[64:67], 0 offen
	buffer_store_b8 v49, v6, s[64:67], 0 offen
	buffer_store_b8 v57, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v9, s[64:67], 0 offen
	buffer_store_b8 v45, v11, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v73, v9, s[64:67], 0 offen
	buffer_store_b8 v50, v11, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s76, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v10.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v58, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v46, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v9, s[64:67], 0 offen
	buffer_store_b8 v62, v11, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
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
	v_cndmask_b32_e32 v9, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v70, v4, s[64:67], 0 offen
	buffer_store_b8 v74, v6, s[64:67], 0 offen
	buffer_store_b8 v51, v7, s[64:67], 0 offen
	buffer_store_b8 v59, v9, s[64:67], 0 offen
	buffer_store_b8 v67, v11, s[64:67], 0 offen
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
	v_cndmask_b32_e32 v9, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v4, s[64:67], 0 offen
	buffer_store_b8 v55, v6, s[64:67], 0 offen
	buffer_store_b8 v63, v7, s[64:67], 0 offen
	buffer_store_b8 v71, v9, s[64:67], 0 offen
	buffer_store_b8 v44, v11, s[64:67], 0 offen
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
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v42, vcc_lo
	s_clause 0x4
	buffer_store_b8 v52, v4, s[64:67], 0 offen
	buffer_store_b8 v60, v6, s[64:67], 0 offen
	buffer_store_b8 v68, v7, s[64:67], 0 offen
	buffer_store_b8 v48, v9, s[64:67], 0 offen
	buffer_store_b8 v56, v11, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v107
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v108
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s76, s76, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v64, v3, s[64:67], 0 offen
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
	v_and_b32_e32 v2, 0xc0, v107
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 92
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 92
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18632
; TotalNumSgprs: 80
; NumVgprs: 256
; ScratchSize: 92
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 92
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
