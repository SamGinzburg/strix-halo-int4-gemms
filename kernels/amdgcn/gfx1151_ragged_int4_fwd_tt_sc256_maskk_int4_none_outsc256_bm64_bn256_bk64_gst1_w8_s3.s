	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[30:31], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_mov_b32_e32 v106, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v98, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v106
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
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
	s_sub_i32 s5, s31, s4
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
	s_sub_i32 s31, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s31, s5
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
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s30, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s24, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s25, 0, s2
	v_add_nc_u32_e32 v162, s24, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[3:4]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v106
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s24, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow493
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v90, 15, v106
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v91, 0xf0, v106
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v96, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s34, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s24, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s25, 0, s6
	s_clause 0x1
	s_load_b32 s35, s[0:1], 0x58
	s_load_b32 s36, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s2, s4
	s_addc_u32 s5, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[1:2]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s24, v90
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[4:5], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[3:4]
	v_mov_b32_e32 v135, 0
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[3:4]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v1, s30
	v_add_nc_u32_e32 v2, 16, v1
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v4, 32, v1
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v3, 5, v106
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s3, s31, 8
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v1, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:372
	scratch_store_b32 off, v91, off offset:404
	v_mul_lo_u32 v0, v2, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, s3, v3
	v_bfe_i32 v34, v106, 7, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s35, s33
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v35, 1, v106
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v33, 8, v2
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v4, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v32, 16, v2
	v_or_b32_e32 v31, 24, v2
	v_or_b32_e32 v30, 32, v2
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s20, s4, s7
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v36, 0x7f, v106
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v34, 0x88, v34
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s30
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v1, 0xe0, v106
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v41, 5, v106
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v29, 40, v2
	v_or_b32_e32 v28, 48, v2
	v_mad_u64_u32 v[80:81], null, v33, s35, s[20:21]
	v_or_b32_e32 v27, 56, v2
	v_mad_u64_u32 v[81:82], null, v32, s35, s[20:21]
	v_or_b32_e32 v13, 0xa8, v2
	v_or_b32_e32 v26, 64, v2
	v_mad_u64_u32 v[82:83], null, v31, s35, s[20:21]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v25, 0x48, v2
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v37, 5, v90
	v_lshlrev_b32_e32 v1, 4, v1
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v38, 24, v35
	v_xor_b32_e32 v0, v34, v36
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v43, 2, v91
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v41, 32, v41
	v_mad_u64_u32 v[83:84], null, v30, s35, s[20:21]
	v_or_b32_e32 v14, 0xa0, v2
	v_or_b32_e32 v24, 0x50, v2
	v_mad_u64_u32 v[84:85], null, v29, s35, s[20:21]
	v_or_b32_e32 v11, 0xb8, v2
	v_or_b32_e32 v23, 0x58, v2
	v_mad_u64_u32 v[85:86], null, v28, s35, s[20:21]
	v_or_b32_e32 v10, 0xc0, v2
	v_or_b32_e32 v22, 0x60, v2
	v_mad_u64_u32 v[86:87], null, v27, s35, s[20:21]
	v_or_b32_e32 v9, 0xc8, v2
	v_or_b32_e32 v21, 0x68, v2
	v_mad_u64_u32 v[87:88], null, v26, s35, s[20:21]
	v_mad_u64_u32 v[65:66], null, v13, s35, s[20:21]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v8, 0xd0, v2
	v_or_b32_e32 v20, 0x70, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v90, off offset:400
	scratch_store_b32 off, v0, off offset:112
	v_xor_b32_e32 v36, 0x110, v0
	v_or_b32_e32 v0, s3, v106
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v35, 28, v35
	v_add3_u32 v41, 0, v43, v41
	v_mad_u64_u32 v[88:89], null, v25, s35, s[20:21]
	v_mov_b32_e32 v66, 0
	v_or3_b32 v165, v37, v38, v1
	v_or_b32_e32 v4, 0xf0, v2
	v_or_b32_e32 v7, 0xd8, v2
	v_or_b32_e32 v18, 0x80, v2
	v_or_b32_e32 v19, 0x78, v2
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v171, 0, v90
	v_mad_u64_u32 v[89:90], null, v24, s35, s[20:21]
	v_mad_u64_u32 v[154:155], null, v14, s35, s[20:21]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[5:6]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xf8, v2
	v_or_b32_e32 v5, 0xe8, v2
	v_or_b32_e32 v6, 0xe0, v2
	v_or_b32_e32 v12, 0xb0, v2
	v_or_b32_e32 v15, 0x98, v2
	v_or_b32_e32 v16, 0x90, v2
	v_or_b32_e32 v17, 0x88, v2
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v43, 1, v91
	v_mad_u64_u32 v[90:91], null, v23, s35, s[20:21]
	v_mad_u64_u32 v[155:156], null, v11, s35, s[20:21]
	v_mad_u64_u32 v[91:92], null, v22, s35, s[20:21]
	v_mad_u64_u32 v[156:157], null, v10, s35, s[20:21]
	v_mad_u64_u32 v[92:93], null, v21, s35, s[20:21]
	v_mad_u64_u32 v[157:158], null, v9, s35, s[20:21]
	v_or_b32_e32 v39, 0x300, v106
	v_or_b32_e32 v40, 0x700, v106
	v_or_b32_e32 v1, 0x3f0, v106
	v_or_b32_e32 v34, 0x7f0, v106
	v_xor_b32_e32 v37, 8, v165
	v_xor_b32_e32 v38, 16, v165
	v_xor_b32_e32 v42, 24, v165
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_mad_u64_u32 v[93:94], null, v20, s35, s[20:21]
	v_mad_u64_u32 v[158:159], null, v8, s35, s[20:21]
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v0, v41, v35
	v_mad_u64_u32 v[172:173], null, v2, s35, s[20:21]
	v_mad_u64_u32 v[175:176], null, v19, s35, s[20:21]
	v_mad_u64_u32 v[94:95], null, v18, s35, s[20:21]
	v_mad_u64_u32 v[159:160], null, v7, s35, s[20:21]
	v_mad_u64_u32 v[166:167], null, v4, s35, s[20:21]
	v_mad_u64_u32 v[95:96], null, v17, s35, s[20:21]
	v_mad_u64_u32 v[176:177], null, v16, s35, s[20:21]
	v_mad_u64_u32 v[179:180], null, v15, s35, s[20:21]
	v_mad_u64_u32 v[173:174], null, v12, s35, s[20:21]
	v_mad_u64_u32 v[160:161], null, v6, s35, s[20:21]
	v_mad_u64_u32 v[163:164], null, v5, s35, s[20:21]
	v_mad_u64_u32 v[167:168], null, v3, s35, s[20:21]
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v79, 0, v106
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v150, 0, v39
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v97, 0, v40
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v164, 0, v1
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v169, 0, v34
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v178, 0, v36
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v168, 0, v37
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v161, 0, v38
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v170, 0, v42
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v0, 0, v43
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v103, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s37, s30, s7
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	s_mov_b32 s38, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s38, 7
	s_mov_b32 s15, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v149, off offset:368
	scratch_store_b32 off, v148, off offset:364
	scratch_store_b32 off, v147, off offset:360
	scratch_store_b32 off, v146, off offset:356
	scratch_store_b32 off, v145, off offset:352
	scratch_store_b32 off, v144, off offset:348
	scratch_store_b32 off, v143, off offset:344
	scratch_store_b32 off, v142, off offset:340
	scratch_store_b32 off, v96, off offset:336
	scratch_store_b32 off, v140, off offset:332
	scratch_store_b32 off, v139, off offset:328
	scratch_store_b32 off, v138, off offset:324
	scratch_store_b32 off, v137, off offset:320
	scratch_store_b32 off, v136, off offset:316
	scratch_store_b32 off, v135, off offset:312
	scratch_store_b32 off, v134, off offset:308
	scratch_store_b32 off, v133, off offset:304
	scratch_store_b32 off, v132, off offset:300
	scratch_store_b32 off, v141, off offset:296
	scratch_store_b32 off, v130, off offset:292
	scratch_store_b32 off, v129, off offset:288
	scratch_store_b32 off, v128, off offset:284
	scratch_store_b32 off, v127, off offset:280
	scratch_store_b32 off, v126, off offset:276
	scratch_store_b32 off, v125, off offset:272
	scratch_store_b32 off, v124, off offset:268
	scratch_store_b32 off, v123, off offset:264
	scratch_store_b32 off, v122, off offset:260
	scratch_store_b32 off, v121, off offset:256
	scratch_store_b32 off, v120, off offset:252
	scratch_store_b32 off, v119, off offset:248
	scratch_store_b32 off, v118, off offset:244
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v117, off offset:240
	scratch_store_b32 off, v116, off offset:236
	scratch_store_b32 off, v115, off offset:232
	scratch_store_b32 off, v114, off offset:228
	scratch_store_b32 off, v113, off offset:224
	scratch_store_b32 off, v74, off offset:220
	scratch_store_b32 off, v68, off offset:216
	scratch_store_b32 off, v67, off offset:212
	scratch_store_b32 off, v66, off offset:208
	scratch_store_b32 off, v73, off offset:204
	scratch_store_b32 off, v72, off offset:200
	scratch_store_b32 off, v71, off offset:196
	scratch_store_b32 off, v70, off offset:192
	scratch_store_b32 off, v69, off offset:188
	scratch_store_b32 off, v112, off offset:184
	scratch_store_b32 off, v111, off offset:180
	scratch_store_b32 off, v110, off offset:176
	scratch_store_b32 off, v78, off offset:172
	scratch_store_b32 off, v77, off offset:168
	scratch_store_b32 off, v76, off offset:164
	scratch_store_b32 off, v75, off offset:160
	scratch_store_b32 off, v109, off offset:156
	scratch_store_b32 off, v108, off offset:152
	scratch_store_b32 off, v107, off offset:148
	scratch_store_b32 off, v105, off offset:144
	scratch_store_b32 off, v104, off offset:140
	scratch_store_b32 off, v103, off offset:136
	scratch_store_b32 off, v102, off offset:132
	scratch_store_b32 off, v101, off offset:128
	scratch_store_b32 off, v100, off offset:124
	scratch_store_b32 off, v99, off offset:120
	scratch_store_b32 off, v98, off offset:116
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
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v184, 6, v106
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, s14
	s_clause 0xd                            ; 112-byte Folded Spill
	scratch_store_b64 off, v[81:82], off offset:104
	scratch_store_b64 off, v[84:85], off offset:96
	scratch_store_b64 off, v[83:84], off offset:88
	scratch_store_b64 off, v[86:87], off offset:80
	scratch_store_b64 off, v[85:86], off offset:72
	scratch_store_b64 off, v[88:89], off offset:64
	scratch_store_b64 off, v[87:88], off offset:56
	scratch_store_b64 off, v[90:91], off offset:48
	scratch_store_b64 off, v[89:90], off offset:40
	scratch_store_b64 off, v[95:96], off offset:32
	scratch_store_b64 off, v[92:93], off offset:24
	scratch_store_b64 off, v[91:92], off offset:16
	scratch_store_b64 off, v[94:95], off offset:8
	scratch_store_b64 off, v[65:66], off
	v_dual_mov_b32 v67, v172 :: v_dual_mov_b32 v66, v167
	v_or_b32_e32 v186, s39, v184
	v_dual_mov_b32 v78, v106 :: v_dual_mov_b32 v149, v173
	v_dual_mov_b32 v73, v160 :: v_dual_mov_b32 v132, v161
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[184:185], null, v186, s36, v[162:163]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v186
	v_mov_b32_e32 v131, v162
	v_mov_b32_e32 v138, v170
	v_mov_b32_e32 v130, v163
	v_mov_b32_e32 v139, v155
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s34, s3
	v_mov_b32_e32 v71, v157
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v200, 0x80000000, v184, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v184, 4, v186
	v_mov_b32_e32 v75, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v184
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[184:185], null, v184, s36, v[162:163]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s34, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v201, 0x80000000, v184, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v184, 8, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v184
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[184:185], null, v184, s36, v[162:163]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s34, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v202, 0x80000000, v184, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v184, 12, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v184
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[184:185], null, v184, s36, v[162:163]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s34, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v203, 0x80000000, v184, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v184, 16, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v184
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[184:185], null, v184, s36, v[162:163]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s34, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v204, 0x80000000, v184, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v184, 20, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v184
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[184:185], null, v184, s36, v[162:163]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s34, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v205, 0x80000000, v184, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v184, 24, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v184
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[184:185], null, v184, s36, v[162:163]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s34, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v206, 0x80000000, v184, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v184, 28, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v184
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[184:185], null, v184, s36, v[162:163]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s34, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v207, 0x80000000, v184, s3
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_and_b32_e32 v184, 31, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v184, s39, v184
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v185, v67, v184
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s35, v184
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v223, v166, v184
	v_add_nc_u32_e32 v186, v80, v184
	v_add_nc_u32_e32 v187, v81, v184
	v_add_nc_u32_e32 v188, v82, v184
	v_add_nc_u32_e32 v189, v83, v184
	v_dual_mov_b32 v81, v67 :: v_dual_add_nc_u32 v190, v84, v184
	v_add_nc_u32_e32 v191, v85, v184
	v_add_nc_u32_e32 v192, v86, v184
	v_add_nc_u32_e32 v193, v87, v184
	v_add_nc_u32_e32 v194, v88, v184
	v_add_nc_u32_e32 v195, v89, v184
	v_add_nc_u32_e32 v196, v90, v184
	v_add_nc_u32_e32 v198, v92, v184
	v_add_nc_u32_e32 v199, v93, v184
	v_add_nc_u32_e32 v208, v175, v184
	v_add_nc_u32_e32 v209, v94, v184
	v_add_nc_u32_e32 v210, v95, v184
	v_add_nc_u32_e32 v212, v179, v184
	v_dual_mov_b32 v67, v79 :: v_dual_add_nc_u32 v214, v65, v184
	v_add_nc_u32_e32 v216, v155, v184
	v_add_nc_u32_e32 v217, v156, v184
	v_add_nc_u32_e32 v218, v157, v184
	v_add_nc_u32_e32 v219, v158, v184
	v_add_nc_u32_e32 v220, v159, v184
	v_add_nc_u32_e32 v221, v160, v184
	v_dual_mov_b32 v95, v93 :: v_dual_add_nc_u32 v222, v163, v184
	v_dual_mov_b32 v94, v82 :: v_dual_add_nc_u32 v215, v173, v184
	v_mov_b32_e32 v93, v80
	v_add_nc_u32_e32 v211, v176, v184
	v_mov_b32_e32 v65, v168
	v_add_nc_u32_e32 v197, v91, v184
	v_mov_b32_e32 v173, v158
	v_add_nc_u32_e32 v213, v154, v184
	v_add_nc_u32_e32 v184, v167, v184
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v185, 0x80000000, v185, s3
	v_cndmask_b32_e64 v223, 0x80000000, v223, s3
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	v_cndmask_b32_e64 v224, 0x80000000, v184, s3
	v_cndmask_b32_e64 v188, 0x80000000, v188, s3
	v_cndmask_b32_e64 v189, 0x80000000, v189, s3
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	v_cndmask_b32_e64 v192, 0x80000000, v192, s3
	v_cndmask_b32_e64 v193, 0x80000000, v193, s3
	v_cndmask_b32_e64 v194, 0x80000000, v194, s3
	v_cndmask_b32_e64 v195, 0x80000000, v195, s3
	v_cndmask_b32_e64 v199, 0x80000000, v199, s3
	v_cndmask_b32_e64 v196, 0x80000000, v196, s3
	v_cndmask_b32_e64 v197, 0x80000000, v197, s3
	v_cndmask_b32_e64 v198, 0x80000000, v198, s3
	v_cndmask_b32_e64 v208, 0x80000000, v208, s3
	v_cndmask_b32_e64 v209, 0x80000000, v209, s3
	v_cndmask_b32_e64 v210, 0x80000000, v210, s3
	v_cndmask_b32_e64 v211, 0x80000000, v211, s3
	v_cndmask_b32_e64 v212, 0x80000000, v212, s3
	v_cndmask_b32_e64 v213, 0x80000000, v213, s3
	v_cndmask_b32_e64 v214, 0x80000000, v214, s3
	v_cndmask_b32_e64 v215, 0x80000000, v215, s3
	v_cndmask_b32_e64 v216, 0x80000000, v216, s3
	s_clause 0x19
	buffer_load_u8 v246, v185, s[8:11], 0 offen
	buffer_load_u8 v184, v186, s[8:11], 0 offen
	buffer_load_u8 v247, v187, s[8:11], 0 offen
	buffer_load_u8 v185, v188, s[8:11], 0 offen
	buffer_load_u8 v248, v189, s[8:11], 0 offen
	buffer_load_u8 v186, v190, s[8:11], 0 offen
	buffer_load_u8 v249, v191, s[8:11], 0 offen
	buffer_load_u8 v187, v192, s[8:11], 0 offen
	buffer_load_u8 v250, v193, s[8:11], 0 offen
	buffer_load_u8 v188, v194, s[8:11], 0 offen
	buffer_load_u8 v251, v195, s[8:11], 0 offen
	buffer_load_u8 v189, v196, s[8:11], 0 offen
	buffer_load_u8 v252, v197, s[8:11], 0 offen
	buffer_load_u8 v190, v198, s[8:11], 0 offen
	buffer_load_u8 v253, v199, s[8:11], 0 offen
	buffer_load_u8 v191, v208, s[8:11], 0 offen
	buffer_load_u8 v254, v209, s[8:11], 0 offen
	buffer_load_u8 v192, v210, s[8:11], 0 offen
	buffer_load_u8 v255, v211, s[8:11], 0 offen
	buffer_load_u8 v193, v212, s[8:11], 0 offen
	buffer_load_u8 v100, v213, s[8:11], 0 offen
	buffer_load_u8 v194, v214, s[8:11], 0 offen
	buffer_load_u8 v99, v215, s[8:11], 0 offen
	buffer_load_u8 v195, v216, s[8:11], 0 offen
	buffer_load_u8 v168, v223, s[8:11], 0 offen
	buffer_load_u8 v199, v224, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v200, v200, s[20:23], 0 offen
	buffer_load_u8 v201, v201, s[20:23], 0 offen
	buffer_load_u8 v202, v202, s[20:23], 0 offen
	buffer_load_u8 v204, v204, s[20:23], 0 offen
	buffer_load_u8 v205, v205, s[20:23], 0 offen
	buffer_load_u8 v206, v206, s[20:23], 0 offen
	buffer_load_u8 v207, v207, s[20:23], 0 offen
	buffer_load_u8 v203, v203, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v217, 0x80000000, v217, s3
	v_cndmask_b32_e64 v219, 0x80000000, v219, s3
	v_cndmask_b32_e64 v218, 0x80000000, v218, s3
	v_cndmask_b32_e64 v220, 0x80000000, v220, s3
	v_cndmask_b32_e64 v221, 0x80000000, v221, s3
	v_cndmask_b32_e64 v222, 0x80000000, v222, s3
	s_clause 0x5
	buffer_load_u8 v80, v217, s[8:11], 0 offen
	buffer_load_u8 v92, v218, s[8:11], 0 offen
	buffer_load_u8 v167, v219, s[8:11], 0 offen
	buffer_load_u8 v91, v220, s[8:11], 0 offen
	buffer_load_u8 v0, v221, s[8:11], 0 offen
	buffer_load_u8 v198, v222, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s3, s15, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s15, 0x60
	s_mov_b32 s15, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(13)
	ds_store_b8 v79, v200
	s_waitcnt vmcnt(12)
	ds_store_b8 v79, v201 offset:256
	s_waitcnt vmcnt(11)
	ds_store_b8 v79, v202 offset:512
	s_waitcnt vmcnt(10)
	ds_store_b8 v79, v204 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b8 v79, v205 offset:1280
	s_waitcnt vmcnt(6)
	ds_store_b8 v150, v203
	ds_store_b8 v79, v206 offset:1536
	ds_store_b8 v97, v207
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v172, v171 offset:192
	ds_load_u8 v182, v171 offset:128
	ds_load_u8 v98, v171 offset:208
	ds_load_u8 v101, v171 offset:144
	ds_load_u8 v102, v171 offset:224
	ds_load_u8 v103, v171 offset:160
	ds_load_u8 v104, v171 offset:240
	ds_load_u8 v105, v171 offset:176
	ds_load_u8 v106, v171 offset:448
	ds_load_u8 v107, v171 offset:384
	ds_load_u8 v108, v171 offset:464
	ds_load_u8 v109, v171 offset:400
	ds_load_u8 v110, v171 offset:480
	ds_load_u8 v111, v171 offset:416
	ds_load_u8 v112, v171 offset:496
	ds_load_u8 v113, v171 offset:432
	ds_load_u8 v114, v171 offset:320
	ds_load_u8 v115, v171 offset:256
	ds_load_u8 v116, v171 offset:336
	ds_load_u8 v117, v171 offset:272
	ds_load_u8 v118, v171 offset:352
	ds_load_u8 v119, v171 offset:288
	ds_load_u8 v120, v171 offset:368
	ds_load_u8 v121, v171 offset:304
	ds_load_u8 v122, v171 offset:64
	ds_load_u8 v123, v171 offset:80
	ds_load_u8 v124, v171 offset:96
	ds_load_u8 v125, v171 offset:112
	ds_load_u8 v126, v171
	ds_load_u8 v127, v171 offset:16
	ds_load_u8 v128, v171 offset:32
	ds_load_u8 v129, v171 offset:48
	ds_load_u8 v231, v171 offset:960
	ds_load_u8 v232, v171 offset:896
	ds_load_u8 v200, v171 offset:1024
	ds_load_u8 v224, v171 offset:976
	ds_load_u8 v226, v171 offset:912
	ds_load_u8 v215, v171 offset:992
	ds_load_u8 v218, v171 offset:928
	ds_load_u8 v207, v171 offset:944
	ds_load_u8 v83, v171 offset:832
	ds_load_u8 v82, v171 offset:768
	ds_load_u8 v88, v171 offset:848
	ds_load_u8 v85, v171 offset:784
	ds_load_u8 v237, v171 offset:864
	ds_load_u8 v241, v171 offset:800
	ds_load_u8 v221, v171 offset:880
	ds_load_u8 v225, v171 offset:816
	ds_load_u8 v134, v171 offset:704
	ds_load_u8 v135, v171 offset:640
	ds_load_u8 v136, v171 offset:720
	ds_load_u8 v137, v171 offset:656
	ds_load_u8 v86, v171 offset:736
	ds_load_u8 v84, v171 offset:672
	ds_load_u8 v90, v171 offset:752
	ds_load_u8 v89, v171 offset:688
	ds_load_u8 v142, v171 offset:576
	ds_load_u8 v143, v171 offset:512
	ds_load_u8 v183, v171 offset:592
	ds_load_u8 v144, v171 offset:528
	ds_load_u8 v145, v171 offset:608
	ds_load_u8 v146, v171 offset:544
	ds_load_u8 v147, v171 offset:624
	ds_load_u8 v148, v171 offset:560
	ds_load_u8 v222, v171 offset:1216
	ds_load_u8 v233, v171 offset:1280
	ds_load_u8 v213, v171 offset:1232
	ds_load_u8 v217, v171 offset:1168
	ds_load_u8 v208, v171 offset:1248
	ds_load_u8 v210, v171 offset:1184
	ds_load_u8 v204, v171 offset:1264
	ds_load_u8 v205, v171 offset:1200
	ds_load_u8 v196, v171 offset:1152
	ds_load_u8 v87, v171 offset:1088
	ds_load_u8 v235, v171 offset:1104
	ds_load_u8 v239, v171 offset:1040
	ds_load_u8 v227, v171 offset:1120
	ds_load_u8 v229, v171 offset:1056
	ds_load_u8 v219, v171 offset:1136
	ds_load_u8 v220, v171 offset:1072
	ds_load_u8 v151, v171 offset:1472
	ds_load_u8 v201, v171 offset:1536
	ds_load_u8 v152, v171 offset:1488
	ds_load_u8 v153, v171 offset:1424
	ds_load_u8 v155, v171 offset:1504
	ds_load_u8 v140, v171 offset:1440
	ds_load_u8 v243, v171 offset:1520
	ds_load_u8 v245, v171 offset:1456
	ds_load_u8 v157, v171 offset:1408
	ds_load_u8 v79, v171 offset:1344
	ds_load_u8 v158, v171 offset:1360
	ds_load_u8 v159, v171 offset:1296
	ds_load_u8 v160, v171 offset:1376
	ds_load_u8 v162, v171 offset:1392
	ds_load_u8 v161, v171 offset:1312
	ds_load_u8 v163, v171 offset:1328
	ds_load_u8 v223, v171 offset:1984
	ds_load_u8 v211, v171 offset:2000
	ds_load_u8 v214, v171 offset:1936
	ds_load_u8 v206, v171 offset:2016
	ds_load_u8 v209, v171 offset:1952
	ds_load_u8 v68, v164
	ds_load_u8 v202, v169
	ds_load_u8 v203, v171 offset:1968
	ds_load_u8 v197, v171 offset:1920
	ds_load_u8 v180, v171 offset:1856
	ds_load_u8 v236, v171 offset:1872
	ds_load_u8 v240, v171 offset:1808
	ds_load_u8 v228, v171 offset:1888
	ds_load_u8 v230, v171 offset:1824
	ds_load_u8 v212, v171 offset:1904
	ds_load_u8 v216, v171 offset:1840
	ds_load_u8 v170, v171 offset:1728
	ds_load_u8 v76, v171 offset:1792
	ds_load_u8 v177, v171 offset:1744
	ds_load_u8 v181, v171 offset:1680
	ds_load_u8 v242, v171 offset:1760
	ds_load_u8 v244, v171 offset:1696
	ds_load_u8 v234, v171 offset:1776
	ds_load_u8 v238, v171 offset:1712
	ds_load_u8 v69, v171 offset:1664
	ds_load_u8 v70, v171 offset:1600
	ds_load_u8 v74, v171 offset:1616
	ds_load_u8 v72, v171 offset:1552
	ds_load_u8 v96, v171 offset:1632
	ds_load_u8 v174, v171 offset:1568
	ds_load_u8 v141, v171 offset:1648
	ds_load_u8 v133, v171 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v77, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v98, v101, v98, 0xc0c0004
	v_perm_b32 v69, v69, v170, 0xc0c0004
	v_perm_b32 v70, v201, v70, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v170, v138 :: v_dual_add_nc_u32 v77, 0, v77
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_store_b8 v77, v246
	ds_store_b8 v77, v247 offset:512
	ds_store_b8 v77, v248 offset:1024
	ds_store_b8 v77, v249 offset:1536
	ds_store_b8 v77, v250 offset:2048
	ds_store_b8 v77, v251 offset:2560
	ds_store_b8 v77, v252 offset:3072
	ds_store_b8 v77, v253 offset:3584
	ds_store_b8 v77, v254 offset:4096
	ds_store_b8 v77, v255 offset:4608
	ds_store_b8 v77, v100 offset:5120
	ds_store_b8 v77, v99 offset:5632
	ds_store_b8 v77, v80 offset:6144
	ds_store_b8 v77, v167 offset:6656
	ds_store_b8 v77, v0 offset:7168
	ds_store_b8 v77, v168 offset:7680
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v77, v115, v114, 0xc0c0004
	v_perm_b32 v99, v107, v106, 0xc0c0004
	v_perm_b32 v100, v126, v122, 0xc0c0004
	v_perm_b32 v106, v182, v172, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_store_b8 v178, v184
	ds_store_b8 v178, v185 offset:512
	ds_store_b8 v178, v186 offset:1024
	ds_store_b8 v178, v187 offset:1536
	ds_store_b8 v178, v188 offset:2048
	ds_store_b8 v178, v189 offset:2560
	ds_store_b8 v178, v190 offset:3072
	ds_store_b8 v178, v191 offset:3584
	ds_store_b8 v178, v192 offset:4096
	ds_store_b8 v178, v193 offset:4608
	ds_store_b8 v178, v194 offset:5120
	ds_store_b8 v178, v195 offset:5632
	ds_store_b8 v178, v92 offset:6144
	ds_store_b8 v178, v91 offset:6656
	ds_store_b8 v178, v198 offset:7168
	ds_store_b8 v178, v199 offset:7680
	s_waitcnt lgkmcnt(0)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v247, v99, 16, v77
	v_perm_b32 v77, v117, v116, 0xc0c0004
	v_lshl_or_b32 v246, v106, 16, v100
	v_perm_b32 v99, v109, v108, 0xc0c0004
	v_perm_b32 v100, v127, v123, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_barrier
	v_mov_b32_e32 v172, v81
	v_mov_b32_e32 v168, v65
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v249, v99, 16, v77
	v_lshl_or_b32 v248, v98, 16, v100
	v_perm_b32 v99, v128, v124, 0xc0c0004
	v_perm_b32 v100, v103, v102, 0xc0c0004
	v_perm_b32 v77, v119, v118, 0xc0c0004
	v_perm_b32 v98, v111, v110, 0xc0c0004
	v_dual_mov_b32 v167, v66 :: v_dual_mov_b32 v80, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v250, v100, 16, v99
	v_perm_b32 v99, v129, v125, 0xc0c0004
	v_perm_b32 v100, v105, v104, 0xc0c0004
	v_lshl_or_b32 v251, v98, 16, v77
	v_perm_b32 v77, v121, v120, 0xc0c0004
	v_perm_b32 v98, v113, v112, 0xc0c0004
	v_mov_b32_e32 v106, v78
	v_lshl_or_b32 v252, v100, 16, v99
	v_perm_b32 v99, v143, v142, 0xc0c0004
	v_perm_b32 v100, v135, v134, 0xc0c0004
	v_lshl_or_b32 v253, v98, 16, v77
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v77, 0, v165
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v98, v232, v231, 0xc0c0004
	v_perm_b32 v0, v197, v223, 0xc0c0004
	v_lshl_or_b32 v188, v100, 16, v99
	v_perm_b32 v99, v144, v183, 0xc0c0004
	v_perm_b32 v100, v137, v136, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[184:187], v77 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v77, v82, v83, 0xc0c0004
	scratch_load_b64 v[81:82], off, off offset:104 ; 8-byte Folded Reload
	v_lshl_or_b32 v190, v100, 16, v99
	v_perm_b32 v99, v146, v145, 0xc0c0004
	v_perm_b32 v100, v84, v86, 0xc0c0004
	v_lshl_or_b32 v189, v98, 16, v77
	v_perm_b32 v77, v85, v88, 0xc0c0004
	v_perm_b32 v98, v226, v224, 0xc0c0004
	scratch_load_b64 v[83:84], off, off offset:88 ; 8-byte Folded Reload
	v_lshl_or_b32 v192, v100, 16, v99
	v_perm_b32 v99, v225, v221, 0xc0c0004
	v_perm_b32 v100, v207, v68, 0xc0c0004
	v_lshl_or_b32 v191, v98, 16, v77
	v_perm_b32 v77, v241, v237, 0xc0c0004
	v_perm_b32 v98, v218, v215, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[84:85], off, off offset:96
	scratch_load_b64 v[85:86], off, off offset:72
	v_lshl_or_b32 v195, v100, 16, v99
	v_perm_b32 v99, v200, v87, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[86:87], off, off offset:80
	scratch_load_b64 v[87:88], off, off offset:56
	v_lshl_or_b32 v193, v98, 16, v77
	v_perm_b32 v77, v148, v147, 0xc0c0004
	v_perm_b32 v98, v89, v90, 0xc0c0004
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[88:89], off, off offset:64
	scratch_load_b64 v[89:90], off, off offset:40
	scratch_load_b64 v[90:91], off, off offset:48
	scratch_load_b64 v[91:92], off, off offset:16
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[246:247], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[246:247], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[248:249], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[248:249], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[250:251], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[250:251], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[252:253], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[252:253], v[57:64] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[184:187], v65 offset1:8
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[65:66], off, off
	scratch_load_b64 v[92:93], off, off offset:24
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v194, v98, 16, v77
	v_perm_b32 v77, v233, v79, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v82, v94 :: v_dual_mov_b32 v93, v95
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[94:95], off, off offset:8
	scratch_load_b64 v[78:79], off, off offset:32
	v_perm_b32 v98, v157, v151, 0xc0c0004
	v_perm_b32 v100, v196, v222, 0xc0c0004
	v_perm_b32 v66, v76, v180, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v79, v67
	v_perm_b32 v67, v181, v177, 0xc0c0004
	v_perm_b32 v68, v244, v242, 0xc0c0004
	v_mov_b32_e32 v157, v71
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[190:191], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[190:191], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[192:193], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[192:193], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[194:195], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[194:195], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v189, v98, 16, v77
	v_lshl_or_b32 v188, v100, 16, v99
	v_perm_b32 v77, v159, v158, 0xc0c0004
	v_perm_b32 v98, v153, v152, 0xc0c0004
	v_perm_b32 v99, v239, v235, 0xc0c0004
	v_perm_b32 v100, v217, v213, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[184:187], v132 offset1:8
	v_mov_b32_e32 v158, v173
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v191, v98, 16, v77
	v_perm_b32 v77, v161, v160, 0xc0c0004
	v_lshl_or_b32 v190, v100, 16, v99
	v_perm_b32 v98, v140, v155, 0xc0c0004
	v_perm_b32 v99, v229, v227, 0xc0c0004
	v_perm_b32 v100, v210, v208, 0xc0c0004
	v_dual_mov_b32 v161, v132 :: v_dual_mov_b32 v160, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v193, v98, 16, v77
	v_perm_b32 v77, v163, v162, 0xc0c0004
	v_lshl_or_b32 v192, v100, 16, v99
	v_perm_b32 v98, v245, v243, 0xc0c0004
	v_perm_b32 v99, v220, v219, 0xc0c0004
	v_perm_b32 v100, v205, v204, 0xc0c0004
	v_mov_b32_e32 v159, v75
	v_mov_b32_e32 v155, v139
	v_lshl_or_b32 v195, v98, 16, v77
	v_mov_b32_e32 v173, v149
	v_lshl_or_b32 v194, v100, 16, v99
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[190:191], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[190:191], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[192:193], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[192:193], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[194:195], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[194:195], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v189, v0, 16, v66
	v_lshl_or_b32 v188, v69, 16, v70
	v_perm_b32 v0, v240, v236, 0xc0c0004
	v_perm_b32 v66, v214, v211, 0xc0c0004
	v_perm_b32 v69, v72, v74, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[184:187], v138 offset1:8
	v_dual_mov_b32 v163, v130 :: v_dual_mov_b32 v162, v131
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v191, v66, 16, v0
	v_lshl_or_b32 v190, v67, 16, v69
	v_perm_b32 v0, v230, v228, 0xc0c0004
	v_perm_b32 v66, v209, v206, 0xc0c0004
	v_perm_b32 v67, v174, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v193, v66, 16, v0
	v_lshl_or_b32 v192, v68, 16, v67
	v_perm_b32 v0, v133, v141, 0xc0c0004
	v_perm_b32 v66, v238, v234, 0xc0c0004
	v_perm_b32 v67, v216, v212, 0xc0c0004
	v_perm_b32 v68, v203, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v194, v66, 16, v0
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v68, 16, v67
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[190:191], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[190:191], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[192:193], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[192:193], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[194:195], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[194:195], v[57:64] neg_lo:[1,1,0]
	v_mov_b32_e32 v95, v78
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:372
	scratch_load_b32 v66, off, off offset:376
	scratch_load_b32 v67, off, off offset:380
	scratch_load_b32 v68, off, off offset:384
	scratch_load_b32 v69, off, off offset:388
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s38, s37
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v102, v13
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	v_cvt_f32_i32_e32 v74, v5
	v_cvt_f32_i32_e32 v75, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v77, v8
	v_cvt_f32_i32_e32 v98, v9
	v_cvt_f32_i32_e32 v99, v10
	v_cvt_f32_i32_e32 v100, v11
	v_cvt_f32_i32_e32 v101, v12
	v_cvt_f32_i32_e32 v103, v14
	v_cvt_f32_i32_e32 v104, v15
	v_cvt_f32_i32_e32 v105, v16
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v62, v62
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
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s38, v0, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v66, s38, v66, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v67, s38, v67, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v68, s38, v68, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v69, v69, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v69, v69, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s38, s38, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s38, s30
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v69
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v25, v25, v66 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v13, off, off offset:396
	scratch_load_b32 v149, off, off offset:368
	scratch_load_b32 v148, off, off offset:364
	scratch_load_b32 v147, off, off offset:360
	scratch_load_b32 v146, off, off offset:356
	scratch_load_b32 v145, off, off offset:352
	scratch_load_b32 v144, off, off offset:348
	scratch_load_b32 v143, off, off offset:344
	scratch_load_b32 v142, off, off offset:340
	scratch_load_b32 v96, off, off offset:336
	scratch_load_b32 v140, off, off offset:332
	scratch_load_b32 v139, off, off offset:328
	scratch_load_b32 v138, off, off offset:324
	scratch_load_b32 v137, off, off offset:320
	scratch_load_b32 v136, off, off offset:316
	scratch_load_b32 v135, off, off offset:312
	scratch_load_b32 v134, off, off offset:308
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v98, v0
	v_dual_mul_f32 v31, v31, v66 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_mul_f32 v98, v103, v0 :: v_dual_lshlrev_b32 v67, 16, v67
	v_dual_mul_f32 v103, v104, v0 :: v_dual_mul_f32 v30, v30, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v104, v105, v0 :: v_dual_mul_f32 v47, v47, v67
	v_dual_mul_f32 v62, v62, v68 :: v_dual_mul_f32 v73, v0, v73
	v_dual_mul_f32 v72, v0, v72 :: v_dual_mul_f32 v17, v66, v17
	v_dual_mul_f32 v71, v0, v71 :: v_dual_mul_f32 v20, v66, v20
	v_dual_mul_f32 v70, v0, v70 :: v_dual_mul_f32 v23, v66, v23
	v_dual_mul_f32 v77, v0, v77 :: v_dual_mul_f32 v18, v66, v18
	v_dual_mul_f32 v76, v0, v76 :: v_dual_mul_f32 v21, v66, v21
	v_dual_mul_f32 v75, v0, v75 :: v_dual_mul_f32 v24, v66, v24
	v_dual_mul_f32 v74, v0, v74 :: v_dual_mul_f32 v29, v66, v29
	v_dual_mul_f32 v102, v0, v102 :: v_dual_mul_f32 v27, v66, v27
	v_dual_mul_f32 v101, v0, v101 :: v_dual_mul_f32 v22, v66, v22
	v_dual_mul_f32 v100, v0, v100 :: v_dual_mul_f32 v35, v67, v35
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v41, v41, v67
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v63, v63, v68
	v_dual_mul_f32 v64, v64, v68 :: v_dual_mul_f32 v19, v66, v19
	v_dual_mul_f32 v0, v0, v99 :: v_dual_mul_f32 v33, v67, v33
	v_dual_mul_f32 v28, v66, v28 :: v_dual_mul_f32 v39, v67, v39
	v_dual_mul_f32 v26, v66, v26 :: v_dual_mul_f32 v37, v67, v37
	v_dual_mul_f32 v36, v67, v36 :: v_dual_mul_f32 v51, v68, v51
	v_dual_mul_f32 v34, v67, v34 :: v_dual_mul_f32 v49, v68, v49
	v_dual_mul_f32 v40, v67, v40 :: v_dual_mul_f32 v55, v68, v55
	v_dual_mul_f32 v38, v67, v38 :: v_dual_mul_f32 v53, v68, v53
	v_dual_mul_f32 v45, v67, v45 :: v_dual_mul_f32 v52, v68, v52
	v_dual_mul_f32 v44, v67, v44 :: v_dual_mul_f32 v61, v68, v61
	v_dual_mul_f32 v43, v67, v43 :: v_dual_mul_f32 v50, v68, v50
	v_dual_mul_f32 v42, v67, v42 :: v_dual_mul_f32 v59, v68, v59
	s_clause 0x15                           ; 88-byte Folded Reload
	scratch_load_b32 v133, off, off offset:304
	scratch_load_b32 v132, off, off offset:300
	scratch_load_b32 v141, off, off offset:296
	scratch_load_b32 v130, off, off offset:292
	scratch_load_b32 v129, off, off offset:288
	scratch_load_b32 v128, off, off offset:284
	scratch_load_b32 v127, off, off offset:280
	scratch_load_b32 v126, off, off offset:276
	scratch_load_b32 v125, off, off offset:272
	scratch_load_b32 v124, off, off offset:268
	scratch_load_b32 v123, off, off offset:264
	scratch_load_b32 v122, off, off offset:260
	scratch_load_b32 v121, off, off offset:256
	scratch_load_b32 v120, off, off offset:252
	scratch_load_b32 v119, off, off offset:248
	scratch_load_b32 v118, off, off offset:244
	scratch_load_b32 v117, off, off offset:240
	scratch_load_b32 v116, off, off offset:236
	scratch_load_b32 v115, off, off offset:232
	scratch_load_b32 v114, off, off offset:228
	scratch_load_b32 v113, off, off offset:224
	scratch_load_b32 v67, off, off offset:212
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(38)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v56, v68, v56
	v_mul_f32_e32 v54, v68, v54
	v_mul_f32_e32 v60, v68, v60
	v_mul_f32_e32 v58, v68, v58
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v68, off, off offset:216
	scratch_load_b32 v66, off, off offset:208
	scratch_load_b32 v112, off, off offset:184
	scratch_load_b32 v111, off, off offset:180
	scratch_load_b32 v110, off, off offset:176
	scratch_load_b32 v78, off, off offset:172
	scratch_load_b32 v109, off, off offset:156
	scratch_load_b32 v108, off, off offset:152
	scratch_load_b32 v107, off, off offset:148
	scratch_load_b32 v105, off, off offset:144
	scratch_load_b32 v99, off, off offset:120
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(47) lgkmcnt(3)
	v_dual_fmac_f32 v149, v70, v1 :: v_dual_fmac_f32 v148, v71, v2
	s_waitcnt vmcnt(45)
	v_dual_fmac_f32 v147, v72, v3 :: v_dual_fmac_f32 v146, v73, v4
	s_waitcnt vmcnt(42) lgkmcnt(2)
	v_fmac_f32_e32 v143, v76, v7
	v_dual_fmac_f32 v145, v74, v5 :: v_dual_fmac_f32 v144, v75, v6
	s_waitcnt vmcnt(38) lgkmcnt(1)
	v_dual_fmac_f32 v139, v100, v11 :: v_dual_fmac_f32 v142, v77, v8
	v_fmac_f32_e32 v96, v69, v9
	s_waitcnt vmcnt(36) lgkmcnt(0)
	v_dual_fmac_f32 v138, v101, v12 :: v_dual_fmac_f32 v137, v102, v13
	s_waitcnt vmcnt(34)
	v_dual_fmac_f32 v136, v98, v14 :: v_dual_fmac_f32 v135, v103, v15
	s_waitcnt vmcnt(33)
	v_fmac_f32_e32 v134, v104, v16
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v74, off, off offset:220
	scratch_load_b32 v73, off, off offset:204
	scratch_load_b32 v72, off, off offset:200
	scratch_load_b32 v71, off, off offset:196
	scratch_load_b32 v70, off, off offset:192
	scratch_load_b32 v69, off, off offset:188
	scratch_load_b32 v77, off, off offset:168
	scratch_load_b32 v76, off, off offset:164
	scratch_load_b32 v75, off, off offset:160
	scratch_load_b32 v104, off, off offset:140
	scratch_load_b32 v103, off, off offset:136
	scratch_load_b32 v102, off, off offset:132
	scratch_load_b32 v98, off, off offset:116
	scratch_load_b32 v101, off, off offset:128
	scratch_load_b32 v100, off, off offset:124
	s_waitcnt vmcnt(47)
	v_dual_fmac_f32 v140, v0, v10 :: v_dual_fmac_f32 v133, v17, v1
	s_waitcnt vmcnt(45)
	v_dual_fmac_f32 v132, v18, v2 :: v_dual_fmac_f32 v141, v19, v3
	s_waitcnt vmcnt(43)
	v_dual_fmac_f32 v130, v20, v4 :: v_dual_fmac_f32 v129, v21, v5
	s_waitcnt vmcnt(41)
	v_dual_fmac_f32 v128, v22, v6 :: v_dual_fmac_f32 v127, v23, v7
	s_waitcnt vmcnt(39)
	v_dual_fmac_f32 v126, v24, v8 :: v_dual_fmac_f32 v125, v25, v9
	s_waitcnt vmcnt(37)
	v_dual_fmac_f32 v124, v26, v10 :: v_dual_fmac_f32 v123, v27, v11
	s_waitcnt vmcnt(35)
	v_dual_fmac_f32 v122, v28, v12 :: v_dual_fmac_f32 v121, v29, v13
	s_waitcnt vmcnt(33)
	v_dual_fmac_f32 v120, v30, v14 :: v_dual_fmac_f32 v119, v31, v15
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v118, v32, v16 :: v_dual_fmac_f32 v117, v33, v1
	s_waitcnt vmcnt(29)
	v_dual_fmac_f32 v116, v34, v2 :: v_dual_fmac_f32 v115, v35, v3
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v114, v36, v4 :: v_dual_fmac_f32 v113, v37, v5
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v67, v40, v8 :: v_dual_fmac_f32 v68, v39, v7
	s_waitcnt vmcnt(24)
	v_fmac_f32_e32 v66, v41, v9
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v112, v47, v15 :: v_dual_fmac_f32 v111, v48, v16
	s_waitcnt vmcnt(21)
	v_fmac_f32_e32 v110, v49, v1
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v78, v50, v2
	s_waitcnt vmcnt(18)
	v_dual_fmac_f32 v109, v54, v6 :: v_dual_fmac_f32 v108, v55, v7
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v107, v56, v8
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v105, v57, v9
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v99, v64, v16 :: v_dual_fmac_f32 v74, v38, v6
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v73, v42, v10 :: v_dual_fmac_f32 v72, v43, v11
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v71, v44, v12 :: v_dual_fmac_f32 v70, v45, v13
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v69, v46, v14
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v77, v51, v3 :: v_dual_fmac_f32 v76, v52, v4
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v75, v53, v5 :: v_dual_fmac_f32 v104, v58, v10
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v103, v59, v11 :: v_dual_fmac_f32 v102, v60, v12
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v98, v61, v13 :: v_dual_fmac_f32 v101, v62, v14
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v100, v63, v15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:400
	scratch_load_b32 v91, off, off offset:404
	v_and_b32_e32 v1, 0x80, v106
	v_mov_b32_e32 v3, v162
