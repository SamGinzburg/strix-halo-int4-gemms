	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[36:37], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v134, 16, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v68, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v0
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
	v_add_co_u32 v2, s2, s28, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s29, 0, s2
	v_add_nc_u32_e32 v65, s28, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s36, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s28, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow299
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v69, 15, v0
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v70, 0xf0, v0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_mov_b32_e32 v125, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s24, s[0:1], 0x58
	s_load_b32 s38, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s28, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s29, 0, s0
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v19, 2, v70
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[4:5]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, vcc_lo, v2, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s20, s6, s4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[4:5]
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v4, s28, v69
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s21, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s4, s[20:21], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[6:7]
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v5, 16, v4
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v143, v4, s36
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v6, 32, v4
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v4, 48, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[30:31], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[8:9]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v7, 1, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v146, v4, s36
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s5, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s37, 8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v136, 24, v2
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v3, 1, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v144, v5, s36
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v5, s7, v7
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v8, 24, v4
	v_xor3_b32 v2, v7, v2, v4
	v_bfe_u32 v7, v0, 4, 1
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v137, 4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v147, v69, 5, v8
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v3, 5, v3
	v_and_or_b32 v7, v4, 30, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v145, v6, s36
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s24, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v6, 0x80, v5
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s20, s6, s4
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v2, 24, v2
	v_lshl_add_u32 v1, v1, 5, 0
	v_xor_b32_e32 v8, 8, v147
	v_xor_b32_e32 v9, 16, v147
	v_xor_b32_e32 v10, 24, v147
	v_xor_b32_e32 v11, 0x208, v147
	v_xor_b32_e32 v12, 0x218, v147
	v_xor_b32_e32 v13, 0x210, v147
	v_xor_b32_e32 v14, 0x410, v147
	v_xor_b32_e32 v15, 0x418, v147
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v148, 2, v7
	v_xor_b32_e32 v7, 0x408, v147
	v_xor_b32_e32 v16, 0x618, v147
	v_xor_b32_e32 v17, 0x610, v147
	v_xor_b32_e32 v18, 0x608, v147
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v3, 0, v19, v3
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v19, 1, v70
	v_mad_u64_u32 v[66:67], null, v5, s24, s[20:21]
	v_mad_u64_u32 v[67:68], null, v6, s24, s[20:21]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v138, 3, v136
	v_or_b32_e32 v139, 4, v136
	v_or_b32_e32 v140, 5, v136
	v_or_b32_e32 v141, 6, v136
	v_or_b32_e32 v142, 7, v136
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s36, s4
	v_xor_b32_e32 v149, 4, v148
	v_cmp_eq_u32_e64 s4, 0, v134
	v_or_b32_e32 v150, s7, v0
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v151, v1, v2
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v152, 0, v8
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v153, 0, v9
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v154, 0, v10
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v155, 0, v11
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v156, 0, v12
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v157, 0, v13
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v158, 0, v14
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v159, 0, v15
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v160, 0, v7
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v161, 0, v16
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v162, 0, v17
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v163, 0, v18
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v164, v3, v4
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v165, 0, v19
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v68, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s6, 0
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
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
	s_lshl_b32 s7, s6, 7
	s_mov_b32 s39, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_add_i32 s40, s39, s7
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v166, 1, v136
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v169, s40, v136
	v_or_b32_e32 v170, s40, v138
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v167, 2, v136
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v168, s40, v137
	v_or_b32_e32 v171, s40, v139
	v_or_b32_e32 v172, s40, v140
	v_or_b32_e32 v173, s40, v141
	v_or_b32_e32 v180, s40, v142
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[174:175], null, v169, s38, v[65:66]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v166, s40, v166
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[175:176], null, v170, s38, v[65:66]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v167, s40, v167
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[176:177], null, v171, s38, v[65:66]
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v169, v66, v168
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[177:178], null, v172, s38, v[65:66]
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v170, v67, v168
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[178:179], null, v173, s38, v[65:66]
	v_mad_u64_u32 v[179:180], null, v180, s38, v[65:66]
	v_mad_u64_u32 v[180:181], null, v166, s38, v[65:66]
	v_mad_u64_u32 v[181:182], null, v167, s38, v[65:66]
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[166:169], v169, s[8:11], 0 offen
	buffer_load_b128 v[170:173], v170, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	s_clause 0x7
	buffer_load_u8 v179, v179, s[20:23], 0 offen
	buffer_load_u8 v177, v177, s[20:23], 0 offen
	buffer_load_u8 v175, v175, s[20:23], 0 offen
	buffer_load_u8 v178, v178, s[20:23], 0 offen
	buffer_load_u8 v176, v176, s[20:23], 0 offen
	buffer_load_u8 v180, v180, s[20:23], 0 offen
	buffer_load_u8 v181, v181, s[20:23], 0 offen
	buffer_load_u8 v174, v174, s[20:23], 0 offen
	v_add_nc_u32_e32 v212, 0, v147
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s40, s39, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s39, 0x60
	s_mov_b32 s39, s40
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(9)
	ds_bpermute_b32 v182, v148, v166
	ds_bpermute_b32 v183, v148, v167
	ds_bpermute_b32 v184, v148, v168
	ds_bpermute_b32 v185, v148, v169
	ds_bpermute_b32 v186, v149, v166
	ds_bpermute_b32 v187, v149, v167
	ds_bpermute_b32 v188, v149, v168
	ds_bpermute_b32 v189, v149, v169
	s_waitcnt vmcnt(8)
	ds_bpermute_b32 v190, v148, v170
	ds_bpermute_b32 v191, v148, v171
	ds_bpermute_b32 v192, v148, v172
	ds_bpermute_b32 v193, v148, v173
	ds_bpermute_b32 v170, v149, v170
	ds_bpermute_b32 v171, v149, v171
	ds_bpermute_b32 v172, v149, v172
	ds_bpermute_b32 v173, v149, v173
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v166.l, 8, v179.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v166.h, 8, v177.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v167.l, 8, v175.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v167.h, 8, v180.l
	v_or_b16 v169.h, v178.l, v166.l
	v_or_b16 v169.l, v176.l, v166.h
	s_waitcnt vmcnt(1)
	v_or_b16 v168.h, v181.l, v167.l
	s_waitcnt vmcnt(0)
	v_or_b16 v168.l, v174.l, v167.h
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v174, v186, v182, s4
	v_cndmask_b32_e64 v176, v182, v186, s4
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v175, v187, v183, s4
	v_cndmask_b32_e64 v177, v183, v187, s4
	s_waitcnt lgkmcnt(9)
	v_cndmask_b32_e64 v178, v188, v184, s4
	v_cndmask_b32_e64 v180, v184, v188, s4
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v179, v189, v185, s4
	v_cndmask_b32_e64 v181, v185, v189, s4
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v182, v170, v190, s4
	v_cndmask_b32_e64 v184, v190, v170, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v183, v171, v191, s4
	v_cndmask_b32_e64 v185, v191, v171, s4
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v186, v172, v192, s4
	v_cndmask_b32_e64 v188, v192, v172, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v187, v173, v193, s4
	v_cndmask_b32_e64 v189, v193, v173, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_store_b64 v151, v[168:169]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[166:169], v212 offset1:1
	ds_load_b64 v[190:191], v155
	ds_load_b64 v[192:193], v158
	ds_load_b64 v[194:195], v161
	ds_load_b64 v[196:197], v152
	ds_load_b64 v[198:199], v153
	ds_load_b64 v[200:201], v154
	ds_load_b64 v[202:203], v156
	ds_load_b64 v[204:205], v157
	ds_load_b64 v[206:207], v159
	ds_load_b64 v[208:209], v160
	ds_load_b64 v[210:211], v162
	ds_load_2addr_stride64_b64 v[170:173], v212 offset0:2 offset1:3
	ds_load_b64 v[212:213], v163
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[174:175], v[166:167], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[182:183], v[166:167], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[174:175], v[190:191], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[182:183], v[190:191], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[174:175], v[192:193], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[182:183], v[192:193], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[174:175], v[194:195], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[182:183], v[194:195], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[178:179], v[196:197], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[196:197], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[178:179], v[168:169], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[168:169], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[178:179], v[206:207], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[206:207], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[178:179], v[210:211], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[210:211], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[176:177], v[198:199], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[198:199], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[176:177], v[202:203], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[184:185], v[202:203], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[176:177], v[170:171], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[184:185], v[170:171], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[176:177], v[212:213], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[184:185], v[212:213], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[180:181], v[200:201], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[200:201], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[180:181], v[204:205], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[204:205], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[180:181], v[208:209], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[208:209], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[180:181], v[172:173], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[172:173], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v166, s6, v143, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s6, s5
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v167, s6, v144, 1
	v_add_lshl_u32 v168, s6, v145, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s7, s33
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v169, s6, v146, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v170, v150, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v166, 0x80000000, v166, vcc_lo
	v_cndmask_b32_e64 v167, 0x80000000, v167, s0
	v_cndmask_b32_e64 v168, 0x80000000, v168, s1
	v_cndmask_b32_e64 v169, 0x80000000, v169, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v170, v170, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v166, v166, s[24:27], 0 offen
	buffer_load_u16 v167, v167, s[24:27], 0 offen
	buffer_load_u16 v168, v168, s[24:27], 0 offen
	buffer_load_u16 v169, v169, s[24:27], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v1
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v172, v2
	v_cvt_f32_i32_e32 v173, v3
	v_cvt_f32_i32_e32 v174, v4
	v_cvt_f32_i32_e32 v175, v5
	v_cvt_f32_i32_e32 v176, v6
	v_cvt_f32_i32_e32 v177, v7
	v_cvt_f32_i32_e32 v178, v8
	v_cvt_f32_i32_e32 v179, v9
	v_cvt_f32_i32_e32 v180, v10
	v_cvt_f32_i32_e32 v181, v11
	v_cvt_f32_i32_e32 v182, v12
	v_cvt_f32_i32_e32 v183, v13
	v_cvt_f32_i32_e32 v184, v14
	v_cvt_f32_i32_e32 v185, v15
	v_cvt_f32_i32_e32 v186, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v25, v25
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
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s36
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v170
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v25, v25, v167 :: v_dual_lshlrev_b32 v166, 16, v166
	v_mul_f32_e32 v30, v30, v167
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v164, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v165
	ds_load_b128 v[5:8], v165 offset:16
	ds_load_b128 v[9:12], v165 offset:512
	ds_load_b128 v[13:16], v165 offset:528
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v170, v179, v166 :: v_dual_lshlrev_b32 v169, 16, v169
	v_mul_f32_e32 v179, v184, v166
	v_dual_mul_f32 v184, v185, v166 :: v_dual_mul_f32 v31, v31, v167
	v_dual_mul_f32 v185, v186, v166 :: v_dual_mul_f32 v32, v32, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v41, v41, v168 :: v_dual_mul_f32 v62, v62, v169
	v_dual_mul_f32 v46, v46, v168 :: v_dual_mul_f32 v57, v57, v169
	v_dual_mul_f32 v47, v47, v168 :: v_dual_mul_f32 v64, v64, v169
	v_dual_mul_f32 v48, v48, v168 :: v_dual_mul_f32 v63, v63, v169
	v_dual_mul_f32 v174, v166, v174 :: v_dual_mul_f32 v19, v167, v19
	v_dual_mul_f32 v173, v166, v173 :: v_dual_mul_f32 v20, v167, v20
	v_dual_mul_f32 v172, v166, v172 :: v_dual_mul_f32 v17, v167, v17
	v_dual_mul_f32 v171, v166, v171 :: v_dual_mul_f32 v18, v167, v18
	v_dual_mul_f32 v178, v166, v178 :: v_dual_mul_f32 v23, v167, v23
	v_dual_mul_f32 v177, v166, v177 :: v_dual_mul_f32 v24, v167, v24
	v_dual_mul_f32 v176, v166, v176 :: v_dual_mul_f32 v21, v167, v21
	v_dual_mul_f32 v175, v166, v175 :: v_dual_mul_f32 v22, v167, v22
	v_dual_mul_f32 v183, v166, v183 :: v_dual_mul_f32 v28, v167, v28
	v_dual_mul_f32 v182, v166, v182 :: v_dual_mul_f32 v29, v167, v29
	v_dual_mul_f32 v181, v166, v181 :: v_dual_mul_f32 v26, v167, v26
	v_dual_mul_f32 v166, v166, v180 :: v_dual_mul_f32 v27, v167, v27
	v_dual_mul_f32 v36, v168, v36 :: v_dual_mul_f32 v51, v169, v51
	v_dual_mul_f32 v35, v168, v35 :: v_dual_mul_f32 v52, v169, v52
	v_dual_mul_f32 v34, v168, v34 :: v_dual_mul_f32 v49, v169, v49
	v_dual_mul_f32 v33, v168, v33 :: v_dual_mul_f32 v50, v169, v50
	v_dual_mul_f32 v40, v168, v40 :: v_dual_mul_f32 v55, v169, v55
	v_dual_mul_f32 v39, v168, v39 :: v_dual_mul_f32 v56, v169, v56
	v_dual_mul_f32 v38, v168, v38 :: v_dual_mul_f32 v53, v169, v53
	v_dual_mul_f32 v37, v168, v37 :: v_dual_mul_f32 v54, v169, v54
	v_dual_mul_f32 v45, v168, v45 :: v_dual_mul_f32 v60, v169, v60
	v_dual_mul_f32 v44, v168, v44 :: v_dual_mul_f32 v61, v169, v61
	v_dual_mul_f32 v43, v168, v43 :: v_dual_mul_f32 v58, v169, v58
	v_dual_mul_f32 v42, v168, v42 :: v_dual_mul_f32 v59, v169, v59
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v133, v171, v1 :: v_dual_fmac_f32 v132, v172, v2
	v_dual_fmac_f32 v131, v173, v3 :: v_dual_fmac_f32 v130, v174, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v129, v175, v5 :: v_dual_fmac_f32 v128, v176, v6
	v_dual_fmac_f32 v127, v177, v7 :: v_dual_fmac_f32 v126, v178, v8
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v125, v170, v9 :: v_dual_fmac_f32 v120, v179, v14
	v_dual_fmac_f32 v124, v166, v10 :: v_dual_fmac_f32 v123, v181, v11
	v_dual_fmac_f32 v122, v182, v12 :: v_dual_fmac_f32 v121, v183, v13
	v_dual_fmac_f32 v119, v184, v15 :: v_dual_fmac_f32 v118, v185, v16
	v_dual_fmac_f32 v117, v17, v1 :: v_dual_fmac_f32 v116, v18, v2
	v_dual_fmac_f32 v115, v19, v3 :: v_dual_fmac_f32 v114, v20, v4
	v_dual_fmac_f32 v113, v21, v5 :: v_dual_fmac_f32 v112, v22, v6
	v_dual_fmac_f32 v111, v23, v7 :: v_dual_fmac_f32 v110, v24, v8
	v_dual_fmac_f32 v109, v25, v9 :: v_dual_fmac_f32 v108, v26, v10
	v_dual_fmac_f32 v107, v27, v11 :: v_dual_fmac_f32 v106, v28, v12
	v_dual_fmac_f32 v105, v29, v13 :: v_dual_fmac_f32 v104, v30, v14
	v_dual_fmac_f32 v103, v31, v15 :: v_dual_fmac_f32 v102, v32, v16
	v_dual_fmac_f32 v101, v33, v1 :: v_dual_fmac_f32 v100, v34, v2
	v_dual_fmac_f32 v99, v35, v3 :: v_dual_fmac_f32 v98, v36, v4
	v_dual_fmac_f32 v97, v37, v5 :: v_dual_fmac_f32 v96, v38, v6
	v_dual_fmac_f32 v95, v39, v7 :: v_dual_fmac_f32 v94, v40, v8
	v_dual_fmac_f32 v93, v41, v9 :: v_dual_fmac_f32 v92, v42, v10
	v_dual_fmac_f32 v91, v43, v11 :: v_dual_fmac_f32 v90, v44, v12
	v_dual_fmac_f32 v89, v45, v13 :: v_dual_fmac_f32 v88, v46, v14
	v_dual_fmac_f32 v87, v47, v15 :: v_dual_fmac_f32 v86, v48, v16
	v_dual_fmac_f32 v85, v49, v1 :: v_dual_fmac_f32 v84, v50, v2
	v_dual_fmac_f32 v83, v51, v3 :: v_dual_fmac_f32 v82, v52, v4
	v_dual_fmac_f32 v81, v53, v5 :: v_dual_fmac_f32 v80, v54, v6
	v_dual_fmac_f32 v79, v55, v7 :: v_dual_fmac_f32 v78, v56, v8
	v_dual_fmac_f32 v77, v57, v9 :: v_dual_fmac_f32 v76, v58, v10
	v_dual_fmac_f32 v75, v59, v11 :: v_dual_fmac_f32 v74, v60, v12
	v_dual_fmac_f32 v68, v61, v13 :: v_dual_fmac_f32 v73, v62, v14
	v_dual_fmac_f32 v72, v63, v15 :: v_dual_fmac_f32 v71, v64, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v4, v134 :: v_dual_mov_b32 v3, v65
