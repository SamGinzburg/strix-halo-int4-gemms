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
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[36:37], s[0:1], 0x5c
	v_dual_mov_b32 v90, v0 :: v_dual_mov_b32 v93, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	s_sub_i32 s5, s37, s4
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
	v_and_b32_e32 v0, 63, v90
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
	s_sub_i32 s37, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s37, s5
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
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[30:31], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s28, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s29, 0, s2
	v_add_nc_u32_e32 v65, s28, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s36, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s28, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow525
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v91, 15, v90
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v92, 0xf0, v90
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_mov_b32_e32 v127, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s28, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s29, 0, s3
	s_clause 0x1
	s_load_b32 s20, s[0:1], 0x58
	s_load_b32 s38, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[30:31], v[0:1]
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v0, s28, v91
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v1, 16, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[2:3]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s39, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[30:31], v[2:3]
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s36
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v142, 0, v91
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v11, 5, v90
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v12, 1, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v11, 32, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:172
	scratch_store_b32 off, v90, off offset:204
	v_mul_lo_u32 v0, v1, s36
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v12, 28, v12
	v_or_b32_e32 v1, 0x700, v90
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[34:35], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[4:5]
	v_mov_b32_e32 v120, 0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:176
	scratch_store_b32 off, v91, off offset:208
	v_mul_lo_u32 v0, v2, s36
	v_or_b32_e32 v2, 0x3f0, v90
	v_mov_b32_e32 v66, 0
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v146, 0, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v1, s37, 8, v90
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[4:5]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s4, s4, s7
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:180
	scratch_store_b32 off, v92, off offset:212
	v_mul_lo_u32 v0, v3, s36
	v_lshrrev_b32_e32 v3, 1, v90
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s7, s20, s33
	v_or_b32_e32 v4, 0x7f0, v90
	v_or_b32_e32 v5, 0xb00, v90
	v_or_b32_e32 v6, 0xf00, v90
	v_and_b32_e32 v3, 0x70, v3
	v_or_b32_e32 v7, 0x1300, v90
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v90
	v_or_b32_e32 v8, 0x1700, v90
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v143, v142, v3
	v_lshlrev_b32_e32 v3, 2, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v145, 0, v0
	v_or_b32_e32 v9, 0x1b00, v90
	v_or_b32_e32 v10, 0x1f00, v90
	v_add3_u32 v3, 0, v3, v11
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v11, 1, v92
	v_mov_b32_e32 v113, 0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s7, s39, v[1:2]
	v_add_nc_u32_e32 v0, v3, v12
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v137, 6, v90
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v144, 0, v90
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v147, 0, v2
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v0, 0, v11
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v148, 0, v4
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v149, 0, v5
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v150, 0, v6
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v151, 0, v7
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v152, 0, v8
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v153, 0, v9
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v154, 0, v10
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v0, v1 :: v_dual_mov_b32 v93, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s1, s1, s5
	s_and_b32 s3, s3, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s36, s39
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s6, 0
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	scratch_store_b64 off, v[0:1], off offset:196 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v136
	v_mov_b32_e32 v3, v136
	v_dual_mov_b32 v4, v136 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v136
	v_dual_mov_b32 v6, v136 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v136
	v_dual_mov_b32 v8, v136 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v136 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v136
	v_dual_mov_b32 v12, v136 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v136
	v_dual_mov_b32 v14, v136 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v136
	v_dual_mov_b32 v16, v136 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v136
	v_mov_b32_e32 v19, v136
	v_mov_b32_e32 v20, v136
	v_mov_b32_e32 v21, v136
	v_mov_b32_e32 v22, v136
	v_mov_b32_e32 v23, v136
	v_mov_b32_e32 v24, v136
	v_mov_b32_e32 v26, v136
	v_mov_b32_e32 v27, v136
	v_mov_b32_e32 v28, v136
	v_mov_b32_e32 v29, v136
	v_mov_b32_e32 v30, v136
	v_mov_b32_e32 v31, v136
	v_mov_b32_e32 v32, v136
	v_mov_b32_e32 v34, v136
	v_mov_b32_e32 v35, v136
	v_mov_b32_e32 v36, v136
	v_mov_b32_e32 v37, v136
	v_mov_b32_e32 v38, v136
	v_mov_b32_e32 v39, v136
	v_mov_b32_e32 v40, v136
	v_mov_b32_e32 v42, v136
	v_mov_b32_e32 v43, v136
	v_mov_b32_e32 v44, v136
	v_mov_b32_e32 v45, v136
	v_mov_b32_e32 v46, v136
	v_mov_b32_e32 v47, v136
	v_mov_b32_e32 v48, v136
	v_mov_b32_e32 v50, v136
	v_mov_b32_e32 v51, v136
	v_mov_b32_e32 v52, v136
	v_mov_b32_e32 v53, v136
	v_mov_b32_e32 v54, v136
	v_mov_b32_e32 v55, v136
	v_mov_b32_e32 v56, v136
	v_mov_b32_e32 v58, v136
	v_mov_b32_e32 v59, v136
	v_mov_b32_e32 v60, v136
	v_mov_b32_e32 v61, v136
	v_mov_b32_e32 v62, v136
	v_mov_b32_e32 v63, v136
	v_mov_b32_e32 v64, v136
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s7, s6, 6
	s_mov_b32 s14, -1
	s_mov_b32 s15, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v113, off offset:168
	scratch_store_b32 off, v112, off offset:164
	scratch_store_b32 off, v111, off offset:160
	scratch_store_b32 off, v110, off offset:156
	scratch_store_b32 off, v109, off offset:152
	scratch_store_b32 off, v108, off offset:148
	scratch_store_b32 off, v107, off offset:144
	scratch_store_b32 off, v106, off offset:140
	scratch_store_b32 off, v105, off offset:136
	scratch_store_b32 off, v104, off offset:132
	scratch_store_b32 off, v103, off offset:128
	scratch_store_b32 off, v102, off offset:124
	scratch_store_b32 off, v101, off offset:120
	scratch_store_b32 off, v100, off offset:116
	scratch_store_b32 off, v99, off offset:112
	scratch_store_b32 off, v98, off offset:108
	scratch_store_b32 off, v89, off offset:104
	scratch_store_b32 off, v88, off offset:100
	scratch_store_b32 off, v74, off offset:96
	scratch_store_b32 off, v66, off offset:92
	scratch_store_b32 off, v73, off offset:88
	scratch_store_b32 off, v72, off offset:84
	scratch_store_b32 off, v71, off offset:80
	scratch_store_b32 off, v70, off offset:76
	scratch_store_b32 off, v69, off offset:72
	scratch_store_b32 off, v81, off offset:68
	scratch_store_b32 off, v80, off offset:64
	scratch_store_b32 off, v79, off offset:60
	scratch_store_b32 off, v78, off offset:56
	scratch_store_b32 off, v77, off offset:52
	scratch_store_b32 off, v76, off offset:48
	scratch_store_b32 off, v75, off offset:44
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v82, off offset:40
	scratch_store_b32 off, v87, off offset:36
	scratch_store_b32 off, v86, off offset:32
	scratch_store_b32 off, v85, off offset:28
	scratch_store_b32 off, v84, off offset:24
	scratch_store_b32 off, v83, off offset:20
	scratch_store_b32 off, v97, off offset:16
	scratch_store_b32 off, v96, off offset:12
	scratch_store_b32 off, v95, off offset:8
	scratch_store_b32 off, v94, off offset:4
	scratch_store_b32 off, v93, off
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s15, s15, s7
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s14
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s15, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 1
	v_or_b32_e32 v0, s15, v137
	s_mov_b32 s14, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v76, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 2
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v78, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 3
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v79, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 4
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v77, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 5
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v81, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 6
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v82, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 7
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v83, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 8
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v80, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 9
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v85, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 10
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v86, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 11
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v87, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 12
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v84, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 13
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v89, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 14
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v90, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 15
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v91, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 16
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v88, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 17
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v93, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 18
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v94, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 19
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v95, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 20
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v92, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 21
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v96, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 22
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v98, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 23
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v99, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 24
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v97, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 25
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v156, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 26
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v101, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 27
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v102, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 28
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v100, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 29
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v103, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 30
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v105, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 31
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v108, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v107, v68, s[8:11], 0 offen
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v0, s38, v[65:66]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v66, 4, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, s15, v66
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v68, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v66, s38, v[65:66]
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v66, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 8, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v70, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 12, v137
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v71, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 16, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v72, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 20, v137
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v73, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 24, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v74, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 28, v137
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_mov_b32 s15, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	s_clause 0x7
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v66, v66, s[24:27], 0 offen
	buffer_load_u8 v69, v70, s[24:27], 0 offen
	buffer_load_u8 v70, v72, s[24:27], 0 offen
	buffer_load_u8 v72, v73, s[24:27], 0 offen
	buffer_load_u8 v73, v74, s[24:27], 0 offen
	buffer_load_u8 v68, v68, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v144, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v144, v66 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v144, v69 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v144, v70 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v144, v72 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v145, v71
	ds_store_b8 v144, v73 offset:1536
	ds_store_b8 v146, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	ds_load_u8 v0, v142 offset:320
	ds_load_u8 v66, v142 offset:256
	ds_load_u8 v104, v142 offset:336
	ds_load_u8 v106, v142 offset:272
	ds_load_u8 v251, v142 offset:352
	ds_load_u8 v252, v142 offset:288
	ds_load_u8 v245, v142 offset:368
	ds_load_u8 v246, v142 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v66, v0, 0xc0c0004
	ds_load_u8 v68, v142 offset:448
	ds_load_u8 v69, v142 offset:384
	ds_load_u8 v109, v142 offset:464
	ds_load_u8 v110, v142 offset:400
	ds_load_u8 v70, v142 offset:480
	ds_load_u8 v0, v142 offset:416
	ds_load_u8 v249, v142 offset:496
	ds_load_u8 v250, v142 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v142 offset:64
	ds_load_u8 v73, v142
	ds_load_u8 v111, v142 offset:80
	ds_load_u8 v141, v142 offset:96
	ds_load_u8 v254, v142 offset:112
	ds_load_u8 v112, v142 offset:16
	ds_load_u8 v72, v142 offset:32
	ds_load_u8 v71, v142 offset:48
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v0, v70, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v73, v73, v69, 0xc0c0004
	ds_load_u8 v69, v142 offset:192
	ds_load_u8 v138, v142 offset:128
	ds_load_u8 v113, v142 offset:208
	ds_load_u8 v114, v142 offset:144
	ds_load_u8 v74, v142 offset:224
	ds_load_u8 v75, v142 offset:160
	ds_load_u8 v140, v142 offset:240
	ds_load_u8 v155, v142 offset:176
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v70, v72, v141, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v138, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v66
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v68, v138, 16, v73
	ds_load_u8 v247, v142 offset:960
	ds_load_u8 v248, v142 offset:896
	ds_load_u8 v213, v142 offset:1024
	ds_load_u8 v221, v142 offset:976
	ds_load_u8 v223, v142 offset:912
	ds_load_u8 v216, v142 offset:992
	ds_load_u8 v218, v142 offset:928
	ds_load_u8 v214, v142 offset:944
	ds_load_u8 v253, v142 offset:832
	ds_load_u8 v255, v142 offset:768
	ds_load_u8 v228, v142 offset:848
	ds_load_u8 v230, v142 offset:784
	ds_load_u8 v225, v142 offset:864
	ds_load_u8 v226, v142 offset:800
	ds_load_u8 v219, v142 offset:880
	ds_load_u8 v220, v142 offset:816
	ds_load_u8 v138, v142 offset:704
	ds_load_u8 v139, v142 offset:640
	ds_load_u8 v234, v142 offset:720
	ds_load_u8 v235, v142 offset:656
	ds_load_u8 v231, v142 offset:736
	ds_load_u8 v232, v142 offset:672
	ds_load_u8 v227, v142 offset:752
	ds_load_u8 v229, v142 offset:688
	ds_load_u8 v66, v142 offset:576
	ds_load_u8 v73, v142 offset:512
	ds_load_u8 v242, v142 offset:592
	ds_load_u8 v243, v142 offset:528
	ds_load_u8 v238, v142 offset:608
	ds_load_u8 v240, v142 offset:544
	ds_load_u8 v236, v142 offset:624
	ds_load_u8 v237, v142 offset:560
	ds_load_u8 v215, v142 offset:1216
	ds_load_u8 v217, v142 offset:1280
	ds_load_u8 v187, v142 offset:1232
	ds_load_u8 v188, v142 offset:1168
	ds_load_u8 v184, v142 offset:1248
	ds_load_u8 v185, v142 offset:1184
	ds_load_u8 v182, v142 offset:1264
	ds_load_u8 v183, v142 offset:1200
	ds_load_u8 v222, v142 offset:1152
	ds_load_u8 v224, v142 offset:1088
	ds_load_u8 v195, v142 offset:1104
	ds_load_u8 v196, v142 offset:1040
	ds_load_u8 v191, v142 offset:1120
	ds_load_u8 v193, v142 offset:1056
	ds_load_u8 v189, v142 offset:1136
	ds_load_u8 v190, v142 offset:1072
	ds_load_u8 v233, v142 offset:1472
	ds_load_u8 v181, v142 offset:1536
	ds_load_u8 v203, v142 offset:1488
	ds_load_u8 v204, v142 offset:1424
	ds_load_u8 v200, v142 offset:1504
	ds_load_u8 v201, v142 offset:1440
	ds_load_u8 v197, v142 offset:1520
	ds_load_u8 v198, v142 offset:1456
	ds_load_u8 v239, v142 offset:1408
	ds_load_u8 v241, v142 offset:1344
	ds_load_u8 v211, v142 offset:1360
	ds_load_u8 v212, v142 offset:1296
	ds_load_u8 v209, v142 offset:1376
	ds_load_u8 v210, v142 offset:1312
	ds_load_u8 v205, v142 offset:1392
	ds_load_u8 v207, v142 offset:1328
	ds_load_u8 v186, v142 offset:1984
	ds_load_u8 v161, v142 offset:2000
	ds_load_u8 v163, v142 offset:1936
	ds_load_u8 v159, v142 offset:2016
	ds_load_u8 v160, v142 offset:1952
	ds_load_u8 v244, v147
	ds_load_u8 v157, v148
	ds_load_u8 v158, v142 offset:1968
	ds_load_u8 v192, v142 offset:1920
	ds_load_u8 v194, v142 offset:1856
	ds_load_u8 v168, v142 offset:1872
	ds_load_u8 v170, v142 offset:1808
	ds_load_u8 v165, v142 offset:1888
	ds_load_u8 v166, v142 offset:1824
	ds_load_u8 v162, v142 offset:1904
	ds_load_u8 v164, v142 offset:1840
	ds_load_u8 v199, v142 offset:1728
	ds_load_u8 v202, v142 offset:1792
	ds_load_u8 v173, v142 offset:1744
	ds_load_u8 v174, v142 offset:1680
	ds_load_u8 v171, v142 offset:1760
	ds_load_u8 v172, v142 offset:1696
	ds_load_u8 v167, v142 offset:1776
	ds_load_u8 v169, v142 offset:1712
	ds_load_u8 v206, v142 offset:1664
	ds_load_u8 v208, v142 offset:1600
	ds_load_u8 v179, v142 offset:1616
	ds_load_u8 v180, v142 offset:1552
	ds_load_u8 v177, v142 offset:1632
	ds_load_u8 v178, v142 offset:1568
	ds_load_u8 v175, v142 offset:1648
	ds_load_u8 v176, v142 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v144, v76
	ds_store_b8 v144, v78 offset:256
	ds_store_b8 v144, v79 offset:512
	ds_store_b8 v144, v81 offset:1024
	ds_store_b8 v144, v82 offset:1280
	ds_store_b8 v144, v83 offset:1536
	ds_store_b8 v144, v85 offset:2048
	ds_store_b8 v144, v86 offset:2304
	ds_store_b8 v144, v87 offset:2560
	ds_store_b8 v144, v89 offset:3072
	ds_store_b8 v144, v90 offset:3328
	ds_store_b8 v144, v91 offset:3584
	ds_store_b8 v144, v93 offset:4096
	ds_store_b8 v144, v94 offset:4352
	ds_store_b8 v144, v95 offset:4608
	ds_store_b8 v144, v96 offset:5120
	ds_store_b8 v144, v98 offset:5376
	ds_store_b8 v144, v99 offset:5632
	ds_store_b8 v144, v156 offset:6144
	ds_store_b8 v144, v101 offset:6400
	ds_store_b8 v144, v102 offset:6656
	ds_store_b8 v144, v103 offset:7168
	ds_store_b8 v144, v105 offset:7424
	ds_store_b8 v144, v108 offset:7680
	ds_store_b8 v145, v77
	ds_store_b8 v146, v80
	ds_store_b8 v149, v84
	ds_store_b8 v150, v88
	ds_store_b8 v151, v92
	ds_store_b8 v152, v97
	ds_store_b8 v153, v100
	ds_store_b8 v154, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v76, v143 offset:1280
	ds_load_u8 v77, v143 offset:1024
	ds_load_u8 v78, v143 offset:1920
	ds_load_u8 v79, v143 offset:1664
	ds_load_u8 v80, v143 offset:1408
	ds_load_u8 v81, v143 offset:1152
	v_lshl_or_b32 v74, v72, 16, v70
	v_perm_b32 v70, v250, v249, 0xc0c0004
	v_perm_b32 v72, v71, v254, 0xc0c0004
	v_perm_b32 v66, v73, v66, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v143 offset:1792
	ds_load_u8 v82, v143 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v78, 16, v80
	v_perm_b32 v80, v106, v104, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v82, v77, 0xc0c0004
	ds_load_u8 v82, v143 offset:256
	ds_load_u8 v83, v143
	ds_load_u8 v84, v143 offset:896
	ds_load_u8 v85, v143 offset:640
	ds_load_u8 v86, v143 offset:384
	ds_load_u8 v87, v143 offset:128
	v_lshl_or_b32 v77, v77, 16, v76
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v143 offset:768
	ds_load_u8 v88, v143 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v81, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v76, v83, 16, v82
	v_perm_b32 v82, v85, v84, 0xc0c0004
	v_perm_b32 v83, v114, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v78, v82, 16, v81
	v_perm_b32 v81, v110, v109, 0xc0c0004
	v_perm_b32 v82, v112, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[68:69], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v81, v81, 16, v80
	v_lshl_or_b32 v80, v83, 16, v82
	v_perm_b32 v82, v252, v251, 0xc0c0004
	v_perm_b32 v68, v248, v247, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[80:81], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v0, 16, v82
	v_perm_b32 v0, v246, v245, 0xc0c0004
	v_perm_b32 v82, v155, v140, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[80:81], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[76:77], v[74:75], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v70, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v70, v82, 16, v72
	v_perm_b32 v0, v255, v253, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[78:79], v[74:75], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[70:71], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[70:71], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v70, v139, v138, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v68, v70, 16, v66
	ds_load_u8 v0, v143 offset:3328
	ds_load_u8 v66, v143 offset:3072
	ds_load_u8 v72, v143 offset:3968
	ds_load_u8 v73, v143 offset:3712
	ds_load_u8 v74, v143 offset:3456
	ds_load_u8 v75, v143 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v143 offset:3840
	ds_load_u8 v70, v143 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v143 offset:2304
	ds_load_u8 v71, v143 offset:2048
	ds_load_u8 v76, v143 offset:2944
	ds_load_u8 v77, v143 offset:2688
	ds_load_u8 v78, v143 offset:2432
	ds_load_u8 v79, v143 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v143 offset:2816
	ds_load_u8 v80, v143 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v75, v74, 0xc0c0004
	v_perm_b32 v66, v73, v72, 0xc0c0004
	v_perm_b32 v72, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_perm_b32 v76, v235, v234, 0xc0c0004
	v_lshl_or_b32 v70, v80, 16, v70
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v230, v228, 0xc0c0004
	v_perm_b32 v66, v223, v221, 0xc0c0004
	v_lshl_or_b32 v72, v74, 16, v72
	v_perm_b32 v74, v243, v242, 0xc0c0004
	v_perm_b32 v78, v232, v231, 0xc0c0004
	v_perm_b32 v79, v220, v219, 0xc0c0004
	v_lshl_or_b32 v75, v66, 16, v0
	v_perm_b32 v0, v226, v225, 0xc0c0004
	v_perm_b32 v66, v218, v216, 0xc0c0004
	v_lshl_or_b32 v74, v76, 16, v74
	v_perm_b32 v76, v240, v238, 0xc0c0004
	v_perm_b32 v80, v214, v244, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_perm_b32 v0, v237, v236, 0xc0c0004
	v_perm_b32 v66, v229, v227, 0xc0c0004
	v_lshl_or_b32 v76, v78, 16, v76
	v_lshl_or_b32 v79, v80, 16, v79
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v66, 16, v0
	v_perm_b32 v0, v217, v241, 0xc0c0004
	v_perm_b32 v66, v239, v233, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v0
	ds_load_u8 v0, v143 offset:5376
	ds_load_u8 v66, v143 offset:5120
	ds_load_u8 v72, v143 offset:6016
	ds_load_u8 v73, v143 offset:5760
	ds_load_u8 v74, v143 offset:5504
	ds_load_u8 v75, v143 offset:5248
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v68, v213, v224, 0xc0c0004
	v_perm_b32 v70, v222, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v143 offset:5888
	ds_load_u8 v70, v143 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v143 offset:4352
	ds_load_u8 v71, v143 offset:4096
	ds_load_u8 v76, v143 offset:4992
	ds_load_u8 v77, v143 offset:4736
	ds_load_u8 v78, v143 offset:4480
	ds_load_u8 v79, v143 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v143 offset:4864
	ds_load_u8 v80, v143 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v75, v74, 0xc0c0004
	v_perm_b32 v66, v73, v72, 0xc0c0004
	v_perm_b32 v72, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_perm_b32 v76, v188, v187, 0xc0c0004
	v_perm_b32 v78, v185, v184, 0xc0c0004
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v212, v211, 0xc0c0004
	v_lshl_or_b32 v72, v74, 16, v72
	v_perm_b32 v66, v204, v203, 0xc0c0004
	v_perm_b32 v74, v196, v195, 0xc0c0004
	v_lshl_or_b32 v70, v80, 16, v70
	v_perm_b32 v80, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v66, 16, v0
	v_lshl_or_b32 v74, v76, 16, v74
	v_perm_b32 v0, v210, v209, 0xc0c0004
	v_perm_b32 v66, v201, v200, 0xc0c0004
	v_perm_b32 v76, v193, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_lshl_or_b32 v76, v78, 16, v76
	v_perm_b32 v0, v207, v205, 0xc0c0004
	v_perm_b32 v66, v198, v197, 0xc0c0004
	v_perm_b32 v78, v190, v189, 0xc0c0004
	v_perm_b32 v68, v181, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v66, 16, v0
	v_lshl_or_b32 v78, v80, 16, v78
	v_perm_b32 v0, v202, v194, 0xc0c0004
	v_perm_b32 v66, v192, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v0
	ds_load_u8 v0, v143 offset:7424
	ds_load_u8 v66, v143 offset:7168
	ds_load_u8 v72, v143 offset:8064
	ds_load_u8 v73, v143 offset:7808
	ds_load_u8 v74, v143 offset:7552
	ds_load_u8 v75, v143 offset:7296
	v_perm_b32 v70, v206, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v143 offset:7936
	ds_load_u8 v70, v143 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v143 offset:6400
	ds_load_u8 v71, v143 offset:6144
	ds_load_u8 v76, v143 offset:7040
	ds_load_u8 v77, v143 offset:6784
	ds_load_u8 v78, v143 offset:6528
	ds_load_u8 v79, v143 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v143 offset:6912
	ds_load_u8 v80, v143 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v75, v74, 0xc0c0004
	v_perm_b32 v66, v73, v72, 0xc0c0004
	v_perm_b32 v72, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_perm_b32 v76, v174, v173, 0xc0c0004
	v_lshl_or_b32 v70, v80, 16, v70
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v170, v168, 0xc0c0004
	v_perm_b32 v66, v163, v161, 0xc0c0004
	v_lshl_or_b32 v72, v74, 16, v72
	v_perm_b32 v74, v180, v179, 0xc0c0004
	v_perm_b32 v78, v172, v171, 0xc0c0004
	v_perm_b32 v79, v164, v162, 0xc0c0004
	v_lshl_or_b32 v75, v66, 16, v0
	v_perm_b32 v0, v166, v165, 0xc0c0004
	v_perm_b32 v66, v160, v159, 0xc0c0004
	v_lshl_or_b32 v74, v76, 16, v74
	v_perm_b32 v76, v178, v177, 0xc0c0004
	v_perm_b32 v80, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_perm_b32 v0, v176, v175, 0xc0c0004
	v_perm_b32 v66, v169, v167, 0xc0c0004
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
	s_mov_b32 s14, s22
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s7, s33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s23
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
	buffer_load_u16 v0, v0, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s36
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
	s_clause 0x14                           ; 84-byte Folded Reload
	scratch_load_b32 v12, off, off offset:192
	scratch_load_b32 v113, off, off offset:168
	scratch_load_b32 v112, off, off offset:164
	scratch_load_b32 v111, off, off offset:160
	scratch_load_b32 v110, off, off offset:156
	scratch_load_b32 v109, off, off offset:152
	scratch_load_b32 v108, off, off offset:148
	scratch_load_b32 v107, off, off offset:144
	scratch_load_b32 v106, off, off offset:140
	scratch_load_b32 v105, off, off offset:136
	scratch_load_b32 v104, off, off offset:132
	scratch_load_b32 v103, off, off offset:128
	scratch_load_b32 v102, off, off offset:124
	scratch_load_b32 v101, off, off offset:120
	scratch_load_b32 v100, off, off offset:116
	scratch_load_b32 v99, off, off offset:112
	scratch_load_b32 v98, off, off offset:108
	scratch_load_b32 v89, off, off offset:104
	scratch_load_b32 v88, off, off offset:100
	scratch_load_b32 v66, off, off offset:92
	scratch_load_b32 v80, off, off offset:64
	s_waitcnt vmcnt(20)
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v58, v69, v58
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v69, off, off offset:72
	scratch_load_b32 v86, off, off offset:32
	scratch_load_b32 v87, off, off offset:36
	scratch_load_b32 v93, off, off
	scratch_load_b32 v97, off, off offset:16
	scratch_load_b32 v96, off, off offset:12
	scratch_load_b32 v95, off, off offset:8
	scratch_load_b32 v94, off, off offset:4
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v135, v71, v0 :: v_dual_fmac_f32 v134, v72, v1
	v_dual_fmac_f32 v133, v73, v2 :: v_dual_fmac_f32 v132, v74, v3
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v131, v75, v4 :: v_dual_fmac_f32 v130, v76, v5
	v_dual_fmac_f32 v129, v77, v6 :: v_dual_fmac_f32 v128, v78, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v127, v79, v8 :: v_dual_fmac_f32 v126, v70, v9
	v_dual_fmac_f32 v125, v81, v10 :: v_dual_fmac_f32 v124, v82, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v123, v83, v12 :: v_dual_fmac_f32 v122, v84, v13
	v_fmac_f32_e32 v121, v85, v14
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v74, off, off offset:96
	scratch_load_b32 v73, off, off offset:88
	scratch_load_b32 v72, off, off offset:84
	scratch_load_b32 v71, off, off offset:80
	scratch_load_b32 v70, off, off offset:76
	scratch_load_b32 v81, off, off offset:68
	scratch_load_b32 v78, off, off offset:56
	scratch_load_b32 v79, off, off offset:60
	scratch_load_b32 v77, off, off offset:52
	scratch_load_b32 v76, off, off offset:48
	scratch_load_b32 v75, off, off offset:44
	scratch_load_b32 v82, off, off offset:40
	scratch_load_b32 v85, off, off offset:28
	scratch_load_b32 v84, off, off offset:24
	scratch_load_b32 v83, off, off offset:20
	v_dual_fmac_f32 v120, v16, v15 :: v_dual_fmac_f32 v119, v17, v0
	v_dual_fmac_f32 v118, v18, v1 :: v_dual_fmac_f32 v117, v19, v2
	v_dual_fmac_f32 v116, v20, v3 :: v_dual_fmac_f32 v115, v21, v4
	s_waitcnt vmcnt(41)
	v_dual_fmac_f32 v113, v22, v5 :: v_dual_fmac_f32 v112, v23, v6
	s_waitcnt vmcnt(39)
	v_dual_fmac_f32 v111, v24, v7 :: v_dual_fmac_f32 v110, v25, v8
	s_waitcnt vmcnt(37)
	v_dual_fmac_f32 v109, v26, v9 :: v_dual_fmac_f32 v108, v27, v10
	s_waitcnt vmcnt(35)
	v_dual_fmac_f32 v107, v28, v11 :: v_dual_fmac_f32 v106, v29, v12
	s_waitcnt vmcnt(33)
	v_dual_fmac_f32 v105, v30, v13 :: v_dual_fmac_f32 v104, v31, v14
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v103, v32, v15 :: v_dual_fmac_f32 v102, v33, v0
	s_waitcnt vmcnt(29)
	v_dual_fmac_f32 v101, v34, v1 :: v_dual_fmac_f32 v100, v35, v2
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v99, v36, v3 :: v_dual_fmac_f32 v98, v37, v4
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v89, v38, v5 :: v_dual_fmac_f32 v88, v39, v6
	s_waitcnt vmcnt(24)
	v_fmac_f32_e32 v66, v41, v8
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v80, v48, v15 :: v_dual_fmac_f32 v69, v46, v13
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v86, v55, v6 :: v_dual_fmac_f32 v87, v58, v9
	s_waitcnt vmcnt(19)
	v_fmac_f32_e32 v93, v61, v12
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v97, v60, v11 :: v_dual_fmac_f32 v96, v62, v13
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v95, v63, v14 :: v_dual_fmac_f32 v94, v64, v15
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v74, v40, v7 :: v_dual_fmac_f32 v73, v42, v9
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v72, v43, v10 :: v_dual_fmac_f32 v71, v44, v11
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v70, v45, v12 :: v_dual_fmac_f32 v81, v47, v14
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v78, v49, v0 :: v_dual_fmac_f32 v79, v51, v2
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v77, v50, v1 :: v_dual_fmac_f32 v76, v52, v3
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v75, v53, v4 :: v_dual_fmac_f32 v82, v54, v5
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v85, v56, v7 :: v_dual_fmac_f32 v84, v57, v8
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v59, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v90, off, off offset:204
	scratch_load_b32 v91, off, off offset:208
	scratch_load_b32 v92, off, off offset:212
	v_mov_b32_e32 v3, v65