.LBB0_9:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v148|, |v148|
	v_max_f32_e64 v2, |v149|, |v149|
	v_max3_f32 v4, |v146|, |v145|, |v144|
	v_max3_f32 v5, |v140|, |v139|, |v138|
	v_max3_f32 v6, |v137|, |v136|, |v135|
	v_max_f32_e64 v7, |v133|, |v133|
	v_max_f32_e32 v0, v2, v0
	v_max_f32_e64 v2, |v132|, |v132|
	v_max3_f32 v10, |v124|, |v123|, |v122|
	v_max3_f32 v5, v5, v6, |v134|
	v_max_f32_e64 v6, |v117|, |v117|
	v_max3_f32 v0, v0, |v147|, v4
	v_max_f32_e64 v4, |v116|, |v116|
	v_max_f32_e32 v2, v7, v2
	v_max3_f32 v7, |v130|, |v129|, |v128|
	v_max3_f32 v11, |v121|, |v120|, |v119|
	v_max3_f32 v12, |v73|, |v72|, |v71|
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, |v114|, |v113|, |v74|
	v_max3_f32 v13, |v70|, |v69|, |v112|
	v_max3_f32 v8, |v143|, |v142|, |v96|
	v_max3_f32 v9, |v127|, |v126|, |v125|
	v_max3_f32 v2, v2, |v141|, v7
	v_max3_f32 v7, v10, v11, |v118|
	v_max3_f32 v10, |v68|, |v67|, |v66|
	v_max3_f32 v4, v4, |v115|, v6
	v_max3_f32 v6, v12, v13, |v111|
	v_max_f32_e64 v11, |v78|, |v78|
	v_max_f32_e64 v12, |v110|, |v110|
	v_max3_f32 v0, v0, v8, v5
	v_max3_f32 v2, v2, v9, v7
	v_max3_f32 v4, v4, v10, v6
	v_max3_f32 v6, |v76|, |v75|, |v109|
	v_max_f32_e32 v5, v12, v11
	v_max3_f32 v8, |v104|, |v103|, |v102|
	v_max3_f32 v9, |v98|, |v101|, |v100|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v7, |v108|, |v107|, |v105|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v77|, v6
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, v9, |v99|
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v14, 8, v106
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_max3_f32 v5, v5, v7, v8
	v_max_f32_e32 v12, v11, v11
	v_max_f32_e32 v10, v0, v9
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v106
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v2, v6
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v2, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v8, 4, v106
	v_and_b32_e32 v9, 0x60, v106
	v_lshl_add_u32 v7, v0, 9, 0
	v_lshlrev_b32_e32 v6, 5, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v12, v4, v12
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v4, 4, v106
	v_lshrrev_b32_e32 v17, 3, v1
	v_and_or_b32 v8, 0x680, v8, v6
	v_xor_b32_e32 v15, v6, v9
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u32 v13, v4, 2, v7
	v_lshlrev_b32_e32 v7, 1, v1
	v_xor_b32_e32 v8, v8, v9
	v_lshl_add_u32 v18, v4, 6, 0
	s_barrier
	v_lshl_add_u32 v16, v14, 4, v13
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v5, v2
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v1, 0, v1
	v_add3_u32 v5, v18, v17, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v16, v7, v15
	ds_store_b128 v2, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v5, v11
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v15, v13, v13
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v2, v10
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v8, v12
	v_lshl_add_u32 v0, v0, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v11, v5
	v_dual_max_f32 v11, v13, v13 :: v_dual_lshlrev_b32 v14, 3, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v5
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v13, v13, v13
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v5, v5, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v10, v2
	v_max_f32_e32 v10, v12, v12
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v8, v10, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, v15, v11 :: v_dual_mov_b32 v11, v8
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_mov_b32 v12, v2
	v_max_f32_e32 v8, v8, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v12
	v_dual_max_f32 v12, v15, v15 :: v_dual_mov_b32 v15, v5
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v10, v12
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v8
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v15, v15
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v15, 1, v9
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v13, v13
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v5, v11
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v15, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v2, v10
	v_dual_max_f32 v2, v12, v12 :: v_dual_max_f32 v5, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, v8, v2
	v_dual_max_f32 v13, v16, v5 :: v_dual_lshlrev_b32 v2, 5, v4
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v5, 4, v91
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v2, v14
	ds_store_b128 v1, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp44:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v5
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[10:13], v0
.Ltmp46:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 16, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s25, 0, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[26:27], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v10, v10
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 32, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v19, v11, v11 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v17, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v8, v4
	v_fma_f32 v14, -v4, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, v14, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s24, v10
	v_add_co_ci_u32_e64 v15, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v21, v17, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s0, s24, v16
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[14:15]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v15.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_max_f32_e32 v12, v12, v12
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s25, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v4, v21, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v12, 0x2b8cbccc, v12
	v_max_f32_e32 v2, v13, v13
	v_max_f32_e32 v16, 0x2b8cbccc, v19
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[28:29], v[10:11]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v21, v1, v8
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v12
	v_max_f32_e32 v22, 0x2b8cbccc, v2
	v_div_scale_f32 v2, s6, v12, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v20, v18
	v_fma_f32 v1, -v4, v21, v17
	v_div_scale_f32 v17, null, 0x40e00000, 0x40e00000, v22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[10:11]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v8, v21
	v_rcp_f32_e32 v8, v17
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v18, v20, 1.0
	v_div_fixup_f32 v0, v1, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v20, v19, v20
	v_fma_f32 v19, -v17, v8, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v4, v2, v20
	v_fmac_f32_e32 v8, v19, v8
	v_div_scale_f32 v19, s8, v22, 0x40e00000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v18, v4, v2
	v_mul_f32_e32 v11, v19, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v4, v1, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v1.h, v15.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v18, v4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v18, v2, v20, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v0, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v17, v11, v19
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s24, v5
	v_add_co_ci_u32_e64 v2, null, s25, 0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v11, v0, v8
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v16
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[28:29], v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v23, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v27, v27, v149
	v_div_scale_f32 v25, null, v27, v27, v145
	v_div_scale_f32 v26, null, v27, v27, v144
	v_div_scale_f32 v34, null, v27, v27, v138
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v13, v23, 1.0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v28, v26
	v_div_scale_f32 v35, null, v27, v27, v136
	v_div_scale_f32 v36, null, v27, v27, v135
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v23, v14, v23
	v_div_scale_f32 v14, s7, v16, 0x40e00000, v16
	s_mov_b32 vcc_lo, s7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[1:2]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v37, null, v27, v27, v134
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v21, v14, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v38, v37
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v10, -v13, v21, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v10, v23
	v_div_fixup_f32 v10, v18, 0x40e00000, v12
	v_fma_f32 v12, -v13, v21, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v13, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v17, v11, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v15.l, v10.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v19, null, v27, v27, v147
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v12, v12, v23, v21
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v21, null, v27, v27, v146
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v8, v14, v8, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v14, null, v27, v27, v148
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v12, v12, 0x40e00000, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v16, -v0, v13, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v11, 1, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v18, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v17, v8, 0x40e00000, v22
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v8.l, v12.h
	v_mov_b16_e32 v8.h, v15.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v13, v16, v13
	v_div_scale_f32 v16, vcc_lo, v149, v27, v149
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v10, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 1, v8
	v_mov_b16_e32 v15.l, v17.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v11, v16, v13
	v_fma_f32 v10, -v14, v18, 1.0
	v_rcp_f32_e32 v20, v19
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v8, v12, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v22, s8, v148, v27, v148
	v_fma_f32 v12, -v0, v11, v16
	v_dual_fmac_f32 v18, v10, v18 :: v_dual_and_b32 v15, 1, v15
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v23, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v11, v12, v13 :: v_dual_mul_f32 v12, v22, v18
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v2, v17, v15, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v17, -v19, v20, 1.0
	v_rcp_f32_e32 v15, v21
	v_fma_f32 v0, -v0, v11, v16
	v_fma_f32 v16, -v14, v12, v22
	v_div_scale_f32 v55, null, v23, v23, v116
	v_fmac_f32_e32 v20, v17, v20
	v_div_scale_f32 v17, s9, v147, v27, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v12, v16, v18
	v_rcp_f32_e32 v16, v25
	v_div_fmas_f32 v0, v0, v13, v11
	v_mul_f32_e32 v13, v17, v20
	v_fma_f32 v24, -v21, v15, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v56, null, v23, v23, v115
	v_div_fixup_f32 v11, v0, v27, v149
	v_fma_f32 v0, -v14, v12, v22
	v_fma_f32 v14, -v19, v13, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v29, -v25, v16, 1.0
	v_dual_fmac_f32 v15, v24, v15 :: v_dual_and_b32 v10, 0xffff0000, v2
	v_div_scale_f32 v24, s10, v146, v27, v146
	v_div_fmas_f32 v0, v0, v18, v12
	v_fmac_f32_e32 v13, v14, v20
	v_fmac_f32_e32 v16, v29, v16
	v_div_scale_f32 v18, s8, v145, v27, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v12, v0, v27, v148
	v_fma_f32 v0, -v19, v13, v17
	v_fma_f32 v29, -v26, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v17, v18, v16 :: v_dual_mul_f32 v22, v24, v15
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v19, s11, v144, v27, v144
	v_fmac_f32_e32 v28, v29, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v21, v22, v24
	v_div_fmas_f32 v0, v0, v20, v13
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v29, null, v27, v27, v143
	v_fmac_f32_e32 v22, v14, v15
	v_fma_f32 v14, -v25, v17, v18
	v_div_scale_f32 v57, null, v23, v23, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v20, v29
	v_fma_f32 v13, -v21, v22, v24
	v_div_scale_f32 v24, null, v27, v27, v142
	v_mul_f32_e32 v21, v19, v28
	v_fmac_f32_e32 v17, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v15, v13, v15, v22
	v_rcp_f32_e32 v22, v24
	v_div_fixup_f32 v13, v0, v27, v147
	v_fma_f32 v30, -v26, v21, v19
	v_fma_f32 v0, -v25, v17, v18
	v_div_fixup_f32 v14, v15, v27, v146
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v31, -v29, v20, 1.0
	v_div_scale_f32 v25, null, v27, v27, v96
	v_div_fmas_f32 v0, v0, v16, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v15, -v24, v22, 1.0
	v_fmac_f32_e32 v21, v30, v28
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v20, v31, v20
	v_div_scale_f32 v18, s9, v143, v27, v143
	v_fmac_f32_e32 v22, v15, v22
	v_fma_f32 v16, -v26, v21, v19
	v_div_scale_f32 v26, s8, v142, v27, v142
	v_rcp_f32_e32 v19, v25
	v_div_scale_f32 v30, null, v27, v27, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v16, v28, v21
	v_mul_f32_e32 v28, v26, v22
	v_div_fixup_f32 v15, v0, v27, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v32, v30
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v16, v16, v27, v144
	v_fma_f32 v0, -v24, v28, v26
	v_mul_f32_e32 v17, v18, v20
	v_fma_f32 v31, -v25, v19, 1.0
	v_rcp_f32_e32 v58, v57
	v_div_scale_f32 v63, null, v23, v23, v73
	v_fmac_f32_e32 v28, v0, v22
	v_fma_f32 v21, -v29, v17, v18
	v_fmac_f32_e32 v19, v31, v19
	v_div_scale_f32 v31, null, v27, v27, v139
	v_fma_f32 v33, -v30, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v21, v20
	v_div_scale_f32 v21, s10, v96, v27, v96
	v_div_scale_f32 v64, null, v23, v23, v71
	v_fma_f32 v18, -v29, v17, v18
	v_rcp_f32_e32 v29, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v0, v21, v19
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, s11, v140, v27, v140
	v_div_fmas_f32 v17, v18, v20, v17
	v_fma_f32 v18, -v24, v28, v26
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v20, -v25, v0, v21
	v_mul_f32_e32 v24, v33, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v26, -v31, v29, 1.0
	v_div_fmas_f32 v18, v18, v22, v28
	v_rcp_f32_e32 v22, v34
	v_fmac_f32_e32 v0, v20, v19
	v_fma_f32 v20, -v30, v24, v33
	v_fmac_f32_e32 v29, v26, v29
	v_div_scale_f32 v26, s8, v139, v27, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v25, v0, v21
	v_fmac_f32_e32 v24, v20, v32
	v_div_scale_f32 v28, null, v27, v27, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v25, v26, v29
	v_fma_f32 v20, -v34, v22, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v17, v17, v27, v143
	v_div_fmas_f32 v0, v21, v19, v0
	v_fma_f32 v19, -v30, v24, v33
	v_fma_f32 v21, -v31, v25, v26
	v_fmac_f32_e32 v22, v20, v22
	v_rcp_f32_e32 v30, v28
	v_div_scale_f32 v33, s9, v138, v27, v138
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v25, v21, v29
	v_div_fmas_f32 v20, v19, v32, v24
	v_rcp_f32_e32 v24, v35
	v_mul_f32_e32 v32, v33, v22
	v_div_fixup_f32 v19, v0, v27, v96
	v_fma_f32 v0, -v31, v25, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v28, v30, 1.0
	v_div_scale_f32 v31, s10, v137, v27, v137
	v_fma_f32 v26, -v34, v32, v33
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v30, v21, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v21, -v35, v24, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v42, 0xffff0000, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v32, v26, v22
	v_rcp_f32_e32 v26, v36
	v_div_fmas_f32 v0, v0, v29, v25
	v_dual_mul_f32 v25, v31, v30 :: v_dual_fmac_f32 v24, v21, v24
	v_div_scale_f32 v29, s8, v136, v27, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v21, v0, v27, v139
	v_fma_f32 v0, -v34, v32, v33
	v_fma_f32 v33, -v28, v25, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v34, v29, v24
	v_fma_f32 v39, -v36, v26, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v18, v18, v27, v142
	v_div_fmas_f32 v0, v0, v22, v32
	v_fmac_f32_e32 v25, v33, v30
	v_fma_f32 v32, -v35, v34, v29
	v_fmac_f32_e32 v26, v39, v26
	v_div_scale_f32 v33, s9, v135, v27, v135
	v_fma_f32 v39, -v37, v38, 1.0
	v_div_fixup_f32 v22, v0, v27, v138
	v_fma_f32 v0, -v28, v25, v31
	v_fmac_f32_e32 v34, v32, v24
	v_mul_f32_e32 v28, v33, v26
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v31, s11, v134, v27, v134
	v_div_scale_f32 v32, null, v42, v42, v133
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v39, null, v42, v42, v132
	v_div_fmas_f32 v0, v0, v30, v25
	v_fma_f32 v25, -v35, v34, v29
	v_fma_f32 v29, -v36, v28, v33
	v_rcp_f32_e32 v30, v32
	v_mul_f32_e32 v35, v31, v38
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v20, v20, v27, v140
	v_div_fmas_f32 v25, v25, v24, v34
	v_fmac_f32_e32 v28, v29, v26
	v_rcp_f32_e32 v29, v39
	v_fma_f32 v34, -v37, v35, v31
	v_div_fixup_f32 v24, v0, v27, v137
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v40, -v32, v30, 1.0
	v_fma_f32 v0, -v36, v28, v33
	v_fmac_f32_e32 v35, v34, v38
	v_div_scale_f32 v36, null, v42, v42, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v30, v40, v30
	v_div_scale_f32 v33, s8, v133, v42, v133
	v_fma_f32 v34, -v39, v29, 1.0
	v_div_fmas_f32 v0, v0, v26, v28
	v_fma_f32 v26, -v37, v35, v31
	v_rcp_f32_e32 v31, v36
	v_div_scale_f32 v37, null, v42, v42, v130
	v_dual_mul_f32 v28, v33, v30 :: v_dual_fmac_f32 v29, v34, v29
	v_div_scale_f32 v34, s9, v132, v42, v132
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v37
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v25, v25, v27, v136
	v_div_fmas_f32 v35, v26, v38, v35
	v_fma_f32 v38, -v32, v28, v33
	v_mul_f32_e32 v40, v34, v29
	v_fma_f32 v41, -v36, v31, 1.0
	v_div_fixup_f32 v26, v0, v27, v135
	v_div_fixup_f32 v27, v35, v27, v134
	v_fmac_f32_e32 v28, v38, v30
	v_fma_f32 v0, -v39, v40, v34
	v_fmac_f32_e32 v31, v41, v31
	v_div_scale_f32 v35, s10, v141, v42, v141
	v_div_scale_f32 v38, null, v42, v42, v129
	v_fma_f32 v41, -v37, v43, 1.0
	v_fma_f32 v32, -v32, v28, v33
	v_fmac_f32_e32 v40, v0, v29
	v_mul_f32_e32 v0, v35, v31
	v_rcp_f32_e32 v33, v38
	v_fmac_f32_e32 v43, v41, v43
	v_div_scale_f32 v41, s11, v130, v42, v130
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v44, null, v42, v42, v128
	v_div_fmas_f32 v28, v32, v30, v28
	v_fma_f32 v30, -v39, v40, v34
	v_fma_f32 v32, -v36, v0, v35
	v_mul_f32_e32 v34, v41, v43
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v39, -v38, v33, 1.0
	v_div_fmas_f32 v29, v30, v29, v40
	v_fmac_f32_e32 v0, v32, v31
	v_rcp_f32_e32 v40, v44
	v_fma_f32 v30, -v37, v34, v41
	v_fmac_f32_e32 v33, v39, v33
	v_div_scale_f32 v32, s8, v129, v42, v129
	v_fma_f32 v35, -v36, v0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v30, v43
	v_div_scale_f32 v39, null, v42, v42, v127
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v36, v32, v33
	v_fma_f32 v30, -v44, v40, 1.0
	v_div_fmas_f32 v0, v35, v31, v0
	v_fma_f32 v31, -v37, v34, v41
	v_rcp_f32_e32 v37, v39
	v_div_scale_f32 v45, null, v42, v42, v126
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v35, -v38, v36, v32
	v_fmac_f32_e32 v40, v30, v40
	v_div_scale_f32 v41, s9, v128, v42, v128
	v_div_fmas_f32 v31, v31, v43, v34
	v_rcp_f32_e32 v34, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v36, v35, v33 :: v_dual_mul_f32 v35, v41, v40
	v_fma_f32 v43, -v39, v37, 1.0
	v_div_fixup_f32 v30, v0, v42, v141
	v_div_scale_f32 v46, null, v42, v42, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v38, v36, v32
	v_fma_f32 v32, -v44, v35, v41
	v_fmac_f32_e32 v37, v43, v37
	v_fma_f32 v43, -v45, v34, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v48, null, v42, v42, v124
	v_div_fmas_f32 v0, v0, v33, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v35, v32, v40 :: v_dual_fmac_f32 v34, v43, v34
	v_rcp_f32_e32 v43, v46
	v_div_scale_f32 v38, s10, v127, v42, v127
	v_div_scale_f32 v47, s8, v126, v42, v126
	v_div_fixup_f32 v32, v0, v42, v129
	v_fma_f32 v0, -v44, v35, v41
	v_rcp_f32_e32 v44, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v36, v38, v37 :: v_dual_mul_f32 v41, v47, v34
	v_fma_f32 v49, -v46, v43, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v53, null, v42, v42, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v39, v36, v38
	v_div_fmas_f32 v0, v0, v40, v35
	v_fma_f32 v35, -v45, v41, v47
	v_fmac_f32_e32 v43, v49, v43
	v_fma_f32 v49, -v48, v44, 1.0
	v_fmac_f32_e32 v36, v33, v37
	v_div_scale_f32 v40, s9, v125, v42, v125
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v41, v35, v34 :: v_dual_fmac_f32 v44, v49, v44
	v_div_scale_f32 v49, null, v42, v42, v123
	v_div_fixup_f32 v33, v0, v42, v128
	v_fma_f32 v0, -v39, v36, v38
	v_mul_f32_e32 v38, v40, v43
	v_div_scale_f32 v39, s11, v124, v42, v124
	v_fma_f32 v35, -v45, v41, v47
	v_rcp_f32_e32 v45, v49
	v_div_scale_f32 v47, null, v42, v42, v122
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v28, v28, v42, v133
	v_div_fmas_f32 v0, v0, v37, v36
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v36, -v46, v38, v40
	v_mul_f32_e32 v37, v39, v44
	v_div_fmas_f32 v35, v35, v34, v41
	v_rcp_f32_e32 v41, v47
	v_fma_f32 v50, -v49, v45, 1.0
	v_fmac_f32_e32 v38, v36, v43
	v_fma_f32 v36, -v48, v37, v39
	v_div_fixup_f32 v34, v0, v42, v127
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v45, v50, v45
	v_fma_f32 v0, -v46, v38, v40
	v_fmac_f32_e32 v37, v36, v44
	v_div_scale_f32 v40, s8, v123, v42, v123
	v_fma_f32 v36, -v47, v41, 1.0
	v_div_scale_f32 v46, null, v42, v42, v121
	v_div_fmas_f32 v0, v0, v43, v38
	v_fma_f32 v38, -v48, v37, v39
	v_mul_f32_e32 v39, v40, v45
	v_fmac_f32_e32 v41, v36, v41
	v_rcp_f32_e32 v43, v46
	v_div_scale_f32 v48, s9, v122, v42, v122
	v_div_scale_f32 v50, null, v42, v42, v120
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v36, v0, v42, v125
	v_div_fmas_f32 v37, v38, v44, v37
	v_fma_f32 v38, -v49, v39, v40
	v_mul_f32_e32 v44, v48, v41
	v_rcp_f32_e32 v52, v50
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v46, v43, 1.0
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v39, v38, v45
	v_fma_f32 v0, -v47, v44, v48
	v_div_scale_f32 v54, s11, v120, v42, v120
	v_fmac_f32_e32 v43, v51, v43
	v_div_scale_f32 v51, s10, v121, v42, v121
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v50, v52, 1.0
	v_fma_f32 v40, -v49, v39, v40
	v_fmac_f32_e32 v44, v0, v41
	v_rcp_f32_e32 v49, v53
	v_mul_f32_e32 v0, v51, v43
	v_fmac_f32_e32 v52, v38, v52
	v_div_fmas_f32 v38, v40, v45, v39
	v_fma_f32 v39, -v47, v44, v48
	v_div_scale_f32 v48, null, v42, v42, v118
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v40, -v46, v0, v51
	v_mul_f32_e32 v45, v54, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v53, v49, 1.0
	v_div_fmas_f32 v39, v39, v41, v44
	v_rcp_f32_e32 v44, v48
	v_fmac_f32_e32 v0, v40, v43
	v_fma_f32 v40, -v50, v45, v54
	v_fmac_f32_e32 v49, v47, v49
	v_div_scale_f32 v47, s8, v119, v42, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v46, v0, v51
	v_fmac_f32_e32 v45, v40, v52
	v_div_scale_f32 v51, null, v23, v23, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v46, v47, v49
	v_fma_f32 v40, -v48, v44, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v29, v29, v42, v132
	v_div_fmas_f32 v0, v41, v43, v0
	v_fma_f32 v41, -v50, v45, v54
	v_fma_f32 v43, -v53, v46, v47
	v_fmac_f32_e32 v44, v40, v44
	v_rcp_f32_e32 v50, v51
	v_div_scale_f32 v54, s9, v118, v42, v118
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v46, v43, v49
	v_div_fmas_f32 v41, v41, v52, v45
	v_rcp_f32_e32 v45, v55
	v_mul_f32_e32 v52, v54, v44
	v_div_fixup_f32 v40, v0, v42, v121
	v_fma_f32 v0, -v53, v46, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v51, v50, 1.0
	v_div_scale_f32 v53, s10, v117, v23, v117
	v_fma_f32 v47, -v48, v52, v54
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v50, v43, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v55, v45, 1.0
	v_div_fmas_f32 v0, v0, v49, v46
	v_fmac_f32_e32 v52, v47, v44
	v_rcp_f32_e32 v47, v56
	v_dual_mul_f32 v46, v53, v50 :: v_dual_fmac_f32 v45, v43, v45
	v_div_scale_f32 v49, s8, v116, v23, v116
	v_div_fixup_f32 v43, v0, v42, v119
	v_fma_f32 v0, -v48, v52, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v51, v46, v53
	v_mul_f32_e32 v54, v49, v45
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v56, v47, 1.0
	v_div_fmas_f32 v0, v0, v44, v52
	v_fmac_f32_e32 v46, v48, v50
	v_fma_f32 v44, -v55, v54, v49
	v_div_scale_f32 v48, s9, v115, v23, v115
	v_fmac_f32_e32 v47, v59, v47
	v_fma_f32 v52, -v57, v58, 1.0
	v_div_fixup_f32 v31, v31, v42, v130
	v_div_fixup_f32 v35, v35, v42, v126
	v_div_fixup_f32 v37, v37, v42, v124
	v_div_fixup_f32 v38, v38, v42, v123
	v_div_fixup_f32 v39, v39, v42, v122
	v_div_fixup_f32 v41, v41, v42, v120
	v_div_fixup_f32 v42, v0, v42, v118
	v_fma_f32 v0, -v51, v46, v53
	v_fmac_f32_e32 v54, v44, v45
	v_mul_f32_e32 v51, v48, v47
	v_fmac_f32_e32 v58, v52, v58
	v_div_scale_f32 v52, s11, v114, v23, v114
	v_div_scale_f32 v53, null, v23, v23, v113
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v44, -v55, v54, v49
	v_div_fmas_f32 v0, v0, v50, v46
	v_fma_f32 v46, -v56, v51, v48
	v_rcp_f32_e32 v49, v53
	v_mul_f32_e32 v50, v52, v58
	v_div_scale_f32 v55, null, v23, v23, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v46, v47
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v46, -v57, v50, v52
	v_div_fmas_f32 v45, v44, v45, v54
	v_rcp_f32_e32 v54, v55
	v_div_fixup_f32 v44, v0, v23, v117
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v59, -v53, v49, 1.0
	v_fma_f32 v0, -v56, v51, v48
	v_fmac_f32_e32 v50, v46, v58
	v_div_scale_f32 v56, null, v23, v23, v68
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v48, s8, v113, v23, v113
	v_div_fmas_f32 v0, v0, v47, v51
	v_fma_f32 v47, -v57, v50, v52
	v_rcp_f32_e32 v52, v56
	v_fma_f32 v46, -v55, v54, 1.0
	v_mul_f32_e32 v51, v48, v49
	v_div_scale_f32 v59, null, v23, v23, v67
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v54, v46, v54
	v_div_scale_f32 v57, s9, v74, v23, v74
	v_div_fmas_f32 v47, v47, v58, v50
	v_fma_f32 v50, -v53, v51, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v56, v52, 1.0
	v_rcp_f32_e32 v61, v59
	v_mul_f32_e32 v58, v57, v54
	v_div_fixup_f32 v46, v0, v23, v115
	v_dual_fmac_f32 v51, v50, v49 :: v_dual_fmac_f32 v52, v60, v52
	v_div_scale_f32 v60, null, v23, v23, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v55, v58, v57
	v_div_scale_f32 v50, s10, v68, v23, v68
	v_fma_f32 v62, -v59, v61, 1.0
	v_fma_f32 v48, -v53, v51, v48
	v_rcp_f32_e32 v53, v60
	v_fmac_f32_e32 v58, v0, v54
	v_mul_f32_e32 v0, v50, v52
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, s11, v67, v23, v67
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v65, null, v23, v23, v70
	v_div_fmas_f32 v48, v48, v49, v51
	v_fma_f32 v49, -v55, v58, v57
	v_fma_f32 v51, -v56, v0, v50
	v_mul_f32_e32 v55, v62, v61
	v_fma_f32 v57, -v60, v53, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v45, v45, v23, v116
	v_fmac_f32_e32 v0, v51, v52
	v_fma_f32 v51, -v59, v55, v62
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v57, s8, v66, v23, v66
	v_div_fmas_f32 v49, v49, v54, v58
	v_rcp_f32_e32 v54, v63
	v_fma_f32 v50, -v56, v0, v50
	v_fmac_f32_e32 v55, v51, v61
	v_mul_f32_e32 v56, v57, v53
	v_div_scale_f32 v58, null, v23, v23, v72
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v49, v49, v23, v74
	v_div_fmas_f32 v0, v50, v52, v0
	v_fma_f32 v50, -v59, v55, v62
	v_fma_f32 v52, -v60, v56, v57
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v51, -v63, v54, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v62, s9, v73, v23, v73
	v_fmac_f32_e32 v56, v52, v53
	v_rcp_f32_e32 v52, v64
	v_fmac_f32_e32 v54, v51, v54
	v_div_fmas_f32 v51, v50, v61, v55
	v_div_fixup_f32 v50, v0, v23, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v58, v59, 1.0
	v_fma_f32 v0, -v60, v56, v57
	v_mul_f32_e32 v55, v62, v54
	v_div_scale_f32 v60, s10, v72, v23, v72
	v_fmac_f32_e32 v59, v61, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v64, v52, 1.0
	v_fma_f32 v57, -v63, v55, v62
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v51, v51, v23, v67
	v_div_fmas_f32 v0, v0, v53, v56
	v_fmac_f32_e32 v52, v61, v52
	v_div_scale_f32 v61, null, v23, v23, v69
	v_fmac_f32_e32 v55, v57, v54
	v_mul_f32_e32 v53, v60, v59
	v_rcp_f32_e32 v56, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v67, v61
	v_div_scale_f32 v57, s8, v71, v23, v71
	v_fma_f32 v62, -v63, v55, v62
	v_fma_f32 v63, -v58, v53, v60
	v_div_fixup_f32 v0, v0, v23, v66
	v_mul_f32_e32 v66, v57, v52
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v47, v47, v23, v114
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v68, -v65, v56, 1.0
	v_fmac_f32_e32 v53, v63, v59
	v_fma_f32 v63, -v61, v67, 1.0
	v_div_fmas_f32 v54, v62, v54, v55
	v_fma_f32 v55, -v64, v66, v57
	v_fmac_f32_e32 v56, v68, v56
	v_div_scale_f32 v62, s9, v70, v23, v70
	v_fma_f32 v58, -v58, v53, v60
	v_fmac_f32_e32 v67, v63, v67
	v_div_scale_f32 v63, null, v23, v23, v112
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v66, v55, v52
	v_mul_f32_e32 v55, v62, v56
	v_div_scale_f32 v60, s11, v69, v23, v69
	v_div_fmas_f32 v53, v58, v59, v53
	v_rcp_f32_e32 v59, v63
	v_fma_f32 v57, -v64, v66, v57
	v_fma_f32 v58, -v65, v55, v62
	v_mul_f32_e32 v64, v60, v67
	v_div_scale_f32 v68, null, v23, v23, v111
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v55, v58, v56
	v_div_fmas_f32 v52, v57, v52, v66
	v_rcp_f32_e32 v57, v68
	v_fma_f32 v58, -v61, v64, v60
	v_fma_f32 v66, -v63, v59, 1.0
	v_fma_f32 v62, -v65, v55, v62
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v52, v52, v23, v71
	v_fmac_f32_e32 v64, v58, v67
	v_fmac_f32_e32 v59, v66, v59
	v_div_scale_f32 v58, s8, v112, v23, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v68, v57, 1.0
	v_div_fmas_f32 v55, v62, v56, v55
	v_fma_f32 v56, -v61, v64, v60
	v_mul_f32_e32 v60, v58, v59
	v_div_scale_f32 v61, null, v10, v10, v110
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v57, v65, v57
	v_div_fmas_f32 v56, v56, v67, v64
	v_rcp_f32_e32 v64, v61
	v_fma_f32 v65, -v63, v60, v58
	v_div_scale_f32 v62, s9, v111, v23, v111
	v_div_scale_f32 v67, null, v10, v10, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v65, v59
	v_mul_f32_e32 v66, v62, v57
	v_div_fixup_f32 v55, v55, v23, v70
	v_div_fixup_f32 v56, v56, v23, v69
	v_rcp_f32_e32 v69, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v61, v64, 1.0
	v_fma_f32 v58, -v63, v60, v58
	v_div_scale_f32 v63, null, v10, v10, v77
	v_fma_f32 v65, -v68, v66, v62
	v_fmac_f32_e32 v64, v70, v64
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v70, v63
	v_div_fmas_f32 v58, v58, v59, v60
	v_fmac_f32_e32 v66, v65, v57
	v_div_scale_f32 v65, s10, v110, v10, v110
	v_fma_f32 v71, -v67, v69, 1.0
	v_div_fixup_f32 v54, v54, v23, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v68, v66, v62
	v_mul_f32_e32 v60, v65, v64
	v_div_scale_f32 v62, s8, v78, v10, v78
	v_fmac_f32_e32 v69, v71, v69
	v_fma_f32 v68, -v63, v70, 1.0
	v_div_fixup_f32 v53, v53, v23, v72
	v_fma_f32 v71, -v61, v60, v65
	v_div_scale_f32 v72, null, v10, v10, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v73, v62, v69 :: v_dual_fmac_f32 v70, v68, v70
	v_div_scale_f32 v68, s11, v77, v10, v77
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v74, v72
	v_div_fmas_f32 v57, v59, v57, v66
	v_fmac_f32_e32 v60, v71, v64
	v_fma_f32 v59, -v67, v73, v62
	v_mul_f32_e32 v66, v68, v70
	v_div_fixup_f32 v48, v48, v23, v113
	v_div_fixup_f32 v58, v58, v23, v112
	v_div_fixup_f32 v23, v57, v23, v111
	v_fma_f32 v57, -v61, v60, v65
	v_fmac_f32_e32 v73, v59, v69
	v_fma_f32 v59, -v63, v66, v68
	v_div_scale_f32 v65, null, v10, v10, v75
	v_fma_f32 v61, -v72, v74, 1.0
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v59, v70
	v_rcp_f32_e32 v59, v65
	v_div_fmas_f32 v57, v57, v64, v60
	v_fmac_f32_e32 v74, v61, v74
	v_div_scale_f32 v61, s9, v76, v10, v76
	v_fma_f32 v60, -v67, v73, v62
	v_fma_f32 v62, -v63, v66, v68
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v63, v61, v74
	v_div_scale_f32 v64, null, v10, v10, v109
	v_fma_f32 v67, -v65, v59, 1.0
	v_div_fmas_f32 v60, v60, v69, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v68, -v72, v63, v61
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v57, v57, v10, v110
	v_fmac_f32_e32 v59, v67, v59
	v_div_scale_f32 v67, s8, v75, v10, v75
	v_fmac_f32_e32 v63, v68, v74
	v_div_fmas_f32 v62, v62, v70, v66
	v_rcp_f32_e32 v66, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v68, v67, v59
	v_div_scale_f32 v70, null, v10, v10, v108
	v_fma_f32 v61, -v72, v63, v61
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v71, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v72, v70
	v_div_fixup_f32 v62, v62, v10, v77
	v_div_fmas_f32 v61, v61, v74, v63
	v_fma_f32 v69, -v64, v66, 1.0
	v_fmac_f32_e32 v68, v71, v59
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v71, null, v10, v10, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	v_div_scale_f32 v69, s10, v109, v10, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v71
	v_fma_f32 v73, -v70, v72, 1.0
	v_div_fmas_f32 v59, v65, v59, v68
	v_div_scale_f32 v65, null, v10, v10, v105
	v_mul_f32_e32 v63, v69, v66
	v_div_fixup_f32 v61, v61, v10, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v59, v59, v10, v75
	v_rcp_f32_e32 v68, v65
	v_div_scale_f32 v75, null, v10, v10, v104
	v_fma_f32 v67, -v64, v63, v69
	v_fmac_f32_e32 v72, v73, v72
	v_fma_f32 v73, -v71, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v77, v75
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v63, v67, v66
	v_div_scale_f32 v67, s8, v108, v10, v108
	v_fma_f32 v76, -v65, v68, 1.0
	v_fmac_f32_e32 v74, v73, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v64, v63, v69
	v_mul_f32_e32 v69, v67, v72
	v_div_scale_f32 v73, s9, v107, v10, v107
	v_fmac_f32_e32 v68, v76, v68
	v_div_scale_f32 v76, null, v10, v10, v103
	v_div_fixup_f32 v60, v60, v10, v78
	v_div_fmas_f32 v63, v64, v66, v63
	v_fma_f32 v64, -v70, v69, v67
	v_mul_f32_e32 v66, v73, v74
	v_div_scale_f32 v78, s10, v105, v10, v105
	v_fma_f32 v79, -v75, v77, 1.0
	v_rcp_f32_e32 v80, v76
	v_fmac_f32_e32 v69, v64, v72
	v_fma_f32 v64, -v71, v66, v73
	v_mul_f32_e32 v81, v78, v68
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, s11, v104, v10, v104
	v_fma_f32 v67, -v70, v69, v67
	v_fmac_f32_e32 v66, v64, v74
	v_fma_f32 v64, -v65, v81, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v70, v79, v77
	v_fma_f32 v82, -v76, v80, 1.0
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v67, v72, v69
	v_fma_f32 v69, -v71, v66, v73
	v_fmac_f32_e32 v81, v64, v68
	v_fma_f32 v64, -v75, v70, v79
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v71, s8, v103, v10, v103
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v70, v64, v77
	v_div_fmas_f32 v66, v69, v74, v66
	v_mul_f32_e32 v64, v71, v80
	v_div_scale_f32 v69, null, v10, v10, v102
	v_fma_f32 v65, -v65, v81, v78
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v76, v64, v71
	v_rcp_f32_e32 v73, v69
	v_div_scale_f32 v74, null, v10, v10, v100
	v_div_fmas_f32 v65, v65, v68, v81
	v_fma_f32 v68, -v75, v70, v79
	v_fmac_f32_e32 v64, v72, v80
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v78, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v68, v68, v77, v70
	v_fma_f32 v70, -v76, v64, v71
	v_fma_f32 v72, -v69, v73, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v71, null, v10, v10, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v64, v70, v80, v64
	v_fmac_f32_e32 v73, v72, v73
	v_div_scale_f32 v75, vcc_lo, v102, v10, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v70, v71
	v_div_scale_f32 v72, null, v10, v10, v101
	v_mul_f32_e32 v79, v75, v73
	v_div_scale_f32 v80, null, v10, v10, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v72
	v_fma_f32 v84, -v74, v78, 1.0
	v_fma_f32 v83, -v69, v79, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v77, -v71, v70, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v83, v73
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, s8, v98, v10, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v69, -v69, v79, v75
	v_fma_f32 v81, -v72, v76, 1.0
	v_fma_f32 v86, -v80, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v69, v69, v73, v79
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v76, v81, v76
	v_div_scale_f32 v81, s9, v101, v10, v101
	v_div_fixup_f32 v69, v69, v10, v102
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s11, v99, v10, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v81, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v86, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v72, v87, v81
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v73, -v80, v89, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v75, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v73, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v69, 15, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v77, v70
	v_fma_f32 v73, -v80, v89, v86
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v71, v85, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v63, v63, v10, v109
	v_div_fixup_f32 v67, v67, v10, v108
	v_div_fixup_f32 v66, v66, v10, v107
	v_fmac_f32_e32 v85, v83, v70
	v_div_fixup_f32 v65, v65, v10, v105
	v_div_fixup_f32 v68, v68, v10, v104
	v_div_fixup_f32 v64, v64, v10, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v71, v85, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v71, v70, v85
	v_fma_f32 v71, -v72, v87, v81
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v70, v70, v10, v98
	v_div_fmas_f32 v71, v71, v76, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v71, v71, v10, v101
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v36, v36
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v71, v71, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v84, v78
	v_div_scale_f32 v84, s10, v100, v10, v100
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_mul_f32_e32 v88, v84, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v74, v88, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v83, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v74, v88, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v72, v78, v88
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v82, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v72, v72, v10, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v73, v10, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v73, v52
	v_cvt_i32_f32_e32 v74, v23
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v75, v57
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v39, 15, v41
	v_and_b32_e32 v41, 15, v42
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v50, 15, v0
	v_and_b32_e32 v52, 15, v53
	v_and_b32_e32 v53, 15, v73
	v_and_b32_e32 v57, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v106
	v_and_b32_e32 v74, 16, v106
	v_lshlrev_b32_e32 v73, 4, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v10
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
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v28, 15, v30
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v38, 15, v40
	v_and_b32_e32 v40, 15, v43
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v51
	v_and_b32_e32 v51, 15, v54
	v_and_b32_e32 v54, 15, v55
	v_and_b32_e32 v55, 15, v56
	v_and_b32_e32 v56, 15, v58
	v_and_b32_e32 v58, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v75, 6, v74
	v_xor_b32_e32 v9, v73, v9
	v_lshlrev_b32_e32 v73, 6, v106
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v64, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v75
	v_and_or_b32 v6, 0x1b00, v73, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v9, v7
	v_xad_u32 v6, v6, v91, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v77, v65
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v78, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v6
	ds_load_b128 v[18:21], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[26:29]
	ds_store_b128 v0, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v6
	ds_load_b128 v[34:37], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[42:45]
	ds_store_b128 v0, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v6
	ds_load_b128 v[50:53], v6 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v59
	v_and_b32_e32 v59, 15, v60
	v_and_b32_e32 v60, 15, v62
	v_and_b32_e32 v61, 15, v61
	v_and_b32_e32 v64, 15, v67
	v_and_b32_e32 v65, 15, v66
	v_and_b32_e32 v66, 15, v77
	v_and_b32_e32 v67, 15, v68
	v_and_b32_e32 v68, 15, v78
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[58:61]
	ds_store_b128 v0, v[66:69] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v6
	ds_load_b128 v[66:69], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[14:17]
	ds_store_b128 v0, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v6
	ds_load_b128 v[22:25], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[38:41], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v62, 15, v76
	v_and_b32_e32 v63, 15, v63
	v_and_b32_e32 v70, 15, v70
	v_and_b32_e32 v72, 15, v72
	v_and_b32_e32 v73, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v20, 4, v11
	v_lshl_or_b32 v20, v35, 4, v27
	v_lshl_or_b32 v27, v50, 4, v42
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v0, v18, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, s24, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v19, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v5, s31, 7, v42
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 16, v9
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v21, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 32, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v22, 4, v13
	v_lshl_or_b32 v14, v23, 4, v14
	v_lshl_or_b32 v15, v24, 4, v15
	v_lshl_or_b32 v16, v25, 4, v16
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 48, v9
	v_mad_u64_u32 v[9:10], null, v9, s8, v[5:6]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[5:6]
	v_mad_u64_u32 v[11:12], null, v12, s8, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v34, 4, v26
	v_lshl_or_b32 v21, v36, 4, v28
	v_lshl_or_b32 v22, v37, 4, v29
	v_lshl_or_b32 v23, v38, 4, v30
	v_lshl_or_b32 v24, v39, 4, v31
	v_lshl_or_b32 v25, v40, 4, v32
	v_lshl_or_b32 v26, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v13, s8, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v4.l, 8, v6.l
	v_and_b16 v5.l, 0xff, v0.l
	v_lshlrev_b16 v5.h, 8, v16.l
	v_and_b16 v6.l, 0xff, v15.l
	v_lshlrev_b16 v6.h, 8, v14.l
	v_and_b16 v7.l, 0xff, v18.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v51, 4, v43
	v_lshl_or_b32 v29, v52, 4, v44
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v2.l, v1.l
	v_or_b16 v13.l, v5.l, v4.l
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v5.l, 0xff, v19.l
	v_lshlrev_b16 v5.h, 8, v26.l
	v_and_b16 v6.l, 0xff, v25.l
	v_lshlrev_b16 v6.h, 8, v24.l
	v_and_b16 v7.l, 0xff, v23.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v43, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[13:14], v0, s[8:11], 0 offen
	v_or_b16 v13.h, v2.l, v1.l
	v_or_b16 v13.l, v5.l, v4.l
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	v_cndmask_b32_e32 v0, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v5.l, 0xff, v27.l
	v_lshlrev_b16 v5.h, 8, v34.l
	v_and_b16 v6.l, 0xff, v33.l
	v_lshlrev_b16 v6.h, 8, v32.l
	v_and_b16 v7.l, 0xff, v31.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v66, 4, v58
	v_lshl_or_b32 v36, v67, 4, v59
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[13:14], v0, s[8:11], 0 offen
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v5.l, v4.l
	v_or_b16 v10.h, v6.l, v5.h
	v_or_b16 v10.l, v7.l, v6.h
	v_lshlrev_b16 v5.h, 8, v43.l
	v_and_b16 v6.l, 0xff, v41.l
	v_lshlrev_b16 v6.h, 8, v40.l
	v_and_b16 v7.l, 0xff, v39.l
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v5.l, 0xff, v35.l
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	buffer_store_b64 v[9:10], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 4, v106
	v_lshrrev_b32_e32 v6, 2, v74
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v2.l, v1.l
	v_or_b16 v13.l, v5.l, v4.l
	v_cndmask_b32_e32 v5, 0x80000000, v12, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 2, v0
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v8.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[13:14], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v42
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v0, v6, v0, v42
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
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v106
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s31, 1
	s_and_b32 vcc_lo, vcc_lo, s34
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp47:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 412
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 412
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19036
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 412
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 412
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 102
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