.LBB0_9:                                ; %._crit_edge
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v132|, |v132|
	v_max_f32_e64 v2, |v133|, |v133|
	v_max3_f32 v5, |v130|, |v129|, |v128|
	v_max3_f32 v6, |v124|, |v123|, |v122|
	v_max3_f32 v7, |v121|, |v120|, |v119|
	v_max_f32_e64 v8, |v117|, |v117|
	v_max_f32_e32 v1, v2, v1
	v_max_f32_e64 v2, |v116|, |v116|
	v_max3_f32 v11, |v108|, |v107|, |v106|
	v_max3_f32 v6, v6, v7, |v118|
	v_max_f32_e64 v7, |v101|, |v101|
	v_max3_f32 v12, |v105|, |v104|, |v103|
	v_max_f32_e32 v2, v8, v2
	v_max3_f32 v1, v1, |v131|, v5
	v_max_f32_e64 v5, |v100|, |v100|
	v_max3_f32 v8, |v114|, |v113|, |v112|
	v_max3_f32 v13, |v92|, |v91|, |v90|
	v_max3_f32 v14, |v89|, |v88|, |v87|
	v_max3_f32 v9, |v127|, |v126|, |v125|
	v_max3_f32 v10, |v111|, |v110|, |v109|
	v_max3_f32 v2, v2, |v115|, v8
	v_max3_f32 v8, v11, v12, |v102|
	v_max_f32_e64 v12, |v84|, |v84|
	v_max_f32_e32 v5, v7, v5
	v_max3_f32 v7, |v98|, |v97|, |v96|
	v_max3_f32 v11, |v95|, |v94|, |v93|
	v_max3_f32 v1, v1, v9, v6
	v_max3_f32 v2, v2, v10, v8
	v_max3_f32 v9, |v76|, |v75|, |v74|
	v_max3_f32 v5, v5, |v99|, v7
	v_max3_f32 v7, v13, v14, |v86|
	v_max_f32_e64 v13, |v85|, |v85|
	v_max3_f32 v10, |v68|, |v73|, |v72|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v8, |v79|, |v78|, |v77|
	v_max3_f32 v5, v5, v11, v7
	v_max_f32_e32 v6, v13, v12
	v_max3_f32 v7, |v82|, |v81|, |v80|
	v_max3_f32 v9, v9, v10, |v71|
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 3, v0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v83|, v7
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v7, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v15, 0x80, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v8, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v7, v7, v7
	v_dual_max_f32 v11, v2, v11 :: v_dual_max_f32 v12, v5, v12
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v14, 9, 0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v1, v7 :: v_dual_and_b32 v9, 0x60, v0
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v7, 5, v14
	v_permlanex16_b32 v1, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 4, v0
	v_and_b32_e32 v16, 8, v0
	v_lshrrev_b32_e32 v18, 3, v15
	v_xor_b32_e32 v17, v7, v9
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v8, 4, v0
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v2, 2, v5
	v_lshl_add_u32 v20, v2, 6, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_or_b32 v13, 0x680, v8, v7
	v_lshlrev_b32_e32 v8, 1, v15
	v_lshl_add_u32 v5, v16, 4, v5
