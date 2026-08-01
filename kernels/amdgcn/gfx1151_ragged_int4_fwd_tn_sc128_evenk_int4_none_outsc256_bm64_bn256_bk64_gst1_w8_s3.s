	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[24:25], s[0:1], 0x5c
	v_mov_b32_e32 v111, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v95, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
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
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v111
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
	s_sub_i32 s75, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
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
	s_load_b64 s[64:65], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s2
	v_add_nc_u32_e32 v65, s66, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s24, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow525
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v112, 15, v111
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v126, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s66, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s3
	s_clause 0x1
	s_load_b32 s16, s[0:1], 0x58
	s_load_b32 s25, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_mov_b32_e32 v135, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[72:73], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, s66, v112
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[2:3]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s26, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[2:3]
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[4:5]
	v_lshrrev_b32_e32 v4, 1, v111
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v141, 0, v112
	v_dual_mov_b32 v107, 0 :: v_dual_and_b32 v10, 0xf0, v111
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:172
	scratch_store_b32 off, v111, off offset:204
	v_mul_lo_u32 v0, v1, s24
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v4, 0x70, v4
	v_dual_mov_b32 v101, 0 :: v_dual_lshlrev_b32 v12, 5, v111
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v13, 1, v111
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v142, v141, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:176
	scratch_store_b32 off, v112, off offset:208
	v_mul_lo_u32 v0, v2, s24
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v4, 2, v10
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v12, 32, v12
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v13, 28, v13
	v_or_b32_e32 v1, 0x700, v111
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s24
	v_add3_u32 v4, 0, v4, v12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[64:65], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[6:7]
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_or_b32_e32 v2, 0x3f0, v111
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v145, 0, v1
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v111
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v1, s75, 8, v111
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s7
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s7, s16, s74
	v_or_b32_e32 v3, 0x7f0, v111
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v144, 0, v0
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v0, v4, v13
	v_or_b32_e32 v5, 0xb00, v111
	v_or_b32_e32 v6, 0xf00, v111
	v_or_b32_e32 v7, 0x1300, v111
	v_or_b32_e32 v8, 0x1700, v111
	v_or_b32_e32 v9, 0x1b00, v111
	v_or_b32_e32 v11, 0x1f00, v111
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v0, 0, v10
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s7, s26, v[1:2]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v136, 6, v111
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v143, 0, v111
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v146, 0, v2
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v147, 0, v3
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v148, 0, v5
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v149, 0, v6
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v150, 0, v7
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v151, 0, v8
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v152, 0, v9
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v153, 0, v11
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v0, v1
	v_mov_b32_e32 v88, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s1, s1, s5
	s_and_b32 s3, s3, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s24, s26
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s6, 0
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	scratch_store_b64 off, v[0:1], off offset:196 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v135
	v_mov_b32_e32 v3, v135
	v_dual_mov_b32 v4, v135 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v135
	v_dual_mov_b32 v6, v135 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v135
	v_dual_mov_b32 v8, v135 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v135 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v135
	v_dual_mov_b32 v12, v135 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v135
	v_dual_mov_b32 v14, v135 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v135
	v_dual_mov_b32 v16, v135 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v135
	v_mov_b32_e32 v19, v135
	v_mov_b32_e32 v20, v135
	v_mov_b32_e32 v21, v135
	v_mov_b32_e32 v22, v135
	v_mov_b32_e32 v23, v135
	v_mov_b32_e32 v24, v135
	v_mov_b32_e32 v26, v135
	v_mov_b32_e32 v27, v135
	v_mov_b32_e32 v28, v135
	v_mov_b32_e32 v29, v135
	v_mov_b32_e32 v30, v135
	v_mov_b32_e32 v31, v135
	v_mov_b32_e32 v32, v135
	v_mov_b32_e32 v34, v135
	v_mov_b32_e32 v35, v135
	v_mov_b32_e32 v36, v135
	v_mov_b32_e32 v37, v135
	v_mov_b32_e32 v38, v135
	v_mov_b32_e32 v39, v135
	v_mov_b32_e32 v40, v135
	v_mov_b32_e32 v42, v135
	v_mov_b32_e32 v43, v135
	v_mov_b32_e32 v44, v135
	v_mov_b32_e32 v45, v135
	v_mov_b32_e32 v46, v135
	v_mov_b32_e32 v47, v135
	v_mov_b32_e32 v48, v135
	v_mov_b32_e32 v50, v135
	v_mov_b32_e32 v51, v135
	v_mov_b32_e32 v52, v135
	v_mov_b32_e32 v53, v135
	v_mov_b32_e32 v54, v135
	v_mov_b32_e32 v55, v135
	v_mov_b32_e32 v56, v135
	v_mov_b32_e32 v58, v135
	v_mov_b32_e32 v59, v135
	v_mov_b32_e32 v60, v135
	v_mov_b32_e32 v61, v135
	v_mov_b32_e32 v62, v135
	v_mov_b32_e32 v63, v135
	v_mov_b32_e32 v64, v135
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s7, s6, 6
	s_mov_b32 s14, -1
	s_mov_b32 s15, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v110, off offset:168
	scratch_store_b32 off, v109, off offset:164
	scratch_store_b32 off, v108, off offset:160
	scratch_store_b32 off, v107, off offset:156
	scratch_store_b32 off, v106, off offset:152
	scratch_store_b32 off, v105, off offset:148
	scratch_store_b32 off, v104, off offset:144
	scratch_store_b32 off, v103, off offset:140
	scratch_store_b32 off, v102, off offset:136
	scratch_store_b32 off, v101, off offset:132
	scratch_store_b32 off, v100, off offset:128
	scratch_store_b32 off, v94, off offset:124
	scratch_store_b32 off, v93, off offset:120
	scratch_store_b32 off, v79, off offset:116
	scratch_store_b32 off, v66, off offset:112
	scratch_store_b32 off, v73, off offset:108
	scratch_store_b32 off, v69, off offset:104
	scratch_store_b32 off, v72, off offset:100
	scratch_store_b32 off, v70, off offset:96
	scratch_store_b32 off, v71, off offset:92
	scratch_store_b32 off, v78, off offset:88
	scratch_store_b32 off, v77, off offset:84
	scratch_store_b32 off, v76, off offset:80
	scratch_store_b32 off, v75, off offset:76
	scratch_store_b32 off, v74, off offset:72
	scratch_store_b32 off, v86, off offset:68
	scratch_store_b32 off, v85, off offset:64
	scratch_store_b32 off, v84, off offset:60
	scratch_store_b32 off, v83, off offset:56
	scratch_store_b32 off, v82, off offset:52
	scratch_store_b32 off, v81, off offset:48
	scratch_store_b32 off, v80, off offset:44
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v87, off offset:40
	scratch_store_b32 off, v92, off offset:36
	scratch_store_b32 off, v91, off offset:32
	scratch_store_b32 off, v90, off offset:28
	scratch_store_b32 off, v89, off offset:24
	scratch_store_b32 off, v88, off offset:20
	scratch_store_b32 off, v99, off offset:16
	scratch_store_b32 off, v98, off offset:12
	scratch_store_b32 off, v97, off offset:8
	scratch_store_b32 off, v96, off offset:4
	scratch_store_b32 off, v95, off
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s15, s15, s7
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s14
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s15, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 1
	v_or_b32_e32 v0, s15, v136
	s_mov_b32 s14, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v75, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 2
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v77, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 3
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v78, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 4
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v76, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 5
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v80, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 6
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v81, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 7
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v82, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 8
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v79, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 9
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v84, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 10
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v85, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 11
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v86, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 12
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v83, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 13
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v88, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 14
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v89, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 15
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v90, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 16
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v87, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 17
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v92, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 18
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v93, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 19
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v94, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 20
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v91, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 21
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v95, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 22
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v97, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 23
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v98, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 24
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v96, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 25
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v99, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 26
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v101, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 27
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v102, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 28
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v100, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 29
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v103, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 30
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v105, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 31
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v108, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v107, v68, s[8:11], 0 offen
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v0, s25, v[65:66]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v66, 4, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, s15, v66
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v68, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v66, s25, v[65:66]
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v66, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 8, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v70, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 12, v136
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v71, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v72, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 20, v136
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v73, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 24, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v74, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 28, v136
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_mov_b32 s15, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	s_clause 0x7
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v66, v66, s[20:23], 0 offen
	buffer_load_u8 v69, v70, s[20:23], 0 offen
	buffer_load_u8 v70, v72, s[20:23], 0 offen
	buffer_load_u8 v72, v73, s[20:23], 0 offen
	buffer_load_u8 v73, v74, s[20:23], 0 offen
	buffer_load_u8 v68, v68, s[20:23], 0 offen
	buffer_load_u8 v71, v71, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v143, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v143, v66 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v143, v69 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v143, v70 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v143, v72 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v144, v71
	ds_store_b8 v143, v73 offset:1536
	ds_store_b8 v145, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	ds_load_u8 v0, v141 offset:320
	ds_load_u8 v66, v141 offset:256
	ds_load_u8 v104, v141 offset:336
	ds_load_u8 v106, v141 offset:272
	ds_load_u8 v250, v141 offset:352
	ds_load_u8 v251, v141 offset:288
	ds_load_u8 v244, v141 offset:368
	ds_load_u8 v245, v141 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v66, v0, 0xc0c0004
	ds_load_u8 v68, v141 offset:448
	ds_load_u8 v69, v141 offset:384
	ds_load_u8 v109, v141 offset:464
	ds_load_u8 v110, v141 offset:400
	ds_load_u8 v70, v141 offset:480
	ds_load_u8 v0, v141 offset:416
	ds_load_u8 v248, v141 offset:496
	ds_load_u8 v249, v141 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v141 offset:64
	ds_load_u8 v72, v141
	ds_load_u8 v111, v141 offset:80
	ds_load_u8 v140, v141 offset:96
	ds_load_u8 v253, v141 offset:112
	ds_load_u8 v112, v141 offset:16
	ds_load_u8 v71, v141 offset:32
	ds_load_u8 v255, v141 offset:48
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v0, v70, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v72, v69, 0xc0c0004
	ds_load_u8 v69, v141 offset:192
	ds_load_u8 v137, v141 offset:128
	ds_load_u8 v155, v141 offset:208
	ds_load_u8 v113, v141 offset:144
	ds_load_u8 v73, v141 offset:224
	ds_load_u8 v74, v141 offset:160
	ds_load_u8 v139, v141 offset:240
	ds_load_u8 v154, v141 offset:176
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v70, v71, v140, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v137, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v66
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v68, v137, 16, v72
	ds_load_u8 v246, v141 offset:960
	ds_load_u8 v247, v141 offset:896
	ds_load_u8 v212, v141 offset:1024
	ds_load_u8 v220, v141 offset:976
	ds_load_u8 v222, v141 offset:912
	ds_load_u8 v215, v141 offset:992
	ds_load_u8 v217, v141 offset:928
	ds_load_u8 v213, v141 offset:944
	ds_load_u8 v252, v141 offset:832
	ds_load_u8 v254, v141 offset:768
	ds_load_u8 v227, v141 offset:848
	ds_load_u8 v229, v141 offset:784
	ds_load_u8 v224, v141 offset:864
	ds_load_u8 v225, v141 offset:800
	ds_load_u8 v218, v141 offset:880
	ds_load_u8 v219, v141 offset:816
	ds_load_u8 v137, v141 offset:704
	ds_load_u8 v138, v141 offset:640
	ds_load_u8 v233, v141 offset:720
	ds_load_u8 v234, v141 offset:656
	ds_load_u8 v230, v141 offset:736
	ds_load_u8 v231, v141 offset:672
	ds_load_u8 v226, v141 offset:752
	ds_load_u8 v228, v141 offset:688
	ds_load_u8 v66, v141 offset:576
	ds_load_u8 v72, v141 offset:512
	ds_load_u8 v241, v141 offset:592
	ds_load_u8 v242, v141 offset:528
	ds_load_u8 v237, v141 offset:608
	ds_load_u8 v239, v141 offset:544
	ds_load_u8 v235, v141 offset:624
	ds_load_u8 v236, v141 offset:560
	ds_load_u8 v214, v141 offset:1216
	ds_load_u8 v216, v141 offset:1280
	ds_load_u8 v186, v141 offset:1232
	ds_load_u8 v187, v141 offset:1168
	ds_load_u8 v183, v141 offset:1248
	ds_load_u8 v184, v141 offset:1184
	ds_load_u8 v181, v141 offset:1264
	ds_load_u8 v182, v141 offset:1200
	ds_load_u8 v221, v141 offset:1152
	ds_load_u8 v223, v141 offset:1088
	ds_load_u8 v194, v141 offset:1104
	ds_load_u8 v195, v141 offset:1040
	ds_load_u8 v190, v141 offset:1120
	ds_load_u8 v192, v141 offset:1056
	ds_load_u8 v188, v141 offset:1136
	ds_load_u8 v189, v141 offset:1072
	ds_load_u8 v232, v141 offset:1472
	ds_load_u8 v180, v141 offset:1536
	ds_load_u8 v202, v141 offset:1488
	ds_load_u8 v203, v141 offset:1424
	ds_load_u8 v199, v141 offset:1504
	ds_load_u8 v200, v141 offset:1440
	ds_load_u8 v196, v141 offset:1520
	ds_load_u8 v197, v141 offset:1456
	ds_load_u8 v238, v141 offset:1408
	ds_load_u8 v240, v141 offset:1344
	ds_load_u8 v210, v141 offset:1360
	ds_load_u8 v211, v141 offset:1296
	ds_load_u8 v208, v141 offset:1376
	ds_load_u8 v209, v141 offset:1312
	ds_load_u8 v204, v141 offset:1392
	ds_load_u8 v206, v141 offset:1328
	ds_load_u8 v185, v141 offset:1984
	ds_load_u8 v160, v141 offset:2000
	ds_load_u8 v162, v141 offset:1936
	ds_load_u8 v158, v141 offset:2016
	ds_load_u8 v159, v141 offset:1952
	ds_load_u8 v243, v146
	ds_load_u8 v156, v147
	ds_load_u8 v157, v141 offset:1968
	ds_load_u8 v191, v141 offset:1920
	ds_load_u8 v193, v141 offset:1856
	ds_load_u8 v167, v141 offset:1872
	ds_load_u8 v169, v141 offset:1808
	ds_load_u8 v164, v141 offset:1888
	ds_load_u8 v165, v141 offset:1824
	ds_load_u8 v161, v141 offset:1904
	ds_load_u8 v163, v141 offset:1840
	ds_load_u8 v198, v141 offset:1728
	ds_load_u8 v201, v141 offset:1792
	ds_load_u8 v172, v141 offset:1744
	ds_load_u8 v173, v141 offset:1680
	ds_load_u8 v170, v141 offset:1760
	ds_load_u8 v171, v141 offset:1696
	ds_load_u8 v166, v141 offset:1776
	ds_load_u8 v168, v141 offset:1712
	ds_load_u8 v205, v141 offset:1664
	ds_load_u8 v207, v141 offset:1600
	ds_load_u8 v178, v141 offset:1616
	ds_load_u8 v179, v141 offset:1552
	ds_load_u8 v176, v141 offset:1632
	ds_load_u8 v177, v141 offset:1568
	ds_load_u8 v174, v141 offset:1648
	ds_load_u8 v175, v141 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v143, v75
	ds_store_b8 v143, v77 offset:256
	ds_store_b8 v143, v78 offset:512
	ds_store_b8 v143, v80 offset:1024
	ds_store_b8 v143, v81 offset:1280
	ds_store_b8 v143, v82 offset:1536
	ds_store_b8 v143, v84 offset:2048
	ds_store_b8 v143, v85 offset:2304
	ds_store_b8 v143, v86 offset:2560
	ds_store_b8 v143, v88 offset:3072
	ds_store_b8 v143, v89 offset:3328
	ds_store_b8 v143, v90 offset:3584
	ds_store_b8 v143, v92 offset:4096
	ds_store_b8 v143, v93 offset:4352
	ds_store_b8 v143, v94 offset:4608
	ds_store_b8 v143, v95 offset:5120
	ds_store_b8 v143, v97 offset:5376
	ds_store_b8 v143, v98 offset:5632
	ds_store_b8 v143, v99 offset:6144
	ds_store_b8 v143, v101 offset:6400
	ds_store_b8 v143, v102 offset:6656
	ds_store_b8 v143, v103 offset:7168
	ds_store_b8 v143, v105 offset:7424
	ds_store_b8 v143, v108 offset:7680
	ds_store_b8 v144, v76
	ds_store_b8 v145, v79
	ds_store_b8 v148, v83
	ds_store_b8 v149, v87
	ds_store_b8 v150, v91
	ds_store_b8 v151, v96
	ds_store_b8 v152, v100
	ds_store_b8 v153, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v75, v142 offset:1280
	ds_load_u8 v76, v142 offset:1024
	ds_load_u8 v77, v142 offset:1920
	ds_load_u8 v78, v142 offset:1664
	ds_load_u8 v79, v142 offset:1408
	ds_load_u8 v80, v142 offset:1152
	v_lshl_or_b32 v70, v73, 16, v70
	v_perm_b32 v73, v249, v248, 0xc0c0004
	v_perm_b32 v66, v72, v66, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v142 offset:1792
	ds_load_u8 v81, v142 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v77, 16, v79
	v_perm_b32 v79, v106, v104, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v81, v76, 0xc0c0004
	ds_load_u8 v81, v142 offset:256
	ds_load_u8 v82, v142
	ds_load_u8 v83, v142 offset:896
	ds_load_u8 v84, v142 offset:640
	ds_load_u8 v85, v142 offset:384
	ds_load_u8 v86, v142 offset:128
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v142 offset:768
	ds_load_u8 v87, v142 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v75, v82, 16, v81
	v_perm_b32 v81, v84, v83, 0xc0c0004
	v_perm_b32 v82, v113, v155, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v77, v81, 16, v80
	v_perm_b32 v80, v110, v109, 0xc0c0004
	v_perm_b32 v81, v112, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[68:69], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v80, v80, 16, v79
	v_lshl_or_b32 v79, v82, 16, v81
	v_perm_b32 v81, v251, v250, 0xc0c0004
	v_perm_b32 v82, v154, v139, 0xc0c0004
	v_perm_b32 v68, v247, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v0, 16, v81
	v_perm_b32 v0, v245, v244, 0xc0c0004
	v_perm_b32 v81, v255, v253, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[79:80], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[70:71], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v73, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v73, v82, 16, v81
	v_wmma_i32_16x16x16_iu4 v[41:48], v[77:78], v[70:71], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v0, v254, v252, 0xc0c0004
	v_perm_b32 v70, v138, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[73:74], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v69, v68, 16, v0
	v_lshl_or_b32 v68, v70, 16, v66
	ds_load_u8 v0, v142 offset:3328
	ds_load_u8 v66, v142 offset:3072
	ds_load_u8 v72, v142 offset:3968
	ds_load_u8 v73, v142 offset:3712
	ds_load_u8 v74, v142 offset:3456
	ds_load_u8 v75, v142 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v142 offset:3840
	ds_load_u8 v70, v142 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v142 offset:2304
	ds_load_u8 v71, v142 offset:2048
	ds_load_u8 v76, v142 offset:2944
	ds_load_u8 v77, v142 offset:2688
	ds_load_u8 v78, v142 offset:2432
	ds_load_u8 v79, v142 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v142 offset:2816
	ds_load_u8 v80, v142 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v75, v74, 0xc0c0004
	v_perm_b32 v66, v73, v72, 0xc0c0004
	v_perm_b32 v72, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_perm_b32 v76, v234, v233, 0xc0c0004
	v_lshl_or_b32 v70, v80, 16, v70
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v229, v227, 0xc0c0004
	v_perm_b32 v66, v222, v220, 0xc0c0004
	v_lshl_or_b32 v72, v74, 16, v72
	v_perm_b32 v74, v242, v241, 0xc0c0004
	v_perm_b32 v78, v231, v230, 0xc0c0004
	v_perm_b32 v79, v219, v218, 0xc0c0004
	v_lshl_or_b32 v75, v66, 16, v0
	v_perm_b32 v0, v225, v224, 0xc0c0004
	v_perm_b32 v66, v217, v215, 0xc0c0004
	v_lshl_or_b32 v74, v76, 16, v74
	v_perm_b32 v76, v239, v237, 0xc0c0004
	v_perm_b32 v80, v213, v243, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_perm_b32 v0, v236, v235, 0xc0c0004
	v_perm_b32 v66, v228, v226, 0xc0c0004
	v_lshl_or_b32 v76, v78, 16, v76
	v_lshl_or_b32 v79, v80, 16, v79
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v66, 16, v0
	v_perm_b32 v0, v216, v240, 0xc0c0004
	v_perm_b32 v66, v238, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v0
	ds_load_u8 v0, v142 offset:5376
	ds_load_u8 v66, v142 offset:5120
	ds_load_u8 v72, v142 offset:6016
	ds_load_u8 v73, v142 offset:5760
	ds_load_u8 v74, v142 offset:5504
	ds_load_u8 v75, v142 offset:5248
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v68, v212, v223, 0xc0c0004
	v_perm_b32 v70, v221, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v142 offset:5888
	ds_load_u8 v70, v142 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v142 offset:4352
	ds_load_u8 v71, v142 offset:4096
	ds_load_u8 v76, v142 offset:4992
	ds_load_u8 v77, v142 offset:4736
	ds_load_u8 v78, v142 offset:4480
	ds_load_u8 v79, v142 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v142 offset:4864
	ds_load_u8 v80, v142 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v75, v74, 0xc0c0004
	v_perm_b32 v66, v73, v72, 0xc0c0004
	v_perm_b32 v72, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_perm_b32 v76, v187, v186, 0xc0c0004
	v_perm_b32 v78, v184, v183, 0xc0c0004
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v211, v210, 0xc0c0004
	v_lshl_or_b32 v72, v74, 16, v72
	v_perm_b32 v66, v203, v202, 0xc0c0004
	v_perm_b32 v74, v195, v194, 0xc0c0004
	v_lshl_or_b32 v70, v80, 16, v70
	v_perm_b32 v80, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v66, 16, v0
	v_lshl_or_b32 v74, v76, 16, v74
	v_perm_b32 v0, v209, v208, 0xc0c0004
	v_perm_b32 v66, v200, v199, 0xc0c0004
	v_perm_b32 v76, v192, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_lshl_or_b32 v76, v78, 16, v76
	v_perm_b32 v0, v206, v204, 0xc0c0004
	v_perm_b32 v66, v197, v196, 0xc0c0004
	v_perm_b32 v78, v189, v188, 0xc0c0004
	v_perm_b32 v68, v180, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v66, 16, v0
	v_lshl_or_b32 v78, v80, 16, v78
	v_perm_b32 v0, v201, v193, 0xc0c0004
	v_perm_b32 v66, v191, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v0
	ds_load_u8 v0, v142 offset:7424
	ds_load_u8 v66, v142 offset:7168
	ds_load_u8 v72, v142 offset:8064
	ds_load_u8 v73, v142 offset:7808
	ds_load_u8 v74, v142 offset:7552
	ds_load_u8 v75, v142 offset:7296
	v_perm_b32 v70, v205, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v142 offset:7936
	ds_load_u8 v70, v142 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v142 offset:6400
	ds_load_u8 v71, v142 offset:6144
	ds_load_u8 v76, v142 offset:7040
	ds_load_u8 v77, v142 offset:6784
	ds_load_u8 v78, v142 offset:6528
	ds_load_u8 v79, v142 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v142 offset:6912
	ds_load_u8 v80, v142 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v75, v74, 0xc0c0004
	v_perm_b32 v66, v73, v72, 0xc0c0004
	v_perm_b32 v72, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_perm_b32 v76, v173, v172, 0xc0c0004
	v_lshl_or_b32 v70, v80, 16, v70
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v169, v167, 0xc0c0004
	v_perm_b32 v66, v162, v160, 0xc0c0004
	v_lshl_or_b32 v72, v74, 16, v72
	v_perm_b32 v74, v179, v178, 0xc0c0004
	v_perm_b32 v78, v171, v170, 0xc0c0004
	v_perm_b32 v79, v163, v161, 0xc0c0004
	v_lshl_or_b32 v75, v66, 16, v0
	v_perm_b32 v0, v165, v164, 0xc0c0004
	v_perm_b32 v66, v159, v158, 0xc0c0004
	v_lshl_or_b32 v74, v76, 16, v74
	v_perm_b32 v76, v177, v176, 0xc0c0004
	v_perm_b32 v80, v157, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_perm_b32 v0, v175, v174, 0xc0c0004
	v_perm_b32 v66, v168, v166, 0xc0c0004
	v_lshl_or_b32 v76, v78, 16, v76
	v_lshl_or_b32 v79, v80, 16, v79
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v0, off, off offset:172
	scratch_load_b32 v66, off, off offset:176
	scratch_load_b32 v68, off, off offset:180
	scratch_load_b32 v69, off, off offset:184
	scratch_load_b64 v[70:71], off, off offset:196
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s6, s5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s18
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s7, s74
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s19
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v79, v9
	v_cvt_f32_i32_e32 v41, v41
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v71, v1
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v82, v12
	v_cvt_f32_i32_e32 v72, v2
	v_cvt_f32_i32_e32 v73, v3
	v_cvt_f32_i32_e32 v74, v4
	v_cvt_f32_i32_e32 v75, v5
	v_cvt_f32_i32_e32 v76, v6
	v_cvt_f32_i32_e32 v77, v7
	v_cvt_f32_i32_e32 v78, v8
	v_cvt_f32_i32_e32 v80, v10
	v_cvt_f32_i32_e32 v81, v11
	v_cvt_f32_i32_e32 v83, v13
	v_cvt_f32_i32_e32 v84, v14
	v_cvt_f32_i32_e32 v85, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v64, v64
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
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
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
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v0, s6, v0, 1
	v_add_lshl_u32 v66, s6, v66, 1
	v_add_lshl_u32 v68, s6, v68, 1
	v_add_lshl_u32 v69, s6, v69, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v70, v70, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	v_cndmask_b32_e64 v69, 0x80000000, v69, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v70, v70, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[16:19], 0 offen
	buffer_load_u16 v66, v66, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s24
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v41, v41, v68 :: v_dual_lshlrev_b32 v66, 16, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v25, v25, v66 :: v_dual_lshlrev_b32 v70, 16, v0
	.loc	1 1216 21                       ; ragged.py:1216:21
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v84, v84, v70 :: v_dual_lshlrev_b32 v69, 16, v69
	v_dual_mul_f32 v79, v79, v70 :: v_dual_mul_f32 v46, v46, v68
	v_dual_mul_f32 v85, v85, v70 :: v_dual_mul_f32 v48, v48, v68
	v_dual_mul_f32 v16, v16, v70 :: v_dual_mul_f32 v47, v47, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v64, v64, v69 :: v_dual_mul_f32 v71, v70, v71
	v_dual_mul_f32 v74, v70, v74 :: v_dual_mul_f32 v35, v68, v35
	v_dual_mul_f32 v73, v70, v73 :: v_dual_mul_f32 v36, v68, v36
	v_dual_mul_f32 v72, v70, v72 :: v_dual_mul_f32 v33, v68, v33
	v_dual_mul_f32 v78, v70, v78 :: v_dual_mul_f32 v39, v68, v39
	v_dual_mul_f32 v77, v70, v77 :: v_dual_mul_f32 v34, v68, v34
	v_dual_mul_f32 v76, v70, v76 :: v_dual_mul_f32 v37, v68, v37
	v_dual_mul_f32 v75, v70, v75 :: v_dual_mul_f32 v40, v68, v40
	v_dual_mul_f32 v83, v70, v83 :: v_dual_mul_f32 v38, v68, v38
	v_dual_mul_f32 v82, v70, v82 :: v_dual_mul_f32 v45, v68, v45
	v_dual_mul_f32 v81, v70, v81 :: v_dual_mul_f32 v44, v68, v44
	v_dual_mul_f32 v70, v70, v80 :: v_dual_mul_f32 v43, v68, v43
	v_dual_mul_f32 v30, v30, v66 :: v_dual_mul_f32 v57, v57, v69
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v62, v62, v69
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v63, v63, v69
	v_dual_mul_f32 v20, v66, v20 :: v_dual_mul_f32 v51, v69, v51
	v_dual_mul_f32 v19, v66, v19 :: v_dual_mul_f32 v42, v68, v42
	v_dual_mul_f32 v18, v66, v18 :: v_dual_mul_f32 v49, v69, v49
	v_dual_mul_f32 v17, v66, v17 :: v_dual_mul_f32 v52, v69, v52
	v_dual_mul_f32 v24, v66, v24 :: v_dual_mul_f32 v55, v69, v55
	v_dual_mul_f32 v23, v66, v23 :: v_dual_mul_f32 v50, v69, v50
	v_dual_mul_f32 v22, v66, v22 :: v_dual_mul_f32 v53, v69, v53
	v_dual_mul_f32 v21, v66, v21 :: v_dual_mul_f32 v56, v69, v56
	v_dual_mul_f32 v29, v66, v29 :: v_dual_mul_f32 v54, v69, v54
	v_dual_mul_f32 v28, v66, v28 :: v_dual_mul_f32 v61, v69, v61
	v_dual_mul_f32 v27, v66, v27 :: v_dual_mul_f32 v60, v69, v60
	v_dual_mul_f32 v26, v66, v26 :: v_dual_mul_f32 v59, v69, v59
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v12, off, off offset:192
	scratch_load_b32 v110, off, off offset:168
	scratch_load_b32 v109, off, off offset:164
	scratch_load_b32 v108, off, off offset:160
	scratch_load_b32 v107, off, off offset:156
	scratch_load_b32 v106, off, off offset:152
	scratch_load_b32 v105, off, off offset:148
	scratch_load_b32 v104, off, off offset:144
	scratch_load_b32 v103, off, off offset:140
	scratch_load_b32 v102, off, off offset:136
	scratch_load_b32 v101, off, off offset:132
	scratch_load_b32 v100, off, off offset:128
	scratch_load_b32 v94, off, off offset:124
	scratch_load_b32 v93, off, off offset:120
	scratch_load_b32 v66, off, off offset:112
	s_waitcnt vmcnt(14)
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v58, v69, v58
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v69, off, off offset:104
	scratch_load_b32 v86, off, off offset:68
	scratch_load_b32 v91, off, off offset:32
	scratch_load_b32 v80, off, off offset:44
	scratch_load_b32 v87, off, off offset:40
	scratch_load_b32 v92, off, off offset:36
	scratch_load_b32 v90, off, off offset:28
	scratch_load_b32 v89, off, off offset:24
	scratch_load_b32 v88, off, off offset:20
	scratch_load_b32 v99, off, off offset:16
	scratch_load_b32 v95, off, off
	scratch_load_b32 v98, off, off offset:12
	scratch_load_b32 v97, off, off offset:8
	scratch_load_b32 v96, off, off offset:4
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v134, v71, v0 :: v_dual_fmac_f32 v131, v74, v3
	v_dual_fmac_f32 v133, v72, v1 :: v_dual_fmac_f32 v132, v73, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v129, v76, v5 :: v_dual_fmac_f32 v130, v75, v4
	v_dual_fmac_f32 v127, v78, v7 :: v_dual_fmac_f32 v128, v77, v6
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v125, v70, v9 :: v_dual_fmac_f32 v126, v79, v8
	v_dual_fmac_f32 v123, v82, v11 :: v_dual_fmac_f32 v124, v81, v10
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v121, v84, v13 :: v_dual_fmac_f32 v122, v83, v12
	v_dual_fmac_f32 v119, v16, v15 :: v_dual_fmac_f32 v120, v85, v14
	v_fmac_f32_e32 v117, v18, v1
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v79, off, off offset:116
	scratch_load_b32 v73, off, off offset:108
	scratch_load_b32 v72, off, off offset:100
	scratch_load_b32 v70, off, off offset:96
	scratch_load_b32 v71, off, off offset:92
	scratch_load_b32 v78, off, off offset:88
	scratch_load_b32 v77, off, off offset:84
	scratch_load_b32 v76, off, off offset:80
	scratch_load_b32 v75, off, off offset:76
	scratch_load_b32 v74, off, off offset:72
	scratch_load_b32 v85, off, off offset:64
	scratch_load_b32 v83, off, off offset:56
	scratch_load_b32 v84, off, off offset:60
	scratch_load_b32 v82, off, off offset:52
	scratch_load_b32 v81, off, off offset:48
	v_dual_fmac_f32 v118, v17, v0 :: v_dual_fmac_f32 v115, v20, v3
	s_waitcnt vmcnt(39)
	v_dual_fmac_f32 v116, v19, v2 :: v_dual_fmac_f32 v107, v25, v8
	v_dual_fmac_f32 v114, v21, v4 :: v_dual_fmac_f32 v109, v23, v6
	s_waitcnt vmcnt(37)
	v_dual_fmac_f32 v110, v22, v5 :: v_dual_fmac_f32 v105, v27, v10
	s_waitcnt vmcnt(35)
	v_dual_fmac_f32 v108, v24, v7 :: v_dual_fmac_f32 v103, v29, v12
	s_waitcnt vmcnt(33)
	v_dual_fmac_f32 v106, v26, v9 :: v_dual_fmac_f32 v101, v31, v14
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v104, v28, v11 :: v_dual_fmac_f32 v93, v34, v1
	v_fmac_f32_e32 v102, v30, v13
	v_fmac_f32_e32 v100, v32, v15
	v_fmac_f32_e32 v94, v33, v0
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v66, v36, v3 :: v_dual_fmac_f32 v69, v38, v5
	s_waitcnt vmcnt(27)
	v_fmac_f32_e32 v86, v47, v14
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v91, v55, v6 :: v_dual_fmac_f32 v80, v53, v4
	s_waitcnt vmcnt(24)
	v_fmac_f32_e32 v87, v54, v5
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v92, v58, v9
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v90, v56, v7 :: v_dual_fmac_f32 v89, v57, v8
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v88, v59, v10 :: v_dual_fmac_f32 v99, v60, v11
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v95, v61, v12 :: v_dual_fmac_f32 v98, v62, v13
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v97, v63, v14 :: v_dual_fmac_f32 v96, v64, v15
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v79, v35, v2
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v73, v37, v4 :: v_dual_fmac_f32 v72, v39, v6
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v70, v40, v7 :: v_dual_fmac_f32 v71, v41, v8
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v78, v42, v9 :: v_dual_fmac_f32 v77, v43, v10
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v76, v44, v11 :: v_dual_fmac_f32 v75, v45, v12
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v74, v46, v13 :: v_dual_fmac_f32 v85, v48, v15
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v83, v49, v0 :: v_dual_fmac_f32 v84, v51, v2
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v82, v50, v1 :: v_dual_fmac_f32 v81, v52, v3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v111, off, off offset:204
	scratch_load_b32 v112, off, off offset:208
	v_mov_b32_e32 v5, v65
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v6, 7, v111
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v16, |v83|, |v83|
	v_max3_f32 v11, |v128|, |v127|, |v126|
	v_max_f32_e64 v12, |v93|, |v93|
	v_max_f32_e64 v15, |v94|, |v94|
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v6
	v_or_b32_e32 v2, 60, v6
	v_or_b32_e32 v4, 58, v6
	s_mov_b32 s26, 0x76543210
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v2, s0, s66, v2
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	v_add_co_u32 v9, s1, s66, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v6
	v_or_b32_e32 v4, 52, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s6
	v_add_co_u32 v2, s6, s66, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[9:10]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 50, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s10, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s10
	v_add_co_u32 v9, s10, s66, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v6
	v_or_b32_e32 v3, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s14, s66, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s14
	v_add_co_u32 v2, s14, s66, v3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[9:10]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 42, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s18, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s18
	v_add_co_u32 v9, s18, s66, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 40, v6
	v_or_b32_e32 v3, 38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s22, s66, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s22
	v_add_co_u32 v13, s22, s66, v3
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v133|, |v133|
	v_max_f32_e64 v3, |v134|, |v134|