.LBB0_9:                                ; %._crit_edge
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v134|, |v134|
	v_max_f32_e64 v1, |v135|, |v135|
	v_max3_f32 v2, |v132|, |v131|, |v130|
	v_max3_f32 v4, |v126|, |v125|, |v124|
	v_max3_f32 v5, |v123|, |v122|, |v121|
	v_max_f32_e64 v6, |v119|, |v119|
	v_max_f32_e32 v0, v1, v0
	v_max_f32_e64 v1, |v118|, |v118|
	v_max3_f32 v7, |v129|, |v128|, |v127|
	v_max3_f32 v4, v4, v5, |v120|
	v_max_f32_e64 v5, |v102|, |v102|
	v_max3_f32 v9, |v109|, |v108|, |v107|
	v_max_f32_e32 v1, v6, v1
	v_max3_f32 v0, v0, |v133|, v2
	v_max_f32_e64 v2, |v101|, |v101|
	v_max3_f32 v6, |v116|, |v115|, |v113|
	v_max3_f32 v10, |v106|, |v105|, |v104|
	v_max3_f32 v11, |v73|, |v72|, |v71|
	v_max3_f32 v12, |v70|, |v69|, |v81|
	v_max3_f32 v0, v0, v7, v4
	v_max_f32_e32 v2, v5, v2
	v_max3_f32 v5, |v99|, |v98|, |v89|
	v_max3_f32 v8, |v112|, |v111|, |v110|
	v_max3_f32 v1, v1, |v117|, v6
	v_max3_f32 v6, v9, v10, |v103|
	v_max3_f32 v9, |v88|, |v74|, |v66|
	v_max3_f32 v2, v2, |v100|, v5
	v_max3_f32 v5, v11, v12, |v80|
	v_max_f32_e64 v10, |v77|, |v77|
	v_max_f32_e64 v11, |v78|, |v78|
	v_max3_f32 v1, v1, v8, v6
	v_max3_f32 v7, |v87|, |v83|, |v97|
	v_max3_f32 v2, v2, v9, v5
	v_max3_f32 v5, |v76|, |v75|, |v82|
	v_max_f32_e32 v4, v11, v10
	v_max3_f32 v8, |v93|, |v96|, |v95|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v6, |v86|, |v85|, |v84|
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v9, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, |v79|, v5
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v5, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, v7, v8, |v94|
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	s_waitcnt vmcnt(2)
	v_dual_max_f32 v8, v9, v9 :: v_dual_and_b32 v13, 3, v90
	v_max_f32_e32 v5, v5, v5
	v_max3_f32 v4, v4, v6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v11, v10, v10 :: v_dual_max_f32 v10, v1, v8
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v6, 5, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v0, v5
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v2, v11
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 4, v90
	v_lshl_add_u32 v2, v13, 9, 0
	v_and_b32_e32 v8, 0x60, v90
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_lshlrev_b32 v5, 4, v90
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v14, 0x80, v90
	v_and_b32_e32 v15, 8, v90
	v_lshl_add_u32 v2, v1, 2, v2
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v4, v0
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v5, 0x680, v5, v6
	v_lshlrev_b32_e32 v7, 1, v14
	v_xor_b32_e32 v16, v6, v8
	v_lshl_add_u32 v2, v15, 4, v2
	v_lshrrev_b32_e32 v17, 3, v14
	v_xor_b32_e32 v5, v5, v8
	v_lshl_add_u32 v18, v1, 6, 0
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v2, v7, v16
	s_barrier