.Ltmp15:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v19, v13, v9
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v6, v1
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v5, v8, v17
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v5, v20, v18, v19
	ds_store_b128 v1, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v10
	v_dual_mov_b32 v5, v11 :: v_dual_mov_b32 v6, v12
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_add_nc_u32 v15, 0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_lshlrev_b32 v16, 3, v16
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v10, v1 :: v_dual_max_f32 v10, v12, v12
	v_max_f32_e32 v5, v5, v5
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v10, v6 :: v_dual_max_f32 v5, v11, v5
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v13, v13
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v11, v13, v13
	v_max_f32_e32 v10, v17, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v12
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v17, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v11, v6 :: v_dual_max_f32 v12, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v18, v10, v12 :: v_dual_max_f32 v11, v11, v11
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v19, v18
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v12, v6 :: v_dual_max_f32 v13, v13, v13
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v13
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v17, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v13, v13
	v_max_f32_e32 v11, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v10, v1, v10 :: v_dual_max_f32 v1, v12, v12
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v17, 1, v9
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v5, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v5, v19, v19 :: v_dual_max_f32 v12, v6, v1
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v2
	v_lshl_add_u32 v2, v14, 4, 0
.Ltmp39:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v6, 4, v70
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v18, v5
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v15, v17, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v2, v1, v16
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v18, 16, v6
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v5, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v1
.Ltmp44:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v10, v10 :: v_dual_max_f32 v12, v12, v12
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 32, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v21, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, 0x2b8cbccc, v1 :: v_dual_max_f32 v12, 0x2b8cbccc, v12
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v21, 0x2b8cbccc, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v19, vcc_lo, v5, 0x40e00000, v5
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v12
	v_rcp_f32_e32 v17, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s28, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s29, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v22, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v14, v17
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s28, v10
	v_add_co_ci_u32_e64 v15, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v23, v19, v17
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s0, s28, v18
	v_add_co_ci_u32_e64 v11, null, s29, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v18, -v16, v23, v19
	v_max_f32_e32 v1, v13, v13
	v_fma_f32 v2, -v20, v22, 1.0
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v21
	v_fmac_f32_e32 v23, v18, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v18, 0x2b8cbccc, v1
	v_fmac_f32_e32 v22, v2, v22
	v_div_scale_f32 v2, s7, v12, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v1, -v16, v23, v19
	v_rcp_f32_e32 v16, v13
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v18
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[14:15]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v17, v23
	v_mul_f32_e32 v17, v2, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v23, v19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[14:15]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v15.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	v_fma_f32 v14, -v13, v16, 1.0
	v_fma_f32 v5, -v20, v17, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[10:11]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v16, v14, v16
	v_div_scale_f32 v14, s8, v21, 0x40e00000, v21
	v_fma_f32 v24, -v19, v23, 1.0
	v_fmac_f32_e32 v17, v5, v22
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v15.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v25, v14, v16
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, s9, v18, 0x40e00000, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v10, -v13, v25, v14
	v_fma_f32 v2, -v20, v17, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v11, v24, v23
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v25, v10, v16
	v_div_fmas_f32 v17, v2, v22, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v10, -v19, v11, v24
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v28, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v13, v25, v14
	v_div_fixup_f32 v12, v17, 0x40e00000, v12
	v_fmac_f32_e32 v11, v10, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s28, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v14, null, v28, v28, v133
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v10, v13, v16, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v19, v11, v24
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v13, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v15.l, v12.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v10, v10, 0x40e00000, v21
	v_div_fmas_f32 v11, v16, v23, v11
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v16, null, v28, v28, v132
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s29, 0, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v17, 1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v20, v16
	v_fma_f32 v19, -v14, v13, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v11, v11, 0x40e00000, v18
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v18.l, v10.h
	v_mov_b16_e32 v18.h, v15.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[1:2]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v13, v19, v13
	v_div_scale_f32 v19, vcc_lo, v133, v28, v133
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[30:31], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v12, v17, 0x7fff
	v_mov_b16_e32 v15.l, v11.h
	v_and_b32_e32 v2, 1, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v12, v19, v13
	v_fma_f32 v17, -v16, v20, 1.0
	v_div_scale_f32 v18, null, v28, v28, v131
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v21, -v14, v12, v19
	v_fmac_f32_e32 v20, v17, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v17, v18
	v_div_scale_f32 v22, null, v28, v28, v130
	v_div_scale_f32 v23, s9, v132, v28, v132
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v10, v2, 0x7fff
	v_add3_u32 v2, v11, v15, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v12, v21, v13
	v_rcp_f32_e32 v15, v22
	v_mul_f32_e32 v21, v23, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v18, v17, 1.0
	v_div_scale_f32 v27, null, v28, v28, v129
	v_fma_f32 v14, -v14, v12, v19
	v_fma_f32 v19, -v16, v21, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v17, v25, v17
	v_div_scale_f32 v25, s10, v131, v28, v131
	v_fma_f32 v26, -v22, v15, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v19, v20
	v_rcp_f32_e32 v19, v27
	v_div_fmas_f32 v12, v14, v13, v12
	v_dual_mul_f32 v14, v25, v17 :: v_dual_fmac_f32 v15, v26, v15
	v_div_scale_f32 v26, s11, v130, v28, v130
	v_div_scale_f32 v29, null, v28, v28, v128
	v_fma_f32 v13, -v16, v21, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v18, v14, v25
	v_mul_f32_e32 v23, v26, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v31, -v27, v19, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v14, v16, v17
	v_div_fmas_f32 v13, v13, v20, v21
	v_fma_f32 v16, -v22, v23, v26
	v_fmac_f32_e32 v19, v31, v19
	v_div_scale_f32 v20, s9, v129, v28, v129
	v_fma_f32 v18, -v18, v14, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v29, v30, 1.0
	v_fmac_f32_e32 v23, v16, v15
	v_mul_f32_e32 v16, v20, v19
	v_div_scale_f32 v25, null, v28, v28, v127
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v30, v21, v30
	v_div_scale_f32 v21, s12, v128, v28, v128
	v_div_fmas_f32 v14, v18, v17, v14
	v_fma_f32 v17, -v22, v23, v26
	v_fma_f32 v18, -v27, v16, v20
	v_rcp_f32_e32 v22, v25
	v_div_scale_f32 v31, null, v28, v28, v126
	v_mul_f32_e32 v26, v21, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v18, v19
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v18, v31
	v_div_fmas_f32 v15, v17, v15, v23
	v_fma_f32 v17, -v29, v26, v21
	v_fma_f32 v20, -v27, v16, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v25, v22, 1.0
	v_div_scale_f32 v27, null, v28, v28, v125
	v_fmac_f32_e32 v26, v17, v30
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, s10, v127, v28, v127
	v_fma_f32 v17, -v31, v18, 1.0
	v_div_fmas_f32 v16, v20, v19, v16
	v_fma_f32 v19, -v29, v26, v21
	v_mul_f32_e32 v20, v23, v22
	v_rcp_f32_e32 v21, v27
	v_fmac_f32_e32 v18, v17, v18
	v_div_scale_f32 v29, s9, v126, v28, v126
	v_div_scale_f32 v32, null, v28, v28, v124
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v34, null, v28, v28, v123
	v_div_fmas_f32 v17, v19, v30, v26
	v_fma_f32 v19, -v25, v20, v23
	v_mul_f32_e32 v26, v29, v18
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v30, -v27, v21, 1.0
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v20, v19, v22
	v_fma_f32 v19, -v31, v26, v29
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s11, v125, v28, v125
	v_fma_f32 v23, -v25, v20, v23
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v32, v33, 1.0
	v_dual_fmac_f32 v26, v19, v18 :: v_dual_mul_f32 v25, v30, v21
	v_div_scale_f32 v38, null, v28, v28, v119
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v35, v33
	v_div_scale_f32 v35, s12, v124, v28, v124
	v_div_fmas_f32 v19, v23, v22, v20
	v_fma_f32 v20, -v31, v26, v29
	v_div_scale_f32 v31, null, v28, v28, v122
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v22, -v27, v25, v30
	v_mul_f32_e32 v23, v35, v33
	v_fma_f32 v29, -v34, v36, 1.0
	v_div_fmas_f32 v20, v20, v18, v26
	v_rcp_f32_e32 v26, v31
	v_fmac_f32_e32 v25, v22, v21
	v_fma_f32 v22, -v32, v23, v35
	v_fmac_f32_e32 v36, v29, v36
	v_div_scale_f32 v29, s9, v123, v28, v123
	v_div_fixup_f32 v18, v19, v28, v127
	v_div_fixup_f32 v19, v20, v28, v126
	v_fma_f32 v20, -v27, v25, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v23, v22, v33 :: v_dual_mul_f32 v22, v29, v36
	v_fma_f32 v27, -v31, v26, 1.0
	v_div_scale_f32 v30, null, v28, v28, v121
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v43, 0xffff0000, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v20, v20, v21, v25
	v_fma_f32 v21, -v32, v23, v35
	v_fma_f32 v25, -v34, v22, v29
	v_fmac_f32_e32 v26, v27, v26
	v_rcp_f32_e32 v27, v30
	v_div_scale_f32 v32, s10, v122, v28, v122
	v_div_scale_f32 v35, null, v28, v28, v120
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v22, v25, v36
	v_div_fmas_f32 v21, v21, v33, v23
	v_rcp_f32_e32 v25, v35
	v_mul_f32_e32 v23, v32, v26
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v30, v27, 1.0
	v_fma_f32 v29, -v34, v22, v29
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v12, v12, v28, v133
	v_fma_f32 v34, -v31, v23, v32
	v_fmac_f32_e32 v27, v33, v27
	v_div_scale_f32 v33, s11, v121, v28, v121
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v35, v25, 1.0
	v_fmac_f32_e32 v23, v34, v26
	v_rcp_f32_e32 v34, v38
	v_div_fmas_f32 v22, v29, v36, v22
	v_mul_f32_e32 v29, v33, v27
	v_fmac_f32_e32 v25, v37, v25
	v_div_scale_f32 v36, s9, v120, v28, v120
	v_div_scale_f32 v37, null, v28, v28, v118
	v_fma_f32 v31, -v31, v23, v32
	v_fma_f32 v32, -v30, v29, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v36, v25
	v_rcp_f32_e32 v40, v37
	v_fma_f32 v41, -v38, v34, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v29, v32, v27
	v_div_fmas_f32 v23, v31, v26, v23
	v_fma_f32 v26, -v35, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v31, s10, v119, v28, v119
	v_fma_f32 v30, -v30, v29, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v37, v40, 1.0
	v_fmac_f32_e32 v39, v26, v25
	v_mul_f32_e32 v33, v31, v34
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v13, v13, v28, v132
	v_fmac_f32_e32 v40, v32, v40
	v_div_scale_f32 v32, s12, v118, v28, v118
	v_div_fmas_f32 v26, v30, v27, v29
	v_fma_f32 v27, -v35, v39, v36
	v_fma_f32 v29, -v38, v33, v31
	v_div_scale_f32 v36, null, v43, v43, v116
	v_mul_f32_e32 v35, v32, v40
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v29, v34
	v_rcp_f32_e32 v29, v36
	v_div_fmas_f32 v27, v27, v25, v39
	v_fma_f32 v39, -v37, v35, v32
	v_div_fixup_f32 v25, v26, v28, v121
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v14, v14, v28, v131
	v_div_fixup_f32 v26, v27, v28, v120
	v_fma_f32 v27, -v38, v33, v31
	v_fmac_f32_e32 v35, v39, v40
	v_div_fixup_f32 v15, v15, v28, v130
	v_fma_f32 v38, -v36, v29, 1.0
	v_div_fixup_f32 v16, v16, v28, v129
	v_div_fmas_f32 v27, v27, v34, v33
	v_fma_f32 v32, -v37, v35, v32
	v_div_scale_f32 v37, s10, v116, v43, v116
	v_fmac_f32_e32 v29, v38, v29
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v17, v17, v28, v128
	v_div_fmas_f32 v32, v32, v40, v35
	v_div_fixup_f32 v20, v20, v28, v125
	v_mul_f32_e32 v40, v37, v29
	v_div_scale_f32 v41, null, v43, v43, v117
	v_div_scale_f32 v39, null, v43, v43, v115
	v_div_scale_f32 v31, s9, v117, v43, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v41
	v_rcp_f32_e32 v34, v39
	v_div_scale_f32 v38, null, v43, v43, v114
	v_div_fixup_f32 v21, v21, v28, v124
	v_div_fixup_f32 v22, v22, v28, v123
	v_div_fixup_f32 v23, v23, v28, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v44, v38
	v_div_fixup_f32 v27, v27, v28, v119
	v_div_fixup_f32 v28, v32, v28, v118
	v_fma_f32 v42, -v41, v30, 1.0
	v_fma_f32 v32, -v36, v40, v37
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v11, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v46, null, v43, v43, v112
	v_fmac_f32_e32 v30, v42, v30
	v_fma_f32 v42, -v39, v34, 1.0
	v_fma_f32 v45, -v38, v44, 1.0
	v_fmac_f32_e32 v40, v32, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v33, v31, v30 :: v_dual_and_b32 v24, 0xffff0000, v1
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, null, v43, v43, v113
	v_fmac_f32_e32 v44, v45, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v41, v33, v31
	v_div_scale_f32 v45, s12, v114, v43, v114
	v_div_scale_f32 v59, null, v24, v24, v98
	v_fmac_f32_e32 v33, v35, v30
	v_div_scale_f32 v35, s11, v115, v43, v115
	v_div_scale_f32 v48, null, v43, v43, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v41, v33, v31
	v_mul_f32_e32 v32, v35, v34
	v_rcp_f32_e32 v41, v42
	v_rcp_f32_e32 v60, v59
	v_div_scale_f32 v52, null, v43, v43, v104
	v_div_fmas_f32 v30, v31, v30, v33
	v_fma_f32 v31, -v36, v40, v37
	v_fma_f32 v33, -v39, v32, v35
	v_mul_f32_e32 v36, v45, v44
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v54, v52
	v_div_fmas_f32 v31, v31, v29, v40
	v_fmac_f32_e32 v32, v33, v34
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v33, -v38, v36, v45
	v_fma_f32 v37, -v42, v41, 1.0
	v_div_fixup_f32 v29, v30, v43, v117
	v_div_fixup_f32 v30, v31, v43, v116
	v_fma_f32 v31, -v39, v32, v35
	v_fmac_f32_e32 v36, v33, v44
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v41, v37, v41
	v_div_scale_f32 v37, s9, v113, v43, v113
	v_fma_f32 v35, -v46, v40, 1.0
	v_div_scale_f32 v39, null, v43, v43, v111
	v_div_fmas_f32 v31, v31, v34, v32
	v_fma_f32 v32, -v38, v36, v45
	v_div_scale_f32 v45, null, v43, v43, v110
	s_mov_b32 vcc_lo, s12
	v_dual_mul_f32 v33, v37, v41 :: v_dual_fmac_f32 v40, v35, v40
	v_rcp_f32_e32 v35, v39
	v_div_fmas_f32 v32, v32, v44, v36
	v_rcp_f32_e32 v36, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v34, -v42, v33, v37
	v_div_scale_f32 v38, s10, v112, v43, v112
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v55, -v52, v54, 1.0
	v_fmac_f32_e32 v33, v34, v41
	v_mul_f32_e32 v34, v38, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v44, -v39, v35, 1.0
	v_div_scale_f32 v57, null, v24, v24, v100
	v_fma_f32 v47, -v45, v36, 1.0
	v_fma_f32 v37, -v42, v33, v37
	v_fma_f32 v42, -v46, v34, v38
	v_fmac_f32_e32 v35, v44, v35
	v_div_scale_f32 v44, s11, v111, v43, v111
	v_fmac_f32_e32 v36, v47, v36
	v_div_scale_f32 v47, null, v43, v43, v108
	v_div_fmas_f32 v33, v37, v41, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v34, v42, v40 :: v_dual_mul_f32 v37, v44, v35
	v_rcp_f32_e32 v41, v48
	v_div_scale_f32 v42, s9, v110, v43, v110
	v_rcp_f32_e32 v50, v47
	v_fma_f32 v38, -v46, v34, v38
	v_fma_f32 v46, -v39, v37, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v49, v42, v36
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v54, v55, v54
	v_div_fmas_f32 v34, v38, v40, v34
	v_fma_f32 v51, -v48, v41, 1.0
	v_fmac_f32_e32 v37, v46, v35
	v_fma_f32 v38, -v45, v49, v42
	v_fma_f32 v46, -v47, v50, 1.0
	v_div_scale_f32 v40, s10, v109, v43, v109
	v_fmac_f32_e32 v41, v51, v41
	v_fma_f32 v39, -v39, v37, v44
	v_fmac_f32_e32 v49, v38, v36
	v_fmac_f32_e32 v50, v46, v50
	v_div_scale_f32 v46, null, v43, v43, v107
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v38, v40, v41
	v_div_scale_f32 v44, s12, v108, v43, v108
	v_div_fmas_f32 v35, v39, v35, v37
	v_fma_f32 v37, -v45, v49, v42
	v_rcp_f32_e32 v42, v46
	v_fma_f32 v39, -v48, v38, v40
	v_mul_f32_e32 v45, v44, v50
	v_div_scale_f32 v51, null, v43, v43, v106
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v38, v39, v41
	v_div_fmas_f32 v36, v37, v36, v49
	v_rcp_f32_e32 v39, v51
	v_fma_f32 v37, -v47, v45, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v42, 1.0
	v_fma_f32 v40, -v48, v38, v40
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v48, s9, v107, v43, v107
	v_fmac_f32_e32 v45, v37, v50
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, null, v43, v43, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v51, v39, 1.0
	v_div_fmas_f32 v38, v40, v41, v38
	v_fma_f32 v40, -v47, v45, v44
	v_rcp_f32_e32 v44, v49
	v_mul_f32_e32 v41, v48, v42
	v_fmac_f32_e32 v39, v37, v39
	v_div_scale_f32 v47, s10, v106, v43, v106
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v37, v38, v43, v109
	v_div_fmas_f32 v40, v40, v50, v45
	v_fma_f32 v45, -v46, v41, v48
	v_mul_f32_e32 v50, v47, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v49, v44, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v38, v40, v43, v108
	v_fmac_f32_e32 v41, v45, v42
	v_fma_f32 v40, -v51, v50, v47
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v53, null, v43, v43, v103
	v_div_scale_f32 v45, s11, v105, v43, v105
	v_fma_f32 v46, -v46, v41, v48
	v_fmac_f32_e32 v50, v40, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v56, v53
	v_mul_f32_e32 v48, v45, v44
	v_div_scale_f32 v55, s12, v104, v43, v104
	v_div_fmas_f32 v40, v46, v42, v41
	v_fma_f32 v41, -v51, v50, v47
	v_div_scale_f32 v51, null, v43, v43, v102
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v42, -v49, v48, v45
	v_mul_f32_e32 v46, v55, v54
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v53, v56, 1.0
	v_div_fmas_f32 v41, v41, v39, v50
	v_rcp_f32_e32 v50, v51
	v_fmac_f32_e32 v48, v42, v44
	v_fma_f32 v42, -v52, v46, v55
	v_fmac_f32_e32 v56, v47, v56
	v_div_scale_f32 v47, s9, v103, v43, v103
	v_div_fixup_f32 v39, v40, v43, v107
	v_div_fixup_f32 v40, v41, v43, v106
	v_fma_f32 v41, -v49, v48, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v46, v42, v54 :: v_dual_mul_f32 v45, v47, v56
	v_fma_f32 v42, -v51, v50, 1.0
	v_div_scale_f32 v49, null, v24, v24, v101
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v58, null, v24, v24, v99
	v_div_fmas_f32 v41, v41, v44, v48
	v_fma_f32 v44, -v52, v46, v55
	v_fma_f32 v48, -v53, v45, v47
	v_fmac_f32_e32 v50, v42, v50
	v_rcp_f32_e32 v52, v49
	v_div_scale_f32 v55, s10, v102, v43, v102
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v45, v48, v56
	v_div_fmas_f32 v42, v44, v54, v46
	v_rcp_f32_e32 v46, v57
	v_mul_f32_e32 v48, v55, v50
	v_div_scale_f32 v54, s11, v101, v24, v101
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v49, v52, 1.0
	v_fma_f32 v47, -v53, v45, v47
	v_fma_f32 v53, -v51, v48, v55
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v31, v31, v43, v115
	v_fmac_f32_e32 v52, v44, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v57, v46, 1.0
	v_fmac_f32_e32 v48, v53, v50
	v_rcp_f32_e32 v53, v58
	v_div_fmas_f32 v45, v47, v56, v45
	v_dual_mul_f32 v47, v54, v52 :: v_dual_fmac_f32 v46, v44, v46
	v_div_scale_f32 v56, s9, v100, v24, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v44, v45, v43, v103
	v_fma_f32 v45, -v51, v48, v55
	v_fma_f32 v51, -v49, v47, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v55, v56, v46
	v_fma_f32 v61, -v58, v53, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v32, v32, v43, v114
	v_div_fmas_f32 v45, v45, v50, v48
	v_fmac_f32_e32 v47, v51, v52
	v_fma_f32 v48, -v57, v55, v56
	v_fmac_f32_e32 v53, v61, v53
	v_div_scale_f32 v50, s10, v99, v24, v99
	v_div_fixup_f32 v33, v33, v43, v113
	v_div_fixup_f32 v34, v34, v43, v112
	v_div_fixup_f32 v35, v35, v43, v111
	v_div_fixup_f32 v36, v36, v43, v110
	v_div_fixup_f32 v41, v41, v43, v105
	v_div_fixup_f32 v42, v42, v43, v104
	v_fma_f32 v51, -v59, v60, 1.0
	v_div_fixup_f32 v43, v45, v43, v102
	v_fma_f32 v45, -v49, v47, v54
	v_dual_fmac_f32 v55, v48, v46 :: v_dual_mul_f32 v48, v50, v53
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v60, v51, v60
	v_div_scale_f32 v51, null, v24, v24, v97
	v_div_fmas_f32 v45, v45, v52, v47
	v_fma_f32 v52, -v58, v48, v50
	v_div_scale_f32 v49, s12, v98, v24, v98
	v_fma_f32 v47, -v57, v55, v56
	v_rcp_f32_e32 v54, v51
	v_div_scale_f32 v57, null, v24, v24, v96
	v_fmac_f32_e32 v48, v52, v53
	v_mul_f32_e32 v56, v49, v60
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v52, v57
	v_div_fmas_f32 v46, v47, v46, v55
	v_fma_f32 v50, -v58, v48, v50
	v_div_scale_f32 v58, null, v24, v24, v95
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v47, -v59, v56, v49
	v_fma_f32 v55, -v51, v54, 1.0
	v_div_fmas_f32 v48, v50, v53, v48
	v_rcp_f32_e32 v53, v58
	v_div_scale_f32 v61, null, v24, v24, v94
	v_fmac_f32_e32 v56, v47, v60
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, s9, v97, v24, v97
	v_fma_f32 v47, -v57, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v59, v56, v49
	v_div_scale_f32 v59, s10, v96, v24, v96
	v_mul_f32_e32 v50, v55, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v52, v47, v52
	v_fma_f32 v62, -v58, v53, 1.0
	v_rcp_f32_e32 v63, v61
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v47, v48, v24, v99
	v_div_fmas_f32 v49, v49, v60, v56
	v_fma_f32 v56, -v51, v50, v55
	v_dual_mul_f32 v60, v59, v52 :: v_dual_fmac_f32 v53, v62, v53
	v_div_scale_f32 v62, null, v24, v24, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v48, v49, v24, v98
	v_fmac_f32_e32 v50, v56, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v57, v60, v59
	v_div_scale_f32 v56, s11, v95, v24, v95
	v_fma_f32 v64, -v61, v63, 1.0
	v_rcp_f32_e32 v65, v62
	v_fma_f32 v51, -v51, v50, v55
	v_dual_fmac_f32 v60, v49, v52 :: v_dual_mul_f32 v55, v56, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, s12, v94, v24, v94
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v66, null, v24, v24, v90
	v_div_fmas_f32 v49, v51, v54, v50
	v_fma_f32 v50, -v57, v60, v59
	v_fma_f32 v51, -v58, v55, v56
	v_mul_f32_e32 v54, v64, v63
	v_fma_f32 v57, -v62, v65, 1.0
	v_div_scale_f32 v59, null, v24, v24, v92
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v55, v51, v53
	v_div_fmas_f32 v50, v50, v52, v60
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v51, -v61, v54, v64
	v_fmac_f32_e32 v65, v57, v65
	v_div_scale_f32 v57, s9, v93, v24, v93
	v_fma_f32 v52, -v58, v55, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v51, v63
	v_div_scale_f32 v58, null, v24, v24, v91
	v_mul_f32_e32 v56, v57, v65
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v59, v60, 1.0
	v_div_fmas_f32 v52, v52, v53, v55
	v_fma_f32 v53, -v61, v54, v64
	v_fma_f32 v55, -v62, v56, v57
	v_rcp_f32_e32 v61, v58
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v60, v51, v60
	v_div_scale_f32 v64, s10, v92, v24, v92
	v_div_fmas_f32 v53, v53, v63, v54
	v_fmac_f32_e32 v56, v55, v65
	v_rcp_f32_e32 v54, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v55, v64, v60
	v_div_fixup_f32 v51, v52, v24, v95
	v_fma_f32 v63, -v58, v61, 1.0
	v_div_fixup_f32 v52, v53, v24, v94
	v_fma_f32 v53, -v62, v56, v57
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v57, -v59, v55, v64
	v_fmac_f32_e32 v61, v63, v61
	v_div_scale_f32 v62, s11, v91, v24, v91
	v_fma_f32 v63, -v66, v54, 1.0
	v_div_scale_f32 v67, null, v24, v24, v89
	v_div_fmas_f32 v53, v53, v65, v56
	v_div_scale_f32 v65, null, v24, v24, v88
	v_dual_mul_f32 v56, v62, v61 :: v_dual_fmac_f32 v55, v57, v60
	v_fmac_f32_e32 v54, v63, v54
	v_rcp_f32_e32 v57, v67
	v_div_scale_f32 v63, s9, v90, v24, v90
	v_rcp_f32_e32 v94, v65
	v_div_fixup_f32 v53, v53, v24, v93
	v_fma_f32 v59, -v59, v55, v64
	v_fma_f32 v64, -v58, v56, v62
	v_mul_f32_e32 v93, v63, v54
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v45, v45, v24, v101
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v67, v57, 1.0
	v_fmac_f32_e32 v56, v64, v61
	v_div_fmas_f32 v55, v59, v60, v55
	v_fma_f32 v59, -v66, v93, v63
	v_fma_f32 v64, -v65, v94, 1.0
	v_fmac_f32_e32 v57, v95, v57
	v_div_scale_f32 v60, s10, v89, v24, v89
	v_fma_f32 v58, -v58, v56, v62
	v_fmac_f32_e32 v93, v59, v54
	v_fmac_f32_e32 v94, v64, v94
	v_div_scale_f32 v64, null, v24, v24, v87
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v59, v60, v57
	v_div_scale_f32 v62, s12, v88, v24, v88
	v_div_fmas_f32 v56, v58, v61, v56
	v_fma_f32 v58, -v66, v93, v63
	v_rcp_f32_e32 v63, v64
	v_div_fixup_f32 v55, v55, v24, v92
	v_fma_f32 v61, -v67, v59, v60
	v_mul_f32_e32 v66, v62, v94
	v_div_scale_f32 v92, null, v24, v24, v86
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v59, v61, v57
	v_div_fmas_f32 v54, v58, v54, v93
	v_rcp_f32_e32 v58, v92
	v_fma_f32 v61, -v65, v66, v62
	v_fma_f32 v93, -v64, v63, 1.0
	v_fma_f32 v60, -v67, v59, v60
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v56, v56, v24, v91
	v_fmac_f32_e32 v66, v61, v94
	v_fmac_f32_e32 v63, v93, v63
	v_div_scale_f32 v61, s9, v87, v24, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v92, v58, 1.0
	v_div_fmas_f32 v57, v60, v57, v59
	v_fma_f32 v59, -v65, v66, v62
	v_mul_f32_e32 v60, v61, v63
	v_div_scale_f32 v62, null, v11, v11, v85
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v58, v67, v58
	v_div_fmas_f32 v59, v59, v94, v66
	v_rcp_f32_e32 v66, v62
	v_fma_f32 v67, -v64, v60, v61
	v_div_scale_f32 v65, s10, v86, v24, v86
	v_div_scale_f32 v91, null, v11, v11, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v67, v63
	v_div_fixup_f32 v54, v54, v24, v90
	v_mul_f32_e32 v90, v65, v58
	v_div_fixup_f32 v57, v57, v24, v89
	v_div_fixup_f32 v59, v59, v24, v88
	v_rcp_f32_e32 v88, v91
	v_fma_f32 v89, -v62, v66, 1.0
	v_fma_f32 v61, -v64, v60, v61
	v_div_scale_f32 v64, null, v11, v11, v83
	v_fma_f32 v67, -v92, v90, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v89, v66
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v89, v64
	v_div_fmas_f32 v60, v61, v63, v60
	v_fmac_f32_e32 v90, v67, v58
	v_div_scale_f32 v67, s11, v85, v11, v85
	v_fma_f32 v93, -v91, v88, 1.0
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v92, v90, v65
	v_mul_f32_e32 v63, v67, v66
	v_div_scale_f32 v65, s9, v84, v11, v84
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v92, -v64, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v62, v63, v67
	v_div_scale_f32 v94, null, v11, v11, v82
	v_mul_f32_e32 v95, v65, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s12, v83, v11, v83
	v_div_fmas_f32 v58, v61, v58, v90
	v_fmac_f32_e32 v63, v93, v66
	v_fma_f32 v61, -v91, v95, v65
	v_mul_f32_e32 v90, v92, v89
	v_div_fixup_f32 v46, v46, v24, v100
	v_div_fixup_f32 v49, v49, v24, v97
	v_div_fixup_f32 v50, v50, v24, v96
	v_rcp_f32_e32 v96, v94
	v_div_fixup_f32 v60, v60, v24, v87
	v_div_fixup_f32 v24, v58, v24, v86
	v_fma_f32 v58, -v62, v63, v67
	v_fmac_f32_e32 v95, v61, v88
	v_fma_f32 v61, -v64, v90, v92
	v_div_scale_f32 v67, null, v11, v11, v81
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v61, v89
	v_rcp_f32_e32 v61, v67
	v_fma_f32 v62, -v94, v96, 1.0
	v_div_fmas_f32 v58, v58, v66, v63
	v_fma_f32 v63, -v91, v95, v65
	v_fma_f32 v64, -v64, v90, v92
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v96, v62, v96
	v_div_scale_f32 v62, s10, v82, v11, v82
	v_div_fmas_f32 v63, v63, v88, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v67, v61, 1.0
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v65, v62, v96
	v_div_fmas_f32 v64, v64, v89, v90
	v_div_fixup_f32 v58, v58, v11, v85
	v_fmac_f32_e32 v61, v86, v61
	v_div_scale_f32 v86, s9, v81, v11, v81
	v_fma_f32 v88, -v94, v65, v62
	v_div_fixup_f32 v64, v64, v11, v83
	v_div_scale_f32 v85, null, v11, v11, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v61
	v_fmac_f32_e32 v65, v88, v96
	v_div_scale_f32 v66, null, v11, v11, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v85
	v_fma_f32 v88, -v67, v83, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v94, v65, v62
	v_rcp_f32_e32 v87, v66
	v_div_fixup_f32 v63, v63, v11, v84
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v83, v88, v61
	v_div_fmas_f32 v62, v62, v96, v65
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v11, v11, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v67, -v67, v83, v86
	v_fma_f32 v86, -v85, v89, 1.0
	v_fma_f32 v84, -v66, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v88
	v_div_fixup_f32 v62, v62, v11, v82
	v_div_fmas_f32 v61, v67, v61, v83
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v11, v11, v76
	v_div_scale_f32 v67, null, v11, v11, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v61, v61, v11, v81
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v88, v90, 1.0
	v_rcp_f32_e32 v83, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v81, v90
	v_div_scale_f32 v81, s10, v78, v11, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v86, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v67, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s12, v76, v11, v76
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, s11, v80, v11, v80
	v_fmac_f32_e32 v83, v91, v83
	v_div_scale_f32 v91, null, v11, v11, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v65, v84, v87
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v93, s11, v77, v11, v77
	v_rcp_f32_e32 v95, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v66, v65, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v93, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v65, v82, v87
	v_div_scale_f32 v82, s9, v79, v11, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v66, v65, v84
	v_mul_f32_e32 v84, v82, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v65, v66, v87, v65
	v_fma_f32 v66, -v85, v84, v82
	v_mul_f32_e32 v87, v81, v90
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v65, v65, v11, v80
	v_fmac_f32_e32 v84, v66, v89
	v_fma_f32 v66, -v88, v87, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v85, v84, v82
	v_fmac_f32_e32 v87, v66, v90
	v_fma_f32 v85, -v91, v95, 1.0
	v_fma_f32 v66, -v67, v96, v93
	v_mul_f32_e32 v82, v94, v92
	v_div_fmas_f32 v80, v80, v89, v84
	v_fma_f32 v81, -v88, v87, v81
	v_fmac_f32_e32 v95, v85, v95
	v_div_scale_f32 v85, null, v11, v11, v74
	v_fmac_f32_e32 v96, v66, v83
	v_fma_f32 v66, -v86, v82, v94
	v_div_scale_f32 v84, s9, v75, v11, v75
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v67, -v67, v96, v93
	v_div_fmas_f32 v81, v81, v90, v87
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v82, v66, v92
	v_mul_f32_e32 v66, v84, v95
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v78, v81, v11, v78
	v_div_fmas_f32 v67, v67, v83, v96
	v_fma_f32 v83, -v86, v82, v94
	v_fma_f32 v86, -v91, v66, v84
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v79, v80, v11, v79
	v_fma_f32 v81, -v85, v87, 1.0
	v_div_fixup_f32 v67, v67, v11, v77
	v_fmac_f32_e32 v66, v86, v95
	v_div_fmas_f32 v82, v83, v92, v82
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, null, v11, v11, v73
	v_fma_f32 v77, -v91, v66, v84
	v_div_scale_f32 v80, null, v11, v11, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v89, null, v11, v11, v71
	v_div_fmas_f32 v66, v77, v95, v66
	v_div_scale_f32 v83, vcc_lo, v74, v11, v74
	v_rcp_f32_e32 v77, v80
	v_div_fixup_f32 v76, v82, v11, v76
	v_div_scale_f32 v82, null, v11, v11, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v88, v83, v87
	v_fma_f32 v90, -v81, v84, 1.0
	v_div_fixup_f32 v66, v66, v11, v75
	v_rcp_f32_e32 v91, v89
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v92, -v85, v88, v83
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s10, v73, v11, v73
	v_fma_f32 v75, -v80, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v90, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v89, v91, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	v_fma_f32 v83, -v85, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v81, v96, v90
	v_fmac_f32_e32 v77, v75, v77
	v_div_scale_f32 v75, s9, v68, v11, v68
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fmac_f32_e32 v96, v85, v84
	v_mul_f32_e32 v94, v75, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s11, v72, v11, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v80, v94, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s12, v71, v11, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v92, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v74, v83, v11, v74
	v_mul_f32_e32 v98, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v80, v94, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v15, v15
	v_med3_f32 v65, v65, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v89, v98, v95
	v_mul_f32_e32 v97, v93, v86
	v_div_fmas_f32 v75, v75, v77, v94
	v_fma_f32 v77, -v81, v96, v90
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v98, v80, v91
	v_fma_f32 v92, -v82, v97, v93
	v_div_fixup_f32 v68, v75, v11, v68
	v_div_fmas_f32 v77, v77, v84, v96
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v89, v98, v95
	v_fmac_f32_e32 v97, v92, v86
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v73, v77, v11, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v80, -v82, v97, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v86, v97
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v61, v61, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v72, v80, v11, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v81, v11, v71
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v79
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v67, v67
	v_med3_f32 v71, v71, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_cvt_i32_f32_e32 v79, v61
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v81, v73
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v64, 15, v65
	v_and_b32_e32 v65, 15, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v73, 10, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v67, 4, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v78, v58
	v_cvt_i32_f32_e32 v80, v66
	v_cvt_i32_f32_e32 v82, v72
	v_and_b32_e32 v66, 15, v75
	v_and_b32_e32 v72, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v75, 0x1800, v73
	v_lshlrev_b32_e32 v76, 6, v4
	v_xor_b32_e32 v9, v67, v9
	v_lshlrev_b32_e32 v67, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v74, v74, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v77, v24
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v7, 0x1b00, v67, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
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
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v51
	v_and_b32_e32 v51, 15, v53
	v_and_b32_e32 v53, 15, v56
	v_and_b32_e32 v56, 15, v59
	v_and_b32_e32 v59, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v78, 0, v75, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v83, v11
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
	v_and_b32_e32 v22, 15, v23
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v39, 15, v41
	v_and_b32_e32 v41, 15, v44
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v50, 15, v52
	v_and_b32_e32 v52, 15, v55
	v_and_b32_e32 v55, 15, v57
	v_and_b32_e32 v57, 15, v60
	v_and_b32_e32 v60, 15, v63
	v_and_b32_e32 v62, 15, v62
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v8, v78, v9, v8
	v_xad_u32 v7, v7, v70, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v54
	v_and_b32_e32 v73, 15, v80
	v_and_b32_e32 v74, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[11:14]
	ds_store_b128 v8, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v7
	ds_load_b128 v[19:22], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[27:30]
	ds_store_b128 v8, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v7
	ds_load_b128 v[35:38], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[43:46]
	ds_store_b128 v8, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v7
	ds_load_b128 v[51:54], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[59:62]
	ds_store_b128 v8, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v7
	ds_load_b128 v[70:73], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[15:18]
	ds_store_b128 v8, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v7
	ds_load_b128 v[23:26], v7 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[31:34]
	ds_store_b128 v8, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[31:34], v7
	ds_load_b128 v[39:42], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v77
	v_and_b32_e32 v63, 15, v79
	v_cvt_i32_f32_e32 v68, v68
	v_and_b32_e32 v76, 15, v81
	v_and_b32_e32 v77, 15, v82
	v_and_b32_e32 v78, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v8, v[47:50]
	ds_store_b128 v8, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v7
	ds_load_b128 v[55:58], v7 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v24, v38, 4, v30
	v_lshl_or_b32 v30, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[63:66]
	ds_store_b128 v8, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v7
	ds_load_b128 v[74:77], v7 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, s28, v6
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v6, s37, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v9, v21, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 16, v11
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 32, v11
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v20, 4, v12
	v_lshl_or_b32 v20, v23, 4, v15
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 48, v11
	v_mad_u64_u32 v[11:12], null, v11, s9, v[6:7]
	v_mad_u64_u32 v[12:13], null, v13, s9, v[6:7]
	v_mad_u64_u32 v[13:14], null, v14, s9, v[6:7]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v35, 4, v27
	v_lshl_or_b32 v22, v36, 4, v28
	v_lshl_or_b32 v25, v39, 4, v31
	v_lshl_or_b32 v26, v40, 4, v32
	v_lshl_or_b32 v27, v41, 4, v33
	v_lshl_or_b32 v28, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s9, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v9.l
	v_lshlrev_b16 v5.l, 8, v8.l
	v_and_b16 v6.l, 0xff, v7.l
	v_lshlrev_b16 v6.h, 8, v18.l
	v_and_b16 v7.l, 0xff, v17.l
	v_lshlrev_b16 v7.h, 8, v16.l
	v_and_b16 v8.l, 0xff, v20.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v37, 4, v29
	v_lshl_or_b32 v33, v55, 4, v47
	v_lshl_or_b32 v34, v56, 4, v48
	v_lshl_or_b32 v35, v57, 4, v49
	v_lshl_or_b32 v36, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v6.l, v5.l
	v_or_b16 v16.h, v7.l, v6.h
	v_or_b16 v16.l, v8.l, v7.h
	v_cndmask_b32_e32 v9, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v6.h, 8, v28.l
	v_and_b16 v7.l, 0xff, v27.l
	v_lshlrev_b16 v7.h, 8, v26.l
	v_and_b16 v8.l, 0xff, v25.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v51, 4, v43
	v_lshl_or_b32 v31, v53, 4, v45
	v_lshl_or_b32 v32, v54, 4, v46
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v74, 4, v63
	v_lshl_or_b32 v42, v75, 4, v64
	v_lshl_or_b32 v43, v76, 4, v65
	v_lshl_or_b32 v45, v77, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v5.l, 8, v22.l
	v_and_b16 v6.l, 0xff, v21.l
	buffer_store_b64 v[15:16], v9, s[12:15], 0 offen
	v_or_b16 v16.h, v7.l, v6.h
	v_or_b16 v16.l, v8.l, v7.h
	v_lshlrev_b16 v6.h, 8, v36.l
	v_and_b16 v7.l, 0xff, v35.l
	v_lshlrev_b16 v7.h, 8, v34.l
	v_and_b16 v8.l, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v70, 4, v59
	v_lshl_or_b32 v38, v71, 4, v60
	v_lshl_or_b32 v39, v72, 4, v61
	v_lshl_or_b32 v40, v73, 4, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v6.l, v5.l
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v6.l, 0xff, v29.l
	v_or_b16 v12.h, v7.l, v6.h
	v_or_b16 v12.l, v8.l, v7.h
	v_lshlrev_b16 v6.h, 8, v45.l
	v_and_b16 v7.l, 0xff, v43.l
	v_lshlrev_b16 v7.h, 8, v42.l
	v_and_b16 v8.l, 0xff, v41.l
	buffer_store_b64 v[15:16], v9, s[12:15], 0 offen
	v_or_b16 v11.h, v2.l, v1.l
	v_or_b16 v11.l, v6.l, v5.l
	v_lshlrev_b16 v1.l, 8, v40.l
	v_and_b16 v2.l, 0xff, v39.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v6.l, 0xff, v37.l
	v_or_b16 v16.h, v7.l, v6.h
	v_or_b16 v16.l, v8.l, v7.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v7, 4, v0
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_cndmask_b32_e32 v9, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.l, v6.l, v5.l
	v_dual_cndmask_b32 v6, 0x80000000, v14 :: v_dual_and_b32 v7, 2, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[11:12], v9, s[12:15], 0 offen
	buffer_store_b64 v[15:16], v6, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v44
	v_mov_b16_e32 v2.l, v10.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v4, v4, v7, v44
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
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s37, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp45:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 214
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 214
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14052
; TotalNumSgprs: 43
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 214
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