.Ltmp8:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[9:10]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[0:1]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[0:1]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v3, v2
	v_max3_f32 v1, |v131|, |v130|, |v129|
	v_max3_f32 v2, |v125|, |v124|, |v123|
	v_max3_f32 v3, |v122|, |v121|, |v120|
	v_max_f32_e64 v4, |v117|, |v117|
	v_max_f32_e64 v9, |v118|, |v118|
	v_max3_f32 v0, v0, |v132|, v1
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 36, v6
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v2, v3, |v119|
	v_max3_f32 v3, |v115|, |v114|, |v110|
	v_max_f32_e32 v2, v9, v4
	v_max3_f32 v4, |v106|, |v105|, |v104|
	v_max3_f32 v9, |v103|, |v102|, |v101|
	v_max3_f32 v0, v0, v11, v1
	v_max3_f32 v1, |v109|, |v108|, |v107|
	v_max3_f32 v2, v2, |v116|, v3
	v_max3_f32 v11, |v78|, |v77|, |v76|
	v_max3_f32 v3, v4, v9, |v100|
	v_max3_f32 v9, |v66|, |v73|, |v69|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v19, 8, v111
	s_barrier
.Ltmp13:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[13:14]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v2, v1, v3
	v_max_f32_e32 v4, v15, v12
	v_max3_f32 v12, |v75|, |v74|, |v86|
	v_max_f32_e64 v15, |v82|, |v82|
	v_max3_f32 v2, |v72|, |v70|, |v71|