.Ltmp19:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v18, v17, v5
	s_mov_b32 s15, 0x31027000
	ds_store_b128 v0, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s14, 0x7ffffffe
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v0, v9
	v_dual_mov_b32 v4, v11 :: v_dual_max_f32 v5, v9, v9
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v12, v12
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_lshlrev_b32 v15, 3, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v2, v9, v2 :: v_dual_max_f32 v9, v12, v12
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v0, v5, v0 :: v_dual_max_f32 v5, v11, v11
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v11, v0 :: v_dual_add_nc_u32 v14, 0, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v5, v4
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v5, v10, v9
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v11
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v11, v0
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_max_f32 v9, v11, v11
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v10, v5
	v_mov_b32_e32 v16, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v0, v9
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v10, v10, v10
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v16, 1, v8
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v5, v5, v10
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 5, v1
	v_lshl_add_u32 v1, v13, 4, 0
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v12 :: v_dual_mov_b32 v17, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v1, v0, v15
	v_mov_b32_e32 v12, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v12, v12
	v_max_f32_e32 v10, v2, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v17, v17
	v_max_f32_e32 v12, v5, v2
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v14, v16, v15
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v5, 4, v92
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v2, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v0
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 16, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v9, v9 :: v_dual_max_f32 v11, v11, v11
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v19, v10, v10 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v11, 0x2b8cbccc, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v19, 0x2b8cbccc, v19
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v17, vcc_lo, v2, 0x40e00000, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s28, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v15, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s29, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[0:1]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v20, v18
	v_fma_f32 v13, -v4, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v13, v15
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s0, s28, v9
	v_add_co_ci_u32_e64 v14, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v21, v17, v15
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s0, s28, v16
	v_add_co_ci_u32_e64 v10, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v16, -v4, v21, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v12, v12
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v19
	v_fmac_f32_e32 v21, v16, v15
	v_fma_f32 v1, -v18, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v16, 0x2b8cbccc, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[13:14]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v0, -v4, v21, v17
	v_rcp_f32_e32 v17, v12
	v_fmac_f32_e32 v20, v1, v20
	v_div_scale_f32 v1, s7, v11, 0x40e00000, v11
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v16
	v_div_fmas_f32 v0, v0, v15, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v4, v1, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v14.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v15, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v12, v17, 1.0
	s_mov_b32 vcc_lo, s7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[9:10]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v17, v13, v17
	v_div_scale_f32 v13, s8, v19, 0x40e00000, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v22, v15, 1.0
	v_mul_f32_e32 v23, v13, v17
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	v_fma_f32 v2, -v18, v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v15, v21, v15
	v_div_scale_f32 v21, s9, v16, 0x40e00000, v16
	v_fma_f32 v9, -v12, v23, v13
	v_fmac_f32_e32 v4, v2, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v2.h, v14.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v10, v21, v15
	v_fmac_f32_e32 v23, v9, v17
	v_fma_f32 v1, -v18, v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v2
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v18, v1, v20, v4
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v0, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v22, v10, v21
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s28, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v18, 0x40e00000, v11
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v11, -v12, v23, v13
	v_fmac_f32_e32 v10, v2, v15
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s29, 0, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v12, null, v27, v27, v135
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v11, v17, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v22, v10, v21
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v11, v12
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v9.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v19
	v_div_fmas_f32 v10, v13, v15, v10
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v13, null, v27, v27, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v15, 1, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v28, null, v27, v27, v130
	v_rcp_f32_e32 v18, v13
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v17, -v12, v11, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[30:31], v[0:1]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v1, v9, v15, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v29, v28
	v_fmac_f32_e32 v11, v17, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v10, 0x40e00000, v16
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v16.l, v2.h
	v_mov_b16_e32 v16.h, v14.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v17, vcc_lo, v135, v27, v135
	v_div_scale_f32 v22, s9, v134, v27, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v15, v17, v11 :: v_dual_and_b32 v0, 1, v16
	v_fma_f32 v16, -v13, v18, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v10.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v19, null, v27, v27, v133
	v_fma_f32 v20, -v12, v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v16, v18
	v_div_scale_f32 v21, null, v27, v27, v132
	v_rcp_f32_e32 v16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v15, v20, v11 :: v_dual_mul_f32 v20, v22, v18
	v_div_scale_f32 v26, null, v27, v27, v131
	v_div_scale_f32 v31, null, v27, v27, v127
	v_fma_f32 v12, -v12, v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v17, -v13, v20, v22
	v_div_scale_f32 v36, null, v27, v27, v122
	v_fma_f32 v24, -v19, v16, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v11, v12, v11, v15
	v_fmac_f32_e32 v20, v17, v18
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v17, v26
	v_fmac_f32_e32 v16, v24, v16
	v_div_scale_f32 v24, s10, v133, v27, v133
	v_fma_f32 v12, -v13, v20, v22
	v_div_scale_f32 v37, null, v27, v27, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v15, v24, v16
	v_div_fixup_f32 v11, v11, v27, v135
	v_div_fmas_f32 v12, v12, v18, v20
	v_fma_f32 v20, -v28, v29, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v26, v17, 1.0
	v_fma_f32 v13, -v19, v15, v24
	v_div_scale_f32 v18, s9, v131, v27, v131
	v_fmac_f32_e32 v29, v20, v29
	v_div_scale_f32 v20, s12, v130, v27, v130
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v9, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v15, v13, v16
	v_fmac_f32_e32 v17, v30, v17
	v_div_scale_f32 v30, null, v27, v27, v129
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v10, v14, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v14, v21
	v_fma_f32 v19, -v19, v15, v24
	v_mul_f32_e32 v24, v18, v17
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v12, v12, v27, v134
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v23, 0xffff0000, v1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s28, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v25, -v21, v14, 1.0
	v_div_scale_f32 v56, null, v23, v23, v100
	v_div_scale_f32 v61, null, v23, v23, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, v25, v14
	v_div_scale_f32 v25, s11, v132, v27, v132
	v_rcp_f32_e32 v63, v61
	v_div_scale_f32 v64, null, v23, v23, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, v25, v14
	v_div_scale_f32 v65, null, v23, v23, v70
	v_fma_f32 v13, -v21, v22, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v22, v13, v14
	v_div_fmas_f32 v13, v19, v16, v15
	v_fma_f32 v16, -v26, v24, v18
	v_rcp_f32_e32 v19, v30
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v15, -v21, v22, v25
	v_mul_f32_e32 v21, v20, v29
	v_div_scale_f32 v25, null, v27, v27, v128
	v_fmac_f32_e32 v24, v16, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v14, v15, v14, v22
	v_fma_f32 v15, -v28, v21, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v22, v25
	v_fma_f32 v16, -v30, v19, 1.0
	v_fma_f32 v18, -v26, v24, v18
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v21, v15, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v19, v16, v19 :: v_dual_and_b32 v0, 0xffff0000, v9
	v_div_fmas_f32 v16, v18, v17, v24
	v_div_scale_f32 v26, s10, v129, v27, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v28, v21, v20
	v_rcp_f32_e32 v20, v31
	v_fma_f32 v15, -v25, v22, 1.0
	v_div_scale_f32 v28, null, v27, v27, v126
	v_div_scale_f32 v24, s9, v128, v27, v128
	v_fmac_f32_e32 v22, v15, v22
	v_mul_f32_e32 v18, v26, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v33, v28
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v32, -v31, v20, 1.0
	v_div_fmas_f32 v17, v17, v29, v21
	v_mul_f32_e32 v29, v24, v22
	v_fma_f32 v21, -v30, v18, v26
	v_div_fixup_f32 v15, v16, v27, v131
	v_fmac_f32_e32 v20, v32, v20
	v_div_scale_f32 v32, null, v27, v27, v125
	v_div_fixup_f32 v16, v17, v27, v130
	v_fmac_f32_e32 v18, v21, v19
	v_fma_f32 v17, -v25, v29, v24
	v_div_scale_f32 v21, s11, v127, v27, v127
	v_fma_f32 v34, -v28, v33, 1.0
	v_rcp_f32_e32 v35, v32
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v10, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v26, -v30, v18, v26
	v_fmac_f32_e32 v29, v17, v22
	v_dual_mul_f32 v30, v21, v20 :: v_dual_fmac_f32 v33, v34, v33
	v_div_scale_f32 v34, s12, v126, v27, v126
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v13, v13, v27, v133
	v_div_fmas_f32 v17, v26, v19, v18
	v_fma_f32 v18, -v25, v29, v24
	v_fma_f32 v19, -v31, v30, v21
	v_mul_f32_e32 v24, v34, v33
	v_fma_f32 v25, -v32, v35, 1.0
	v_div_scale_f32 v26, null, v27, v27, v124
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v30, v19, v20
	v_div_fmas_f32 v18, v18, v22, v29
	v_rcp_f32_e32 v22, v26
	v_fma_f32 v19, -v28, v24, v34
	v_fmac_f32_e32 v35, v25, v35
	v_div_scale_f32 v25, s9, v125, v27, v125
	v_fma_f32 v21, -v31, v30, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v19, v33
	v_div_scale_f32 v31, null, v27, v27, v123
	v_mul_f32_e32 v29, v25, v35
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v19, -v26, v22, 1.0
	v_div_fmas_f32 v20, v21, v20, v30
	v_fma_f32 v21, -v28, v24, v34
	v_fma_f32 v28, -v32, v29, v25
	v_rcp_f32_e32 v30, v31
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v22, v19, v22
	v_div_scale_f32 v34, s10, v124, v27, v124
	v_div_fmas_f32 v21, v21, v33, v24
	v_fmac_f32_e32 v29, v28, v35
	v_rcp_f32_e32 v24, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v28, v34, v22
	v_div_fixup_f32 v19, v20, v27, v127
	v_fma_f32 v33, -v31, v30, 1.0
	v_div_fixup_f32 v20, v21, v27, v126
	v_fma_f32 v21, -v32, v29, v25
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v25, -v26, v28, v34
	v_fmac_f32_e32 v30, v33, v30
	v_div_scale_f32 v32, s11, v123, v27, v123
	v_fma_f32 v33, -v36, v24, 1.0
	v_div_fmas_f32 v21, v21, v35, v29
	v_rcp_f32_e32 v29, v37
	v_div_scale_f32 v35, null, v27, v27, v120
	v_fmac_f32_e32 v28, v25, v22
	v_dual_mul_f32 v25, v32, v30 :: v_dual_fmac_f32 v24, v33, v24
	v_div_scale_f32 v33, s9, v122, v27, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v35
	v_fma_f32 v26, -v26, v28, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v31, v25, v32
	v_mul_f32_e32 v38, v33, v24
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v37, v29, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v14, v14, v27, v132
	v_div_fmas_f32 v22, v26, v22, v28
	v_fmac_f32_e32 v25, v34, v30
	v_fma_f32 v26, -v36, v38, v33
	v_fmac_f32_e32 v29, v40, v29
	v_div_scale_f32 v28, s10, v121, v27, v121
	v_fma_f32 v34, -v35, v39, 1.0
	v_fma_f32 v31, -v31, v25, v32
	v_fmac_f32_e32 v38, v26, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v26, v28, v29
	v_div_scale_f32 v32, s12, v120, v27, v120
	v_fmac_f32_e32 v39, v34, v39
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v34, null, v0, v0, v119
	v_div_fmas_f32 v25, v31, v30, v25
	v_fma_f32 v30, -v36, v38, v33
	v_fma_f32 v31, -v37, v26, v28
	v_mul_f32_e32 v36, v32, v39
	v_div_scale_f32 v40, null, v0, v0, v118
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v33, v34
	v_div_fmas_f32 v30, v30, v24, v38
	v_fmac_f32_e32 v26, v31, v29
	v_rcp_f32_e32 v31, v40
	v_fma_f32 v38, -v35, v36, v32
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v24, v25, v27, v123
	v_fma_f32 v28, -v37, v26, v28
	v_div_fixup_f32 v25, v30, v27, v122
	v_fmac_f32_e32 v36, v38, v39
	v_div_scale_f32 v38, null, v0, v0, v117
	v_fma_f32 v41, -v34, v33, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v40, v31, 1.0
	v_div_fmas_f32 v26, v28, v29, v26
	v_fma_f32 v28, -v35, v36, v32
	v_rcp_f32_e32 v32, v38
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v30, s9, v119, v0, v119
	v_fmac_f32_e32 v31, v37, v31
	v_div_scale_f32 v37, null, v0, v0, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v29, v30, v33
	v_div_scale_f32 v35, s10, v118, v0, v118
	v_fma_f32 v41, -v38, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v42, v37
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v17, v17, v27, v129
	v_div_fmas_f32 v28, v28, v39, v36
	v_fma_f32 v36, -v34, v29, v30
	v_dual_mul_f32 v39, v35, v31 :: v_dual_fmac_f32 v32, v41, v32
	v_div_scale_f32 v41, null, v0, v0, v115
	v_div_fixup_f32 v18, v18, v27, v128
	v_div_fixup_f32 v21, v21, v27, v125
	v_div_fixup_f32 v22, v22, v27, v124
	v_div_fixup_f32 v26, v26, v27, v121
	v_div_fixup_f32 v27, v28, v27, v120
	v_fmac_f32_e32 v29, v36, v33
	v_fma_f32 v28, -v40, v39, v35
	v_div_scale_f32 v36, s11, v117, v0, v117
	v_fma_f32 v43, -v37, v42, 1.0
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v30, -v34, v29, v30
	v_fmac_f32_e32 v39, v28, v31
	v_mul_f32_e32 v34, v36, v32
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s12, v116, v0, v116
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v45, null, v0, v0, v111
	v_div_fmas_f32 v28, v30, v33, v29
	v_fma_f32 v29, -v40, v39, v35
	v_fma_f32 v30, -v38, v34, v36
	v_mul_f32_e32 v33, v43, v42
	v_fma_f32 v35, -v41, v44, 1.0
	v_div_scale_f32 v40, null, v0, v0, v113
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v34, v30, v32
	v_div_fmas_f32 v29, v29, v31, v39
	v_rcp_f32_e32 v39, v40
	v_fma_f32 v30, -v37, v33, v43
	v_fmac_f32_e32 v44, v35, v44
	v_div_scale_f32 v35, s9, v115, v0, v115
	v_fma_f32 v31, -v38, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v30, v42
	v_div_scale_f32 v38, null, v0, v0, v112
	v_mul_f32_e32 v36, v35, v44
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v30, -v40, v39, 1.0
	v_div_fmas_f32 v31, v31, v32, v34
	v_fma_f32 v32, -v37, v33, v43
	v_fma_f32 v34, -v41, v36, v35
	v_rcp_f32_e32 v37, v38
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v39, v30, v39
	v_div_scale_f32 v43, s10, v113, v0, v113
	v_div_fmas_f32 v32, v32, v42, v33
	v_fmac_f32_e32 v36, v34, v44
	v_div_fixup_f32 v30, v31, v0, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v43, v39
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v42, -v38, v37, 1.0
	v_div_fixup_f32 v31, v32, v0, v116
	v_fma_f32 v32, -v41, v36, v35
	v_fma_f32 v35, -v40, v33, v43
	v_div_scale_f32 v41, s11, v112, v0, v112
	v_fmac_f32_e32 v37, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v44, v36
	v_div_scale_f32 v44, null, v0, v0, v109
	v_rcp_f32_e32 v34, v45
	v_fmac_f32_e32 v33, v35, v39
	v_mul_f32_e32 v35, v41, v37
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v46, null, v0, v0, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v40, v33, v43
	v_fma_f32 v43, -v38, v35, v41
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v36, v46
	v_fma_f32 v42, -v45, v34, 1.0
	v_div_fmas_f32 v33, v40, v39, v33
	v_fmac_f32_e32 v35, v43, v37
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v44, v48, 1.0
	v_div_scale_f32 v40, s10, v110, v0, v110
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v38, -v38, v35, v41
	v_fmac_f32_e32 v48, v43, v48
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, s9, v111, v0, v111
	v_fma_f32 v49, -v46, v36, 1.0
	v_div_scale_f32 v41, s12, v109, v0, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v42, v34
	v_div_scale_f32 v43, null, v0, v0, v108
	v_fmac_f32_e32 v36, v49, v36
	v_div_fmas_f32 v35, v38, v37, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v45, v47, v42
	v_div_scale_f32 v49, null, v0, v0, v107
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v52, null, v0, v0, v104
	v_fmac_f32_e32 v47, v39, v34
	v_mul_f32_e32 v39, v40, v36
	v_div_scale_f32 v54, null, v0, v0, v103
	v_div_fixup_f32 v28, v28, v0, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v42
	v_fma_f32 v38, -v46, v39, v40
	v_rcp_f32_e32 v42, v43
	v_mul_f32_e32 v45, v41, v48
	v_div_fixup_f32 v29, v29, v0, v118
	v_div_fmas_f32 v37, v37, v34, v47
	v_fmac_f32_e32 v39, v38, v36
	v_rcp_f32_e32 v38, v49
	v_fma_f32 v47, -v44, v45, v41
	v_div_fixup_f32 v34, v35, v0, v112
	v_div_fixup_f32 v35, v37, v0, v111
	v_fma_f32 v37, -v46, v39, v40
	v_fma_f32 v50, -v43, v42, 1.0
	v_fmac_f32_e32 v45, v47, v48
	v_div_scale_f32 v47, null, v0, v0, v106
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v49, v38, 1.0
	v_fmac_f32_e32 v42, v50, v42
	v_div_scale_f32 v40, s9, v108, v0, v108
	v_div_fmas_f32 v36, v37, v36, v39
	v_fma_f32 v37, -v44, v45, v41
	v_fmac_f32_e32 v38, v46, v38
	v_rcp_f32_e32 v41, v47
	v_div_scale_f32 v46, null, v0, v0, v105
	v_mul_f32_e32 v39, v40, v42
	v_div_scale_f32 v44, s10, v107, v0, v107
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v51, v46
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v32, v32, v0, v115
	v_div_fmas_f32 v37, v37, v48, v45
	v_fma_f32 v45, -v43, v39, v40
	v_mul_f32_e32 v48, v44, v38
	v_fma_f32 v50, -v47, v41, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v33, v33, v0, v113
	v_fmac_f32_e32 v39, v45, v42
	v_fma_f32 v45, -v49, v48, v44
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, s11, v106, v0, v106
	v_fma_f32 v53, -v46, v51, 1.0
	v_fma_f32 v40, -v43, v39, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v48, v45, v38 :: v_dual_mul_f32 v43, v50, v41
	v_rcp_f32_e32 v45, v52
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s12, v105, v0, v105
	v_div_fmas_f32 v39, v40, v42, v39
	v_fma_f32 v40, -v49, v48, v44
	v_fma_f32 v42, -v47, v43, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v53, v51
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v36, v36, v0, v110
	v_div_fmas_f32 v40, v40, v38, v48
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v46, v44, v53
	v_div_fixup_f32 v38, v39, v0, v108
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v39, v40, v0, v107
	v_fma_f32 v40, -v47, v43, v50
	v_fmac_f32_e32 v44, v42, v51
	v_div_scale_f32 v50, null, v23, v23, v102
	v_fma_f32 v49, -v52, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v41, v43
	v_fma_f32 v41, -v46, v44, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v46, v50
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v48, v54
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s9, v104, v0, v104
	v_div_fmas_f32 v41, v41, v51, v44
	v_div_scale_f32 v53, null, v23, v23, v101
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v51, -v50, v46, 1.0
	v_div_fixup_f32 v37, v37, v0, v109
	v_fma_f32 v47, -v54, v48, 1.0
	v_div_fixup_f32 v40, v40, v0, v106
	v_div_fixup_f32 v41, v41, v0, v105
	v_fmac_f32_e32 v46, v51, v46
	v_mul_f32_e32 v42, v49, v45
	v_fmac_f32_e32 v48, v47, v48
	v_div_scale_f32 v47, s10, v103, v0, v103
	v_div_scale_f32 v51, s11, v102, v23, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v52, v42, v49
	v_mul_f32_e32 v44, v47, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v42, v43, v45
	v_rcp_f32_e32 v43, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v49, -v52, v42, v49
	v_fma_f32 v52, -v54, v44, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v42, v49, v45, v42
	v_fma_f32 v55, -v53, v43, 1.0
	v_dual_fmac_f32 v44, v52, v48 :: v_dual_mul_f32 v45, v51, v46
	v_rcp_f32_e32 v49, v56
	v_div_scale_f32 v52, s9, v101, v23, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v55, v43
	v_fma_f32 v47, -v54, v44, v47
	v_fma_f32 v54, -v50, v45, v51
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v42, v42, v0, v104
	v_mul_f32_e32 v57, v52, v43
	v_div_fmas_f32 v44, v47, v48, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v56, v49, 1.0
	v_fmac_f32_e32 v45, v54, v46
	v_div_scale_f32 v48, s10, v100, v23, v100
	v_fma_f32 v47, -v53, v57, v52
	v_fmac_f32_e32 v49, v59, v49
	v_div_fixup_f32 v0, v44, v0, v103
	v_fma_f32 v44, -v50, v45, v51
	v_div_scale_f32 v51, null, v23, v23, v98
	v_fmac_f32_e32 v57, v47, v43
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v55, null, v23, v23, v99
	v_mul_f32_e32 v47, v48, v49
	v_div_fmas_f32 v44, v44, v46, v45
	v_fma_f32 v45, -v53, v57, v52
	v_rcp_f32_e32 v52, v51
	v_rcp_f32_e32 v58, v55
	v_fma_f32 v46, -v56, v47, v48
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v50, s12, v99, v23, v99
	v_div_fmas_f32 v45, v45, v43, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v47, v46, v49
	v_div_fixup_f32 v43, v44, v23, v102
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v59, -v51, v52, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v55, v58, 1.0
	v_div_fixup_f32 v44, v45, v23, v101
	v_fma_f32 v45, -v56, v47, v48
	v_div_scale_f32 v48, s9, v98, v23, v98
	v_fmac_f32_e32 v52, v59, v52
	v_div_scale_f32 v56, null, v23, v23, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v45, v45, v49, v47
	v_div_scale_f32 v59, null, v23, v23, v74
	v_dual_mul_f32 v49, v48, v52 :: v_dual_fmac_f32 v58, v54, v58
	v_div_scale_f32 v54, null, v23, v23, v89
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v60, v59
	v_mul_f32_e32 v53, v50, v58
	v_rcp_f32_e32 v57, v54
	v_div_fixup_f32 v45, v45, v23, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v46, -v55, v53, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v62, -v59, v60, 1.0
	v_fmac_f32_e32 v53, v46, v58
	v_fma_f32 v46, -v54, v57, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v47, -v55, v53, v50
	v_rcp_f32_e32 v50, v56
	v_fmac_f32_e32 v57, v46, v57
	v_div_scale_f32 v55, s10, v89, v23, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v46, v47, v58, v53
	v_fma_f32 v47, -v51, v49, v48
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v53, v55, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v46, v46, v23, v99
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v58, -v56, v50, 1.0
	v_fmac_f32_e32 v49, v47, v52
	v_fma_f32 v47, -v54, v53, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v50, v58, v50
	v_div_scale_f32 v58, s11, v88, v23, v88
	v_fma_f32 v48, -v51, v49, v48
	v_fmac_f32_e32 v53, v47, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v51, v58, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v48, v52, v49
	v_fma_f32 v48, -v54, v53, v55
	v_div_scale_f32 v55, null, v23, v23, v73
	v_fma_f32 v49, -v56, v51, v58
	v_fmac_f32_e32 v60, v62, v60
	v_div_scale_f32 v62, s12, v74, v23, v74
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v51, v49, v50
	v_div_fmas_f32 v48, v48, v57, v53
	v_rcp_f32_e32 v53, v55
	v_mul_f32_e32 v52, v62, v60
	v_fma_f32 v54, -v61, v63, 1.0
	v_fma_f32 v56, -v56, v51, v58
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v58, null, v23, v23, v72
	v_fma_f32 v49, -v59, v52, v62
	v_fmac_f32_e32 v63, v54, v63
	v_div_scale_f32 v54, s9, v66, v23, v66
	v_div_fmas_f32 v50, v56, v50, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v52, v49, v60
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v49, -v55, v53, 1.0
	v_div_fixup_f32 v47, v47, v23, v98
	v_div_fixup_f32 v48, v48, v23, v89
	v_fma_f32 v51, -v59, v52, v62
	v_rcp_f32_e32 v59, v58
	v_fmac_f32_e32 v53, v49, v53
	v_div_scale_f32 v62, s10, v73, v23, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v51, v51, v60, v52
	v_rcp_f32_e32 v52, v64
	v_mul_f32_e32 v57, v54, v63
	v_div_fixup_f32 v49, v50, v23, v88
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v50, v51, v23, v74
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v60, -v58, v59, 1.0
	v_fma_f32 v56, -v61, v57, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v57, v56, v63 :: v_dual_mul_f32 v56, v62, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v51, -v61, v57, v54
	v_fma_f32 v54, -v55, v56, v62
	v_fma_f32 v61, -v64, v52, 1.0
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, s11, v72, v23, v72
	v_div_fmas_f32 v51, v51, v63, v57
	v_rcp_f32_e32 v57, v65
	v_fmac_f32_e32 v56, v54, v53
	v_fmac_f32_e32 v52, v61, v52
	v_div_scale_f32 v61, s9, v71, v23, v71
	v_div_fixup_f32 v51, v51, v23, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v55, -v55, v56, v62
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v63, null, v23, v23, v69
	v_fma_f32 v68, -v65, v57, 1.0
	v_mul_f32_e32 v66, v61, v52
	v_div_fmas_f32 v53, v55, v53, v56
	v_div_scale_f32 v56, s10, v70, v23, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v68, v57
	v_fma_f32 v55, -v64, v66, v61
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v67, v63
	v_div_scale_f32 v68, null, v23, v23, v80
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v66, v55, v52 :: v_dual_mul_f32 v55, v56, v57
	v_mul_f32_e32 v54, v60, v59
	v_div_fixup_f32 v53, v53, v23, v73
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v62, -v58, v54, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v54, v62, v59
	v_fma_f32 v62, -v63, v67, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v58, v54, v60
	v_div_scale_f32 v60, s12, v69, v23, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v58, v59, v54
	v_fma_f32 v58, -v64, v66, v61
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v59, -v65, v55, v56
	v_div_fixup_f32 v54, v54, v23, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v52, v58, v52, v66
	v_rcp_f32_e32 v58, v68
	v_fmac_f32_e32 v55, v59, v57
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v72, null, v10, v10, v76
	v_div_fixup_f32 v52, v52, v23, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v65, v55, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v74, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v68, v58, 1.0
	v_fmac_f32_e32 v67, v62, v67
	v_div_scale_f32 v62, null, v23, v23, v81
	v_div_fmas_f32 v55, v56, v57, v55
	v_fmac_f32_e32 v58, v65, v58
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v61, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v55, v23, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v62, v61, 1.0
	v_dual_mul_f32 v64, v60, v67 :: v_dual_fmac_f32 v61, v66, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v63, v64, v60
	v_fmac_f32_e32 v64, v59, v67
	v_div_scale_f32 v59, s9, v81, v23, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v59, v61
	v_fma_f32 v65, -v62, v57, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v65, v61
	v_fma_f32 v56, -v63, v64, v60
	v_div_scale_f32 v60, null, v10, v10, v78
	v_div_scale_f32 v63, s10, v80, v23, v80
	v_div_fmas_f32 v56, v56, v67, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v64, v60
	v_div_scale_f32 v67, null, v10, v10, v77
	v_fma_f32 v59, -v62, v57, v59
	v_div_fixup_f32 v56, v56, v23, v69
	v_div_scale_f32 v62, null, v10, v10, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v67
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v60, v64, 1.0
	v_div_fmas_f32 v57, v59, v61, v57
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v64, v70, v64
	v_mul_f32_e32 v66, v63, v58
	v_rcp_f32_e32 v70, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v67, v69, 1.0
	v_div_fixup_f32 v57, v57, v23, v81
	v_fma_f32 v65, -v68, v66, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v71, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v66, v65, v58
	v_div_scale_f32 v65, s11, v78, v10, v78
	v_fma_f32 v59, -v68, v66, v63
	v_div_scale_f32 v63, s9, v77, v10, v77
	v_fma_f32 v68, -v62, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v58, v59, v58, v66
	v_mul_f32_e32 v73, v63, v69
	v_mul_f32_e32 v61, v65, v64
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v58, v23, v80
	v_fma_f32 v59, -v67, v73, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v60, v61, v65
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, s12, v79, v10, v79
	v_fmac_f32_e32 v73, v59, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v71, v64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v66, v68, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v60, v61, v65
	v_div_scale_f32 v65, null, v10, v10, v75
	v_fma_f32 v59, -v62, v66, v68
	v_fma_f32 v60, -v72, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v58, v58, v64, v61
	v_fma_f32 v61, -v67, v73, v63
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v66, v59, v70
	v_rcp_f32_e32 v59, v65
	v_div_scale_f32 v64, null, v10, v10, v82
	v_div_fmas_f32 v61, v61, v69, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v62, v66, v68
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v58, v58, v10, v78
	v_div_fixup_f32 v61, v61, v10, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v62, v62, v70, v66
	v_fma_f32 v67, -v65, v59, 1.0
	v_fmac_f32_e32 v74, v60, v74
	v_div_scale_f32 v60, s10, v76, v10, v76
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v59, v67, v59
	v_div_scale_f32 v67, s9, v75, v10, v75
	v_mul_f32_e32 v63, v60, v74
	v_div_scale_f32 v70, null, v10, v10, v86
	v_rcp_f32_e32 v66, v64
	v_div_fixup_f32 v62, v62, v10, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v72, v63, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v63, v68, v74 :: v_dual_mul_f32 v68, v67, v59
	v_fma_f32 v69, -v64, v66, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v65, v68, v67
	v_fmac_f32_e32 v68, v71, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v72, v63, v60
	v_rcp_f32_e32 v72, v70
	v_div_scale_f32 v71, null, v10, v10, v85
	v_fma_f32 v65, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v60, v60, v74, v63
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v74, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v59, v65, v59, v68
	v_div_scale_f32 v65, null, v10, v10, v84
	v_fma_f32 v73, -v70, v72, 1.0
	v_div_fixup_f32 v60, v60, v10, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v59, v59, v10, v75
	v_div_scale_f32 v75, null, v10, v10, v87
	v_rcp_f32_e32 v68, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v65, v68, 1.0
	v_fma_f32 v79, -v75, v77, 1.0
	v_fmac_f32_e32 v72, v73, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v76, v68
	v_div_scale_f32 v76, null, v10, v10, v83
	v_dual_fmac_f32 v77, v79, v77 :: v_dual_fmac_f32 v66, v69, v66
	v_div_scale_f32 v69, s11, v82, v10, v82
	v_fma_f32 v73, -v71, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v76
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v63, v69, v66
	v_div_scale_f32 v78, s11, v84, v10, v84
	v_fmac_f32_e32 v74, v73, v74
	v_div_scale_f32 v73, s10, v85, v10, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v64, v63, v69
	v_mul_f32_e32 v81, v78, v68
	v_div_scale_f32 v79, s12, v87, v10, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v63, v67, v66
	v_div_scale_f32 v67, s9, v86, v10, v86
	v_fma_f32 v64, -v64, v63, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v69, v67, v72
	v_div_fmas_f32 v63, v64, v66, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v70, v69, v67
	v_mul_f32_e32 v66, v73, v74
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v63, v63, v10, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v64, v72
	v_fma_f32 v64, -v71, v66, v73
	v_fma_f32 v82, -v76, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v70, v69, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v66, v64, v74
	v_fma_f32 v64, -v65, v81, v78
	v_mul_f32_e32 v70, v79, v77
	v_fmac_f32_e32 v80, v82, v80
	v_div_fmas_f32 v67, v67, v72, v69
	v_fma_f32 v69, -v71, v66, v73
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v81, v64, v68
	v_fma_f32 v64, -v75, v70, v79
	v_div_scale_f32 v71, s9, v83, v10, v83
	v_div_fmas_f32 v66, v69, v74, v66
	v_div_scale_f32 v69, null, v10, v10, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v64, v77
	v_fma_f32 v65, -v65, v81, v78
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v73, v69
	v_mul_f32_e32 v64, v71, v80
	v_div_scale_f32 v74, null, v10, v10, v95
	v_div_fmas_f32 v65, v65, v68, v81
	v_fma_f32 v68, -v75, v70, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v72, -v76, v64, v71
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v66, v66, v10, v85
	v_rcp_f32_e32 v78, v74
	v_div_fmas_f32 v68, v68, v77, v70
	v_fmac_f32_e32 v64, v72, v80
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v72, -v69, v73, 1.0
	v_div_fixup_f32 v65, v65, v10, v84
	v_div_fixup_f32 v68, v68, v10, v87
	v_fma_f32 v70, -v76, v64, v71
	v_div_scale_f32 v71, null, v10, v10, v93
	v_fmac_f32_e32 v73, v72, v73
	v_div_scale_f32 v72, null, v10, v10, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v64, v70, v80, v64
	v_rcp_f32_e32 v70, v71
	v_div_scale_f32 v75, vcc_lo, v97, v10, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v76, v72
	v_div_fixup_f32 v64, v64, v10, v83
	v_div_scale_f32 v80, null, v10, v10, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v79, v75, v73
	v_fma_f32 v84, -v74, v78, 1.0
	v_div_fixup_f32 v67, v67, v10, v86
	v_fma_f32 v77, -v71, v70, 1.0
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v83, -v69, v79, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v81, -v72, v76, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, s9, v93, v10, v93
	v_fmac_f32_e32 v79, v83, v73
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v77, v70
	v_fma_f32 v86, -v80, v82, 1.0
	v_fma_f32 v69, -v69, v79, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v71, v85, v77
	v_fmac_f32_e32 v76, v81, v76
	v_div_scale_f32 v81, s10, v96, v10, v96
	v_div_fmas_f32 v69, v69, v73, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v83, v70
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v87, v81, v76
	s_mov_b32 s9, 0xc1000000
	v_div_fixup_f32 v69, v69, v10, v97
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v72, v87, v81
	v_fmac_f32_e32 v78, v84, v78
	v_div_scale_f32 v84, s11, v95, v10, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s12, v94, v10, v94
	v_fmac_f32_e32 v87, v75, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v84, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v89, v86, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v71, v85, v77
	v_fma_f32 v83, -v74, v88, v84
	v_fma_f32 v73, -v80, v89, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v71, v70, v85
	v_fmac_f32_e32 v88, v83, v78
	v_fmac_f32_e32 v89, v73, v82
	v_fma_f32 v71, -v72, v87, v81
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v70, v70, v10, v93
	v_fma_f32 v72, -v74, v88, v84
	v_fma_f32 v73, -v80, v89, v86
	v_div_fmas_f32 v71, v71, v76, v87
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v72, v78, v88
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v71, v71, v10, v96
	v_div_fmas_f32 v73, v73, v82, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v72, v72, v10, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v73, v10, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v73, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v74, v23
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v75, v60
	v_cvt_i32_f32_e32 v79, v10
	v_and_b32_e32 v10, 15, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v39, 15, v41
	v_and_b32_e32 v41, 15, v0
	v_and_b32_e32 v52, 15, v54
	v_and_b32_e32 v54, 15, v55
	v_and_b32_e32 v55, 15, v56
	v_and_b32_e32 v56, 15, v57
	v_and_b32_e32 v57, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v90
	v_and_b32_e32 v74, 16, v90
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
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
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v45
	v_and_b32_e32 v45, 15, v46
	v_and_b32_e32 v46, 15, v47
	v_and_b32_e32 v47, 15, v48
	v_and_b32_e32 v48, 15, v49
	v_and_b32_e32 v49, 15, v50
	v_and_b32_e32 v50, 15, v51
	v_and_b32_e32 v51, 15, v53
	v_and_b32_e32 v53, 15, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v73, 4, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_cvt_i32_f32_e32 v76, v59
	v_and_b32_e32 v59, 15, v61
	v_and_b32_e32 v61, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v75, 6, v74
	v_xor_b32_e32 v8, v73, v8
	v_lshlrev_b32_e32 v73, 6, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v75
	v_and_or_b32 v6, 0x1b00, v73, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v77, v65
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v78, v64
	v_cvt_i32_f32_e32 v69, v69
	v_and_b32_e32 v58, 15, v58
	v_and_b32_e32 v60, 15, v62
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v8, v7
	v_xad_u32 v6, v6, v92, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v64, 15, v67
	v_and_b32_e32 v65, 15, v66
	v_and_b32_e32 v66, 15, v77
	v_and_b32_e32 v67, 15, v68
	v_and_b32_e32 v68, 15, v78
	v_and_b32_e32 v69, 15, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v6
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
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[22:25], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[38:41], v6 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_and_b32_e32 v62, 15, v76
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_and_b32_e32 v73, 15, v79
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_and_b32_e32 v63, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v70, 15, v70
	v_and_b32_e32 v71, 15, v71
	v_and_b32_e32 v72, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v18, 4, v10
	v_lshl_or_b32 v18, v19, 4, v11
	v_lshl_or_b32 v19, v20, 4, v12
	v_lshl_or_b32 v20, v21, 4, v13
	v_lshl_or_b32 v21, v34, 4, v26
	v_lshl_or_b32 v26, v39, 4, v31
	v_lshl_or_b32 v31, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v91
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 32, v5
	v_lshl_or_b32 v0, s37, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v22, 4, v14
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 48, v5
	v_mad_u64_u32 v[7:8], null, v5, s9, v[0:1]
	v_mad_u64_u32 v[10:11], null, v10, s9, v[0:1]
	v_mad_u64_u32 v[11:12], null, v12, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v22, v35, 4, v27
	v_lshl_or_b32 v23, v36, 4, v28
	v_lshl_or_b32 v24, v37, 4, v29
	v_lshl_or_b32 v25, v38, 4, v30
	v_lshl_or_b32 v27, v40, 4, v32
	v_lshl_or_b32 v28, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v13, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v20.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v6.l
	v_lshlrev_b16 v4.l, 8, v17.l
	v_and_b16 v5.l, 0xff, v16.l
	v_lshlrev_b16 v5.h, 8, v15.l
	v_and_b16 v6.l, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v54, 4, v46
	v_lshl_or_b32 v34, v55, 4, v47
	v_lshl_or_b32 v35, v56, 4, v48
	v_lshl_or_b32 v36, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v0.h, v0.l
	v_or_b16 v13.l, v2.l, v1.l
	v_or_b16 v14.h, v5.l, v4.l
	v_or_b16 v14.l, v6.l, v5.h
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v23.l
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v5.l, 0xff, v27.l
	v_lshlrev_b16 v5.h, 8, v26.l
	v_and_b16 v6.l, 0xff, v25.l
	s_mov_b32 s12, s16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v50, 4, v42
	v_lshl_or_b32 v30, v51, 4, v43
	v_lshl_or_b32 v32, v53, 4, v45
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v70, 4, v62
	v_lshl_or_b32 v42, v71, 4, v63
	v_lshl_or_b32 v43, v72, 4, v64
	v_lshl_or_b32 v45, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[13:14], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_or_b16 v8.h, v5.l, v4.l
	v_or_b16 v8.l, v6.l, v5.h
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v5.l, 0xff, v35.l
	v_lshlrev_b16 v5.h, 8, v34.l
	v_and_b16 v6.l, 0xff, v33.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v66, 4, v58
	v_lshl_or_b32 v38, v67, 4, v59
	v_lshl_or_b32 v39, v68, 4, v60
	v_lshl_or_b32 v40, v69, 4, v61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	buffer_store_b64 v[7:8], v10, s[12:15], 0 offen
	v_or_b16 v8.h, v5.l, v4.l
	v_or_b16 v8.l, v6.l, v5.h
	v_lshlrev_b16 v4.l, 8, v45.l
	v_and_b16 v5.l, 0xff, v43.l
	v_lshlrev_b16 v5.h, 8, v42.l
	v_and_b16 v6.l, 0xff, v41.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_cndmask_b32_e32 v13, 0x80000000, v11, vcc_lo
	v_or_b16 v11.h, v5.l, v4.l
	v_or_b16 v11.l, v6.l, v5.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v90
	v_lshrrev_b32_e32 v6, 2, v74
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_dual_cndmask_b32 v0, 0x80000000, v12 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v13, s[12:15], 0 offen
	buffer_store_b64 v[10:11], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v4, v6, v5, v44
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
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v90
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s37, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 220
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 220
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18812
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 220
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
    .private_segment_fixed_size: 220
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 54
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
