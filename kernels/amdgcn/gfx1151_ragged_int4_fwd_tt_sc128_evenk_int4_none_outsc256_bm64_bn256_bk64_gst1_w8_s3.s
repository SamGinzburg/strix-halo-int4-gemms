	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v109, v0 :: v_dual_mov_b32 v98, 0
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
	v_add_nc_u32_e32 v192, s66, v1
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
.LBB0_3:                                ; %Flow494
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v111, 0x80, v109
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v110, 15, v109
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v113, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s3, 0, v111
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v142, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s8, s66, v110
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
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v1, s66, v110
	v_cndmask_b32_e64 v35, 0x88, 0, s3
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s6, s4
	s_addc_u32 s9, s7, s5
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v2, v1, s24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[3:4]
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v4, 32, v1
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, v35, v0
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s9, s[8:9], 0x0
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:340
	scratch_store_b32 off, v110, off offset:368
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v1, 48, v1
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v3, 5, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v2, v2, s24
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s20, s77, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s24
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v34, 1, v109
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v41, 0xf0, v109
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v42, 5, v109
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:344
	scratch_store_b32 off, v111, off offset:372
	scratch_store_b32 off, v1, off offset:352
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v1, 0xe0, v109
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[74:75], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v2, s20, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[5:6]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v3, v4, s24
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v36, 5, v110
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v37, 24, v34
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v44, 2, v41
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v42, 32, v42
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v29, 40, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	s_and_b32 s5, s6, s8
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v28, 48, v2
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s27, s76
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v27, 56, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s7, s24, s9
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v26, 64, v2
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s6, s9
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v22, 0x60, v2
	v_or_b32_e32 v25, 0x48, v2
	v_or3_b32 v151, v36, v37, v1
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_xor_b32_e32 v36, 0x110, v0
	v_or_b32_e32 v0, s20, v109
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v34, 28, v34
	v_add3_u32 v42, 0, v44, v42
	v_or_b32_e32 v5, 0xe8, v2
	v_or_b32_e32 v8, 0xd0, v2
	v_or_b32_e32 v13, 0xa8, v2
	v_or_b32_e32 v19, 0x78, v2
	v_or_b32_e32 v21, 0x68, v2
	v_or_b32_e32 v24, 0x50, v2
	v_or_b32_e32 v31, 24, v2
	v_or_b32_e32 v32, 16, v2
	v_mad_u64_u32 v[85:86], null, v29, s27, s[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:348
	scratch_store_b32 off, v0, off offset:356
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xf8, v2
	v_or_b32_e32 v4, 0xf0, v2
	v_or_b32_e32 v6, 0xe0, v2
	v_or_b32_e32 v7, 0xd8, v2
	v_or_b32_e32 v9, 0xc8, v2
	v_or_b32_e32 v10, 0xc0, v2
	v_or_b32_e32 v11, 0xb8, v2
	v_or_b32_e32 v12, 0xb0, v2
	v_or_b32_e32 v14, 0xa0, v2
	v_or_b32_e32 v15, 0x98, v2
	v_or_b32_e32 v16, 0x90, v2
	v_or_b32_e32 v17, 0x88, v2
	v_or_b32_e32 v18, 0x80, v2
	v_or_b32_e32 v20, 0x70, v2
	v_or_b32_e32 v23, 0x58, v2
	v_or_b32_e32 v30, 32, v2
	v_or_b32_e32 v33, 8, v2
	v_mad_u64_u32 v[86:87], null, v28, s27, s[6:7]
	v_mad_u64_u32 v[87:88], null, v27, s27, s[6:7]
	v_mad_u64_u32 v[88:89], null, v26, s27, s[6:7]
	v_or_b32_e32 v38, 0x300, v109
	v_or_b32_e32 v39, 0x700, v109
	v_or_b32_e32 v1, 0x3f0, v109
	v_or_b32_e32 v35, 0x7f0, v109
	v_xor_b32_e32 v37, 8, v151
	v_xor_b32_e32 v40, 16, v151
	v_xor_b32_e32 v43, 24, v151
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v41, 1, v41
	v_mad_u64_u32 v[81:82], null, v2, s27, s[6:7]
	v_mad_u64_u32 v[89:90], null, v25, s27, s[6:7]
	v_mad_u64_u32 v[176:177], null, v22, s27, s[6:7]
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v0, v42, v34
	v_mad_u64_u32 v[82:83], null, v32, s27, s[6:7]
	v_mad_u64_u32 v[152:153], null, v31, s27, s[6:7]
	v_mad_u64_u32 v[90:91], null, v24, s27, s[6:7]
	v_mad_u64_u32 v[177:178], null, v21, s27, s[6:7]
	v_mad_u64_u32 v[181:182], null, v19, s27, s[6:7]
	v_mad_u64_u32 v[159:160], null, v13, s27, s[6:7]
	v_mad_u64_u32 v[193:194], null, v8, s27, s[6:7]
	v_mad_u64_u32 v[170:171], null, v5, s27, s[6:7]
	v_mad_u64_u32 v[97:98], null, v33, s27, s[6:7]
	v_mad_u64_u32 v[153:154], null, v30, s27, s[6:7]
	v_mad_u64_u32 v[91:92], null, v23, s27, s[6:7]
	v_mad_u64_u32 v[178:179], null, v20, s27, s[6:7]
	v_mad_u64_u32 v[157:158], null, v18, s27, s[6:7]
	v_mad_u64_u32 v[182:183], null, v17, s27, s[6:7]
	v_mad_u64_u32 v[190:191], null, v16, s27, s[6:7]
	v_mad_u64_u32 v[187:188], null, v15, s27, s[6:7]
	v_mad_u64_u32 v[95:96], null, v14, s27, s[6:7]
	v_mad_u64_u32 v[160:161], null, v12, s27, s[6:7]
	v_mad_u64_u32 v[65:66], null, v11, s27, s[6:7]
	v_mad_u64_u32 v[185:186], null, v10, s27, s[6:7]
	v_mad_u64_u32 v[162:163], null, v9, s27, s[6:7]
	v_mad_u64_u32 v[164:165], null, v7, s27, s[6:7]
	v_mad_u64_u32 v[83:84], null, v6, s27, s[6:7]
	v_mad_u64_u32 v[171:172], null, v4, s27, s[6:7]
	v_mad_u64_u32 v[194:195], null, v3, s27, s[6:7]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v80, 6, v109
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v173, 0, v110
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v84, 0, v38
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v96, 0, v39
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v168, 0, v1
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v169, 0, v35
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v180, 0, v36
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v165, 0, v37
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v111, 0, v40
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v166, 0, v43
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v0, 0, v41
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v167, 0, v109
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v103, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v98, 0
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
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:364
	scratch_store_b32 off, v109, off offset:72
	scratch_store_b32 off, v84, off offset:76
	scratch_store_b32 off, v111, off offset:80
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s6, s26, 6
	s_mov_b32 s18, -1
	s_mov_b32 s19, 0
	s_delay_alu instid0(VALU_DEP_1)
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
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v150, off offset:336
	scratch_store_b32 off, v149, off offset:332
	scratch_store_b32 off, v148, off offset:328
	scratch_store_b32 off, v147, off offset:324
	scratch_store_b32 off, v146, off offset:320
	scratch_store_b32 off, v145, off offset:316
	scratch_store_b32 off, v144, off offset:312
	scratch_store_b32 off, v143, off offset:308
	scratch_store_b32 off, v142, off offset:304
	scratch_store_b32 off, v141, off offset:300
	scratch_store_b32 off, v140, off offset:296
	scratch_store_b32 off, v139, off offset:292
	scratch_store_b32 off, v138, off offset:288
	scratch_store_b32 off, v137, off offset:284
	scratch_store_b32 off, v136, off offset:280
	scratch_store_b32 off, v135, off offset:276
	scratch_store_b32 off, v134, off offset:272
	scratch_store_b32 off, v133, off offset:268
	scratch_store_b32 off, v132, off offset:264
	scratch_store_b32 off, v131, off offset:260
	scratch_store_b32 off, v130, off offset:256
	scratch_store_b32 off, v129, off offset:252
	scratch_store_b32 off, v128, off offset:248
	scratch_store_b32 off, v127, off offset:244
	scratch_store_b32 off, v126, off offset:240
	scratch_store_b32 off, v125, off offset:236
	scratch_store_b32 off, v124, off offset:232
	scratch_store_b32 off, v123, off offset:228
	scratch_store_b32 off, v122, off offset:224
	scratch_store_b32 off, v121, off offset:220
	scratch_store_b32 off, v120, off offset:216
	scratch_store_b32 off, v119, off offset:212
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v118, off offset:208
	scratch_store_b32 off, v78, off offset:204
	scratch_store_b32 off, v67, off offset:200
	scratch_store_b32 off, v66, off offset:196
	scratch_store_b32 off, v72, off offset:192
	scratch_store_b32 off, v68, off offset:188
	scratch_store_b32 off, v71, off offset:184
	scratch_store_b32 off, v69, off offset:180
	scratch_store_b32 off, v70, off offset:176
	scratch_store_b32 off, v77, off offset:172
	scratch_store_b32 off, v76, off offset:168
	scratch_store_b32 off, v75, off offset:164
	scratch_store_b32 off, v74, off offset:160
	scratch_store_b32 off, v73, off offset:156
	scratch_store_b32 off, v117, off offset:152
	scratch_store_b32 off, v116, off offset:148
	scratch_store_b32 off, v115, off offset:144
	scratch_store_b32 off, v114, off offset:140
	scratch_store_b32 off, v113, off offset:136
	scratch_store_b32 off, v112, off offset:132
	scratch_store_b32 off, v79, off offset:128
	scratch_store_b32 off, v108, off offset:124
	scratch_store_b32 off, v107, off offset:120
	scratch_store_b32 off, v106, off offset:116
	scratch_store_b32 off, v105, off offset:112
	scratch_store_b32 off, v104, off offset:108
	scratch_store_b32 off, v103, off offset:104
	scratch_store_b32 off, v102, off offset:100
	scratch_store_b32 off, v101, off offset:96
	scratch_store_b32 off, v100, off offset:92
	scratch_store_b32 off, v99, off offset:88
	scratch_store_b32 off, v98, off offset:84
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s19, s19, s6
	scratch_store_b64 off, v[65:66], off offset:32 ; 8-byte Folded Spill
	s_waitcnt vmcnt(1)
	s_clause 0x3                            ; 32-byte Folded Spill
	scratch_store_b64 off, v[83:84], off offset:24
	scratch_store_b64 off, v[82:83], off offset:16
	scratch_store_b64 off, v[81:82], off offset:8
	scratch_store_b64 off, v[97:98], off
	v_or_b32_e32 v98, s19, v80
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s18
	s_mov_b32 s18, 0
	v_dual_mov_b32 v92, v90 :: v_dual_mov_b32 v93, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[192:193]
	v_dual_mov_b32 v66, v171 :: v_dual_mov_b32 v191, v170
	v_mov_b32_e32 v189, v164
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v100, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 4, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[192:193]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v101, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 8, v80
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[192:193]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v102, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 12, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[192:193]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v103, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 16, v80
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[192:193]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v104, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 20, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[192:193]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v105, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 24, v80
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[192:193]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v106, 0x80000000, v98, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v98, 28, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v98, s19, v98
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[98:99], null, v98, s25, v[192:193]
	.loc	1 1131 28                       ; ragged.py:1131:28
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v99, 31, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v99, s19, v99
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	s_mov_b32 s19, 32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v107, v81, v99
	v_add_nc_u32_e32 v108, v97, v99
	v_add_nc_u32_e32 v110, v152, v99
	v_add_nc_u32_e32 v112, v85, v99
	v_add_nc_u32_e32 v114, v87, v99
	v_add_nc_u32_e32 v116, v89, v99
	v_dual_mov_b32 v97, v80 :: v_dual_add_nc_u32 v118, v91, v99
	v_mov_b32_e32 v91, v89
	v_mov_b32_e32 v89, v87
	v_mov_b32_e32 v87, v85
	v_mov_b32_e32 v85, v152
	v_add_nc_u32_e32 v117, v90, v99
	v_mov_b32_e32 v90, v88
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_u8 v141, v107, s[12:15], 0 offen
	buffer_load_u8 v0, v108, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v109, v82, v99
	v_add_nc_u32_e32 v111, v153, v99
	v_dual_mov_b32 v80, v95 :: v_dual_add_nc_u32 v113, v86, v99
	v_add_nc_u32_e32 v115, v88, v99
	v_mov_b32_e32 v88, v86
	v_dual_mov_b32 v86, v153 :: v_dual_add_nc_u32 v119, v176, v99
	v_add_nc_u32_e32 v126, v187, v99
	v_add_nc_u32_e32 v131, v185, v99
	v_add_nc_u32_e32 v120, v177, v99
	v_add_nc_u32_e32 v132, v162, v99
	v_add_nc_u32_e32 v133, v193, v99
	v_add_nc_u32_e32 v134, v164, v99
	v_add_nc_u32_e32 v121, v178, v99
	v_add_nc_u32_e32 v122, v181, v99
	v_add_nc_u32_e32 v123, v157, v99
	v_add_nc_u32_e32 v124, v182, v99
	v_add_nc_u32_e32 v127, v95, v99
	v_add_nc_u32_e32 v128, v159, v99
	v_add_nc_u32_e32 v129, v160, v99
	v_add_nc_u32_e32 v130, v65, v99
	v_add_nc_u32_e32 v135, v83, v99
	v_add_nc_u32_e32 v136, v170, v99
	v_add_nc_u32_e32 v137, v171, v99
	v_mov_b32_e32 v65, v160
	v_add_nc_u32_e32 v125, v190, v99
	v_add_nc_u32_e32 v99, v194, v99
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x7
	buffer_load_u8 v153, v131, s[12:15], 0 offen
	buffer_load_u8 v198, v132, s[12:15], 0 offen
	buffer_load_u8 v154, v133, s[12:15], 0 offen
	buffer_load_u8 v199, v134, s[12:15], 0 offen
	buffer_load_u8 v155, v135, s[12:15], 0 offen
	buffer_load_u8 v200, v136, s[12:15], 0 offen
	buffer_load_u8 v156, v137, s[12:15], 0 offen
	buffer_load_u8 v201, v99, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v99, v100, s[20:23], 0 offen
	buffer_load_u8 v100, v101, s[20:23], 0 offen
	buffer_load_u8 v101, v102, s[20:23], 0 offen
	buffer_load_u8 v102, v104, s[20:23], 0 offen
	buffer_load_u8 v104, v105, s[20:23], 0 offen
	buffer_load_u8 v105, v106, s[20:23], 0 offen
	buffer_load_u8 v98, v98, s[20:23], 0 offen
	buffer_load_u8 v103, v103, s[20:23], 0 offen
	v_mov_b32_e32 v95, v159
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x9
	buffer_load_u8 v148, v121, s[12:15], 0 offen
	buffer_load_u8 v188, v122, s[12:15], 0 offen
	buffer_load_u8 v149, v123, s[12:15], 0 offen
	buffer_load_u8 v179, v124, s[12:15], 0 offen
	buffer_load_u8 v150, v125, s[12:15], 0 offen
	buffer_load_u8 v195, v126, s[12:15], 0 offen
	buffer_load_u8 v81, v127, s[12:15], 0 offen
	buffer_load_u8 v196, v128, s[12:15], 0 offen
	buffer_load_u8 v152, v129, s[12:15], 0 offen
	buffer_load_u8 v197, v130, s[12:15], 0 offen
	s_waitcnt vmcnt(26)
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u8 v142, v109, s[12:15], 0 offen
	buffer_load_u8 v0, v110, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u8 v143, v111, s[12:15], 0 offen
	buffer_load_u8 v0, v112, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u8 v144, v113, s[12:15], 0 offen
	buffer_load_u8 v0, v114, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u8 v145, v115, s[12:15], 0 offen
	buffer_load_u8 v0, v116, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u8 v146, v117, s[12:15], 0 offen
	buffer_load_u8 v0, v118, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u8 v147, v119, s[12:15], 0 offen
	buffer_load_u8 v0, v120, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v167, v99
	ds_store_b8 v167, v100 offset:256
	ds_store_b8 v167, v101 offset:512
	ds_store_b8 v167, v102 offset:1024
	ds_store_b8 v167, v104 offset:1280
	ds_store_b8 v84, v103
	ds_store_b8 v167, v105 offset:1536
	ds_store_b8 v96, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v158, v173 offset:192
	ds_load_u8 v94, v173 offset:128
	ds_load_u8 v159, v173 offset:208
	ds_load_u8 v184, v173 offset:144
	ds_load_u8 v236, v173 offset:224
	ds_load_u8 v239, v173 offset:160
	ds_load_u8 v124, v173 offset:240
	ds_load_u8 v126, v173 offset:176
	ds_load_u8 v160, v173 offset:448
	ds_load_u8 v161, v173 offset:384
	ds_load_u8 v163, v173 offset:464
	ds_load_u8 v183, v173 offset:400
	ds_load_u8 v140, v173 offset:480
	ds_load_u8 v79, v173 offset:416
	ds_load_u8 v136, v173 offset:496
	ds_load_u8 v137, v173 offset:432
	ds_load_u8 v0, v173 offset:320
	ds_load_u8 v171, v173 offset:256
	ds_load_u8 v172, v173 offset:336
	ds_load_u8 v67, v173 offset:272
	ds_load_u8 v186, v173 offset:352
	ds_load_u8 v68, v173 offset:288
	ds_load_u8 v138, v173 offset:368
	ds_load_u8 v139, v173 offset:304
	ds_load_u8 v69, v173 offset:64
	ds_load_u8 v70, v173 offset:80
	ds_load_u8 v71, v173 offset:96
	ds_load_u8 v72, v173 offset:112
	ds_load_u8 v73, v173
	ds_load_u8 v74, v173 offset:16
	ds_load_u8 v75, v173 offset:32
	ds_load_u8 v76, v173 offset:48
	ds_load_u8 v230, v173 offset:960
	ds_load_u8 v233, v173 offset:896
	ds_load_u8 v202, v173 offset:1024
	ds_load_u8 v224, v173 offset:976
	ds_load_u8 v227, v173 offset:912
	ds_load_u8 v213, v173 offset:992
	ds_load_u8 v216, v173 offset:928
	ds_load_u8 v208, v173 offset:944
	ds_load_u8 v174, v173 offset:832
	ds_load_u8 v98, v173 offset:768
	ds_load_u8 v251, v173 offset:848
	ds_load_u8 v255, v173 offset:784
	ds_load_u8 v237, v173 offset:864
	ds_load_u8 v240, v173 offset:800
	ds_load_u8 v222, v173 offset:880
	ds_load_u8 v225, v173 offset:816
	ds_load_u8 v112, v173 offset:704
	ds_load_u8 v115, v173 offset:640
	ds_load_u8 v101, v173 offset:720
	ds_load_u8 v102, v173 offset:656
	ds_load_u8 v99, v173 offset:736
	ds_load_u8 v100, v173 offset:672
	ds_load_u8 v248, v173 offset:752
	ds_load_u8 v253, v173 offset:688
	ds_load_u8 v132, v173 offset:576
	ds_load_u8 v134, v173 offset:512
	ds_load_u8 v125, v173 offset:592
	ds_load_u8 v128, v173 offset:528
	ds_load_u8 v117, v173 offset:608
	ds_load_u8 v119, v173 offset:544
	ds_load_u8 v110, v173 offset:624
	ds_load_u8 v114, v173 offset:560
	ds_load_u8 v226, v173 offset:1216
	ds_load_u8 v235, v173 offset:1280
	ds_load_u8 v214, v173 offset:1232
	ds_load_u8 v218, v173 offset:1168
	ds_load_u8 v209, v173 offset:1248
	ds_load_u8 v211, v173 offset:1184
	ds_load_u8 v205, v173 offset:1264
	ds_load_u8 v207, v173 offset:1200
	ds_load_u8 v250, v173 offset:1152
	ds_load_u8 v164, v173 offset:1088
	ds_load_u8 v238, v173 offset:1104
	ds_load_u8 v242, v173 offset:1040
	ds_load_u8 v229, v173 offset:1120
	ds_load_u8 v231, v173 offset:1056
	ds_load_u8 v220, v173 offset:1136
	ds_load_u8 v223, v173 offset:1072
	ds_load_u8 v116, v173 offset:1472
	ds_load_u8 v203, v173 offset:1536
	ds_load_u8 v103, v173 offset:1488
	ds_load_u8 v106, v173 offset:1424
	ds_load_u8 v84, v173 offset:1504
	ds_load_u8 v170, v173 offset:1440
	ds_load_u8 v244, v173 offset:1520
	ds_load_u8 v249, v173 offset:1456
	ds_load_u8 v133, v173 offset:1408
	ds_load_u8 v135, v173 offset:1344
	ds_load_u8 v129, v173 offset:1360
	ds_load_u8 v130, v173 offset:1296
	ds_load_u8 v120, v173 offset:1376
	ds_load_u8 v122, v173 offset:1312
	ds_load_u8 v107, v173 offset:1392
	ds_load_u8 v111, v173 offset:1328
	ds_load_u8 v228, v173 offset:1984
	ds_load_u8 v215, v173 offset:2000
	ds_load_u8 v219, v173 offset:1936
	ds_load_u8 v210, v173 offset:2016
	ds_load_u8 v212, v173 offset:1952
	ds_load_u8 v77, v168
	ds_load_u8 v204, v169
	ds_load_u8 v206, v173 offset:1968
	ds_load_u8 v254, v173 offset:1920
	ds_load_u8 v83, v173 offset:1856
	ds_load_u8 v243, v173 offset:1872
	ds_load_u8 v246, v173 offset:1808
	ds_load_u8 v232, v173 offset:1888
	ds_load_u8 v234, v173 offset:1824
	ds_load_u8 v217, v173 offset:1904
	ds_load_u8 v221, v173 offset:1840
	ds_load_u8 v105, v173 offset:1728
	ds_load_u8 v118, v173 offset:1792
	ds_load_u8 v82, v173 offset:1744
	ds_load_u8 v175, v173 offset:1680
	ds_load_u8 v247, v173 offset:1760
	ds_load_u8 v252, v173 offset:1696
	ds_load_u8 v241, v173 offset:1776
	ds_load_u8 v245, v173 offset:1712
	ds_load_u8 v127, v173 offset:1664
	ds_load_u8 v131, v173 offset:1600
	ds_load_u8 v121, v173 offset:1616
	ds_load_u8 v123, v173 offset:1552
	ds_load_u8 v109, v173 offset:1632
	ds_load_u8 v113, v173 offset:1568
	ds_load_u8 v104, v173 offset:1648
	ds_load_u8 v108, v173 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v78, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v69, v73, v69, 0xc0c0004
	v_perm_b32 v73, v94, v158, 0xc0c0004
	v_perm_b32 v0, v171, v0, 0xc0c0004
	v_mov_b32_e32 v171, v66
	v_perm_b32 v66, v183, v163, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, 0, v78
	ds_store_b8 v78, v141
	ds_store_b8 v78, v142 offset:512
	ds_store_b8 v78, v143 offset:1024
	ds_store_b8 v78, v144 offset:1536
	ds_store_b8 v78, v145 offset:2048
	ds_store_b8 v78, v146 offset:2560
	ds_store_b8 v78, v147 offset:3072
	ds_store_b8 v78, v148 offset:3584
	ds_store_b8 v78, v149 offset:4096
	ds_store_b8 v78, v150 offset:4608
	ds_store_b8 v78, v81 offset:5120
	ds_store_b8 v78, v152 offset:5632
	ds_store_b8 v78, v153 offset:6144
	ds_store_b8 v78, v154 offset:6656
	ds_store_b8 v78, v155 offset:7168
	ds_store_b8 v78, v156 offset:7680
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v78, v161, v160, 0xc0c0004
	v_mov_b32_e32 v160, v65
	v_lshl_or_b32 v141, v73, 16, v69
	v_perm_b32 v69, v74, v70, 0xc0c0004
	v_perm_b32 v70, v184, v159, 0xc0c0004
	v_lshl_or_b32 v142, v78, 16, v0
	v_perm_b32 v0, v67, v172, 0xc0c0004
	v_mov_b32_e32 v159, v95
	v_perm_b32 v67, v75, v71, 0xc0c0004
	v_lshl_or_b32 v143, v70, 16, v69
	v_mov_b32_e32 v152, v85
	v_lshl_or_b32 v144, v66, 16, v0
	v_perm_b32 v0, v68, v186, 0xc0c0004
	v_perm_b32 v66, v79, v140, 0xc0c0004
	v_perm_b32 v68, v239, v236, 0xc0c0004
	v_mov_b32_e32 v153, v86
	v_dual_mov_b32 v85, v87 :: v_dual_mov_b32 v86, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v146, v66, 16, v0
	v_perm_b32 v0, v139, v138, 0xc0c0004
	v_perm_b32 v66, v137, v136, 0xc0c0004
	v_lshl_or_b32 v145, v68, 16, v67
	v_perm_b32 v67, v76, v72, 0xc0c0004
	v_perm_b32 v68, v126, v124, 0xc0c0004
	v_mov_b32_e32 v87, v89
	v_lshl_or_b32 v148, v66, 16, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	v_mov_b32_e32 v88, v90
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v147, v68, 16, v67
	v_perm_b32 v67, v134, v132, 0xc0c0004
	v_perm_b32 v68, v115, v112, 0xc0c0004
	v_dual_mov_b32 v89, v91 :: v_dual_mov_b32 v90, v92
	v_mov_b32_e32 v91, v93
	v_dual_mov_b32 v95, v80 :: v_dual_mov_b32 v80, v97
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v180, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[65:66], off, off offset:32
	scratch_load_b32 v0, off, off offset:44
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v66, v233, v230, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v180, v0 offset:512
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v180, v0 offset:1024
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v180, v0 offset:1536
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v180, v0 offset:2048
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v180, v0 offset:2560
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v180, v0 offset:3072
	ds_store_b8 v180, v188 offset:3584
	ds_store_b8 v180, v179 offset:4096
	ds_store_b8 v180, v195 offset:4608
	ds_store_b8 v180, v196 offset:5120
	ds_store_b8 v180, v197 offset:5632
	ds_store_b8 v180, v198 offset:6144
	ds_store_b8 v180, v199 offset:6656
	ds_store_b8 v180, v200 offset:7168
	ds_store_b8 v180, v201 offset:7680
	v_add_nc_u32_e32 v0, 0, v151
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[136:139], v0 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v98, v174, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[136:137], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[136:137], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[136:137], v[145:146], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[136:137], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v68, 16, v67
	v_perm_b32 v67, v128, v125, 0xc0c0004
	v_perm_b32 v68, v102, v101, 0xc0c0004
	v_lshl_or_b32 v137, v66, 16, v0
	v_perm_b32 v0, v255, v251, 0xc0c0004
	v_perm_b32 v66, v227, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[141:142], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v68, 16, v67
	v_perm_b32 v68, v100, v99, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[98:101], v165 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v125, v66, 16, v0
	v_perm_b32 v0, v240, v237, 0xc0c0004
	v_perm_b32 v66, v216, v213, 0xc0c0004
	v_perm_b32 v67, v119, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[138:139], v[143:144], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[138:139], v[145:146], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[138:139], v[147:148], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v66, 16, v0
	v_lshl_or_b32 v138, v68, 16, v67
	v_perm_b32 v0, v114, v110, 0xc0c0004
	v_perm_b32 v66, v253, v248, 0xc0c0004
	v_perm_b32 v67, v225, v222, 0xc0c0004
	v_perm_b32 v68, v208, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v114, v66, 16, v0
	v_perm_b32 v0, v235, v135, 0xc0c0004
	v_lshl_or_b32 v115, v68, 16, v67
	v_perm_b32 v66, v133, v116, 0xc0c0004
	v_perm_b32 v67, v202, v164, 0xc0c0004
	v_perm_b32 v68, v250, v226, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[136:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[114:115], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[114:115], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v66, 16, v0
	v_perm_b32 v0, v130, v129, 0xc0c0004
	v_perm_b32 v66, v106, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[136:137], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[124:125], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[124:125], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[138:139], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v122, v120, 0xc0c0004
	v_perm_b32 v66, v170, v84, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[138:139], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v68, 16, v67
	v_perm_b32 v67, v242, v238, 0xc0c0004
	v_perm_b32 v68, v218, v214, 0xc0c0004
	v_lshl_or_b32 v117, v66, 16, v0
	v_perm_b32 v0, v111, v107, 0xc0c0004
	scratch_load_b32 v111, off, off offset:80 ; 4-byte Folded Reload
	v_perm_b32 v66, v249, v244, 0xc0c0004
	v_lshl_or_b32 v102, v68, 16, v67
	v_perm_b32 v67, v231, v229, 0xc0c0004
	v_perm_b32 v68, v211, v209, 0xc0c0004
	v_mov_b32_e32 v164, v189
	v_lshl_or_b32 v107, v66, 16, v0
	v_perm_b32 v0, v118, v83, 0xc0c0004
	v_perm_b32 v66, v254, v228, 0xc0c0004
	v_lshl_or_b32 v116, v68, 16, v67
	v_perm_b32 v67, v223, v220, 0xc0c0004
	v_perm_b32 v68, v207, v205, 0xc0c0004
	v_mov_b32_e32 v170, v191
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v106, v68, 16, v67
	v_perm_b32 v67, v203, v131, 0xc0c0004
	v_perm_b32 v68, v127, v105, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[98:101], v111 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[114:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[114:115], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[102:103], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[102:103], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[116:117], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[116:117], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[106:107], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[106:107], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v66, 16, v0
	v_lshl_or_b32 v102, v68, 16, v67
	v_perm_b32 v0, v246, v243, 0xc0c0004
	v_perm_b32 v66, v219, v215, 0xc0c0004
	v_perm_b32 v67, v123, v121, 0xc0c0004
	v_perm_b32 v68, v175, v82, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[98:101], v166 offset1:8
	scratch_load_b64 v[81:82], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v106, v66, 16, v0
	v_perm_b32 v0, v234, v232, 0xc0c0004
	v_lshl_or_b32 v105, v68, 16, v67
	v_perm_b32 v66, v212, v210, 0xc0c0004
	v_perm_b32 v67, v113, v109, 0xc0c0004
	v_perm_b32 v68, v252, v247, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[82:83], off, off offset:16
	scratch_load_b64 v[83:84], off, off offset:24
	v_lshl_or_b32 v110, v66, 16, v0
	v_perm_b32 v0, v108, v104, 0xc0c0004
	v_lshl_or_b32 v109, v68, 16, v67
	v_perm_b32 v66, v245, v241, 0xc0c0004
	v_perm_b32 v67, v221, v217, 0xc0c0004
	v_perm_b32 v68, v206, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v107, v66, 16, v0
	v_lshl_or_b32 v108, v68, 16, v67
	scratch_load_b64 v[66:67], off, off     ; 8-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[109:110], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[109:110], v[41:48] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v84, off, off offset:76
	scratch_load_b32 v109, off, off offset:72
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[105:106], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[105:106], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[107:108], v[57:64] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v97, v66
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:340
	scratch_load_b32 v66, off, off offset:344
	scratch_load_b32 v67, off, off offset:348
	scratch_load_b32 v68, off, off offset:352
	scratch_load_b32 v69, off, off offset:356
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
	v_cvt_f32_i32_e32 v78, v9
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v102, v14
	v_cvt_f32_i32_e32 v101, v13
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	v_cvt_f32_i32_e32 v74, v5
	v_cvt_f32_i32_e32 v75, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v77, v8
	v_cvt_f32_i32_e32 v98, v10
	v_cvt_f32_i32_e32 v99, v11
	v_cvt_f32_i32_e32 v100, v12
	v_cvt_f32_i32_e32 v103, v15
	v_cvt_f32_i32_e32 v104, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
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
	scratch_load_b32 v2, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s26, s26, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s26, s24
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v25, v25, v66 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v78, v0
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v78, v102, v0 :: v_dual_lshlrev_b32 v67, 16, v67
	v_mul_f32_e32 v102, v103, v0
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v13, off, off offset:364
	scratch_load_b32 v150, off, off offset:336
	scratch_load_b32 v149, off, off offset:332
	scratch_load_b32 v148, off, off offset:328
	scratch_load_b32 v147, off, off offset:324
	scratch_load_b32 v146, off, off offset:320
	scratch_load_b32 v145, off, off offset:316
	scratch_load_b32 v144, off, off offset:312
	scratch_load_b32 v143, off, off offset:308
	scratch_load_b32 v142, off, off offset:304
	scratch_load_b32 v141, off, off offset:300
	scratch_load_b32 v140, off, off offset:296
	scratch_load_b32 v139, off, off offset:292
	scratch_load_b32 v138, off, off offset:288
	scratch_load_b32 v137, off, off offset:284
	scratch_load_b32 v136, off, off offset:280
	scratch_load_b32 v135, off, off offset:276
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v31, v31, v66 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_mul_f32 v103, v104, v0 :: v_dual_mul_f32 v30, v30, v66
	v_dual_mul_f32 v73, v0, v73 :: v_dual_mul_f32 v20, v66, v20
	v_dual_mul_f32 v72, v0, v72 :: v_dual_mul_f32 v17, v66, v17
	v_dual_mul_f32 v71, v0, v71 :: v_dual_mul_f32 v18, v66, v18
	v_dual_mul_f32 v70, v0, v70 :: v_dual_mul_f32 v23, v66, v23
	v_dual_mul_f32 v77, v0, v77 :: v_dual_mul_f32 v24, v66, v24
	v_dual_mul_f32 v76, v0, v76 :: v_dual_mul_f32 v21, v66, v21
	v_dual_mul_f32 v75, v0, v75 :: v_dual_mul_f32 v22, v66, v22
	v_dual_mul_f32 v74, v0, v74 :: v_dual_mul_f32 v29, v66, v29
	v_dual_mul_f32 v101, v0, v101 :: v_dual_mul_f32 v28, v66, v28
	v_dual_mul_f32 v100, v0, v100 :: v_dual_mul_f32 v27, v66, v27
	v_dual_mul_f32 v99, v0, v99 :: v_dual_mul_f32 v26, v66, v26
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v41, v41, v67
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v62, v62, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v63, v63, v68
	v_dual_mul_f32 v64, v64, v68 :: v_dual_mul_f32 v19, v66, v19
	v_dual_mul_f32 v0, v0, v98 :: v_dual_mul_f32 v35, v67, v35
	v_dual_mul_f32 v36, v67, v36 :: v_dual_mul_f32 v51, v68, v51
	v_dual_mul_f32 v34, v67, v34 :: v_dual_mul_f32 v49, v68, v49
	v_dual_mul_f32 v33, v67, v33 :: v_dual_mul_f32 v52, v68, v52
	v_dual_mul_f32 v40, v67, v40 :: v_dual_mul_f32 v55, v68, v55
	v_dual_mul_f32 v39, v67, v39 :: v_dual_mul_f32 v50, v68, v50
	v_dual_mul_f32 v38, v67, v38 :: v_dual_mul_f32 v53, v68, v53
	v_dual_mul_f32 v37, v67, v37 :: v_dual_mul_f32 v56, v68, v56
	v_dual_mul_f32 v45, v67, v45 :: v_dual_mul_f32 v54, v68, v54
	v_dual_mul_f32 v44, v67, v44 :: v_dual_mul_f32 v61, v68, v61
	v_dual_mul_f32 v43, v67, v43 :: v_dual_mul_f32 v60, v68, v60
	v_dual_mul_f32 v42, v67, v42 :: v_dual_mul_f32 v59, v68, v59
	s_clause 0x12                           ; 76-byte Folded Reload
	scratch_load_b32 v134, off, off offset:272
	scratch_load_b32 v133, off, off offset:268
	scratch_load_b32 v132, off, off offset:264
	scratch_load_b32 v131, off, off offset:260
	scratch_load_b32 v130, off, off offset:256
	scratch_load_b32 v129, off, off offset:252
	scratch_load_b32 v128, off, off offset:248
	scratch_load_b32 v127, off, off offset:244
	scratch_load_b32 v126, off, off offset:240
	scratch_load_b32 v125, off, off offset:236
	scratch_load_b32 v124, off, off offset:232
	scratch_load_b32 v123, off, off offset:228
	scratch_load_b32 v122, off, off offset:224
	scratch_load_b32 v121, off, off offset:220
	scratch_load_b32 v120, off, off offset:216
	scratch_load_b32 v119, off, off offset:212
	scratch_load_b32 v118, off, off offset:208
	scratch_load_b32 v67, off, off offset:200
	scratch_load_b32 v66, off, off offset:196
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(35)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v58, v68, v58
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v68, off, off offset:188
	scratch_load_b32 v117, off, off offset:152
	scratch_load_b32 v116, off, off offset:148
	scratch_load_b32 v115, off, off offset:144
	scratch_load_b32 v114, off, off offset:140
	scratch_load_b32 v113, off, off offset:136
	scratch_load_b32 v112, off, off offset:132
	scratch_load_b32 v79, off, off offset:128
	scratch_load_b32 v108, off, off offset:124
	scratch_load_b32 v107, off, off offset:120
	scratch_load_b32 v106, off, off offset:116
	scratch_load_b32 v105, off, off offset:112
	scratch_load_b32 v104, off, off offset:108
	scratch_load_b32 v98, off, off offset:84
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(47) lgkmcnt(3)
	v_dual_fmac_f32 v150, v70, v1 :: v_dual_fmac_f32 v149, v71, v2
	s_waitcnt vmcnt(43) lgkmcnt(2)
	v_dual_fmac_f32 v148, v72, v3 :: v_dual_fmac_f32 v145, v75, v6
	v_dual_fmac_f32 v147, v73, v4 :: v_dual_fmac_f32 v146, v74, v5
	s_waitcnt vmcnt(41)
	v_dual_fmac_f32 v143, v77, v8 :: v_dual_fmac_f32 v144, v76, v7
	s_waitcnt vmcnt(35) lgkmcnt(0)
	v_dual_fmac_f32 v137, v78, v14 :: v_dual_fmac_f32 v142, v69, v9
	v_dual_fmac_f32 v141, v0, v10 :: v_dual_fmac_f32 v140, v99, v11
	v_dual_fmac_f32 v139, v100, v12 :: v_dual_fmac_f32 v138, v101, v13
	s_waitcnt vmcnt(33)
	v_dual_fmac_f32 v135, v103, v16 :: v_dual_fmac_f32 v136, v102, v15
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v78, off, off offset:204
	scratch_load_b32 v72, off, off offset:192
	scratch_load_b32 v71, off, off offset:184
	scratch_load_b32 v69, off, off offset:180
	scratch_load_b32 v70, off, off offset:176
	scratch_load_b32 v77, off, off offset:172
	scratch_load_b32 v76, off, off offset:168
	scratch_load_b32 v75, off, off offset:164
	scratch_load_b32 v74, off, off offset:160
	scratch_load_b32 v73, off, off offset:156
	scratch_load_b32 v103, off, off offset:104
	scratch_load_b32 v102, off, off offset:100
	scratch_load_b32 v101, off, off offset:96
	scratch_load_b32 v100, off, off offset:92
	scratch_load_b32 v99, off, off offset:88
	s_waitcnt vmcnt(46)
	v_dual_fmac_f32 v134, v17, v1 :: v_dual_fmac_f32 v133, v18, v2
	s_waitcnt vmcnt(44)
	v_dual_fmac_f32 v132, v19, v3 :: v_dual_fmac_f32 v131, v20, v4
	s_waitcnt vmcnt(42)
	v_dual_fmac_f32 v130, v21, v5 :: v_dual_fmac_f32 v129, v22, v6
	s_waitcnt vmcnt(40)
	v_dual_fmac_f32 v128, v23, v7 :: v_dual_fmac_f32 v127, v24, v8
	s_waitcnt vmcnt(38)
	v_dual_fmac_f32 v126, v25, v9 :: v_dual_fmac_f32 v125, v26, v10
	s_waitcnt vmcnt(36)
	v_dual_fmac_f32 v124, v27, v11 :: v_dual_fmac_f32 v123, v28, v12
	s_waitcnt vmcnt(34)
	v_dual_fmac_f32 v122, v29, v13 :: v_dual_fmac_f32 v121, v30, v14
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v120, v31, v15 :: v_dual_fmac_f32 v119, v32, v16
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v118, v33, v1 :: v_dual_fmac_f32 v67, v35, v3
	s_waitcnt vmcnt(29)
	v_fmac_f32_e32 v66, v36, v4
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v68, v38, v6 :: v_dual_fmac_f32 v117, v47, v15
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v116, v48, v16 :: v_dual_fmac_f32 v115, v49, v1
	s_waitcnt vmcnt(23)
	v_dual_fmac_f32 v114, v50, v2 :: v_dual_fmac_f32 v113, v51, v3
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v112, v52, v4 :: v_dual_fmac_f32 v79, v53, v5
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v108, v54, v6 :: v_dual_fmac_f32 v107, v55, v7
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v106, v56, v8 :: v_dual_fmac_f32 v105, v57, v9
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v104, v58, v10
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v98, v61, v13
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v78, v34, v2
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v72, v37, v5 :: v_dual_fmac_f32 v71, v39, v7
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v69, v40, v8 :: v_dual_fmac_f32 v70, v41, v9
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v77, v42, v10 :: v_dual_fmac_f32 v76, v43, v11
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v75, v44, v12 :: v_dual_fmac_f32 v74, v45, v13
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v73, v46, v14
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v103, v59, v11 :: v_dual_fmac_f32 v102, v60, v12
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v101, v62, v14 :: v_dual_fmac_f32 v100, v63, v15
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v99, v64, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:376
	scratch_load_b32 v110, off, off offset:368
	scratch_load_b32 v111, off, off offset:372
	v_mov_b32_e32 v5, v192
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v7, 7, v111
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, |v144|, |v143|, |v142|
	v_max_f32_e64 v11, |v78|, |v78|
	v_max_f32_e64 v14, |v118|, |v118|
	v_max_f32_e64 v15, |v115|, |v115|
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v7
	v_or_b32_e32 v3, 60, v7
	v_or_b32_e32 v8, 58, v7
	s_mov_b32 s27, 0x76543210
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v18, 8, v109
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
	v_max_f32_e64 v0, |v149|, |v149|
	v_max_f32_e64 v3, |v150|, |v150|
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
	v_max3_f32 v1, |v147|, |v146|, |v145|
	v_max3_f32 v2, |v141|, |v140|, |v139|
	v_max3_f32 v3, |v138|, |v137|, |v136|
	v_max_f32_e64 v4, |v133|, |v133|
	v_max_f32_e64 v8, |v134|, |v134|
	v_max3_f32 v0, v0, |v148|, v1
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 36, v7
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v2, v3, |v135|
	v_max3_f32 v3, |v131|, |v130|, |v129|
	v_max_f32_e32 v2, v8, v4
	v_max3_f32 v4, |v125|, |v124|, |v123|
	v_max3_f32 v8, |v122|, |v121|, |v120|
	v_max3_f32 v0, v0, v10, v1
	v_max3_f32 v1, |v128|, |v127|, |v126|
	v_max3_f32 v2, v2, |v132|, v3
	v_max3_f32 v10, |v77|, |v76|, |v75|
	v_max3_f32 v3, v4, v8, |v119|
	v_max_f32_e32 v4, v14, v11
	v_max3_f32 v8, |v66|, |v72|, |v68|
	v_max3_f32 v11, |v74|, |v73|, |v117|
	v_max_f32_e64 v14, |v114|, |v114|
	v_max3_f32 v2, v2, v1, v3
	v_max3_f32 v1, |v71|, |v69|, |v70|
	v_max3_f32 v3, v4, |v67|, v8
	v_max3_f32 v4, v10, v11, |v116|
	v_max_f32_e32 v8, v15, v14
	v_max3_f32 v10, |v112|, |v79|, |v108|
	v_max3_f32 v11, |v104|, |v103|, |v102|
	v_max3_f32 v14, |v98|, |v101|, |v100|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v15, v0, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v1, v4
	v_max3_f32 v4, v8, |v113|, v10
	v_max3_f32 v1, |v107|, |v106|, |v105|
	v_max3_f32 v8, v11, v14, |v99|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v15, v15
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v16, v3, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s28, s66, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v11, v11
	v_max3_f32 v4, v4, v1, v8
	v_dual_max_f32 v11, v16, v16 :: v_dual_lshlrev_b32 v20, 1, v111
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v21, 3, v111
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v9
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v9, 0x60, v109
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v0, v10 :: v_dual_and_b32 v0, 3, v109
	v_dual_max_f32 v3, v3, v11 :: v_dual_and_b32 v10, 4, v109
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 4, v109
	v_permlanex16_b32 v8, v4, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v16, v0, 9, 0
	v_lshlrev_b32_e32 v17, 5, v0
	v_lshl_add_u32 v22, v10, 6, 0
	s_waitcnt lgkmcnt(0)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v16, v10, 2, v16
	v_and_or_b32 v19, 0x680, v11, v17
	v_xor_b32_e32 v17, v17, v9
	s_barrier
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v8
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v16, v18, 4, v16
	v_xor_b32_e32 v19, v19, v9
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s67, 0, s28
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[12:13]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v8, v16, v20, v17
	v_add3_u32 v17, v22, v21, v19
.Ltmp30:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 34, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[14:15]
.Ltmp31:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v8, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v17
.Ltmp32:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 32, v7
	v_or_b32_e32 v14, 30, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v16, s27, s66, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s67, 0, s27
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[12:13]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s33, s66, v8
	v_add_co_ci_u32_e64 v13, null, s67, 0, s33
	v_add_co_u32 v14, s33, s66, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v15, null, s67, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v13, 28, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[14:15]
.Ltmp33:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v15, v4, v4
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[16:17]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v17, 24, v7
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp39:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v22.h, 0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v15, v4 :: v_dual_and_b32 v11, 0x2f0, v11
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp43:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s76, s65
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v8, v1, v8
.Ltmp46:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s37, s66, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v8
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v2
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, v2, v12
.Ltmp51:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s37
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[1:2]
.Ltmp54:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v13, v13 :: v_dual_mov_b32 v14, v3
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 26, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v8, v1
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v16, v16
.Ltmp61:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s39, s66, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v12, v2
	v_dual_max_f32 v12, v15, v15 :: v_dual_mov_b32 v15, v1
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v12
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v12, v4 :: v_dual_max_f32 v19, v15, v15
.Ltmp66:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s40, s66, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v16, v16
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v1, v1, v19
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v19, 1, v9
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v12, v12
	v_dual_max_f32 v3, v3, v14 :: v_dual_lshlrev_b32 v12, 4, v0
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 3, v18
	v_add_nc_u32_e32 v18, 0, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v17
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v14, v3
.Ltmp75:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s67, 0, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v17, v18, v19, v0
.Ltmp77:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v18, 22, v7
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[72:73], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[15:16]
.Ltmp80:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v8, v14, v14 :: v_dual_lshlrev_b32 v9, 5, v9
.Ltmp81:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v8
.Ltmp83:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[13:14]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v3
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
	v_dual_max_f32 v3, v3, v8 :: v_dual_lshlrev_b32 v8, 5, v10
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v10, 0, v12
	ds_store_b128 v17, v[1:4]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v10, v8, v0
	s_barrier
.Ltmp87:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s40, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s67, 0, s40
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v0
.Ltmp89:
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
	v_div_scale_f32 v17, null, v31, v31, v150
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
	v_div_scale_f32 v16, null, v31, v31, v149
	v_div_scale_f32 v25, null, v31, v31, v147
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
	v_div_scale_f32 v21, null, v31, v31, v148
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v18, v10, 0x40e00000, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v15, v0
	v_div_scale_f32 v15, vcc_lo, v150, v31, v150
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
	v_div_scale_f32 v26, s61, v149, v31, v149
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v18, v22, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v20, v23, v0
	v_rcp_f32_e32 v18, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v22, v26, v19
	v_fma_f32 v23, -v21, v24, 1.0
	v_div_scale_f32 v29, null, v31, v31, v146
	v_fma_f32 v15, -v17, v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v16, v22, v26
	v_fmac_f32_e32 v24, v23, v24
	v_div_scale_f32 v23, s62, v148, v31, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v25, v18, 1.0
	v_div_fmas_f32 v0, v15, v0, v20
	v_rcp_f32_e32 v20, v29
	v_dual_fmac_f32 v22, v17, v19 :: v_dual_mul_f32 v17, v23, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v18, v28, v18
	v_div_scale_f32 v28, s63, v147, v31, v147
	v_div_scale_f32 v30, null, v31, v31, v145
	v_div_fixup_f32 v15, v0, v31, v150
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
	v_div_scale_f32 v22, s61, v146, v31, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v16, v0, v31, v149
	v_fma_f32 v33, -v30, v32, 1.0
	v_fma_f32 v0, -v21, v17, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v26, v19, v18 :: v_dual_mul_f32 v19, v22, v20
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v21, s64, v145, v31, v145
	v_div_scale_f32 v23, null, v31, v31, v144
	v_div_fmas_f32 v0, v0, v24, v17
	v_fma_f32 v24, -v29, v19, v22
	v_div_scale_f32 v33, null, v31, v31, v143
	v_fma_f32 v17, -v25, v26, v28
	v_rcp_f32_e32 v25, v23
	v_mul_f32_e32 v28, v21, v32
	v_fmac_f32_e32 v19, v24, v20
	v_rcp_f32_e32 v24, v33
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v39, null, v31, v31, v137
	v_div_fmas_f32 v18, v17, v18, v26
	v_fma_f32 v26, -v30, v28, v21
	v_div_fixup_f32 v17, v0, v31, v148
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v34, -v23, v25, 1.0
	v_fma_f32 v0, -v29, v19, v22
	v_div_scale_f32 v29, null, v31, v31, v142
	v_fmac_f32_e32 v28, v26, v32
	v_fma_f32 v26, -v33, v24, 1.0
	v_fmac_f32_e32 v25, v34, v25
	v_div_scale_f32 v22, s62, v144, v31, v144
	v_div_scale_f32 v34, null, v31, v31, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v24, v26, v24
	v_rcp_f32_e32 v26, v29
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v36, v34
	v_div_fmas_f32 v0, v0, v20, v19
	v_fma_f32 v19, -v30, v28, v21
	v_mul_f32_e32 v21, v22, v25
	v_div_scale_f32 v30, s61, v143, v31, v143
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v40, null, v31, v31, v136
	v_div_fmas_f32 v20, v19, v32, v28
	v_fma_f32 v28, -v23, v21, v22
	v_mul_f32_e32 v32, v30, v24
	v_fma_f32 v35, -v29, v26, 1.0
	v_div_fixup_f32 v19, v0, v31, v146
	v_fma_f32 v37, -v34, v36, 1.0
	v_fmac_f32_e32 v21, v28, v25
	v_fma_f32 v0, -v33, v32, v30
	v_fmac_f32_e32 v26, v35, v26
	v_div_scale_f32 v28, s63, v142, v31, v142
	v_div_scale_f32 v35, null, v31, v31, v140
	v_fma_f32 v22, -v23, v21, v22
	v_fmac_f32_e32 v32, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v0, v28, v26
	v_rcp_f32_e32 v38, v35
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v23, s64, v141, v31, v141
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v37, null, v31, v31, v139
	v_div_fmas_f32 v21, v22, v25, v21
	v_fma_f32 v22, -v33, v32, v30
	v_fma_f32 v25, -v29, v0, v28
	v_mul_f32_e32 v30, v23, v36
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v33, -v35, v38, 1.0
	v_div_fmas_f32 v22, v22, v24, v32
	v_fmac_f32_e32 v0, v25, v26
	v_rcp_f32_e32 v32, v37
	v_fma_f32 v24, -v34, v30, v23
	v_fmac_f32_e32 v38, v33, v38
	v_div_scale_f32 v33, null, v31, v31, v138
	v_fma_f32 v28, -v29, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v30, v24, v36
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v25, s61, v140, v31, v140
	v_fma_f32 v24, -v37, v32, 1.0
	v_div_fmas_f32 v0, v28, v26, v0
	v_fma_f32 v23, -v34, v30, v23
	v_rcp_f32_e32 v28, v33
	s_mov_b32 vcc_lo, s64
	v_dual_mul_f32 v29, v25, v38 :: v_dual_fmac_f32 v32, v24, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v23, v36, v30
	v_rcp_f32_e32 v30, v39
	v_div_scale_f32 v34, s62, v139, v31, v139
	v_fma_f32 v26, -v35, v29, v25
	v_div_fixup_f32 v23, v0, v31, v142
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v36, -v33, v28, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v41, null, v31, v31, v135
	v_fmac_f32_e32 v29, v26, v38
	v_mul_f32_e32 v26, v34, v32
	v_fmac_f32_e32 v28, v36, v28
	v_fma_f32 v36, -v39, v30, 1.0
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v0, -v35, v29, v25
	v_fma_f32 v25, -v37, v26, v34
	v_div_scale_f32 v35, s63, v138, v31, v138
	v_fmac_f32_e32 v30, v36, v30
	v_rcp_f32_e32 v36, v40
	v_div_fmas_f32 v0, v0, v38, v29
	v_fmac_f32_e32 v26, v25, v32
	v_mul_f32_e32 v29, v35, v28
	v_div_scale_f32 v38, s61, v137, v31, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v25, v0, v31, v140
	v_fma_f32 v0, -v37, v26, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v33, v29, v35
	v_mul_f32_e32 v37, v38, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v40, v36, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v46, 0xffff0000, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v32, v26
	v_fmac_f32_e32 v29, v34, v28
	v_fma_f32 v32, -v39, v37, v38
	v_fmac_f32_e32 v36, v43, v36
	v_div_scale_f32 v34, s62, v136, v31, v136
	v_fma_f32 v43, -v41, v42, 1.0
	v_div_fixup_f32 v26, v0, v31, v139
	v_fma_f32 v0, -v33, v29, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v37, v32, v30 :: v_dual_mul_f32 v32, v34, v36
	v_div_scale_f32 v35, null, v46, v46, v134
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v33, s64, v135, v31, v135
	v_div_fmas_f32 v0, v0, v28, v29
	v_fma_f32 v28, -v39, v37, v38
	v_fma_f32 v29, -v40, v32, v34
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v43, null, v46, v46, v133
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v39, v33, v42
	v_div_fmas_f32 v30, v28, v30, v37
	v_fmac_f32_e32 v32, v29, v36
	v_rcp_f32_e32 v37, v43
	v_div_fixup_f32 v28, v0, v31, v138
	v_fma_f32 v44, -v41, v39, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v35, v38, 1.0
	v_fma_f32 v0, -v40, v32, v34
	v_div_scale_f32 v40, null, v46, v46, v132
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v29, v30, v31, v137
	v_fmac_f32_e32 v39, v44, v42
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v34, s61, v134, v46, v134
	v_fma_f32 v30, -v43, v37, 1.0
	v_div_fmas_f32 v0, v0, v36, v32
	v_rcp_f32_e32 v36, v40
	v_fma_f32 v32, -v41, v39, v33
	v_mul_f32_e32 v33, v34, v38
	v_fmac_f32_e32 v37, v30, v37
	v_div_scale_f32 v41, s62, v133, v46, v133
	v_div_scale_f32 v44, null, v46, v46, v131
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v30, v0, v31, v136
	v_div_fmas_f32 v32, v32, v42, v39
	v_fma_f32 v39, -v35, v33, v34
	v_mul_f32_e32 v42, v41, v37
	v_fma_f32 v45, -v40, v36, 1.0
	v_rcp_f32_e32 v47, v44
	v_div_fixup_f32 v18, v18, v31, v147
	v_fmac_f32_e32 v33, v39, v38
	v_fma_f32 v0, -v43, v42, v41
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v46, v46, v130
	v_div_fixup_f32 v20, v20, v31, v145
	v_div_fixup_f32 v21, v21, v31, v144
	v_div_fixup_f32 v22, v22, v31, v143
	v_div_fixup_f32 v24, v24, v31, v141
	v_div_fixup_f32 v31, v32, v31, v135
	v_div_scale_f32 v39, s63, v132, v46, v132
	v_fma_f32 v32, -v44, v47, 1.0
	v_fma_f32 v34, -v35, v33, v34
	v_fmac_f32_e32 v42, v0, v37
	v_rcp_f32_e32 v48, v45
	s_mov_b32 vcc_lo, s61
	v_dual_mul_f32 v0, v39, v36 :: v_dual_fmac_f32 v47, v32, v47
	v_div_scale_f32 v35, s64, v131, v46, v131
	v_div_fmas_f32 v32, v34, v38, v33
	v_fma_f32 v33, -v43, v42, v41
	v_div_scale_f32 v43, null, v46, v46, v129
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v34, -v40, v0, v39
	v_mul_f32_e32 v38, v35, v47
	v_fma_f32 v41, -v45, v48, 1.0
	v_div_fmas_f32 v33, v33, v37, v42
	v_rcp_f32_e32 v37, v43
	v_fmac_f32_e32 v0, v34, v36
	v_fma_f32 v34, -v44, v38, v35
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, s61, v130, v46, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v40, v0, v39
	v_fmac_f32_e32 v38, v34, v47
	v_div_scale_f32 v42, null, v46, v46, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v40, v41, v48
	v_fma_f32 v34, -v43, v37, 1.0
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v35, -v44, v38, v35
	v_div_fmas_f32 v0, v39, v36, v0
	v_fma_f32 v36, -v45, v40, v41
	v_fmac_f32_e32 v37, v34, v37
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s62, v129, v46, v129
	v_div_scale_f32 v49, null, v46, v46, v127
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v40, v36, v48
	v_div_fmas_f32 v35, v35, v47, v38
	v_rcp_f32_e32 v38, v49
	v_mul_f32_e32 v47, v44, v37
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v36, -v42, v39, 1.0
	v_div_fixup_f32 v34, v0, v46, v132
	v_fma_f32 v0, -v45, v40, v41
	v_div_scale_f32 v50, null, v46, v46, v126
	v_fma_f32 v41, -v43, v47, v44
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v45, s63, v128, v46, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v49, v38, 1.0
	v_fmac_f32_e32 v47, v41, v37
	v_rcp_f32_e32 v41, v50
	v_div_scale_f32 v51, null, v46, v46, v125
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v38, v36, v38
	v_div_fmas_f32 v0, v0, v48, v40
	v_mul_f32_e32 v40, v45, v39
	v_div_scale_f32 v48, s61, v127, v46, v127
	v_rcp_f32_e32 v52, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v36, v0, v46, v130
	v_fma_f32 v0, -v43, v47, v44
	v_fma_f32 v43, -v42, v40, v45
	v_mul_f32_e32 v44, v48, v38
	v_fma_f32 v53, -v50, v41, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v37, v47
	v_fmac_f32_e32 v40, v43, v39
	v_fma_f32 v43, -v49, v44, v48
	v_fmac_f32_e32 v41, v53, v41
	v_fma_f32 v53, -v51, v52, 1.0
	v_div_fixup_f32 v37, v0, v46, v129
	v_fma_f32 v0, -v42, v40, v45
	v_fmac_f32_e32 v44, v43, v38
	v_div_scale_f32 v43, s64, v125, v46, v125
	v_fmac_f32_e32 v52, v53, v52
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v59, null, v27, v27, v78
	v_div_fmas_f32 v0, v0, v39, v40
	v_fma_f32 v39, -v49, v44, v48
	v_mul_f32_e32 v49, v43, v52
	v_div_scale_f32 v47, s62, v126, v46, v126
	v_div_scale_f32 v45, null, v46, v46, v124
	v_div_scale_f32 v53, null, v46, v46, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v47, v41
	v_rcp_f32_e32 v48, v45
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v58, null, v46, v46, v119
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v40, -v50, v42, v47
	v_div_fmas_f32 v39, v39, v38, v44
	v_rcp_f32_e32 v44, v53
	v_div_fixup_f32 v38, v0, v46, v128
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v42, v40, v41
	v_fma_f32 v40, -v51, v49, v43
	v_fma_f32 v54, -v45, v48, 1.0
	v_div_scale_f32 v60, null, v27, v27, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v50, v42, v47
	v_fmac_f32_e32 v49, v40, v52
	v_div_scale_f32 v50, null, v46, v46, v122
	v_fmac_f32_e32 v48, v54, v48
	v_div_scale_f32 v47, s61, v124, v46, v124
	v_fma_f32 v40, -v53, v44, 1.0
	v_div_fmas_f32 v0, v0, v41, v42
	v_fma_f32 v41, -v51, v49, v43
	v_rcp_f32_e32 v51, v50
	v_mul_f32_e32 v42, v47, v48
	v_fmac_f32_e32 v44, v40, v44
	v_div_scale_f32 v43, s62, v123, v46, v123
	v_div_scale_f32 v54, null, v46, v46, v121
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v40, v0, v46, v126
	v_div_fmas_f32 v41, v41, v52, v49
	v_fma_f32 v49, -v45, v42, v47
	v_mul_f32_e32 v52, v43, v44
	v_fma_f32 v55, -v50, v51, 1.0
	v_rcp_f32_e32 v56, v54
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v14, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v42, v49, v48
	v_fma_f32 v0, -v53, v52, v43
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, null, v46, v46, v120
	v_div_scale_f32 v49, s63, v122, v46, v122
	v_fma_f32 v45, -v45, v42, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v54, v56, 1.0
	v_fmac_f32_e32 v52, v0, v44
	v_rcp_f32_e32 v47, v55
	v_mul_f32_e32 v0, v49, v51
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, s64, v121, v46, v121
	v_fma_f32 v43, -v53, v52, v43
	v_div_fmas_f32 v42, v45, v48, v42
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v45, -v50, v0, v49
	v_mul_f32_e32 v48, v57, v56
	v_fma_f32 v53, -v55, v47, 1.0
	v_div_fmas_f32 v43, v43, v44, v52
	v_rcp_f32_e32 v52, v58
	v_fmac_f32_e32 v0, v45, v51
	v_fma_f32 v44, -v54, v48, v57
	v_fmac_f32_e32 v47, v53, v47
	v_div_scale_f32 v53, s61, v120, v46, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v50, v0, v49
	v_fmac_f32_e32 v48, v44, v56
	v_div_scale_f32 v50, null, v27, v27, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v53, v47
	v_fma_f32 v44, -v58, v52, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v61, null, v27, v27, v66
	v_div_fmas_f32 v0, v45, v51, v0
	v_fma_f32 v45, -v54, v48, v57
	v_fma_f32 v51, -v55, v49, v53
	v_fmac_f32_e32 v52, v44, v52
	v_rcp_f32_e32 v54, v50
	v_div_scale_f32 v57, s62, v119, v46, v119
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v49, v51, v47
	v_div_fmas_f32 v45, v45, v56, v48
	v_rcp_f32_e32 v48, v59
	v_mul_f32_e32 v51, v57, v52
	v_div_fixup_f32 v44, v0, v46, v122
	v_fma_f32 v0, -v55, v49, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v50, v54, 1.0
	v_div_scale_f32 v55, s63, v118, v27, v118
	v_fma_f32 v53, -v58, v51, v57
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v54, v56, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v59, v48, 1.0
	v_div_fmas_f32 v0, v0, v47, v49
	v_fmac_f32_e32 v51, v53, v52
	v_rcp_f32_e32 v53, v60
	v_dual_mul_f32 v49, v55, v54 :: v_dual_fmac_f32 v48, v56, v48
	v_div_scale_f32 v56, s61, v78, v27, v78
	v_div_fixup_f32 v47, v0, v46, v120
	v_fma_f32 v0, -v58, v51, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v50, v49, v55
	v_mul_f32_e32 v58, v56, v48
	v_rcp_f32_e32 v62, v61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v63, -v60, v53, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v49, v57, v54
	v_div_fmas_f32 v0, v0, v52, v51
	v_fma_f32 v51, -v59, v58, v56
	v_fmac_f32_e32 v53, v63, v53
	v_div_scale_f32 v52, s62, v67, v27, v67
	v_div_fixup_f32 v32, v32, v46, v134
	v_div_fixup_f32 v33, v33, v46, v133
	v_div_fixup_f32 v35, v35, v46, v131
	v_div_fixup_f32 v39, v39, v46, v127
	v_div_fixup_f32 v41, v41, v46, v125
	v_div_fixup_f32 v42, v42, v46, v124
	v_div_fixup_f32 v43, v43, v46, v123
	v_div_fixup_f32 v45, v45, v46, v121
	v_fma_f32 v57, -v61, v62, 1.0
	v_div_fixup_f32 v46, v0, v46, v119
	v_fma_f32 v0, -v50, v49, v55
	v_fmac_f32_e32 v58, v51, v48
	v_mul_f32_e32 v50, v52, v53
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v62, v57, v62
	v_div_scale_f32 v51, s64, v66, v27, v66
	v_div_fmas_f32 v0, v0, v54, v49
	v_fma_f32 v49, -v59, v58, v56
	v_fma_f32 v54, -v60, v50, v52
	v_div_scale_f32 v59, null, v27, v27, v68
	v_div_scale_f32 v55, null, v27, v27, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v51, v62 :: v_dual_fmac_f32 v50, v54, v53
	v_rcp_f32_e32 v54, v59
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v56, v55
	v_div_fmas_f32 v49, v49, v48, v58
	v_fma_f32 v58, -v61, v57, v51
	v_div_fixup_f32 v48, v0, v27, v118
	v_fma_f32 v0, -v60, v50, v52
	v_div_scale_f32 v60, null, v27, v27, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v57, v58, v62
	v_fma_f32 v58, -v59, v54, 1.0
	v_div_scale_f32 v52, s61, v72, v27, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v55, v56, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v54, v58, v54
	v_rcp_f32_e32 v58, v60
	v_div_fmas_f32 v0, v0, v53, v50
	v_fmac_f32_e32 v56, v63, v56
	v_fma_f32 v50, -v61, v57, v51
	v_div_scale_f32 v61, s62, v68, v27, v68
	v_div_scale_f32 v63, null, v27, v27, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v53, v52, v56
	s_mov_b32 vcc_lo, s64
	v_fma_f32 v64, -v60, v58, 1.0
	v_div_fmas_f32 v51, v50, v62, v57
	v_mul_f32_e32 v62, v61, v54
	v_fma_f32 v57, -v55, v53, v52
	v_rcp_f32_e32 v65, v63
	v_fmac_f32_e32 v58, v64, v58
	v_div_scale_f32 v64, null, v27, v27, v70
	v_div_fixup_f32 v50, v0, v27, v67
	v_fmac_f32_e32 v53, v57, v56
	v_fma_f32 v0, -v59, v62, v61
	v_div_scale_f32 v57, s63, v71, v27, v71
	v_rcp_f32_e32 v67, v64
	v_div_fixup_f32 v51, v51, v27, v66
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v66, -v63, v65, 1.0
	v_fma_f32 v52, -v55, v53, v52
	v_fmac_f32_e32 v62, v0, v54
	v_mul_f32_e32 v0, v57, v58
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v55, s64, v69, v27, v69
	v_div_fmas_f32 v52, v52, v56, v53
	v_fma_f32 v53, -v59, v62, v61
	v_fma_f32 v56, -v60, v0, v57
	v_fma_f32 v61, -v64, v67, 1.0
	v_div_scale_f32 v66, null, v27, v27, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v59, v55, v65 :: v_dual_fmac_f32 v0, v56, v58
	v_fmac_f32_e32 v67, v61, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v56, v66
	v_div_scale_f32 v61, s61, v70, v27, v70
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v57, -v60, v0, v57
	v_div_fmas_f32 v53, v53, v54, v62
	v_fma_f32 v54, -v63, v59, v55
	v_mul_f32_e32 v60, v61, v67
	v_div_scale_f32 v62, null, v27, v27, v76
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v53, v53, v27, v68
	v_fmac_f32_e32 v59, v54, v65
	v_fma_f32 v54, -v66, v56, 1.0
	v_div_fmas_f32 v0, v57, v58, v0
	v_fma_f32 v57, -v64, v60, v61
	v_rcp_f32_e32 v58, v62
	v_div_scale_f32 v68, null, v27, v27, v75
	v_fma_f32 v55, -v63, v59, v55
	v_fmac_f32_e32 v56, v54, v56
	v_div_scale_f32 v63, s62, v77, v27, v77
	v_fmac_f32_e32 v60, v57, v67
	v_rcp_f32_e32 v57, v68
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v54, v0, v27, v71
	v_div_fmas_f32 v55, v55, v65, v59
	v_mul_f32_e32 v59, v63, v56
	v_fma_f32 v65, -v62, v58, 1.0
	v_fma_f32 v0, -v64, v60, v61
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v55, v55, v27, v69
	v_fma_f32 v61, -v66, v59, v63
	v_fmac_f32_e32 v58, v65, v58
	v_div_scale_f32 v64, s63, v76, v27, v76
	v_fma_f32 v65, -v68, v57, 1.0
	v_div_scale_f32 v69, null, v27, v27, v74
	v_div_fmas_f32 v0, v0, v67, v60
	v_div_scale_f32 v67, null, v27, v27, v73
	v_dual_fmac_f32 v59, v61, v56 :: v_dual_mul_f32 v60, v64, v58
	v_fmac_f32_e32 v57, v65, v57
	v_rcp_f32_e32 v61, v69
	v_div_scale_f32 v65, s61, v75, v27, v75
	v_rcp_f32_e32 v71, v67
	v_div_fixup_f32 v0, v0, v27, v70
	v_fma_f32 v63, -v66, v59, v63
	v_fma_f32 v66, -v62, v60, v64
	v_mul_f32_e32 v70, v65, v57
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v52, v52, v27, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v72, -v69, v61, 1.0
	v_div_fmas_f32 v56, v63, v56, v59
	v_fmac_f32_e32 v60, v66, v58
	v_fma_f32 v59, -v68, v70, v65
	v_fma_f32 v66, -v67, v71, 1.0
	v_fmac_f32_e32 v61, v72, v61
	v_div_scale_f32 v63, s62, v74, v27, v74
	v_fma_f32 v62, -v62, v60, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v70, v59, v57 :: v_dual_fmac_f32 v71, v66, v71
	v_div_scale_f32 v66, null, v27, v27, v117
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v59, v63, v61
	v_div_scale_f32 v64, s64, v73, v27, v73
	v_div_fmas_f32 v58, v62, v58, v60
	v_fma_f32 v60, -v68, v70, v65
	v_rcp_f32_e32 v65, v66
	v_fma_f32 v62, -v69, v59, v63
	v_mul_f32_e32 v68, v64, v71
	v_div_scale_f32 v72, null, v27, v27, v116
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v59, v62, v61
	v_div_fmas_f32 v57, v60, v57, v70
	v_rcp_f32_e32 v60, v72
	v_fma_f32 v62, -v67, v68, v64
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v70, -v66, v65, 1.0
	v_fma_f32 v63, -v69, v59, v63
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v57, v57, v27, v75
	v_fmac_f32_e32 v68, v62, v71
	v_fmac_f32_e32 v65, v70, v65
	v_div_scale_f32 v62, s61, v117, v27, v117
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v72, v60, 1.0
	v_div_fmas_f32 v59, v63, v61, v59
	v_fma_f32 v61, -v67, v68, v64
	v_mul_f32_e32 v63, v62, v65
	v_div_scale_f32 v64, null, v14, v14, v115
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v60, v69, v60
	v_div_fmas_f32 v61, v61, v71, v68
	v_rcp_f32_e32 v68, v64
	v_fma_f32 v69, -v66, v63, v62
	v_div_scale_f32 v67, s62, v116, v27, v116
	v_div_scale_f32 v71, null, v14, v14, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v63, v69, v65 :: v_dual_mul_f32 v70, v67, v60
	v_div_fixup_f32 v59, v59, v27, v74
	v_div_fixup_f32 v61, v61, v27, v73
	v_rcp_f32_e32 v73, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v64, v68, 1.0
	v_fma_f32 v62, -v66, v63, v62
	v_div_scale_f32 v66, null, v14, v14, v113
	v_fma_f32 v69, -v72, v70, v67
	v_fmac_f32_e32 v68, v74, v68
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v74, v66
	v_div_fmas_f32 v62, v62, v65, v63
	v_fmac_f32_e32 v70, v69, v60
	v_div_scale_f32 v69, s63, v115, v14, v115
	v_fma_f32 v75, -v71, v73, 1.0
	v_div_fixup_f32 v56, v56, v27, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v72, v70, v67
	v_mul_f32_e32 v65, v69, v68
	v_div_scale_f32 v67, s61, v114, v14, v114
	v_fmac_f32_e32 v73, v75, v73
	v_fma_f32 v72, -v66, v74, 1.0
	v_div_fixup_f32 v58, v58, v27, v76
	v_fma_f32 v75, -v64, v65, v69
	v_div_scale_f32 v76, null, v14, v14, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v77, v67, v73 :: v_dual_fmac_f32 v74, v72, v74
	v_div_scale_f32 v72, s64, v113, v14, v113
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v49, v49, v27, v78
	v_rcp_f32_e32 v78, v76
	v_div_fmas_f32 v60, v63, v60, v70
	v_fmac_f32_e32 v65, v75, v68
	v_fma_f32 v63, -v71, v77, v67
	v_mul_f32_e32 v70, v72, v74
	v_div_fixup_f32 v62, v62, v27, v117
	v_div_fixup_f32 v27, v60, v27, v116
	v_fma_f32 v60, -v64, v65, v69
	v_fmac_f32_e32 v77, v63, v73
	v_fma_f32 v63, -v66, v70, v72
	v_div_scale_f32 v69, null, v14, v14, v79
	v_fma_f32 v64, -v76, v78, 1.0
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v63, v74
	v_rcp_f32_e32 v63, v69
	v_div_fmas_f32 v60, v60, v68, v65
	v_fmac_f32_e32 v78, v64, v78
	v_div_scale_f32 v64, s62, v112, v14, v112
	v_fma_f32 v65, -v71, v77, v67
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v66, -v66, v70, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v64, v78
	v_div_scale_f32 v68, null, v14, v14, v108
	v_fma_f32 v71, -v69, v63, 1.0
	v_div_fmas_f32 v65, v65, v73, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v72, -v76, v67, v64
	s_mov_b32 vcc_lo, s64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v63, v71, v63
	v_div_scale_f32 v71, s61, v79, v14, v79
	v_fmac_f32_e32 v67, v72, v78
	v_div_fmas_f32 v66, v66, v74, v70
	v_rcp_f32_e32 v70, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, v71, v63
	v_div_scale_f32 v74, null, v14, v14, v107
	v_fma_f32 v64, -v76, v67, v64
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v75, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v76, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v64, v64, v78, v67
	v_fma_f32 v73, -v68, v70, 1.0
	v_fmac_f32_e32 v72, v75, v63
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v75, null, v14, v14, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v73, v70
	v_fma_f32 v69, -v69, v72, v71
	v_div_scale_f32 v73, s63, v108, v14, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v75
	v_fma_f32 v77, -v74, v76, 1.0
	v_div_fmas_f32 v63, v69, v63, v72
	v_div_scale_f32 v69, null, v14, v14, v105
	v_mul_f32_e32 v67, v73, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v77, v76
	v_div_fixup_f32 v63, v63, v14, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v69
	v_div_scale_f32 v79, null, v14, v14, v104
	v_fma_f32 v71, -v68, v67, v73
	v_fma_f32 v77, -v75, v78, 1.0
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v82, s63, v105, v14, v105
	v_fmac_f32_e32 v67, v71, v70
	v_div_scale_f32 v71, s61, v107, v14, v107
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v69, v72, 1.0
	v_fmac_f32_e32 v78, v77, v78
	v_fma_f32 v68, -v68, v67, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v73, v71, v76
	v_div_scale_f32 v77, s62, v106, v14, v106
	v_fmac_f32_e32 v72, v80, v72
	v_div_scale_f32 v80, null, v14, v14, v103
	v_div_fmas_f32 v67, v68, v70, v67
	v_fma_f32 v68, -v74, v73, v71
	v_mul_f32_e32 v70, v77, v78
	v_fma_f32 v83, -v79, v81, 1.0
	v_rcp_f32_e32 v84, v80
	v_mul_f32_e32 v85, v82, v72
	v_fmac_f32_e32 v73, v68, v76
	v_fma_f32 v68, -v75, v70, v77
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, s64, v104, v14, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v74, v73, v71
	v_fmac_f32_e32 v70, v68, v78
	v_fma_f32 v68, -v69, v85, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v74, v83, v81
	v_fma_f32 v86, -v80, v84, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v76, v73
	v_fma_f32 v73, -v75, v70, v77
	v_fmac_f32_e32 v85, v68, v72
	v_fma_f32 v68, -v79, v74, v83
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v75, s61, v103, v14, v103
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v74, v68, v81
	v_div_fmas_f32 v70, v73, v78, v70
	v_mul_f32_e32 v68, v75, v84
	v_div_scale_f32 v73, null, v14, v14, v102
	v_fma_f32 v69, -v69, v85, v82
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v80, v68, v75
	v_rcp_f32_e32 v77, v73
	v_div_scale_f32 v78, null, v14, v14, v100
	v_div_fmas_f32 v69, v69, v72, v85
	v_fma_f32 v72, -v79, v74, v83
	v_fmac_f32_e32 v68, v76, v84
	s_mov_b32 vcc_lo, s64
	v_rcp_f32_e32 v82, v78
	v_div_fixup_f32 v67, v67, v14, v108
	v_div_fmas_f32 v72, v72, v81, v74
	v_fma_f32 v74, -v80, v68, v75
	v_div_scale_f32 v75, null, v14, v14, v98
	v_fma_f32 v76, -v73, v77, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v68, v74, v84, v68
	v_rcp_f32_e32 v74, v75
	v_fmac_f32_e32 v77, v76, v77
	v_div_scale_f32 v76, null, v14, v14, v101
	v_div_scale_f32 v84, null, v14, v14, v99
	v_div_scale_f32 v79, vcc_lo, v102, v14, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v76
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v75, v74, 1.0
	v_mul_f32_e32 v83, v79, v77
	v_fma_f32 v88, -v78, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s61, v98, v14, v98
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v76, v80, 1.0
	v_fma_f32 v87, -v73, v83, v79
	v_fma_f32 v90, -v84, v86, 1.0
	v_mul_f32_e32 v89, v81, v74
	v_fmac_f32_e32 v82, v88, v82
	v_fmac_f32_e32 v80, v85, v80
	v_div_scale_f32 v85, s62, v101, v14, v101
	v_div_scale_f32 v88, s63, v100, v14, v100
	v_dual_fmac_f32 v83, v87, v77 :: v_dual_fmac_f32 v86, v90, v86
	v_div_scale_f32 v90, s64, v99, v14, v99
	v_fma_f32 v87, -v75, v89, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v91, v85, v80 :: v_dual_mul_f32 v92, v88, v82
	v_fma_f32 v73, -v73, v83, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v90, v86
	v_fmac_f32_e32 v89, v87, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v79, -v76, v91, v85
	v_fma_f32 v87, -v78, v92, v88
	v_div_fmas_f32 v73, v73, v77, v83
	v_fma_f32 v77, -v84, v93, v90
	v_fma_f32 v75, -v75, v89, v81
	v_fmac_f32_e32 v91, v79, v80
	v_fmac_f32_e32 v92, v87, v82
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v93, v77, v86
	v_div_fmas_f32 v74, v75, v74, v89
	v_fma_f32 v75, -v76, v91, v85
	v_fma_f32 v76, -v78, v92, v88
	s_mov_b32 s61, 0xc1000000
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v77, -v84, v93, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v49, v49
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_med3_f32 v0, v0, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v80, v91
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v60, v60, v14, v115
	v_div_fmas_f32 v76, v76, v82, v92
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v68, v68, v14, v103
	v_div_fmas_f32 v77, v77, v86, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_med3_f32 v20, v20, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	v_med3_f32 v45, v45, s61, 0x40e00000
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v65, v65, v14, v114
	v_div_fixup_f32 v66, v66, v14, v113
	v_div_fixup_f32 v64, v64, v14, v112
	v_div_fixup_f32 v71, v71, v14, v107
	v_div_fixup_f32 v70, v70, v14, v106
	v_div_fixup_f32 v69, v69, v14, v105
	v_div_fixup_f32 v72, v72, v14, v104
	v_div_fixup_f32 v73, v73, v14, v102
	v_div_fixup_f32 v74, v74, v14, v98
	v_div_fixup_f32 v75, v75, v14, v101
	v_div_fixup_f32 v76, v76, v14, v100
	v_div_fixup_f32 v14, v77, v14, v99
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v68, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s61, 0x40e00000
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_med3_f32 v61, v61, s61, 0x40e00000
	v_med3_f32 v67, v67, s61, 0x40e00000
	v_cvt_i32_f32_e32 v77, v18
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v49, v49
	v_and_b32_e32 v18, 15, v16
	v_and_b32_e32 v16, 15, v48
	v_and_b32_e32 v48, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 16, v109
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_cvt_i32_f32_e32 v81, v34
	v_cvt_i32_f32_e32 v89, v51
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v100, v67
	v_and_b32_e32 v34, 15, v20
	v_and_b32_e32 v51, 15, v41
	v_and_b32_e32 v67, 15, v45
	v_and_b32_e32 v20, 15, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v41, 13, v109
	v_lshlrev_b32_e32 v45, 8, v0
	v_and_b32_e32 v49, 64, v109
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_med3_f32 v22, v22, s61, 0x40e00000
	v_med3_f32 v32, v32, s61, 0x40e00000
	v_cvt_i32_f32_e32 v96, v60
	v_cvt_i32_f32_e32 v104, v68
	v_and_b32_e32 v60, 15, v57
	v_and_b32_e32 v68, 15, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v57, 3, v111
	v_and_or_b32 v61, 0xe000, v41, v45
	v_xor_b32_e32 v11, v11, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v31, v31, s61, 0x40e00000
	v_med3_f32 v33, v33, s61, 0x40e00000
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_med3_f32 v63, v63, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v78, v22
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v11, v61, v57, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s61, 0x40e00000
	v_med3_f32 v30, v30, s61, 0x40e00000
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_med3_f32 v37, v37, s61, 0x40e00000
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v99, v63
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_med3_f32 v47, v47, s61, 0x40e00000
	v_med3_f32 v46, v46, s61, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v84, v42
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v108, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v22, 15, v17
	v_and_b32_e32 v42, 15, v78
	v_and_b32_e32 v15, 15, v32
	v_and_b32_e32 v17, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v78, 0, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v62, v62, s61, 0x40e00000
	v_med3_f32 v27, v27, s61, 0x40e00000
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v80, v30
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v93, v59
	v_cvt_i32_f32_e32 v105, v74
	v_and_b32_e32 v30, 15, v19
	v_and_b32_e32 v74, 15, v31
	v_and_b32_e32 v19, 15, v33
	v_and_b32_e32 v31, 15, v36
	v_and_b32_e32 v32, 15, v52
	v_and_b32_e32 v33, 15, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v38
	v_cvt_i32_f32_e32 v86, v47
	v_cvt_i32_f32_e32 v87, v46
	v_and_b32_e32 v38, 15, v21
	v_and_b32_e32 v46, 15, v23
	v_and_b32_e32 v47, 15, v40
	v_and_b32_e32 v21, 15, v65
	v_and_b32_e32 v49, 15, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v78, v[14:17]
	ds_store_b128 v78, v[30:33] offset:256
	v_xad_u32 v14, v11, 16, 0
	v_lshlrev_b32_e32 v15, 6, v109
	v_cndmask_b32_e64 v16, 0x2010, 0, s3
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v76, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v62
	v_cvt_i32_f32_e32 v95, v27
	v_cvt_i32_f32_e32 v98, v64
	v_and_b32_e32 v62, 15, v28
	v_and_b32_e32 v27, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v63, 15, v44
	v_and_b32_e32 v36, 15, v53
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v37, 15, v100
	v_and_b32_e32 v65, 15, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s61, 0x40e00000
	v_med3_f32 v25, v25, s61, 0x40e00000
	v_med3_f32 v26, v26, s61, 0x40e00000
	v_med3_f32 v43, v43, s61, 0x40e00000
	v_med3_f32 v50, v50, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v72, v72, s61, 0x40e00000
	v_med3_f32 v73, v73, s61, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v78, v[46:49] offset:2048
	ds_store_b128 v78, v[62:65] offset:2304
	ds_store_b128 v14, v[18:21]
	ds_store_b128 v14, v[34:37] offset:256
	v_lshlrev_b32_e32 v18, 2, v0
	v_and_or_b32 v9, 0x300, v15, v9
	v_xor_b32_e32 v12, v16, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v39, v39, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v79, v26
	v_cvt_i32_f32_e32 v85, v43
	v_cvt_i32_f32_e32 v88, v50
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v92, v58
	v_cvt_i32_f32_e32 v97, v66
	v_cvt_i32_f32_e32 v103, v72
	v_cvt_i32_f32_e32 v73, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v9, v12, v9, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v90, v54
	v_cvt_i32_f32_e32 v101, v71
	v_cvt_i32_f32_e32 v106, v75
	v_cvt_i32_f32_e32 v107, v76
	v_cvt_i32_f32_e32 v83, v39
	v_cvt_i32_f32_e32 v91, v55
	v_cvt_i32_f32_e32 v102, v70
	v_and_b32_e32 v50, 15, v24
	v_and_b32_e32 v54, 15, v25
	v_and_b32_e32 v58, 15, v79
	v_and_b32_e32 v23, 15, v81
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v24, 15, v88
	v_and_b32_e32 v52, 15, v56
	v_and_b32_e32 v56, 15, v92
	v_and_b32_e32 v25, 15, v97
	v_and_b32_e32 v53, 15, v103
	v_and_b32_e32 v57, 15, v104
	v_and_b32_e32 v61, 15, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v17, v11, 32, 0
	v_xad_u32 v11, v11, 48, 0
	v_add_nc_u32_e32 v12, 0, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v26, 15, v77
	v_and_b32_e32 v66, 15, v29
	v_and_b32_e32 v70, 15, v80
	v_and_b32_e32 v39, 15, v82
	v_and_b32_e32 v71, 15, v86
	v_and_b32_e32 v75, 15, v87
	v_and_b32_e32 v40, 15, v90
	v_and_b32_e32 v72, 15, v94
	v_and_b32_e32 v76, 15, v95
	v_and_b32_e32 v41, 15, v101
	v_and_b32_e32 v69, 15, v106
	v_and_b32_e32 v73, 15, v107
	v_and_b32_e32 v77, 15, v108
	v_and_b32_e32 v28, 15, v89
	v_and_b32_e32 v29, 15, v98
	v_and_b32_e32 v43, 15, v83
	v_and_b32_e32 v44, 15, v91
	v_and_b32_e32 v45, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v14, v[50:53] offset:2048
	ds_store_b128 v14, v[66:69] offset:2304
	ds_store_b128 v17, v[22:25]
	ds_store_b128 v17, v[38:41] offset:256
	ds_store_b128 v17, v[54:57] offset:2048
	ds_store_b128 v17, v[70:73] offset:2304
	ds_store_b128 v11, v[26:29]
	ds_store_b128 v11, v[42:45] offset:256
	ds_store_b128 v11, v[58:61] offset:2048
	ds_store_b128 v11, v[74:77] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v12
	ds_load_b128 v[18:21], v12 offset:128
	ds_load_b128 v[22:25], v12 offset:4096
	ds_load_b128 v[26:29], v12 offset:4224
	v_xad_u32 v12, 0x8040, v9, 0
	v_xad_u32 v11, 0x4020, v9, 0
	v_xad_u32 v9, 0xc060, v9, 0
	ds_load_b128 v[46:49], v12
	ds_load_b128 v[50:53], v12 offset:128
	ds_load_b128 v[54:57], v12 offset:4096
	ds_load_b128 v[58:61], v12 offset:4224
	ds_load_b128 v[62:65], v9 offset:4096
	ds_load_b128 v[66:69], v9
	ds_load_b128 v[70:73], v9 offset:128
	ds_load_b128 v[74:77], v9 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 2, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[30:33], v11
	ds_load_b128 v[34:37], v11 offset:128
	ds_load_b128 v[38:41], v11 offset:4096
	ds_load_b128 v[42:45], v11 offset:4224
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v0
	v_mov_b16_e32 v2.l, v10.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s3, s66, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, s67, 0, s3
	v_add_co_u32 v78, s3, s66, v7
	v_add_co_ci_u32_e64 v79, null, s67, 0, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1249 13                       ; ragged.py:1249:13
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
	v_cmp_le_i64_e64 s63, s[72:73], v[78:79]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v46, v54, 4, v46
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v66, v23, 4, v15
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 8, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v67, v24, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 12, v4
	v_mad_u64_u32 v[11:12], null, v11, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 14, v4
	v_mad_u64_u32 v[12:13], null, v13, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v27, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 16, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v28, 4, v20
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 18, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v65, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 20, v4
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_add_nc_u32_e32 v22, 22, v4
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_add_nc_u32_e32 v23, 24, v4
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_add_nc_u32_e32 v24, 26, v4
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_add_nc_u32_e32 v25, 28, v4
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	v_add_nc_u32_e32 v26, 30, v4
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_add_nc_u32_e32 v27, 32, v4
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_add_nc_u32_e32 v28, 34, v4
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	v_add_nc_u32_e32 v29, 36, v4
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[78:79]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v78, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 38, v4
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v70, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 40, v4
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v71, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 42, v4
	v_mad_u64_u32 v[26:27], null, v27, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v76, 4, v72
	v_lshl_or_b32 v72, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 44, v4
	v_mad_u64_u32 v[27:28], null, v28, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 46, v4
	v_mad_u64_u32 v[28:29], null, v29, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 48, v4
	v_mad_u64_u32 v[29:30], null, v30, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 50, v4
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v37, 52, v4
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 54, v4
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	v_add_nc_u32_e32 v39, 56, v4
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 58, v4
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	v_add_nc_u32_e32 v41, 60, v4
	v_add_nc_u32_e32 v69, 62, v4
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v9, v6, s[64:67], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v69, s72, v[3:4]
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
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v78, v4, s[64:67], 0 offen
	buffer_store_b8 v46, v6, s[64:67], 0 offen
	buffer_store_b8 v54, v7, s[64:67], 0 offen
	buffer_store_b8 v62, v9, s[64:67], 0 offen
	buffer_store_b8 v42, v11, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v7, 0x80000000, v18 :: v_dual_add_nc_u32 v0, 0, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s76, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v8.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v50, v4, s[64:67], 0 offen
	buffer_store_b8 v58, v6, s[64:67], 0 offen
	buffer_store_b8 v66, v7, s[64:67], 0 offen
	buffer_store_b8 v70, v9, s[64:67], 0 offen
	buffer_store_b8 v47, v11, s[64:67], 0 offen
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
	v_cndmask_b32_e32 v9, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v55, v4, s[64:67], 0 offen
	buffer_store_b8 v63, v6, s[64:67], 0 offen
	buffer_store_b8 v43, v7, s[64:67], 0 offen
	buffer_store_b8 v51, v9, s[64:67], 0 offen
	buffer_store_b8 v59, v11, s[64:67], 0 offen
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
	buffer_store_b8 v67, v4, s[64:67], 0 offen
	buffer_store_b8 v71, v6, s[64:67], 0 offen
	buffer_store_b8 v48, v7, s[64:67], 0 offen
	buffer_store_b8 v56, v9, s[64:67], 0 offen
	buffer_store_b8 v64, v11, s[64:67], 0 offen
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
	v_cndmask_b32_e32 v11, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v44, v4, s[64:67], 0 offen
	buffer_store_b8 v52, v6, s[64:67], 0 offen
	buffer_store_b8 v60, v7, s[64:67], 0 offen
	buffer_store_b8 v68, v9, s[64:67], 0 offen
	buffer_store_b8 v72, v11, s[64:67], 0 offen
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
	v_cndmask_b32_e32 v9, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b8 v49, v4, s[64:67], 0 offen
	buffer_store_b8 v57, v6, s[64:67], 0 offen
	buffer_store_b8 v65, v7, s[64:67], 0 offen
	buffer_store_b8 v45, v9, s[64:67], 0 offen
	buffer_store_b8 v53, v11, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v109
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v110
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
.Ltmp90:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 384
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 384
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20224
; TotalNumSgprs: 80
; NumVgprs: 256
; ScratchSize: 384
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 384
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 95
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