.Ltmp15:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v7, v111, 7, 1
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v4, |v79|, v9
	v_max3_f32 v4, v11, v12, |v85|
	v_max_f32_e32 v9, v16, v15
	v_max3_f32 v11, |v81|, |v80|, |v87|
	v_max3_f32 v12, |v92|, |v88|, |v99|
	v_max3_f32 v15, |v95|, |v98|, |v97|
	v_max3_f32 v2, v3, v2, v4
	v_max3_f32 v3, |v91|, |v90|, |v89|
	v_max3_f32 v4, v9, |v84|, v11
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v16, v0, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v12, v15, |v96|
.Ltmp19:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v8, 0x80, v111
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v1, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v2, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v16, v16
	v_max3_f32 v3, v4, v3, v9
.Ltmp22:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s27, s66, v10
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v12, v12
	v_dual_max_f32 v12, v17, v17 :: v_dual_lshlrev_b32 v21, 1, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v9, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v11
	v_dual_max_f32 v2, v2, v12 :: v_dual_and_b32 v11, 4, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v9, v9, v9 :: v_dual_lshlrev_b32 v12, 4, v111
	v_dual_max_f32 v1, v1, v10 :: v_dual_and_b32 v4, 3, v111
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v10, 0x60, v111
	v_lshrrev_b32_e32 v22, 3, v8
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v17, v4, 9, 0
	v_lshlrev_b32_e32 v18, 5, v4
	v_lshl_add_u32 v23, v11, 6, 0
.Ltmp29:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s67, 0, s27
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v17, v11, 2, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v20, 0x680, v12, v18
	v_xor_b32_e32 v18, v18, v10
.Ltmp31:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[15:16]
.Ltmp32:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v17, v19, 4, v17
	v_xor_b32_e32 v20, v20, v10
.Ltmp33:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 30, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v7, 0x2010, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v9, v17, v21, v18
	v_add3_u32 v18, v23, v22, v20
.Ltmp35:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v17, 34, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v23.h, 0
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v9, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v18
.Ltmp37:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v17, s26, s66, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v18, null, s67, 0, s26
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[13:14]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s31, s66, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s67, 0, s31
	v_add_co_u32 v15, s31, s66, v15
	v_add_co_ci_u32_e64 v16, null, s67, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[13:14]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 28, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[15:16]
.Ltmp38:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v13, v1
	v_dual_mov_b32 v15, v2 :: v_dual_max_f32 v0, v0, v0
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v16, v3, v3 :: v_dual_max_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v13
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[17:18]
.Ltmp44:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v0, v9
	v_max_f32_e32 v15, v15, v15
.Ltmp45:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s36, s66, v14
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v18, 24, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v14, v9
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v1, v13 :: v_dual_max_f32 v2, v2, v15
.Ltmp48:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp52:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[0:1]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v14, v14 :: v_dual_max_f32 v3, v16, v3
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 26, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v12, 0x2f0, v12
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v9, v0
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v16, v3
	v_mov_b32_e32 v15, v2
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s38, s66, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v17, v17
	v_max_f32_e32 v1, v13, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v13, v16, v16
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v0
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v13, v3 :: v_dual_max_f32 v20, v16, v16
.Ltmp64:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s39, s66, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v15, v15 :: v_dual_max_f32 v0, v0, v20
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v17, v1
	v_lshrrev_b32_e32 v20, 1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v13, v13
	v_dual_max_f32 v2, v2, v9 :: v_dual_lshlrev_b32 v13, 4, v4
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 3, v19
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v19, 0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v9, v2
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v18
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s67, 0, s38
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v17, v17
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_add3_u32 v18, v19, v20, v4
.Ltmp74:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v19, 22, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v1, v1, v21
.Ltmp76:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[14:15]
	v_cmp_le_i64_e64 s40, s[64:65], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[16:17]
.Ltmp77:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v9 :: v_dual_lshlrev_b32 v9, 5, v11
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v11, 0, v13
.Ltmp79:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v8, 3, v8
	v_lshlrev_b32_e32 v10, 5, v10
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v18, v[0:3]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v4, v11, v9, v4
	s_barrier
.Ltmp81:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 18, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v18, s39, s66, v19
.Ltmp82:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[0:3], v4
.Ltmp83:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v19, null, s67, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[14:15]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s44, s66, v4
	v_add_co_ci_u32_e64 v15, null, s67, 0, s44
	v_add_co_u32 v16, s44, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s67, 0, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[14:15]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v14, s48, s66, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[16:17]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v0, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[16:17]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s67, 0, s48
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 12, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v9, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 14, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[18:19]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s48, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v17, null, s67, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v11
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v18, s48, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 10, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v19, null, s67, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[16:17]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[14:15]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v16, -v11, v0, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s54, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 8, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[18:19]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_fmac_f32_e32 v0, v16, v0
	v_div_scale_f32 v18, vcc_lo, v9, 0x40e00000, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s67, 0, s54
	v_add_co_u32 v16, s54, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s67, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v4, v18, v0 :: v_dual_max_f32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[14:15]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v20, v19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[14:15]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[16:17]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v14, -v11, v4, v18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[16:17]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v16, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v14, v0
	v_div_scale_f32 v17, s60, v2, 0x40e00000, v2
	v_max_f32_e32 v14, 0x2b8cbccc, v3
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v16
	v_fma_f32 v1, -v19, v20, 1.0
	v_fma_f32 v11, -v11, v4, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v14
	v_rcp_f32_e32 v18, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v1, v20
	v_div_fmas_f32 v4, v11, v0, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s58, s66, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v11, v17, v20
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v15, -v3, v18, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	v_xor_b32_e32 v7, v7, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v18, v15, v18
	v_div_fixup_f32 v4, v4, 0x40e00000, v9
	v_fma_f32 v9, -v19, v11, v17
	v_div_scale_f32 v15, s61, v16, 0x40e00000, v16
	v_fma_f32 v25, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v11, v9, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v9.l, v4.h
	v_mov_b16_e32 v9.h, v23.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v24, v15, v18
	v_fmac_f32_e32 v22, v25, v22
	v_fma_f32 v0, -v19, v11, v17
	v_div_scale_f32 v17, s62, v14, 0x40e00000, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v9, -v3, v24, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v20, v11
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v20.h, v23.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v24, v9, v18
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v4, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v3, v24, v15
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v32, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v23.l, v0.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v18, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v18, null, v32, v32, v134
	v_div_scale_f32 v24, null, v32, v32, v132
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v19, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v26, v24
	v_div_scale_f32 v31, null, v32, v32, v130
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v2.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_mul_f32_e32 v11, v17, v22
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v27, null, v32, v32, v131
	v_div_scale_f32 v33, null, v32, v32, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v21, v11, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v15, -v18, v19, 1.0
	v_div_scale_f32 v30, s61, v132, v32, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v33
	v_div_scale_f32 v38, null, v32, v32, v124
	v_fmac_f32_e32 v19, v15, v19
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v11, v3, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s60
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v21, v11, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v17, null, v32, v32, v133
	v_div_scale_f32 v29, s60, v133, v32, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v22, v11
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v11, 1, v23
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v22, vcc_lo, v134, v32, v134
	v_rcp_f32_e32 v21, v17
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v16, v1, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v1, v0, v11, 0x7fff
	v_and_b32_e32 v0, 1, v20
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_mul_f32_e32 v20, v22, v19
	v_div_scale_f32 v43, null, v32, v32, v119
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v23.l, v16.h
	v_add3_u32 v11, v2, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v25, -v18, v20, v22
	v_fma_f32 v15, -v17, v21, 1.0
	v_rcp_f32_e32 v44, v43
	v_div_scale_f32 v40, null, v32, v32, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v20, v25, v19 :: v_dual_fmac_f32 v21, v15, v21
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v0, 0xffff0000, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v42, null, v32, v32, v120
	v_fma_f32 v18, -v18, v20, v22
	v_div_scale_f32 v41, null, v32, v32, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v49, null, v0, v0, v110
	v_div_fmas_f32 v18, v18, v19, v20
	v_rcp_f32_e32 v20, v31
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v51, null, v0, v0, v107
	v_div_scale_f32 v59, null, v0, v0, v100
	v_div_scale_f32 v57, null, v0, v0, v101
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v28, 0xffff0000, v1
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 2, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v31, v20, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v23, 1, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v60, null, v28, v28, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v20, v35, v20 :: v_dual_mul_f32 v25, v29, v21
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v16, v23, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v23, v27
	v_fma_f32 v16, -v24, v26, 1.0
	v_div_scale_f32 v35, null, v32, v32, v128
	v_fma_f32 v22, -v17, v25, v29
	v_div_scale_f32 v61, null, v28, v28, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v16, v26
	v_div_scale_f32 v68, null, v28, v28, v78
	v_fmac_f32_e32 v25, v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v27, v23, 1.0
	v_mul_f32_e32 v19, v30, v26
	v_div_scale_f32 v22, s62, v131, v32, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v25, v29
	v_div_fmas_f32 v17, v17, v21, v25
	v_fma_f32 v25, -v33, v34, 1.0
	v_fmac_f32_e32 v23, v16, v23
	v_div_fixup_f32 v16, v18, v32, v134
	v_fma_f32 v18, -v24, v19, v30
	v_div_scale_f32 v21, s60, v130, v32, v130
	v_fmac_f32_e32 v34, v25, v34
	v_div_scale_f32 v25, s63, v129, v32, v129
	v_mul_f32_e32 v29, v22, v23
	v_fmac_f32_e32 v19, v18, v26
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v17, v17, v32, v133
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v18, -v27, v29, v22
	v_fma_f32 v24, -v24, v19, v30
	v_mul_f32_e32 v30, v21, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v29, v18, v23
	v_div_fmas_f32 v18, v24, v26, v19
	v_rcp_f32_e32 v24, v35
	v_mul_f32_e32 v26, v25, v34
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v19, -v27, v29, v22
	v_fma_f32 v22, -v31, v30, v21
	v_div_scale_f32 v27, null, v32, v32, v127
	v_div_fixup_f32 v18, v18, v32, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v19, v23, v29
	v_fmac_f32_e32 v30, v22, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v22, v27
	v_fma_f32 v23, -v33, v26, v25
	v_fma_f32 v29, -v35, v24, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v15, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v21, -v31, v30, v21
	v_div_scale_f32 v31, null, v32, v32, v126
	v_fmac_f32_e32 v26, v23, v34
	v_fmac_f32_e32 v24, v29, v24
	v_div_scale_f32 v23, s61, v128, v32, v128
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v29, -v27, v22, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v19, v19, v32, v131
	v_div_fmas_f32 v20, v21, v20, v30
	v_fma_f32 v21, -v33, v26, v25
	v_dual_mul_f32 v25, v23, v24 :: v_dual_fmac_f32 v22, v29, v22
	v_rcp_f32_e32 v29, v31
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v30, s60, v127, v32, v127
	v_div_scale_f32 v33, null, v32, v32, v125
	v_div_fmas_f32 v21, v21, v34, v26
	v_fma_f32 v26, -v35, v25, v23
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v37, v33
	v_fma_f32 v36, -v31, v29, 1.0
	v_mul_f32_e32 v34, v30, v22
	v_fmac_f32_e32 v25, v26, v24
	v_div_fixup_f32 v20, v20, v32, v130
	v_div_fixup_f32 v21, v21, v32, v129
	v_fmac_f32_e32 v29, v36, v29
	v_fma_f32 v26, -v27, v34, v30
	v_div_scale_f32 v36, s62, v126, v32, v126
	v_fma_f32 v23, -v35, v25, v23
	v_rcp_f32_e32 v35, v38
	v_fma_f32 v39, -v33, v37, 1.0
	v_fmac_f32_e32 v34, v26, v22
	v_mul_f32_e32 v26, v36, v29
	v_div_fmas_f32 v23, v23, v24, v25
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v37, v39, v37
	v_fma_f32 v24, -v27, v34, v30
	v_fma_f32 v25, -v31, v26, v36
	v_div_scale_f32 v39, s63, v125, v32, v125
	v_fma_f32 v30, -v38, v35, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v24, v24, v22, v34
	v_fmac_f32_e32 v26, v25, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v27, v39, v37
	v_div_fixup_f32 v22, v23, v32, v128
	v_fmac_f32_e32 v35, v30, v35
	v_div_scale_f32 v30, s60, v124, v32, v124
	v_div_fixup_f32 v23, v24, v32, v127
	v_fma_f32 v24, -v31, v26, v36
	v_rcp_f32_e32 v34, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v31, v30, v35
	v_fma_f32 v25, -v33, v27, v39
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v36, null, v32, v32, v122
	v_div_fmas_f32 v24, v24, v29, v26
	v_fma_f32 v29, -v38, v31, v30
	v_fmac_f32_e32 v27, v25, v37
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v25, -v40, v34, 1.0
	v_div_fixup_f32 v24, v24, v32, v126
	v_fmac_f32_e32 v31, v29, v35
	v_fma_f32 v26, -v33, v27, v39
	v_rcp_f32_e32 v33, v36
	v_fmac_f32_e32 v34, v25, v34
	v_div_scale_f32 v39, s61, v123, v32, v123
	v_fma_f32 v30, -v38, v31, v30
	v_div_fmas_f32 v25, v26, v37, v27
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v29, v41
	v_div_scale_f32 v38, s62, v122, v32, v122
	v_div_fmas_f32 v30, v30, v35, v31
	v_rcp_f32_e32 v35, v42
	v_fma_f32 v26, -v36, v33, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v25, v25, v32, v125
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v26, v33
	v_fma_f32 v26, -v41, v29, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v45, -v42, v35, 1.0
	v_mul_f32_e32 v31, v38, v33
	v_fmac_f32_e32 v29, v26, v29
	v_div_fixup_f32 v26, v30, v32, v124
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v35, v45, v35
	v_mul_f32_e32 v27, v39, v34
	v_div_scale_f32 v45, null, v0, v0, v118
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v37, -v40, v27, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v26, v26
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v27, v37, v34
	v_div_scale_f32 v37, s60, v121, v32, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v40, v27, v39
	v_fma_f32 v39, -v36, v31, v38
	v_mul_f32_e32 v40, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v30, v34, v27
	v_fmac_f32_e32 v31, v39, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v41, v40, v37
	v_div_scale_f32 v34, s61, v120, v32, v120
	v_fma_f32 v39, -v43, v44, 1.0
	v_fma_f32 v36, -v36, v31, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v30, v29
	v_mul_f32_e32 v38, v34, v35
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v44, v39, v44
	v_div_scale_f32 v39, s63, v119, v32, v119
	v_div_fmas_f32 v30, v36, v33, v31
	v_fma_f32 v31, -v41, v40, v37
	v_fma_f32 v33, -v42, v38, v34
	v_rcp_f32_e32 v36, v45
	v_mul_f32_e32 v37, v39, v44
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v41, null, v0, v0, v117
	v_div_fmas_f32 v31, v31, v29, v40
	v_fmac_f32_e32 v38, v33, v35
	v_fma_f32 v40, -v43, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v33, v41
	v_div_fixup_f32 v29, v30, v32, v122
	v_fma_f32 v46, -v45, v36, 1.0
	v_div_fixup_f32 v30, v31, v32, v121
	v_fma_f32 v31, -v42, v38, v34
	v_fmac_f32_e32 v37, v40, v44
	v_div_scale_f32 v42, null, v0, v0, v116
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v34, s60, v118, v0, v118
	v_div_fmas_f32 v31, v31, v35, v38
	v_fma_f32 v35, -v43, v37, v39
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v40, -v41, v33, 1.0
	v_mul_f32_e32 v38, v34, v36
	v_div_scale_f32 v43, null, v0, v0, v115
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s61, v117, v0, v117
	v_div_fmas_f32 v35, v35, v44, v37
	v_fma_f32 v37, -v45, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v39, 1.0
	v_rcp_f32_e32 v47, v43
	v_mul_f32_e32 v44, v40, v33
	v_div_fixup_f32 v27, v27, v32, v123
	v_dual_fmac_f32 v38, v37, v36 :: v_dual_fmac_f32 v39, v46, v39
	v_div_scale_f32 v46, null, v0, v0, v114
	v_div_fixup_f32 v31, v31, v32, v120
	v_div_fixup_f32 v32, v35, v32, v119
	v_fma_f32 v35, -v41, v44, v40
	v_div_scale_f32 v37, s62, v116, v0, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v43, v47, 1.0
	v_fma_f32 v34, -v45, v38, v34
	v_rcp_f32_e32 v45, v46
	v_dual_fmac_f32 v44, v35, v33 :: v_dual_mul_f32 v35, v37, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, s63, v115, v0, v115
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v34, v34, v36, v38
	v_fma_f32 v36, -v41, v44, v40
	v_fma_f32 v38, -v42, v35, v37
	v_mul_f32_e32 v40, v48, v47
	v_fma_f32 v41, -v46, v45, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v33, v44
	v_fmac_f32_e32 v35, v38, v39
	v_rcp_f32_e32 v38, v49
	v_fma_f32 v44, -v43, v40, v48
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v41, s60, v114, v0, v114
	v_div_fixup_f32 v33, v34, v0, v118
	v_div_fixup_f32 v34, v36, v0, v117
	v_fma_f32 v36, -v42, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v40, v44, v47 :: v_dual_mul_f32 v37, v41, v45
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v42, -v49, v38, 1.0
	v_div_scale_f32 v44, null, v0, v0, v109
	v_div_fmas_f32 v35, v36, v39, v35
	v_fma_f32 v36, -v43, v40, v48
	v_fma_f32 v39, -v46, v37, v41
	v_div_scale_f32 v48, null, v0, v0, v108
	v_fmac_f32_e32 v38, v42, v38
	v_rcp_f32_e32 v42, v44
	v_div_scale_f32 v43, s61, v110, v0, v110
	v_fmac_f32_e32 v37, v39, v45
	v_rcp_f32_e32 v39, v48
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v35, v35, v0, v116
	v_div_fmas_f32 v36, v36, v47, v40
	v_mul_f32_e32 v40, v43, v38
	v_fma_f32 v41, -v46, v37, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v44, v42, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v36, v36, v0, v115
	v_fma_f32 v46, -v49, v40, v43
	v_fma_f32 v50, -v48, v39, 1.0
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, s62, v109, v0, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v46, v38
	v_fmac_f32_e32 v39, v50, v39
	v_div_scale_f32 v46, s60, v108, v0, v108
	v_div_scale_f32 v50, null, v0, v0, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v49, v40, v43
	v_mul_f32_e32 v52, v46, v39
	v_div_fmas_f32 v37, v41, v45, v37
	v_mul_f32_e32 v41, v47, v42
	v_rcp_f32_e32 v45, v51
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v53, v50
	v_div_fmas_f32 v38, v43, v38, v40
	v_fma_f32 v49, -v44, v41, v47
	v_fma_f32 v40, -v48, v52, v46
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v43, s61, v107, v0, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v41, v49, v42
	v_fma_f32 v54, -v51, v45, 1.0
	v_fmac_f32_e32 v52, v40, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v50, v53, 1.0
	v_div_fixup_f32 v37, v37, v0, v114
	v_fma_f32 v44, -v44, v41, v47
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v54, null, v0, v0, v105
	v_fmac_f32_e32 v53, v49, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v44, v42, v41
	v_div_scale_f32 v49, s63, v106, v0, v106
	v_rcp_f32_e32 v44, v54
	v_fma_f32 v41, -v48, v52, v46
	v_div_scale_f32 v48, null, v0, v0, v104
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v46, v49, v53
	v_div_fmas_f32 v41, v41, v39, v52
	v_rcp_f32_e32 v52, v48
	v_div_fixup_f32 v39, v40, v0, v109
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v55, -v54, v44, 1.0
	v_div_fixup_f32 v40, v41, v0, v108
	v_div_fixup_f32 v38, v38, v0, v110
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v44, v55, v44
	v_div_scale_f32 v55, null, v0, v0, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v56, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v55, v56, 1.0
	v_dual_fmac_f32 v56, v58, v56 :: v_dual_mul_f32 v47, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v51, v47, v43
	v_fmac_f32_e32 v47, v42, v45
	v_fma_f32 v42, -v50, v46, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v51, v47, v43
	v_fmac_f32_e32 v46, v42, v53
	v_div_scale_f32 v43, s60, v105, v0, v105
	v_fma_f32 v42, -v48, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v41, v41, v45, v47
	v_fma_f32 v45, -v50, v46, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v43, v44
	v_div_scale_f32 v50, s61, v104, v0, v104
	v_fmac_f32_e32 v52, v42, v52
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v51, null, v0, v0, v103
	v_div_fmas_f32 v42, v45, v53, v46
	v_fma_f32 v45, -v54, v47, v43
	v_mul_f32_e32 v46, v50, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v51
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v58, s63, v102, v0, v102
	v_fmac_f32_e32 v47, v45, v44
	v_fma_f32 v45, -v48, v46, v50
	v_div_fixup_f32 v41, v41, v0, v107
	v_div_fixup_f32 v42, v42, v0, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v54, v47, v43
	v_fmac_f32_e32 v46, v45, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v51, v49, 1.0
	v_rcp_f32_e32 v54, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v43, v43, v44, v47
	v_fma_f32 v44, -v48, v46, v50
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v48, v58, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v43, v43, v0, v105
	v_div_fmas_f32 v44, v44, v52, v46
	v_rcp_f32_e32 v52, v59
	v_fma_f32 v46, -v55, v48, v58
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s62, v103, v0, v103
	v_fma_f32 v50, -v57, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v48, v46, v56
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v44, v44, v0, v104
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v46, -v59, v52, 1.0
	v_dual_mul_f32 v45, v53, v49 :: v_dual_fmac_f32 v54, v50, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v52, v46, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v51, v45, v53
	v_fmac_f32_e32 v45, v47, v49
	v_div_scale_f32 v47, s60, v101, v0, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v51, v45, v53
	v_mul_f32_e32 v51, v47, v54
	v_div_scale_f32 v53, null, v28, v28, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v45, v50, v49, v45
	v_fma_f32 v49, -v55, v48, v58
	v_fma_f32 v50, -v57, v51, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v53
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v58, s61, v100, v0, v100
	v_div_fmas_f32 v46, v49, v56, v48
	v_fmac_f32_e32 v51, v50, v54
	v_rcp_f32_e32 v48, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v49, v58, v52
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v45, v45, v0, v103
	v_fma_f32 v50, -v53, v55, 1.0
	v_fma_f32 v47, -v57, v51, v47
	v_fma_f32 v56, -v59, v49, v58
	v_div_fixup_f32 v46, v46, v0, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v55, v50, v55
	v_div_scale_f32 v50, s62, v94, v28, v94
	v_fma_f32 v57, -v60, v48, 1.0
	v_div_fmas_f32 v47, v47, v54, v51
	v_rcp_f32_e32 v54, v61
	v_fmac_f32_e32 v49, v56, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v51, v50, v55 :: v_dual_fmac_f32 v48, v57, v48
	v_div_scale_f32 v56, s60, v93, v28, v93
	v_div_scale_f32 v57, null, v28, v28, v66
	v_fma_f32 v58, -v59, v49, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v53, v51, v50
	v_mul_f32_e32 v62, v56, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v63, v57
	v_fma_f32 v64, -v61, v54, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v51, v59, v55
	v_div_fmas_f32 v49, v58, v52, v49
	v_fma_f32 v52, -v60, v62, v56
	v_fmac_f32_e32 v54, v64, v54
	v_div_scale_f32 v58, s61, v79, v28, v79
	v_div_fixup_f32 v47, v47, v0, v101
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v57, v63, 1.0
	v_div_fixup_f32 v0, v49, v0, v100
	v_fma_f32 v49, -v53, v51, v50
	v_fmac_f32_e32 v62, v52, v48
	v_mul_f32_e32 v50, v58, v54
	v_div_scale_f32 v53, null, v28, v28, v73
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v63, v59, v63
	v_div_scale_f32 v52, s63, v66, v28, v66
	v_div_fmas_f32 v49, v49, v55, v51
	v_fma_f32 v51, -v60, v62, v56
	v_fma_f32 v55, -v61, v50, v58
	v_rcp_f32_e32 v56, v53
	v_div_scale_f32 v60, null, v28, v28, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v59, v52, v63 :: v_dual_fmac_f32 v50, v55, v54
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v55, v60
	v_div_fmas_f32 v51, v51, v48, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v62, -v57, v59, v52
	v_div_fixup_f32 v48, v49, v28, v94
	v_fma_f32 v64, -v53, v56, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v49, v51, v28, v93
	v_fma_f32 v51, -v61, v50, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v59, v62, v63 :: v_dual_fmac_f32 v56, v64, v56
	v_div_scale_f32 v58, s60, v73, v28, v73
	v_fma_f32 v61, -v60, v55, 1.0
	v_div_scale_f32 v62, null, v28, v28, v72
	v_div_fmas_f32 v50, v51, v54, v50
	v_fma_f32 v51, -v57, v59, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v52, v58, v56 :: v_dual_fmac_f32 v55, v61, v55
	v_rcp_f32_e32 v54, v62
	v_div_scale_f32 v57, s61, v69, v28, v69
	v_div_scale_f32 v61, null, v28, v28, v70
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v50, v50, v28, v79
	v_div_fmas_f32 v51, v51, v63, v59
	v_fma_f32 v59, -v53, v52, v58
	v_mul_f32_e32 v63, v57, v55
	v_rcp_f32_e32 v65, v61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v64, -v62, v54, 1.0
	v_div_fixup_f32 v51, v51, v28, v66
	v_fmac_f32_e32 v52, v59, v56
	v_fma_f32 v59, -v60, v63, v57
	v_div_scale_f32 v66, null, v28, v28, v71
	v_fmac_f32_e32 v54, v64, v54
	v_div_scale_f32 v64, s62, v72, v28, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v61, v65, 1.0
	v_fmac_f32_e32 v63, v59, v55
	v_rcp_f32_e32 v59, v66
	v_fma_f32 v53, -v53, v52, v58
	v_dual_mul_f32 v58, v64, v54 :: v_dual_fmac_f32 v65, v67, v65
	v_div_scale_f32 v67, s63, v70, v28, v70
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v52, v53, v56, v52
	v_fma_f32 v53, -v60, v63, v57
	v_fma_f32 v56, -v62, v58, v64
	v_mul_f32_e32 v57, v67, v65
	v_fma_f32 v60, -v66, v59, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v52, v52, v28, v73
	v_div_fmas_f32 v53, v53, v55, v63
	v_fmac_f32_e32 v58, v56, v54
	v_rcp_f32_e32 v56, v68
	v_fma_f32 v55, -v61, v57, v67
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, s60, v71, v28, v71
	v_fma_f32 v62, -v62, v58, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v55, v65
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v63, v60, v59
	v_div_fixup_f32 v53, v53, v28, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v68, v56, 1.0
	v_div_fmas_f32 v54, v62, v54, v58
	v_fma_f32 v58, -v61, v57, v67
	v_fma_f32 v61, -v66, v63, v60
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v56, v55, v56
	v_div_scale_f32 v67, s61, v78, v28, v78
	v_div_fmas_f32 v55, v58, v65, v57
	v_fmac_f32_e32 v63, v61, v59
	v_div_scale_f32 v64, null, v28, v28, v77
	v_div_scale_f32 v69, null, v28, v28, v76
	v_mul_f32_e32 v58, v67, v56
	v_div_fixup_f32 v55, v55, v28, v70
	v_fma_f32 v60, -v66, v63, v60
	v_div_scale_f32 v70, null, v28, v28, v75
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v62, v64
	v_rcp_f32_e32 v57, v69
	v_fma_f32 v65, -v68, v58, v67
	v_div_fmas_f32 v59, v60, v59, v63
	v_rcp_f32_e32 v63, v70
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v54, v54, v28, v72
	v_fmac_f32_e32 v58, v65, v56
	v_div_scale_f32 v65, s60, v76, v28, v76
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v61, -v64, v62, 1.0
	v_fma_f32 v66, -v69, v57, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v67, -v68, v58, v67
	v_div_fixup_f32 v59, v59, v28, v71
	v_fma_f32 v73, -v70, v63, 1.0
	v_fmac_f32_e32 v62, v61, v62
	v_div_scale_f32 v61, s62, v77, v28, v77
	v_div_fmas_f32 v56, v67, v56, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v63, v73, v63
	v_div_scale_f32 v67, s61, v75, v28, v75
	v_fmac_f32_e32 v57, v66, v57
	v_div_scale_f32 v66, null, v28, v28, v74
	v_mul_f32_e32 v60, v61, v62
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, v65, v57
	v_rcp_f32_e32 v72, v66
	v_div_scale_f32 v73, null, v28, v28, v85
	v_fma_f32 v68, -v64, v60, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v69, v71, v65
	v_div_fixup_f32 v56, v56, v28, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v60, v68, v62 :: v_dual_fmac_f32 v71, v58, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v66, v72, 1.0
	v_mul_f32_e32 v58, v67, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v64, v60, v61
	v_div_scale_f32 v64, s63, v74, v28, v74
	v_fmac_f32_e32 v72, v68, v72
	v_div_scale_f32 v68, null, v28, v28, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v60, v61, v62, v60
	v_fma_f32 v61, -v69, v71, v65
	v_fma_f32 v62, -v70, v58, v67
	v_rcp_f32_e32 v65, v68
	v_mul_f32_e32 v69, v64, v72
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v60, v60, v28, v77
	v_div_fmas_f32 v57, v61, v57, v71
	v_fmac_f32_e32 v58, v62, v63
	v_rcp_f32_e32 v61, v73
	v_fma_f32 v62, -v66, v69, v64
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v57, v57, v28, v76
	v_fma_f32 v71, -v68, v65, 1.0
	v_fma_f32 v67, -v70, v58, v67
	v_fmac_f32_e32 v69, v62, v72
	v_div_scale_f32 v62, s60, v86, v28, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v65, v71, v65
	v_fma_f32 v70, -v73, v61, 1.0
	v_div_fmas_f32 v58, v67, v63, v58
	v_fma_f32 v63, -v66, v69, v64
	v_div_scale_f32 v66, null, v15, v15, v83
	v_mul_f32_e32 v64, v62, v65
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v61, v70, v61
	v_div_fmas_f32 v63, v63, v72, v69
	v_rcp_f32_e32 v69, v66
	v_fma_f32 v70, -v68, v64, v62
	v_div_scale_f32 v67, s61, v85, v28, v85
	v_div_scale_f32 v72, null, v15, v15, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v70, v65
	v_mul_f32_e32 v71, v67, v61
	v_div_fixup_f32 v58, v58, v28, v75
	v_div_fixup_f32 v63, v63, v28, v74
	v_rcp_f32_e32 v74, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v66, v69, 1.0
	v_fma_f32 v62, -v68, v64, v62
	v_div_scale_f32 v68, null, v15, v15, v84
	v_fma_f32 v70, -v73, v71, v67
	v_fmac_f32_e32 v69, v75, v69
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v75, v68
	v_div_fmas_f32 v62, v62, v65, v64
	v_fmac_f32_e32 v71, v70, v61
	v_div_scale_f32 v70, s62, v83, v15, v83
	v_fma_f32 v76, -v72, v74, 1.0
	v_div_scale_f32 v77, null, v15, v15, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v73, v71, v67
	v_dual_mul_f32 v65, v70, v69 :: v_dual_fmac_f32 v74, v76, v74
	v_div_scale_f32 v67, s60, v82, v15, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v68, v75, 1.0
	v_fma_f32 v76, -v66, v65, v70
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v67, v74
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s63, v84, v15, v84
	v_div_fmas_f32 v61, v64, v61, v71
	v_fmac_f32_e32 v65, v76, v69
	v_fma_f32 v64, -v72, v78, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v71, v73, v75
	v_div_fixup_f32 v62, v62, v28, v86
	v_div_fixup_f32 v28, v61, v28, v85
	v_fma_f32 v61, -v66, v65, v70
	v_fmac_f32_e32 v78, v64, v74
	v_fma_f32 v64, -v68, v71, v73
	v_div_scale_f32 v70, null, v15, v15, v80
	v_fma_f32 v66, -v77, v79, 1.0
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v64, v75
	v_rcp_f32_e32 v64, v70
	v_div_fmas_f32 v61, v61, v69, v65
	v_fmac_f32_e32 v79, v66, v79
	v_div_scale_f32 v66, s61, v81, v15, v81
	v_fma_f32 v65, -v72, v78, v67
	v_fma_f32 v67, -v68, v71, v73
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v68, v66, v79
	v_div_scale_f32 v69, null, v15, v15, v87
	v_fma_f32 v72, -v70, v64, 1.0
	v_div_fmas_f32 v65, v65, v74, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v73, -v77, v68, v66
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v61, v61, v15, v83
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, s60, v80, v15, v80
	v_fmac_f32_e32 v68, v73, v79
	v_div_fmas_f32 v67, v67, v75, v71
	v_rcp_f32_e32 v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v73, v72, v64
	v_div_scale_f32 v75, null, v15, v15, v91
	v_fma_f32 v66, -v77, v68, v66
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v76, -v70, v73, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v77, v75
	v_div_fixup_f32 v65, v65, v15, v82
	v_div_fmas_f32 v66, v66, v79, v68
	v_fma_f32 v74, -v69, v71, 1.0
	v_fmac_f32_e32 v73, v76, v64
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v76, null, v15, v15, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v74, v71
	v_fma_f32 v70, -v70, v73, v72
	v_div_scale_f32 v74, s62, v87, v15, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v76
	v_fma_f32 v78, -v75, v77, 1.0
	v_div_fmas_f32 v64, v70, v64, v73
	v_div_scale_f32 v70, null, v15, v15, v89
	v_mul_f32_e32 v68, v74, v71
	v_div_fixup_f32 v66, v66, v15, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v64, v64, v15, v80
	v_rcp_f32_e32 v73, v70
	v_div_scale_f32 v80, null, v15, v15, v92
	v_fma_f32 v72, -v69, v68, v74
	v_fmac_f32_e32 v77, v78, v77
	v_fma_f32 v78, -v76, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v80
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v68, v72, v71
	v_div_scale_f32 v72, s60, v91, v15, v91
	v_fma_f32 v81, -v70, v73, 1.0
	v_fmac_f32_e32 v79, v78, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v69, v68, v74
	v_mul_f32_e32 v74, v72, v77
	v_div_scale_f32 v78, s61, v90, v15, v90
	v_fmac_f32_e32 v73, v81, v73
	v_div_scale_f32 v81, null, v15, v15, v88
	v_div_fixup_f32 v67, v67, v15, v84
	v_div_fmas_f32 v68, v69, v71, v68
	v_fma_f32 v69, -v75, v74, v72
	v_mul_f32_e32 v71, v78, v79
	v_div_scale_f32 v83, s62, v89, v15, v89
	v_fma_f32 v84, -v80, v82, 1.0
	v_rcp_f32_e32 v85, v81
	v_fmac_f32_e32 v74, v69, v77
	v_fma_f32 v69, -v76, v71, v78
	v_mul_f32_e32 v86, v83, v73
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, s63, v92, v15, v92
	v_div_fixup_f32 v68, v68, v15, v87
	v_fma_f32 v72, -v75, v74, v72
	v_fmac_f32_e32 v71, v69, v79
	v_fma_f32 v69, -v70, v86, v83
	v_mul_f32_e32 v75, v84, v82
	v_fma_f32 v87, -v81, v85, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v72, v77, v74
	v_fma_f32 v74, -v76, v71, v78
	v_fmac_f32_e32 v86, v69, v73
	v_fma_f32 v69, -v80, v75, v84
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v76, s60, v88, v15, v88
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v75, v69, v82
	v_div_fmas_f32 v71, v74, v79, v71
	v_mul_f32_e32 v69, v76, v85
	v_div_scale_f32 v74, null, v15, v15, v99
	v_fma_f32 v70, -v70, v86, v83
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v81, v69, v76
	v_rcp_f32_e32 v78, v74
	v_div_fixup_f32 v72, v72, v15, v91
	v_div_fmas_f32 v70, v70, v73, v86
	v_fma_f32 v73, -v80, v75, v84
	v_fmac_f32_e32 v69, v77, v85
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v79, null, v15, v15, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v73, v73, v82, v75
	v_fma_f32 v75, -v81, v69, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v74, v78, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v76, null, v15, v15, v95
	v_div_fmas_f32 v69, v75, v85, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v77, v78
	v_div_scale_f32 v80, vcc_lo, v99, v15, v99
	v_rcp_f32_e32 v75, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v69, v69, v15, v88
	v_div_scale_f32 v85, null, v15, v15, v96
	v_mul_f32_e32 v84, v80, v78
	v_div_scale_f32 v77, null, v15, v15, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v87, v85
	v_rcp_f32_e32 v83, v79
	v_fma_f32 v88, -v74, v84, v80
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v76, v75, 1.0
	v_rcp_f32_e32 v81, v77
	v_div_fixup_f32 v71, v71, v15, v90
	v_div_fixup_f32 v70, v70, v15, v89
	v_dual_fmac_f32 v84, v88, v78 :: v_dual_fmac_f32 v75, v82, v75
	v_div_scale_f32 v82, s60, v95, v15, v95
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v74, -v74, v84, v80
	v_fma_f32 v89, -v79, v83, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v77, v81, 1.0
	v_mul_f32_e32 v90, v82, v75
	v_div_fixup_f32 v73, v73, v15, v92
	v_div_fmas_f32 v74, v74, v78, v84
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fma_f32 v88, -v76, v90, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s63, v96, v15, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, s61, v98, v15, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_cvt_i32_f32_e32 v102, v68
	v_and_b32_e32 v68, 15, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v86, v81
	v_fma_f32 v78, -v85, v94, v91
	v_fmac_f32_e32 v90, v88, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v77, v92, v86
	v_fmac_f32_e32 v94, v78, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v90, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v80, v81
	v_fma_f32 v78, -v85, v94, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s62, v97, v15, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v101, v64
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v93, v89, v83 :: v_dual_and_b32 v64, 15, v45
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v79, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v88, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v48
	v_and_b32_e32 v48, 15, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v76, v75, v90
	v_fma_f32 v76, -v77, v92, v86
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v77, -v79, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v23
	v_and_b32_e32 v23, 15, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v81, v92
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v75, v75, v15, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v79, 16, v111
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v76, v76, v15, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v74, v74, v15, v99
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v76, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v18, 15, v98
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v83, v93
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v76, v76, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v77, v77, v15, v97
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v52
	v_and_b32_e32 v52, 15, v42
	v_cvt_i32_f32_e32 v108, v76
	v_and_b32_e32 v76, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v87, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v111
	v_lshlrev_b32_e32 v42, 8, v79
	v_and_b32_e32 v46, 64, v111
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v15, v78, v15, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0xe000, v0, v42
	v_xor_b32_e32 v12, v12, v46
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v92, v59
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v8, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v107, v75
	v_cvt_i32_f32_e32 v78, v19
	v_cvt_i32_f32_e32 v82, v35
	v_cvt_i32_f32_e32 v87, v47
	v_cvt_i32_f32_e32 v89, v51
	v_cvt_i32_f32_e32 v110, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v19, 15, v17
	v_and_b32_e32 v35, 15, v21
	v_and_b32_e32 v47, 15, v24
	v_and_b32_e32 v51, 15, v25
	v_and_b32_e32 v16, 15, v33
	v_and_b32_e32 v17, 15, v88
	v_and_b32_e32 v21, 15, v49
	v_and_b32_e32 v25, 15, v50
	v_and_b32_e32 v49, 15, v92
	v_and_b32_e32 v50, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v8, 0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v31
	v_cvt_i32_f32_e32 v96, v63
	v_cvt_i32_f32_e32 v99, v65
	v_cvt_i32_f32_e32 v100, v67
	v_and_b32_e32 v31, 15, v20
	v_and_b32_e32 v63, 15, v29
	v_and_b32_e32 v67, 15, v30
	v_and_b32_e32 v75, 15, v32
	v_and_b32_e32 v20, 15, v34
	v_and_b32_e32 v32, 15, v37
	v_and_b32_e32 v33, 15, v90
	v_and_b32_e32 v65, 15, v58
	v_and_b32_e32 v30, 15, v66
	v_and_b32_e32 v34, 15, v101
	v_and_b32_e32 v66, 15, v107
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v77, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[15:18]
	ds_store_b128 v8, v[31:34] offset:256
	ds_store_b128 v8, v[47:50] offset:2048
	ds_store_b128 v8, v[63:66] offset:2304
	v_lshlrev_b32_e32 v8, 6, v111
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v16, 2, v79
	v_and_or_b32 v8, 0x300, v8, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v80, v27
	v_cvt_i32_f32_e32 v86, v44
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v93, v56
	v_cvt_i32_f32_e32 v94, v60
	v_cvt_i32_f32_e32 v95, v57
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v105, v73
	v_cvt_i32_f32_e32 v106, v69
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v83, v39
	v_cvt_i32_f32_e32 v97, v28
	v_cvt_i32_f32_e32 v103, v72
	v_cvt_i32_f32_e32 v109, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v7, v7, v8, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v40
	v_cvt_i32_f32_e32 v91, v55
	v_cvt_i32_f32_e32 v104, v71
	v_and_b32_e32 v39, 15, v22
	v_and_b32_e32 v55, 15, v26
	v_and_b32_e32 v59, 15, v80
	v_and_b32_e32 v24, 15, v82
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v60, 15, v86
	v_and_b32_e32 v37, 15, v53
	v_and_b32_e32 v41, 15, v54
	v_and_b32_e32 v53, 15, v93
	v_and_b32_e32 v57, 15, v94
	v_and_b32_e32 v61, 15, v95
	v_and_b32_e32 v73, 15, v62
	v_and_b32_e32 v22, 15, v99
	v_and_b32_e32 v26, 15, v100
	v_and_b32_e32 v54, 15, v105
	v_and_b32_e32 v58, 15, v106
	v_and_b32_e32 v62, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v0, 16, 0
	v_xad_u32 v15, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v78
	v_and_b32_e32 v71, 15, v81
	v_and_b32_e32 v28, 15, v36
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v40, 15, v83
	v_and_b32_e32 v72, 15, v87
	v_and_b32_e32 v69, 15, v96
	v_and_b32_e32 v77, 15, v97
	v_and_b32_e32 v38, 15, v102
	v_and_b32_e32 v42, 15, v103
	v_and_b32_e32 v70, 15, v108
	v_and_b32_e32 v74, 15, v109
	v_and_b32_e32 v78, 15, v110
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v8, 0, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v29, 15, v89
	v_and_b32_e32 v44, 15, v84
	v_and_b32_e32 v45, 15, v91
	v_and_b32_e32 v46, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[19:22]
	ds_store_b128 v12, v[35:38] offset:256
	ds_store_b128 v12, v[51:54] offset:2048
	ds_store_b128 v12, v[67:70] offset:2304
	ds_store_b128 v15, v[23:26]
	ds_store_b128 v15, v[39:42] offset:256
	ds_store_b128 v15, v[55:58] offset:2048
	ds_store_b128 v15, v[71:74] offset:2304
	ds_store_b128 v0, v[27:30]
	ds_store_b128 v0, v[43:46] offset:256
	ds_store_b128 v0, v[59:62] offset:2048
	ds_store_b128 v0, v[75:78] offset:2304
	v_xad_u32 v0, 0x4020, v7, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v8
	ds_load_b128 v[19:22], v8 offset:128
	ds_load_b128 v[23:26], v8 offset:4096
	ds_load_b128 v[27:30], v8 offset:4224
	v_xad_u32 v8, 0x8040, v7, 0
	ds_load_b128 v[31:34], v0
	ds_load_b128 v[35:38], v0 offset:128
	ds_load_b128 v[39:42], v0 offset:4096
	ds_load_b128 v[43:46], v0 offset:4224
	v_xad_u32 v0, 0xc060, v7, 0
	ds_load_b128 v[47:50], v8
	ds_load_b128 v[51:54], v8 offset:128
	ds_load_b128 v[55:58], v8 offset:4096
	ds_load_b128 v[59:62], v8 offset:4224
	ds_load_b128 v[63:66], v0 offset:4096
	ds_load_b128 v[67:70], v0
	ds_load_b128 v[71:74], v0 offset:128
	ds_load_b128 v[75:78], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s60, s66, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s67, 0, s60
	v_add_co_u32 v12, s60, s66, v6
	v_add_co_ci_u32_e64 v13, null, s67, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s66, v6
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v0, 0x7f, v111
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[64:65], v[7:8]
	v_cmp_le_i64_e64 s63, s[64:65], v[12:13]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s74, 31
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[72:73], v[12:13]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 6, v3
	v_lshl_or_b32 v0, s75, 7, v0
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s65, s74, s65
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 8, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v10, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 10, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[72:73], v[7:8]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v47, v55, 4, v47
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v67, v24, 4, v16
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 12, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 14, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 16, v3
	v_mad_u64_u32 v[12:13], null, v12, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v27, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 18, v3
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v28, 4, v20
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 20, v3
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 22, v3
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v66, v30, 4, v22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 24, v3
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_add_nc_u32_e32 v23, 26, v3
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_add_nc_u32_e32 v24, 28, v3
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_add_nc_u32_e32 v25, 30, v3
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_add_nc_u32_e32 v26, 32, v3
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	v_add_nc_u32_e32 v27, 34, v3
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	v_add_nc_u32_e32 v28, 36, v3
	v_mad_u64_u32 v[22:23], null, v23, s72, v[0:1]
	v_add_nc_u32_e32 v6, 2, v3
	v_add_nc_u32_e32 v29, 38, v3
	v_mad_u64_u32 v[23:24], null, v24, s72, v[0:1]
	v_add_nc_u32_e32 v8, 4, v3
	v_add_nc_u32_e32 v30, 40, v3
	v_mad_u64_u32 v[24:25], null, v25, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v80, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 42, v3
	v_mad_u64_u32 v[25:26], null, v26, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v71, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[26:27], null, v27, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[27:28], null, v28, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v43, 4, v35
	v_lshl_or_b32 v44, v44, 4, v36
	v_lshl_or_b32 v45, v45, 4, v37
	v_lshl_or_b32 v42, v42, 4, v34
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 48, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v70, 62, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v70, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v7, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v10, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v80, v0, s[64:67], 0 offen
	buffer_store_b8 v47, v4, s[64:67], 0 offen
	buffer_store_b8 v55, v6, s[64:67], 0 offen
	buffer_store_b8 v63, v7, s[64:67], 0 offen
	buffer_store_b8 v43, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v76, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v0, s[64:67], 0 offen
	buffer_store_b8 v59, v4, s[64:67], 0 offen
	buffer_store_b8 v67, v6, s[64:67], 0 offen
	buffer_store_b8 v71, v7, s[64:67], 0 offen
	buffer_store_b8 v48, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v56, v0, s[64:67], 0 offen
	buffer_store_b8 v64, v4, s[64:67], 0 offen
	buffer_store_b8 v44, v6, s[64:67], 0 offen
	buffer_store_b8 v52, v7, s[64:67], 0 offen
	buffer_store_b8 v60, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v68, v0, s[64:67], 0 offen
	buffer_store_b8 v41, v4, s[64:67], 0 offen
	buffer_store_b8 v49, v6, s[64:67], 0 offen
	buffer_store_b8 v57, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v45, v0, s[64:67], 0 offen
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v42, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v50, v0, s[64:67], 0 offen
	buffer_store_b8 v58, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v46, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v111
	v_lshrrev_b32_e32 v6, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v112
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v62, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v3, v6, v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v111
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 216
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
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 216
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20284
; TotalNumSgprs: 78
; NumVgprs: 256
; ScratchSize: 216
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 78
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 216
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 53
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
