	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v93, 15, v0
	v_lshlrev_b32_e32 v160, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s24, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s25, 0, s2
	v_add_nc_u32_e32 v73, s24, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s30, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s24, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow339
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v94, 0xf0, v0
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v95, 4, v93
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_mov_b32_e32 v151, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x58
	s_load_b32 s34, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s24, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s25, 0, s0
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v1, s24, v93
	v_add_co_u32 v5, vcc_lo, v3, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v4, vcc_lo
	v_add_co_u32 v7, vcc_lo, v3, 32
	v_add_co_ci_u32_e64 v8, null, 0, v4, vcc_lo
	v_add_co_u32 v9, vcc_lo, v3, 48
	v_mov_b32_e32 v161, 0
	v_add_co_ci_u32_e64 v10, null, 0, v4, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[3:4]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v4, 16, v1
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s4
	s_addc_u32 s7, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[7:8]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s21, s[6:7], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[7:8]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v166, v4, s30
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v7, 3, v0
	v_lshrrev_b32_e32 v11, 2, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[5:6]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v162, 3, v94
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v5, 32, v1
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v6, 48, v1
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v7, 24, v7
	v_xor_b32_e32 v11, v4, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[28:29], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[9:10]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v167, v5, s30
	v_mul_lo_u32 v168, v6, s30
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v6, 5, v93
	v_xor_b32_e32 v7, v7, v162
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v17, 0xe00, v160
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v11, 24, v11
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v20, 5, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v163, 24, v3
	s_and_b32 s3, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s4, s31, 8
	v_xor3_b32 v3, v4, v5, v3
	v_and_or_b32 v169, v4, 24, v6
	v_lshl_or_b32 v170, v93, 9, v7
	v_or3_b32 v171, v17, v11, v6
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v24, 2, v94
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v20, 32, v20
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v165, v1, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s4, v95
	v_lshl_add_u32 v2, v2, 5, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s20, s20, s33
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v3, 24, v3
	v_xor_b32_e32 v5, 8, v169
	v_xor_b32_e32 v8, 16, v169
	v_xor_b32_e32 v9, 24, v169
	v_xor_b32_e32 v10, 0x208, v169
	v_xor_b32_e32 v12, 0x218, v169
	v_xor_b32_e32 v13, 0x210, v169
	v_xor_b32_e32 v14, 0x410, v169
	v_xor_b32_e32 v15, 0x418, v169
	v_xor_b32_e32 v16, 0x408, v169
	v_xor_b32_e32 v7, 0x618, v169
	v_xor_b32_e32 v18, 0x610, v169
	v_xor_b32_e32 v19, 0x608, v169
	v_xor_b32_e32 v6, 0x88, v170
	v_xor_b32_e32 v11, 0x110, v170
	v_xor_b32_e32 v17, 0x198, v170
	v_xor_b32_e32 v21, 8, v171
	v_xor_b32_e32 v22, 16, v171
	v_xor_b32_e32 v23, 24, v171
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v20, 0, v24, v20
	v_dual_mov_b32 v99, 0 :: v_dual_lshlrev_b32 v24, 1, v94
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s20, s21, v[1:2]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v164, 7, v163
	v_or_b32_e32 v172, s4, v0
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v173, v2, v3
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v174, 0, v5
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v175, 0, v8
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v176, 0, v9
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v177, 0, v10
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v178, 0, v12
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v179, 0, v13
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v180, 0, v14
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v181, 0, v15
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v182, 0, v16
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v183, 0, v7
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v184, 0, v18
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v185, 0, v19
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v186, 0, v6
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v187, 0, v11
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v188, 0, v17
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v189, 0, v21
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v190, 0, v22
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v191, 0, v23
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v192, v20, v4
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v193, 0, v24
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v101, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s35, s30, s21
	s_mov_b32 s36, 0
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v161
	v_mov_b32_e32 v3, v161
	v_dual_mov_b32 v4, v161 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v161
	v_dual_mov_b32 v6, v161 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v161
	v_dual_mov_b32 v8, v161 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v161 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v161
	v_dual_mov_b32 v12, v161 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v161
	v_dual_mov_b32 v14, v161 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v161
	v_dual_mov_b32 v16, v161 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v161
	v_mov_b32_e32 v19, v161
	v_mov_b32_e32 v20, v161
	v_mov_b32_e32 v21, v161
	v_mov_b32_e32 v22, v161
	v_mov_b32_e32 v23, v161
	v_mov_b32_e32 v24, v161
	v_mov_b32_e32 v26, v161
	v_mov_b32_e32 v27, v161
	v_mov_b32_e32 v28, v161
	v_mov_b32_e32 v29, v161
	v_mov_b32_e32 v30, v161
	v_mov_b32_e32 v31, v161
	v_mov_b32_e32 v32, v161
	v_mov_b32_e32 v34, v161
	v_mov_b32_e32 v35, v161
	v_mov_b32_e32 v36, v161
	v_mov_b32_e32 v37, v161
	v_mov_b32_e32 v38, v161
	v_mov_b32_e32 v39, v161
	v_mov_b32_e32 v40, v161
	v_mov_b32_e32 v42, v161
	v_mov_b32_e32 v43, v161
	v_mov_b32_e32 v44, v161
	v_mov_b32_e32 v45, v161
	v_mov_b32_e32 v46, v161
	v_mov_b32_e32 v47, v161
	v_mov_b32_e32 v48, v161
	v_mov_b32_e32 v50, v161
	v_mov_b32_e32 v51, v161
	v_mov_b32_e32 v52, v161
	v_mov_b32_e32 v53, v161
	v_mov_b32_e32 v54, v161
	v_mov_b32_e32 v55, v161
	v_mov_b32_e32 v56, v161
	v_mov_b32_e32 v58, v161
	v_mov_b32_e32 v59, v161
	v_mov_b32_e32 v60, v161
	v_mov_b32_e32 v61, v161
	v_mov_b32_e32 v62, v161
	v_mov_b32_e32 v63, v161
	v_mov_b32_e32 v64, v161
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s37, s36, 7
	s_mov_b32 s38, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v66, 1, v163
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_add_i32 s39, s38, s37
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v65, 1, v162
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v75, s39, v163
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v67, 2, v163
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v76, s39, v164
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v68, 3, v163
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v72, s39, v162
	v_or_b32_e32 v77, s39, v66
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v69, 4, v163
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v80, s39, v65
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[65:66], null, v75, s34, v[73:74]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v78, s39, v67
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[66:67], null, v76, s34, v[73:74]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v79, s39, v68
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[67:68], null, v72, s33, v[74:75]
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[75:76], null, v77, s34, v[73:74]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v70, 5, v163
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v69, s39, v69
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v71, 6, v163
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[76:77], null, v78, s34, v[73:74]
	v_mad_u64_u32 v[77:78], null, v79, s34, v[73:74]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v81, s39, v70
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[78:79], null, v69, s34, v[73:74]
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[69:70], null, v80, s33, v[74:75]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v71, s39, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[79:80], null, v81, s34, v[73:74]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v82, 0x80000000, v66, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[80:81], null, v71, s34, v[73:74]
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v81, 0x80000000, v65, s2
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[65:68], v67, s[8:11], 0 offen
	buffer_load_b128 v[69:72], v69, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	s_clause 0x7
	buffer_load_u8 v81, v81, s[4:7], 0 offen
	buffer_load_u8 v82, v82, s[4:7], 0 offen
	buffer_load_u8 v79, v79, s[4:7], 0 offen
	buffer_load_u8 v77, v77, s[4:7], 0 offen
	buffer_load_u8 v75, v75, s[4:7], 0 offen
	buffer_load_u8 v80, v80, s[4:7], 0 offen
	buffer_load_u8 v78, v78, s[4:7], 0 offen
	buffer_load_u8 v76, v76, s[4:7], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v216, 0, v170
	v_add_nc_u32_e32 v217, 0, v171
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v87, 0, v169
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s39, s38, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s38, 0x60
	s_mov_b32 s38, s39
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(8)
	v_perm_b32 v83, v69, v65, 0x5010400
	v_perm_b32 v69, v69, v65, 0x7030602
	v_perm_b32 v84, v70, v66, 0x5010400
	v_perm_b32 v70, v70, v66, 0x7030602
	v_perm_b32 v85, v71, v67, 0x5010400
	v_perm_b32 v67, v71, v67, 0x7030602
	v_perm_b32 v71, v72, v68, 0x5010400
	v_perm_b32 v68, v72, v68, 0x7030602
	v_lshrrev_b32_e32 v72, 8, v83
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v66.h, 8, v75.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v75, 24, v83
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_lshlrev_b16 v66.l, 8, v77.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v77, 8, v69
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_lshlrev_b16 v65.h, 8, v79.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v79, 24, v69
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_lshlrev_b16 v65.l, 8, v82.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_and_b16 v194.l, 0xff, v83.l
	v_and_b16 v194.h, 0xff, v83.h
	v_and_b16 v195.l, 0xff, v69.l
	v_and_b16 v195.h, 0xff, v69.h
	v_and_b16 v196.l, 0xff, v84.l
	v_lshrrev_b32_e32 v69, 8, v84
	v_lshrrev_b32_e32 v82, 24, v84
	v_and_b16 v196.h, 0xff, v84.h
	v_and_b16 v197.l, 0xff, v70.l
	v_lshrrev_b32_e32 v83, 8, v70
	v_lshrrev_b32_e32 v84, 24, v70
	v_and_b16 v197.h, 0xff, v70.h
	v_and_b16 v198.l, 0xff, v85.l
	v_lshrrev_b32_e32 v70, 8, v85
	v_lshrrev_b32_e32 v86, 24, v85
	v_and_b16 v198.h, 0xff, v85.h
	v_lshrrev_b32_e32 v85, 8, v67
	v_lshrrev_b32_e32 v88, 24, v67
	v_and_b16 v200.l, 0xff, v71.l
	v_lshrrev_b32_e32 v89, 8, v71
	v_lshrrev_b32_e32 v90, 24, v71
	v_and_b16 v200.h, 0xff, v71.h
	v_lshrrev_b32_e32 v71, 8, v68
	v_lshrrev_b32_e32 v91, 24, v68
	v_lshlrev_b16 v202.l, 8, v72.l
	v_lshlrev_b16 v202.h, 8, v75.l
	v_lshlrev_b16 v203.l, 8, v77.l
	v_lshlrev_b16 v203.h, 8, v79.l
	v_and_b16 v199.l, 0xff, v67.l
	v_and_b16 v199.h, 0xff, v67.h
	v_and_b16 v201.l, 0xff, v68.l
	v_and_b16 v201.h, 0xff, v68.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(2)
	v_or_b16 v68.h, v80.l, v65.l
	s_waitcnt vmcnt(1)
	v_or_b16 v68.l, v78.l, v65.h
	s_waitcnt vmcnt(0)
	v_or_b16 v67.h, v76.l, v66.l
	v_or_b16 v67.l, v81.l, v66.h
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v204.l, 8, v69.l
	v_lshlrev_b16 v204.h, 8, v82.l
	v_lshlrev_b16 v205.l, 8, v83.l
	v_lshlrev_b16 v205.h, 8, v84.l
	v_lshlrev_b16 v206.l, 8, v70.l
	v_lshlrev_b16 v206.h, 8, v86.l
	v_lshlrev_b16 v207.l, 8, v85.l
	v_lshlrev_b16 v207.h, 8, v88.l
	v_lshlrev_b16 v208.l, 8, v89.l
	v_lshlrev_b16 v208.h, 8, v90.l
	v_lshlrev_b16 v209.l, 8, v71.l
	v_lshlrev_b16 v209.h, 8, v91.l
	v_or_b16 v194.l, v194.l, v202.l
	v_or_b16 v194.h, v194.h, v202.h
	v_or_b16 v195.l, v195.l, v203.l
	v_or_b16 v195.h, v195.h, v203.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_store_b64 v173, v[67:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[89:90], v174
	ds_load_b64 v[83:84], v175
	ds_load_b64 v[75:76], v176
	ds_load_b64 v[210:211], v177
	ds_load_b64 v[85:86], v178
	ds_load_b64 v[77:78], v179
	ds_load_b64 v[212:213], v180
	ds_load_b64 v[91:92], v181
	ds_load_2addr_stride64_b64 v[69:72], v87 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v87 offset0:2 offset1:3
	ds_load_b64 v[79:80], v182
	ds_load_b64 v[214:215], v183
	ds_load_b64 v[87:88], v184
	ds_load_b64 v[81:82], v185
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v196.l, v196.l, v204.l
	v_or_b16 v196.h, v196.h, v204.h
	v_or_b16 v197.l, v197.l, v205.l
	v_or_b16 v197.h, v197.h, v205.h
	v_or_b16 v198.l, v198.l, v206.l
	v_or_b16 v198.h, v198.h, v206.h
	v_or_b16 v199.l, v199.l, v207.l
	v_or_b16 v199.h, v199.h, v207.h
	v_or_b16 v200.l, v200.l, v208.l
	v_or_b16 v200.h, v200.h, v208.h
	v_or_b16 v201.l, v201.l, v209.l
	v_or_b16 v201.h, v201.h, v209.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v216, v194
	ds_store_b16_d16_hi v216, v194 offset:32
	ds_store_b16 v216, v195 offset:64
	ds_store_b16_d16_hi v216, v195 offset:96
	ds_store_b16 v186, v196
	ds_store_b16_d16_hi v186, v196 offset:32
	ds_store_b16 v186, v197 offset:64
	ds_store_b16_d16_hi v186, v197 offset:96
	ds_store_b16 v187, v198
	ds_store_b16_d16_hi v187, v198 offset:32
	ds_store_b16 v187, v199 offset:64
	ds_store_b16_d16_hi v187, v199 offset:96
	ds_store_b16 v188, v200
	ds_store_b16_d16_hi v188, v200 offset:32
	ds_store_b16 v188, v201 offset:64
	ds_store_b16_d16_hi v188, v201 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[194:197], v217 offset1:8
	ds_load_2addr_stride64_b64 v[198:201], v189 offset1:8
	ds_load_2addr_stride64_b64 v[202:205], v190 offset1:8
	ds_load_2addr_stride64_b64 v[206:209], v191 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[194:195], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[210:211], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[210:211], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[212:213], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[212:213], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[214:215], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[214:215], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[198:199], v[89:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[200:201], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[198:199], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[200:201], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[200:201], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[198:199], v[87:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[200:201], v[87:88], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[202:203], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[204:205], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[202:203], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[204:205], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[202:203], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[204:205], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[202:203], v[81:82], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[204:205], v[81:82], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[206:207], v[75:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[208:209], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[206:207], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[208:209], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[206:207], v[79:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[208:209], v[79:80], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[206:207], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[208:209], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v65, s36, v165, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s37, s36, s35
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v66, s36, v166, 1
	v_add_lshl_u32 v67, s36, v167, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s37, s37, s33
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v68, s36, v168, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v69, v172, s37, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v69, v69, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	buffer_load_u16 v67, v67, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v75, v4
	v_cvt_f32_i32_e32 v76, v5
	v_cvt_f32_i32_e32 v77, v6
	v_cvt_f32_i32_e32 v78, v7
	v_cvt_f32_i32_e32 v79, v8
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v81, v10
	v_cvt_f32_i32_e32 v82, v11
	v_cvt_f32_i32_e32 v83, v12
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v85, v14
	v_cvt_f32_i32_e32 v86, v15
	v_cvt_f32_i32_e32 v87, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
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
	s_add_i32 s36, s36, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s36, s30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v69
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v32, v32, v66 :: v_dual_lshlrev_b32 v65, 16, v65
	v_mul_f32_e32 v30, v30, v66
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v192, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v193
	ds_load_b128 v[5:8], v193 offset:16
	ds_load_b128 v[9:12], v193 offset:512
	ds_load_b128 v[13:16], v193 offset:528
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v69, v80, v65 :: v_dual_lshlrev_b32 v68, 16, v68
	v_mul_f32_e32 v80, v85, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v85, v86, v65 :: v_dual_mul_f32 v48, v48, v67
	v_dual_mul_f32 v86, v87, v65 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v46, v46, v67
	v_dual_mul_f32 v41, v41, v67 :: v_dual_mul_f32 v62, v62, v68
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v64, v64, v68
	v_dual_mul_f32 v57, v57, v68 :: v_dual_mul_f32 v18, v66, v18
	v_dual_mul_f32 v63, v63, v68 :: v_dual_mul_f32 v70, v65, v70
	v_dual_mul_f32 v75, v65, v75 :: v_dual_mul_f32 v20, v66, v20
	v_dual_mul_f32 v72, v65, v72 :: v_dual_mul_f32 v19, v66, v19
	v_dual_mul_f32 v71, v65, v71 :: v_dual_mul_f32 v24, v66, v24
	v_dual_mul_f32 v79, v65, v79 :: v_dual_mul_f32 v22, v66, v22
	v_dual_mul_f32 v78, v65, v78 :: v_dual_mul_f32 v17, v66, v17
	v_dual_mul_f32 v77, v65, v77 :: v_dual_mul_f32 v28, v66, v28
	v_dual_mul_f32 v76, v65, v76 :: v_dual_mul_f32 v23, v66, v23
	v_dual_mul_f32 v84, v65, v84 :: v_dual_mul_f32 v21, v66, v21
	v_dual_mul_f32 v83, v65, v83 :: v_dual_mul_f32 v26, v66, v26
	v_dual_mul_f32 v82, v65, v82 :: v_dual_mul_f32 v29, v66, v29
	v_dual_mul_f32 v65, v65, v81 :: v_dual_mul_f32 v36, v67, v36
	v_dual_mul_f32 v27, v66, v27 :: v_dual_mul_f32 v34, v67, v34
	v_dual_mul_f32 v35, v67, v35 :: v_dual_mul_f32 v52, v68, v52
	v_dual_mul_f32 v33, v67, v33 :: v_dual_mul_f32 v50, v68, v50
	v_dual_mul_f32 v40, v67, v40 :: v_dual_mul_f32 v51, v68, v51
	v_dual_mul_f32 v39, v67, v39 :: v_dual_mul_f32 v56, v68, v56
	v_dual_mul_f32 v38, v67, v38 :: v_dual_mul_f32 v49, v68, v49
	v_dual_mul_f32 v37, v67, v37 :: v_dual_mul_f32 v54, v68, v54
	v_dual_mul_f32 v45, v67, v45 :: v_dual_mul_f32 v60, v68, v60
	v_dual_mul_f32 v44, v67, v44 :: v_dual_mul_f32 v55, v68, v55
	v_dual_mul_f32 v43, v67, v43 :: v_dual_mul_f32 v58, v68, v58
	v_dual_mul_f32 v42, v67, v42 :: v_dual_mul_f32 v53, v68, v53
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v61, v68, v61 :: v_dual_fmac_f32 v158, v71, v2
	v_dual_mul_f32 v59, v68, v59 :: v_dual_fmac_f32 v156, v75, v4
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v159, v70, v1 :: v_dual_fmac_f32 v154, v77, v6
	v_dual_fmac_f32 v157, v72, v3 :: v_dual_fmac_f32 v152, v79, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v155, v76, v5 :: v_dual_fmac_f32 v150, v65, v10
	v_dual_fmac_f32 v153, v78, v7 :: v_dual_fmac_f32 v148, v83, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v151, v69, v9 :: v_dual_fmac_f32 v146, v80, v14
	v_dual_fmac_f32 v149, v82, v11 :: v_dual_fmac_f32 v140, v20, v4
	v_dual_fmac_f32 v147, v84, v13 :: v_dual_fmac_f32 v144, v86, v16
	v_dual_fmac_f32 v145, v85, v15 :: v_dual_fmac_f32 v142, v18, v2
	v_dual_fmac_f32 v143, v17, v1 :: v_dual_fmac_f32 v138, v22, v6
	v_dual_fmac_f32 v141, v19, v3 :: v_dual_fmac_f32 v136, v24, v8
	v_dual_fmac_f32 v139, v21, v5 :: v_dual_fmac_f32 v134, v26, v10
	v_dual_fmac_f32 v137, v23, v7 :: v_dual_fmac_f32 v132, v28, v12
	v_dual_fmac_f32 v135, v25, v9 :: v_dual_fmac_f32 v130, v30, v14
	v_dual_fmac_f32 v133, v27, v11 :: v_dual_fmac_f32 v128, v32, v16
	v_dual_fmac_f32 v131, v29, v13 :: v_dual_fmac_f32 v126, v34, v2
	v_dual_fmac_f32 v129, v31, v15 :: v_dual_fmac_f32 v124, v36, v4
	v_dual_fmac_f32 v127, v33, v1 :: v_dual_fmac_f32 v122, v38, v6
	v_dual_fmac_f32 v125, v35, v3 :: v_dual_fmac_f32 v120, v40, v8
	v_dual_fmac_f32 v123, v37, v5 :: v_dual_fmac_f32 v118, v42, v10
	v_dual_fmac_f32 v121, v39, v7 :: v_dual_fmac_f32 v116, v44, v12
	v_dual_fmac_f32 v119, v41, v9 :: v_dual_fmac_f32 v114, v46, v14
	v_dual_fmac_f32 v117, v43, v11 :: v_dual_fmac_f32 v112, v48, v16
	v_dual_fmac_f32 v115, v45, v13 :: v_dual_fmac_f32 v110, v50, v2
	v_dual_fmac_f32 v113, v47, v15 :: v_dual_fmac_f32 v108, v52, v4
	v_dual_fmac_f32 v111, v49, v1 :: v_dual_fmac_f32 v106, v54, v6
	v_dual_fmac_f32 v109, v51, v3 :: v_dual_fmac_f32 v104, v56, v8
	v_dual_fmac_f32 v107, v53, v5 :: v_dual_fmac_f32 v102, v58, v10
	v_dual_fmac_f32 v105, v55, v7 :: v_dual_fmac_f32 v100, v60, v12
	v_dual_fmac_f32 v103, v57, v9 :: v_dual_fmac_f32 v98, v63, v15
	v_dual_fmac_f32 v101, v59, v11 :: v_dual_fmac_f32 v96, v61, v13
	v_fmac_f32_e32 v99, v62, v14
	v_fmac_f32_e32 v97, v64, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v1, v160
	v_mov_b32_e32 v3, v73
.LBB0_9:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v158|, |v158|
	v_max_f32_e64 v4, |v159|, |v159|
	v_max3_f32 v6, |v150|, |v149|, |v148|
	v_max3_f32 v7, |v147|, |v146|, |v145|
	v_max3_f32 v5, |v156|, |v155|, |v154|
	v_max_f32_e64 v8, |v143|, |v143|
	v_max3_f32 v9, |v153|, |v152|, |v151|
	v_max3_f32 v11, |v134|, |v133|, |v132|
	v_max3_f32 v6, v6, v7, |v144|
	v_max_f32_e64 v7, |v127|, |v127|
	v_max_f32_e32 v2, v4, v2
	v_max_f32_e64 v4, |v142|, |v142|
	v_max3_f32 v12, |v131|, |v130|, |v129|
	v_max3_f32 v13, |v118|, |v117|, |v116|
	v_max3_f32 v14, |v115|, |v114|, |v113|
	v_max3_f32 v2, v2, |v157|, v5
	v_max_f32_e64 v5, |v126|, |v126|
	v_max_f32_e32 v4, v8, v4
	v_max3_f32 v8, |v140|, |v139|, |v138|
	v_max3_f32 v10, |v137|, |v136|, |v135|
	v_max3_f32 v2, v2, v9, v6
	v_max_f32_e32 v5, v7, v5
	v_max3_f32 v7, |v124|, |v123|, |v122|
	v_max3_f32 v4, v4, |v141|, v8
	v_max3_f32 v8, v11, v12, |v128|
	v_max3_f32 v11, |v121|, |v120|, |v119|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v5, v5, |v125|, v7
	v_max3_f32 v7, v13, v14, |v112|
	v_max_f32_e64 v12, |v110|, |v110|
	v_max_f32_e64 v13, |v111|, |v111|
	v_max3_f32 v4, v4, v10, v8
	v_max3_f32 v9, |v102|, |v101|, |v100|
	v_max3_f32 v5, v5, v11, v7
	v_max3_f32 v10, |v96|, |v99|, |v98|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, |v108|, |v107|, |v106|
	v_max3_f32 v8, |v105|, |v104|, |v103|
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v14, 8, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v9, v10, |v97|
	v_max_f32_e32 v10, v11, v11
	v_max_f32_e32 v6, v13, v12
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x80, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v109|, v7
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v7, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v12, v12
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v17, 3, v13
.Ltmp15:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v6, v8, v9
	v_max_f32_e32 v7, v7, v7
	v_dual_max_f32 v9, v2, v10 :: v_dual_and_b32 v2, 3, v0
	v_max_f32_e32 v11, v5, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v10, v4, v7 :: v_dual_and_b32 v5, 4, v0
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v7, v2, 9, 0
	v_lshlrev_b32_e32 v6, 5, v2
	v_and_b32_e32 v8, 0x60, v0
	v_lshl_add_u32 v18, v5, 6, 0
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v15, v5, 2, v7
	v_and_or_b32 v1, 0x680, v1, v6
	v_lshlrev_b32_e32 v7, 1, v13
	v_xor_b32_e32 v16, v6, v8
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v4
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v15, v14, 4, v15
	v_xor_b32_e32 v1, v1, v8
	v_lshl_add_u32 v2, v2, 4, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_add3_u32 v4, v15, v7, v16
	v_add3_u32 v1, v18, v17, v1
	ds_store_b128 v4, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v9 :: v_dual_mov_b32 v4, v10
	v_mov_b32_e32 v15, v11
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_lshlrev_b32 v14, 3, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v13, 0, v13
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, v9, v1
	v_dual_max_f32 v9, v11, v11 :: v_dual_max_f32 v4, v10, v4
	v_max_f32_e32 v10, v15, v15
	v_max_f32_e32 v16, v12, v12
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v12, v12
	v_dual_max_f32 v9, v9, v10 :: v_dual_max_f32 v10, v16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v11, v9
	v_dual_mov_b32 v12, v1 :: v_dual_mov_b32 v15, v4
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v11, v9, v11
	v_dual_max_f32 v1, v1, v12 :: v_dual_mov_b32 v16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v15 :: v_dual_mov_b32 v17, v11
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v16, v4 :: v_dual_max_f32 v9, v15, v15
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v10, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v15, 1, v8
.Ltmp34:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v95, v8
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v1, v9 :: v_dual_mov_b32 v18, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v10, v16, v16 :: v_dual_max_f32 v1, v17, v17
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v4, v10 :: v_dual_max_f32 v11, v11, v1
	v_dual_max_f32 v4, v18, v18 :: v_dual_lshlrev_b32 v1, 5, v5
.Ltmp38:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v5, 4, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v13, v15, v14
	v_add3_u32 v1, v2, v1, v14
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v17, 16, v5
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v4, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
.Ltmp43:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v9, v9
	v_max_f32_e32 v11, v11, v11
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v20, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s24, v1
	v_add_co_ci_u32_e64 v2, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v16, v15
	v_div_scale_f32 v18, vcc_lo, v4, 0x40e00000, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[26:27], v[1:2]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v15, v16, 1.0
	v_dual_max_f32 v11, 0x2b8cbccc, v11 :: v_dual_fmac_f32 v16, v13, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v11
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s0, s24, v9
	v_add_co_ci_u32_e64 v14, null, s25, 0, s0
	v_add_co_u32 v9, s0, s24, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v21, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s25, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v12, v12
	v_mul_f32_e32 v22, v18, v16
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[28:29], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[13:14]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v14.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_max_f32_e32 v23, 0x2b8cbccc, v2
	v_fma_f32 v1, -v15, v22, v18
	v_div_scale_f32 v2, s7, v11, 0x40e00000, v11
	v_max_f32_e32 v17, 0x2b8cbccc, v20
	v_fma_f32 v20, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v1, v16
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[28:29], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[9:10]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v21, v20, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v15, v22, v18
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v23
	v_div_fmas_f32 v1, v1, v16, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v16, v2, v21
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v17
	v_rcp_f32_e32 v18, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v1, 0x40e00000, v4
	v_fma_f32 v4, -v19, v16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v24, v12
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v16, v4, v21
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v4.l, v1.h
	v_mov_b16_e32 v4.h, v14.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v15, v18, 1.0
	v_fma_f32 v2, -v19, v16, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v13, -v12, v24, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v18, v20, v18
	v_div_scale_f32 v20, s9, v23, 0x40e00000, v23
	v_fmac_f32_e32 v24, v13, v24
	v_div_scale_f32 v13, s8, v17, 0x40e00000, v17
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v1, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v10, v20, v18
	v_div_fmas_f32 v16, v2, v21, v16
	v_mul_f32_e32 v22, v13, v24
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s24, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v9, -v12, v22, v13
	v_div_fixup_f32 v11, v16, 0x40e00000, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v28, null, v27, v27, v154
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s25, 0, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v11.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v29, v28
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v22, v9, v24
	v_fma_f32 v9, -v15, v10, v20
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[28:29], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v16, 1, v14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[26:27], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v12, -v12, v22, v13
	v_fmac_f32_e32 v10, v9, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v13, null, v27, v27, v159
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v11, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v9, v12, v24, v22
	v_fma_f32 v15, -v15, v10, v20
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v12, v13
	v_div_scale_f32 v21, null, v27, v27, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v10, v15, v18, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v15, null, v27, v27, v158
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v9, 0x40e00000, v17
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v18.h, v14.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v10, 0x40e00000, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v19, v15
	v_fma_f32 v17, -v13, v12, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v18.l, v9.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v22, s9, v158, v27, v158
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v12, v17, v12
	v_div_scale_f32 v17, vcc_lo, v159, v27, v159
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v16, -v15, v19, 1.0
	v_div_scale_f32 v18, null, v27, v27, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v11, v17, v12 :: v_dual_and_b32 v14, 1, v14
	v_fmac_f32_e32 v19, v16, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v16, v18
	v_div_scale_f32 v26, null, v27, v27, v155
	v_fma_f32 v20, -v13, v11, v17
	v_div_scale_f32 v33, null, v27, v27, v149
	v_div_scale_f32 v31, null, v27, v27, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v11, v20, v12 :: v_dual_mul_f32 v20, v22, v19
	v_fma_f32 v24, -v18, v16, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v38, null, v27, v27, v144
	v_fma_f32 v13, -v13, v11, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, v24, v16
	v_div_scale_f32 v24, s10, v157, v27, v157
	v_fma_f32 v17, -v15, v20, v22
	v_div_fmas_f32 v11, v13, v12, v11
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v13, v24, v16
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v9, v2, 0x7fff
	v_add3_u32 v2, v10, v14, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v14, v21
	v_fmac_f32_e32 v20, v17, v19
	v_rcp_f32_e32 v17, v26
	v_rcp_f32_e32 v32, v31
	v_rcp_f32_e32 v39, v38
	v_div_scale_f32 v36, null, v27, v27, v146
	v_fma_f32 v12, -v15, v20, v22
	v_fma_f32 v15, -v18, v13, v24
	v_div_scale_f32 v37, null, v27, v27, v145
	v_fma_f32 v25, -v21, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v30, -v26, v17, 1.0
	v_div_fmas_f32 v12, v12, v19, v20
	v_fmac_f32_e32 v13, v15, v16
	v_div_scale_f32 v19, s9, v155, v27, v155
	v_fmac_f32_e32 v14, v25, v14
	v_div_scale_f32 v25, s11, v156, v27, v156
	v_fmac_f32_e32 v17, v30, v17
	v_fma_f32 v20, -v28, v29, 1.0
	v_fma_f32 v18, -v18, v13, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v25, v14
	v_div_scale_f32 v24, null, v27, v27, v153
	v_fmac_f32_e32 v29, v20, v29
	v_div_scale_f32 v20, s12, v154, v27, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v21, v22, v25
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v30, null, v27, v27, v152
	v_div_fmas_f32 v13, v18, v16, v13
	v_fmac_f32_e32 v22, v15, v14
	v_mul_f32_e32 v15, v19, v17
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v34, -v31, v32, 1.0
	v_div_fixup_f32 v11, v11, v27, v159
	v_fma_f32 v16, -v21, v22, v25
	v_fma_f32 v18, -v26, v15, v19
	v_rcp_f32_e32 v21, v24
	v_dual_mul_f32 v25, v20, v29 :: v_dual_fmac_f32 v32, v34, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v16, v14, v22
	v_fmac_f32_e32 v15, v18, v17
	v_rcp_f32_e32 v18, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v16, -v28, v25, v20
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v12, v12, v27, v158
	v_fma_f32 v19, -v26, v15, v19
	v_fma_f32 v22, -v24, v21, 1.0
	v_fmac_f32_e32 v25, v16, v29
	v_div_scale_f32 v26, null, v27, v27, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v15, v19, v17, v15
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, s10, v153, v27, v153
	v_fma_f32 v16, -v30, v18, 1.0
	v_fma_f32 v17, -v28, v25, v20
	v_rcp_f32_e32 v20, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v19, v22, v21 :: v_dual_and_b32 v10, 0xffff0000, v2
	v_fmac_f32_e32 v18, v16, v18
	v_div_scale_f32 v28, s9, v152, v27, v152
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v42, 0xffff0000, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v16, v17, v29, v25
	v_fma_f32 v17, -v24, v19, v22
	v_mul_f32_e32 v25, v28, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v26, v20, 1.0
	v_div_scale_f32 v34, s12, v150, v27, v150
	v_fmac_f32_e32 v19, v17, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v30, v25, v28
	v_fmac_f32_e32 v20, v29, v20
	v_div_scale_f32 v29, s11, v151, v27, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v24, v19, v22
	v_fmac_f32_e32 v25, v17, v18
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v24, v29, v20
	v_div_fixup_f32 v13, v13, v27, v157
	v_div_fmas_f32 v17, v22, v21, v19
	v_fma_f32 v19, -v30, v25, v28
	v_mul_f32_e32 v22, v34, v32
	v_fma_f32 v21, -v26, v24, v29
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v28, -v33, v35, 1.0
	v_div_scale_f32 v30, null, v27, v27, v148
	v_div_fmas_f32 v18, v19, v18, v25
	v_fmac_f32_e32 v24, v21, v20
	v_fma_f32 v19, -v31, v22, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v25, v30
	v_fmac_f32_e32 v35, v28, v35
	v_div_scale_f32 v21, s9, v149, v27, v149
	v_fma_f32 v26, -v26, v24, v29
	v_fmac_f32_e32 v22, v19, v32
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v28, v21, v35
	v_div_scale_f32 v29, null, v27, v27, v147
	v_div_fmas_f32 v20, v26, v20, v24
	v_fma_f32 v24, -v31, v22, v34
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v19, -v30, v25, 1.0
	v_fma_f32 v26, -v33, v28, v21
	v_rcp_f32_e32 v31, v29
	v_div_fmas_f32 v22, v24, v32, v22
	v_rcp_f32_e32 v24, v36
	v_fmac_f32_e32 v25, v19, v25
	v_div_scale_f32 v34, s10, v148, v27, v148
	v_fmac_f32_e32 v28, v26, v35
	v_div_fixup_f32 v19, v20, v27, v151
	v_div_fixup_f32 v20, v22, v27, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v26, v34, v25
	v_fma_f32 v32, -v29, v31, 1.0
	v_fma_f32 v21, -v33, v28, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v36, v24, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v22, -v30, v26, v34
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, s11, v147, v27, v147
	v_fmac_f32_e32 v24, v33, v24
	v_rcp_f32_e32 v33, v37
	v_div_fmas_f32 v21, v21, v35, v28
	v_fmac_f32_e32 v26, v22, v25
	v_mul_f32_e32 v28, v32, v31
	v_div_scale_f32 v35, s9, v146, v27, v146
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v22, -v30, v26, v34
	v_fma_f32 v30, -v29, v28, v32
	v_mul_f32_e32 v34, v35, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v37, v33, 1.0
	v_div_fixup_f32 v14, v14, v27, v156
	v_div_fmas_f32 v22, v22, v25, v26
	v_fmac_f32_e32 v28, v30, v31
	v_div_scale_f32 v26, s10, v145, v27, v145
	v_fmac_f32_e32 v33, v40, v33
	v_fma_f32 v25, -v36, v34, v35
	v_fma_f32 v30, -v38, v39, 1.0
	v_fma_f32 v29, -v29, v28, v32
	v_div_scale_f32 v40, null, v42, v42, v143
	v_mul_f32_e32 v32, v26, v33
	s_mov_b32 vcc_lo, s11
	v_dual_fmac_f32 v34, v25, v24 :: v_dual_fmac_f32 v39, v30, v39
	v_div_scale_f32 v30, s12, v144, v27, v144
	v_div_fmas_f32 v25, v29, v31, v28
	v_fma_f32 v29, -v37, v32, v26
	v_rcp_f32_e32 v31, v40
	v_fma_f32 v28, -v36, v34, v35
	v_mul_f32_e32 v35, v30, v39
	v_div_scale_f32 v36, null, v42, v42, v142
	v_fmac_f32_e32 v32, v29, v33
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v15, v15, v27, v155
	v_div_fmas_f32 v28, v28, v24, v34
	v_rcp_f32_e32 v29, v36
	v_fma_f32 v34, -v38, v35, v30
	v_fma_f32 v41, -v40, v31, 1.0
	v_fma_f32 v26, -v37, v32, v26
	v_div_scale_f32 v37, null, v42, v42, v141
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v24, v25, v27, v147
	v_div_fixup_f32 v25, v28, v27, v146
	v_fmac_f32_e32 v35, v34, v39
	v_fmac_f32_e32 v31, v41, v31
	v_div_scale_f32 v28, s9, v143, v42, v143
	v_div_fmas_f32 v26, v26, v33, v32
	v_rcp_f32_e32 v33, v37
	v_fma_f32 v34, -v36, v29, 1.0
	v_fma_f32 v30, -v38, v35, v30
	v_mul_f32_e32 v32, v28, v31
	v_div_scale_f32 v38, null, v42, v42, v140
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v29, v34, v29
	v_div_scale_f32 v34, s10, v142, v42, v142
	v_div_fmas_f32 v30, v30, v39, v35
	v_fma_f32 v35, -v40, v32, v28
	v_fma_f32 v41, -v37, v33, 1.0
	v_rcp_f32_e32 v43, v38
	v_mul_f32_e32 v39, v34, v29
	v_div_fixup_f32 v16, v16, v27, v154
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v32, v35, v31 :: v_dual_fmac_f32 v33, v41, v33
	v_div_scale_f32 v41, null, v42, v42, v139
	v_div_fixup_f32 v17, v17, v27, v153
	v_div_fixup_f32 v18, v18, v27, v152
	v_div_fixup_f32 v21, v21, v27, v149
	v_div_fixup_f32 v22, v22, v27, v148
	v_div_fixup_f32 v26, v26, v27, v145
	v_div_fixup_f32 v27, v30, v27, v144
	v_fma_f32 v30, -v36, v39, v34
	v_div_scale_f32 v35, s11, v141, v42, v141
	v_fma_f32 v44, -v38, v43, 1.0
	v_fma_f32 v28, -v40, v32, v28
	v_rcp_f32_e32 v40, v41
	v_fmac_f32_e32 v39, v30, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v30, v35, v33 :: v_dual_fmac_f32 v43, v44, v43
	v_div_scale_f32 v44, s12, v140, v42, v140
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v45, null, v42, v42, v138
	v_div_fmas_f32 v28, v28, v31, v32
	v_fma_f32 v31, -v36, v39, v34
	v_fma_f32 v32, -v37, v30, v35
	v_mul_f32_e32 v34, v44, v43
	v_fma_f32 v36, -v41, v40, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v46, null, v42, v42, v136
	v_div_fmas_f32 v29, v31, v29, v39
	v_fmac_f32_e32 v30, v32, v33
	v_rcp_f32_e32 v39, v45
	v_fma_f32 v31, -v38, v34, v44
	v_fmac_f32_e32 v40, v36, v40
	v_div_scale_f32 v32, s9, v139, v42, v139
	v_fma_f32 v35, -v37, v30, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v31, v43
	v_div_scale_f32 v37, null, v42, v42, v137
	v_mul_f32_e32 v36, v32, v40
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v31, -v45, v39, 1.0
	v_div_fmas_f32 v30, v35, v33, v30
	v_fma_f32 v33, -v38, v34, v44
	v_fma_f32 v35, -v41, v36, v32
	v_rcp_f32_e32 v38, v37
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v39, v31, v39
	v_div_scale_f32 v44, s10, v138, v42, v138
	v_div_fmas_f32 v31, v33, v43, v34
	v_fmac_f32_e32 v36, v35, v40
	v_rcp_f32_e32 v34, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v33, v44, v39
	v_div_scale_f32 v47, null, v42, v42, v135
	v_fma_f32 v35, -v37, v38, 1.0
	v_fma_f32 v32, -v41, v36, v32
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v41, -v45, v33, v44
	v_div_scale_f32 v53, null, v42, v42, v129
	v_fmac_f32_e32 v38, v35, v38
	v_div_scale_f32 v35, s11, v137, v42, v137
	v_fma_f32 v43, -v46, v34, 1.0
	v_div_fmas_f32 v32, v32, v40, v36
	v_rcp_f32_e32 v40, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v33, v41, v39 :: v_dual_mul_f32 v36, v35, v38
	v_fmac_f32_e32 v34, v43, v34
	v_div_scale_f32 v43, null, v42, v42, v134
	v_div_scale_f32 v41, s9, v136, v42, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v45, v33, v44
	v_fma_f32 v45, -v37, v36, v35
	v_rcp_f32_e32 v49, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v47, v40, 1.0
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v48, v41, v34
	v_div_fmas_f32 v33, v44, v39, v33
	v_fmac_f32_e32 v36, v45, v38
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v44, s10, v135, v42, v135
	v_fma_f32 v39, -v46, v48, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v43, v49, 1.0
	v_fma_f32 v35, -v37, v36, v35
	v_mul_f32_e32 v37, v44, v40
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v48, v39, v34 :: v_dual_fmac_f32 v49, v45, v49
	v_div_scale_f32 v39, s12, v134, v42, v134
	v_div_scale_f32 v45, null, v42, v42, v133
	v_div_fmas_f32 v35, v35, v38, v36
	v_fma_f32 v38, -v47, v37, v44
	v_div_scale_f32 v50, null, v42, v42, v132
	v_fma_f32 v36, -v46, v48, v41
	v_rcp_f32_e32 v41, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v46, v39, v49 :: v_dual_fmac_f32 v37, v38, v40
	v_rcp_f32_e32 v38, v50
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v55, null, v42, v42, v128
	v_div_fmas_f32 v36, v36, v34, v48
	v_fma_f32 v48, -v43, v46, v39
	v_div_fixup_f32 v34, v35, v42, v137
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v45, v41, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v35, v36, v42, v136
	v_fma_f32 v36, -v47, v37, v44
	v_fmac_f32_e32 v46, v48, v49
	v_fma_f32 v47, -v50, v38, 1.0
	v_div_scale_f32 v48, null, v42, v42, v131
	v_fmac_f32_e32 v41, v51, v41
	v_div_scale_f32 v44, s9, v133, v42, v133
	v_div_fmas_f32 v36, v36, v40, v37
	v_fmac_f32_e32 v38, v47, v38
	v_rcp_f32_e32 v40, v48
	v_div_scale_f32 v47, null, v42, v42, v130
	v_fma_f32 v37, -v43, v46, v39
	v_mul_f32_e32 v39, v44, v41
	v_div_scale_f32 v43, s10, v132, v42, v132
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v52, v47
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v23, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v37, v37, v49, v46
	v_fma_f32 v46, -v45, v39, v44
	v_mul_f32_e32 v49, v43, v38
	v_fma_f32 v51, -v48, v40, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v57, null, v23, v23, v125
	v_fmac_f32_e32 v39, v46, v41
	v_fma_f32 v46, -v50, v49, v43
	v_fmac_f32_e32 v40, v51, v40
	v_div_scale_f32 v51, s11, v131, v42, v131
	v_fma_f32 v54, -v47, v52, 1.0
	v_fma_f32 v44, -v45, v39, v44
	v_fmac_f32_e32 v49, v46, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v45, v51, v40
	v_rcp_f32_e32 v46, v53
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s12, v130, v42, v130
	v_div_fmas_f32 v39, v44, v41, v39
	v_fma_f32 v41, -v50, v49, v43
	v_fma_f32 v43, -v48, v45, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v44, v54, v52
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v28, v28, v42, v143
	v_fma_f32 v50, -v53, v46, 1.0
	v_div_fmas_f32 v41, v41, v38, v49
	v_fmac_f32_e32 v45, v43, v40
	v_fma_f32 v43, -v47, v44, v54
	v_rcp_f32_e32 v49, v55
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s9, v129, v42, v129
	v_div_fixup_f32 v38, v39, v42, v133
	v_div_fixup_f32 v39, v41, v42, v132
	v_fma_f32 v41, -v48, v45, v51
	v_fmac_f32_e32 v44, v43, v52
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v43, v50, v46
	v_div_scale_f32 v51, null, v23, v23, v127
	v_div_fmas_f32 v40, v41, v40, v45
	v_fma_f32 v41, -v47, v44, v54
	v_div_scale_f32 v54, null, v23, v23, v126
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v48, -v55, v49, 1.0
	v_fma_f32 v45, -v53, v43, v50
	v_rcp_f32_e32 v47, v51
	v_div_fmas_f32 v41, v41, v52, v44
	v_rcp_f32_e32 v44, v54
	v_fmac_f32_e32 v49, v48, v49
	v_div_scale_f32 v48, s10, v128, v42, v128
	v_fmac_f32_e32 v43, v45, v46
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v29, v29, v42, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v45, v48, v49
	v_fma_f32 v52, -v51, v47, 1.0
	v_fma_f32 v50, -v53, v43, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v56, -v54, v44, 1.0
	v_div_fixup_f32 v30, v30, v42, v141
	v_fma_f32 v53, -v55, v45, v48
	v_fmac_f32_e32 v47, v52, v47
	v_div_scale_f32 v52, s11, v127, v23, v127
	v_div_fmas_f32 v43, v50, v46, v43
	v_fmac_f32_e32 v44, v56, v44
	v_rcp_f32_e32 v50, v57
	v_div_scale_f32 v56, null, v23, v23, v124
	v_dual_fmac_f32 v45, v53, v49 :: v_dual_mul_f32 v46, v52, v47
	v_div_scale_f32 v53, s9, v126, v23, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v59, v56
	v_fma_f32 v48, -v55, v45, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v51, v46, v52
	v_mul_f32_e32 v58, v53, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v60, -v57, v50, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v31, v31, v42, v140
	v_div_fmas_f32 v45, v48, v49, v45
	v_fmac_f32_e32 v46, v55, v47
	v_fma_f32 v48, -v54, v58, v53
	v_fmac_f32_e32 v50, v60, v50
	v_div_scale_f32 v49, s10, v125, v23, v125
	v_fma_f32 v55, -v56, v59, 1.0
	v_div_fixup_f32 v32, v32, v42, v139
	v_div_fixup_f32 v33, v33, v42, v138
	v_div_fixup_f32 v36, v36, v42, v135
	v_div_fixup_f32 v37, v37, v42, v134
	v_div_fixup_f32 v40, v40, v42, v131
	v_div_fixup_f32 v41, v41, v42, v130
	v_div_fixup_f32 v43, v43, v42, v129
	v_div_fixup_f32 v42, v45, v42, v128
	v_fma_f32 v45, -v51, v46, v52
	v_fmac_f32_e32 v58, v48, v44
	v_dual_mul_f32 v48, v49, v50 :: v_dual_fmac_f32 v59, v55, v59
	v_div_scale_f32 v51, s12, v124, v23, v124
	v_div_scale_f32 v52, null, v23, v23, v123
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v55, null, v23, v23, v122
	v_div_fmas_f32 v45, v45, v47, v46
	v_fma_f32 v46, -v54, v58, v53
	v_fma_f32 v47, -v57, v48, v49
	v_rcp_f32_e32 v53, v52
	v_mul_f32_e32 v54, v51, v59
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v73, null, v10, v10, v108
	v_div_fmas_f32 v46, v46, v44, v58
	v_fmac_f32_e32 v48, v47, v50
	v_rcp_f32_e32 v58, v55
	v_fma_f32 v47, -v56, v54, v51
	v_div_fixup_f32 v44, v45, v23, v127
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v60, -v52, v53, 1.0
	v_div_fixup_f32 v45, v46, v23, v126
	v_fma_f32 v46, -v57, v48, v49
	v_fmac_f32_e32 v54, v47, v59
	v_div_scale_f32 v57, null, v23, v23, v121
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v53, v60, v53
	v_div_scale_f32 v49, s9, v123, v23, v123
	v_fma_f32 v47, -v55, v58, 1.0
	v_div_fmas_f32 v46, v46, v50, v48
	v_fma_f32 v48, -v56, v54, v51
	v_rcp_f32_e32 v51, v57
	v_div_scale_f32 v60, null, v23, v23, v120
	v_mul_f32_e32 v50, v49, v53
	v_div_scale_f32 v56, s10, v122, v23, v122
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v61, v60
	v_rcp_f32_e32 v75, v73
	v_fmac_f32_e32 v58, v47, v58
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v62, null, v23, v23, v119
	v_div_fmas_f32 v47, v48, v59, v54
	v_fma_f32 v48, -v52, v50, v49
	v_mul_f32_e32 v54, v56, v58
	v_fma_f32 v59, -v57, v51, 1.0
	v_div_scale_f32 v76, null, v10, v10, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v48, v53
	v_fma_f32 v48, -v55, v54, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v59, v51
	v_div_scale_f32 v59, s11, v121, v23, v121
	v_fma_f32 v63, -v60, v61, 1.0
	v_rcp_f32_e32 v64, v62
	v_rcp_f32_e32 v78, v76
	v_fma_f32 v49, -v52, v50, v49
	v_fmac_f32_e32 v54, v48, v58
	v_mul_f32_e32 v52, v59, v51
	v_fmac_f32_e32 v61, v63, v61
	v_div_scale_f32 v63, s12, v120, v23, v120
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v65, null, v23, v23, v116
	v_div_fmas_f32 v48, v49, v53, v50
	v_fma_f32 v49, -v55, v54, v56
	v_fma_f32 v50, -v57, v52, v59
	v_mul_f32_e32 v53, v63, v61
	v_fma_f32 v55, -v62, v64, 1.0
	v_div_scale_f32 v56, null, v23, v23, v118
	v_fma_f32 v80, -v76, v78, 1.0
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v64, v55, v64
	v_div_fmas_f32 v49, v49, v58, v54
	v_rcp_f32_e32 v54, v56
	v_div_scale_f32 v55, s9, v119, v23, v119
	v_fmac_f32_e32 v78, v80, v78
	v_fmac_f32_e32 v52, v50, v51
	v_fma_f32 v50, -v60, v53, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v64
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v66, null, v23, v23, v115
	v_fma_f32 v57, -v57, v52, v59
	v_fmac_f32_e32 v53, v50, v61
	v_div_scale_f32 v59, null, v23, v23, v117
	v_fma_f32 v50, -v56, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v51, v57, v51, v52
	v_fma_f32 v52, -v60, v53, v63
	v_fma_f32 v57, -v62, v58, v55
	v_rcp_f32_e32 v60, v59
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v54, v50, v54
	v_div_scale_f32 v63, s10, v118, v23, v118
	v_div_fmas_f32 v52, v52, v61, v53
	v_fmac_f32_e32 v58, v57, v64
	v_rcp_f32_e32 v53, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v57, v63, v54
	v_div_fixup_f32 v50, v51, v23, v121
	v_fma_f32 v61, -v59, v60, 1.0
	v_div_fixup_f32 v51, v52, v23, v120
	v_fma_f32 v52, -v62, v58, v55
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v55, -v56, v57, v63
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, s11, v117, v23, v117
	v_fma_f32 v62, -v65, v53, 1.0
	v_div_fmas_f32 v52, v52, v64, v58
	v_div_scale_f32 v64, null, v23, v23, v114
	v_fmac_f32_e32 v57, v55, v54
	v_mul_f32_e32 v55, v61, v60
	v_fmac_f32_e32 v53, v62, v53
	v_rcp_f32_e32 v58, v66
	v_div_scale_f32 v62, s9, v116, v23, v116
	v_rcp_f32_e32 v68, v64
	v_fma_f32 v56, -v56, v57, v63
	v_fma_f32 v63, -v59, v55, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v67, v62, v53
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v46, v46, v23, v125
	v_div_fmas_f32 v54, v56, v54, v57
	v_fma_f32 v69, -v66, v58, 1.0
	v_fmac_f32_e32 v55, v63, v60
	v_fma_f32 v56, -v65, v67, v62
	v_fma_f32 v63, -v64, v68, 1.0
	v_div_scale_f32 v57, s10, v115, v23, v115
	v_fmac_f32_e32 v58, v69, v58
	v_fma_f32 v59, -v59, v55, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v67, v56, v53 :: v_dual_fmac_f32 v68, v63, v68
	v_div_scale_f32 v63, null, v23, v23, v113
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v56, v57, v58
	v_div_scale_f32 v61, s12, v114, v23, v114
	v_div_fmas_f32 v55, v59, v60, v55
	v_fma_f32 v59, -v65, v67, v62
	v_rcp_f32_e32 v62, v63
	v_fma_f32 v60, -v66, v56, v57
	v_mul_f32_e32 v65, v61, v68
	v_div_scale_f32 v69, null, v23, v23, v112
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v56, v60, v58
	v_div_fmas_f32 v53, v59, v53, v67
	v_rcp_f32_e32 v59, v69
	v_fma_f32 v60, -v64, v65, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v63, v62, 1.0
	v_fma_f32 v57, -v66, v56, v57
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v47, v47, v23, v124
	v_dual_fmac_f32 v65, v60, v68 :: v_dual_fmac_f32 v62, v67, v62
	v_div_scale_f32 v60, s9, v113, v23, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v69, v59, 1.0
	v_div_fmas_f32 v56, v57, v58, v56
	v_fma_f32 v57, -v64, v65, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v60, v62
	v_div_scale_f32 v61, null, v10, v10, v111
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v59, v66, v59
	v_div_fmas_f32 v57, v57, v68, v65
	v_rcp_f32_e32 v65, v61
	v_fma_f32 v66, -v63, v58, v60
	v_div_scale_f32 v64, s10, v112, v23, v112
	v_div_scale_f32 v68, null, v10, v10, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v58, v66, v62 :: v_dual_mul_f32 v67, v64, v59
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v70, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v61, v65, 1.0
	v_fma_f32 v60, -v63, v58, v60
	v_div_scale_f32 v63, null, v10, v10, v109
	v_fma_f32 v66, -v69, v67, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v71, v65
	v_div_fmas_f32 v58, v60, v62, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v71, v63
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v67, v66, v59
	v_div_scale_f32 v66, s11, v111, v10, v111
	v_fma_f32 v72, -v68, v70, 1.0
	v_div_fixup_f32 v48, v48, v23, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v69, v67, v64
	v_mul_f32_e32 v62, v66, v65
	v_div_scale_f32 v64, s9, v110, v10, v110
	v_fmac_f32_e32 v70, v72, v70
	v_fma_f32 v69, -v63, v71, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v61, v62, v66
	v_div_fmas_f32 v59, v60, v59, v67
	v_div_fixup_f32 v49, v49, v23, v122
	v_dual_mul_f32 v74, v64, v70 :: v_dual_fmac_f32 v71, v69, v71
	v_div_scale_f32 v69, s12, v109, v10, v109
	v_fmac_f32_e32 v62, v72, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v68, v74, v64
	v_div_fixup_f32 v52, v52, v23, v119
	v_mul_f32_e32 v67, v69, v71
	v_div_fixup_f32 v54, v54, v23, v118
	v_div_fixup_f32 v55, v55, v23, v117
	v_div_fixup_f32 v53, v53, v23, v116
	v_div_fixup_f32 v56, v56, v23, v115
	v_div_fixup_f32 v57, v57, v23, v114
	v_div_fixup_f32 v58, v58, v23, v113
	v_div_fixup_f32 v23, v59, v23, v112
	v_fma_f32 v59, -v61, v62, v66
	v_fmac_f32_e32 v74, v60, v70
	v_fma_f32 v60, -v63, v67, v69
	v_div_scale_f32 v66, null, v10, v10, v107
	v_fma_f32 v61, -v73, v75, 1.0
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v60, v71
	v_rcp_f32_e32 v60, v66
	v_div_fmas_f32 v59, v59, v65, v62
	v_fmac_f32_e32 v75, v61, v75
	v_div_scale_f32 v61, s10, v108, v10, v108
	v_fma_f32 v62, -v68, v74, v64
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v63, -v63, v67, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v64, v61, v75
	v_div_scale_f32 v65, null, v10, v10, v106
	v_fma_f32 v68, -v66, v60, 1.0
	v_div_fmas_f32 v62, v62, v70, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v69, -v73, v64, v61
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v80, s12, v102, v10, v102
	v_fmac_f32_e32 v60, v68, v60
	v_div_scale_f32 v68, s9, v107, v10, v107
	v_fmac_f32_e32 v64, v69, v75
	v_div_fmas_f32 v63, v63, v71, v67
	v_rcp_f32_e32 v67, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v69, v68, v60
	v_div_scale_f32 v71, null, v10, v10, v105
	v_fma_f32 v61, -v73, v64, v61
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v72, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v73, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v61, v61, v75, v64
	v_fma_f32 v70, -v65, v67, 1.0
	v_fmac_f32_e32 v69, v72, v60
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v72, null, v10, v10, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	v_div_scale_f32 v70, s11, v106, v10, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v75, v72
	v_fma_f32 v74, -v71, v73, 1.0
	v_div_fmas_f32 v60, v66, v60, v69
	v_div_scale_f32 v66, null, v10, v10, v103
	v_mul_f32_e32 v64, v70, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v74, v73
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v69, v66
	v_div_scale_f32 v79, s11, v103, v10, v103
	v_fma_f32 v68, -v65, v64, v70
	v_fma_f32 v74, -v72, v75, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v64, v68, v67
	v_div_scale_f32 v68, s9, v105, v10, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v66, v69, 1.0
	v_fmac_f32_e32 v75, v74, v75
	v_fma_f32 v65, -v65, v64, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v70, v68, v73
	v_div_scale_f32 v74, s10, v104, v10, v104
	v_fmac_f32_e32 v69, v77, v69
	v_div_scale_f32 v77, null, v10, v10, v101
	v_div_fmas_f32 v64, v65, v67, v64
	v_fma_f32 v65, -v71, v70, v68
	v_mul_f32_e32 v67, v74, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v77
	v_mul_f32_e32 v82, v79, v69
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v70, v65, v73
	v_fma_f32 v65, -v72, v67, v74
	v_div_fixup_f32 v62, v62, v10, v110
	v_div_fixup_f32 v63, v63, v10, v109
	v_div_fixup_f32 v64, v64, v10, v106
	v_fma_f32 v68, -v71, v70, v68
	v_fmac_f32_e32 v67, v65, v75
	v_fma_f32 v65, -v66, v82, v79
	v_mul_f32_e32 v71, v80, v78
	v_fma_f32 v83, -v77, v81, 1.0
	v_div_fmas_f32 v68, v68, v73, v70
	v_fma_f32 v70, -v72, v67, v74
	v_fmac_f32_e32 v82, v65, v69
	v_fma_f32 v65, -v76, v71, v80
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v72, s9, v101, v10, v101
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v71, v65, v78
	v_div_fmas_f32 v67, v70, v75, v67
	v_mul_f32_e32 v65, v72, v81
	v_div_scale_f32 v70, null, v10, v10, v100
	v_fma_f32 v66, -v66, v82, v79
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v77, v65, v72
	v_rcp_f32_e32 v74, v70
	v_div_scale_f32 v75, null, v10, v10, v98
	v_div_fmas_f32 v66, v66, v69, v82
	v_fma_f32 v69, -v76, v71, v80
	v_fmac_f32_e32 v65, v73, v81
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v79, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v69, v69, v78, v71
	v_fma_f32 v71, -v77, v65, v72
	v_fma_f32 v73, -v70, v74, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v72, null, v10, v10, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v65, v71, v81, v65
	v_fmac_f32_e32 v74, v73, v74
	v_div_scale_f32 v76, vcc_lo, v100, v10, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v71, v72
	v_div_scale_f32 v73, null, v10, v10, v99
	v_mul_f32_e32 v80, v76, v74
	v_div_scale_f32 v81, null, v10, v10, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v77, v73
	v_fma_f32 v85, -v75, v79, 1.0
	v_fma_f32 v84, -v70, v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v78, -v72, v71, 1.0
	v_div_fixup_f32 v68, v68, v10, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v79, v85, v79 :: v_dual_fmac_f32 v80, v84, v74
	v_div_scale_f32 v85, s11, v98, v10, v98
	v_fmac_f32_e32 v71, v78, v71
	v_div_scale_f32 v78, s9, v96, v10, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v70, v80, v76
	v_fma_f32 v82, -v73, v77, 1.0
	v_fma_f32 v87, -v81, v83, 1.0
	v_mul_f32_e32 v89, v85, v79
	v_div_fixup_f32 v59, v59, v10, v111
	v_div_fmas_f32 v70, v70, v74, v80
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fmac_f32_e32 v77, v82, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, s10, v99, v10, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v87, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v86, v78, v71
	v_div_scale_f32 v87, s12, v97, v10, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v72, v86, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v82, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v87, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v84, v71
	v_fma_f32 v76, -v73, v88, v82
	v_fma_f32 v84, -v75, v89, v85
	v_fma_f32 v74, -v81, v90, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_and_b32_e32 v53, 15, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v72, v86, v78
	v_fmac_f32_e32 v88, v76, v77
	v_fmac_f32_e32 v89, v84, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v74, v83
	v_div_fmas_f32 v71, v72, v71, v86
	v_fma_f32 v72, -v73, v88, v82
	v_fma_f32 v73, -v75, v89, v85
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v74, -v81, v90, v87
	v_div_fixup_f32 v60, v60, v10, v107
	v_div_fmas_f32 v72, v72, v77, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v65, v65, v10, v101
	v_div_fmas_f32 v73, v73, v79, v89
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v83, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v61, v61, v10, v108
	v_div_fixup_f32 v67, v67, v10, v104
	v_div_fixup_f32 v66, v66, v10, v103
	v_div_fixup_f32 v69, v69, v10, v102
	v_div_fixup_f32 v70, v70, v10, v100
	v_div_fixup_f32 v71, v71, v10, v96
	v_div_fixup_f32 v72, v72, v10, v99
	v_div_fixup_f32 v73, v73, v10, v98
	v_div_fixup_f32 v10, v74, v10, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v65, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
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
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v74, v23
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s9, 0x40e00000
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
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v75, v60
	v_cvt_i32_f32_e32 v76, v65
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
	v_and_b32_e32 v50, 15, v52
	v_and_b32_e32 v52, 15, v55
	v_and_b32_e32 v55, 15, v57
	v_and_b32_e32 v57, 15, v74
	v_and_b32_e32 v60, 15, v63
	v_and_b32_e32 v63, 15, v64
	v_and_b32_e32 v64, 15, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v68, 10, v0
	v_and_b32_e32 v74, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_cvt_i32_f32_e32 v77, v10
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
	v_and_b32_e32 v54, 15, v56
	v_and_b32_e32 v56, 15, v58
	v_and_b32_e32 v58, 15, v59
	v_and_b32_e32 v59, 15, v62
	v_and_b32_e32 v62, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v75, 0x1800, v68
	v_lshlrev_b32_e32 v78, 6, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v68, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v76, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v75, 0, v75, v78
	v_and_or_b32 v6, 0x1b00, v76, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v7, v75, v8, v7
	v_xad_u32 v6, v6, v94, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v61
	v_and_b32_e32 v65, 15, v67
	v_and_b32_e32 v66, 15, v66
	v_and_b32_e32 v67, 15, v69
	v_and_b32_e32 v69, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[10:13]
	ds_store_b128 v7, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v6
	ds_load_b128 v[18:21], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[26:29]
	ds_store_b128 v7, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v6
	ds_load_b128 v[34:37], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[42:45]
	ds_store_b128 v7, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v6
	ds_load_b128 v[50:53], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[58:61]
	ds_store_b128 v7, v[66:69] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v6
	ds_load_b128 v[66:69], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[14:17]
	ds_store_b128 v7, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[22:25], v6 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v73, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[30:33]
	ds_store_b128 v7, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[38:41], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v70, 15, v71
	v_and_b32_e32 v71, 15, v72
	v_and_b32_e32 v72, 15, v73
	v_and_b32_e32 v73, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[46:49]
	ds_store_b128 v7, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v23, v37, 4, v29
	v_lshl_or_b32 v29, v51, 4, v43
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v93
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[62:65]
	ds_store_b128 v7, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, s24, v5
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v5, s31, 7, v43
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v8, v20, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v10
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v18, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 32, v10
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v19, v22, 4, v14
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v10
	v_mad_u64_u32 v[10:11], null, v10, s9, v[5:6]
	v_mad_u64_u32 v[11:12], null, v12, s9, v[5:6]
	v_mad_u64_u32 v[12:13], null, v13, s9, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v34, 4, v26
	v_lshl_or_b32 v21, v35, 4, v27
	v_lshl_or_b32 v24, v38, 4, v30
	v_lshl_or_b32 v25, v39, 4, v31
	v_lshl_or_b32 v26, v40, 4, v32
	v_lshl_or_b32 v27, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s9, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v8.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v5.l, 0xff, v6.l
	v_lshlrev_b16 v5.h, 8, v17.l
	v_and_b16 v6.l, 0xff, v16.l
	v_lshlrev_b16 v6.h, 8, v15.l
	v_and_b16 v7.l, 0xff, v19.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v36, 4, v28
	v_lshl_or_b32 v32, v54, 4, v46
	v_lshl_or_b32 v33, v55, 4, v47
	v_lshl_or_b32 v34, v56, 4, v48
	v_lshl_or_b32 v35, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.l, v4.l
	v_or_b16 v15.h, v6.l, v5.h
	v_or_b16 v15.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v5.h, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v50, 4, v42
	v_lshl_or_b32 v30, v52, 4, v44
	v_lshl_or_b32 v31, v53, 4, v45
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v70, 4, v62
	v_lshl_or_b32 v41, v71, 4, v63
	v_lshl_or_b32 v42, v72, 4, v64
	v_lshl_or_b32 v44, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v5.l, 0xff, v20.l
	buffer_store_b64 v[14:15], v8, s[12:15], 0 offen
	v_or_b16 v15.h, v6.l, v5.h
	v_or_b16 v15.l, v7.l, v6.h
	v_lshlrev_b16 v5.h, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_lshlrev_b16 v6.h, 8, v33.l
	v_and_b16 v7.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v66, 4, v58
	v_lshl_or_b32 v37, v67, 4, v59
	v_lshl_or_b32 v38, v68, 4, v60
	v_lshl_or_b32 v39, v69, 4, v61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.l, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v5.l, 0xff, v28.l
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	v_lshlrev_b16 v5.h, 8, v44.l
	v_and_b16 v6.l, 0xff, v42.l
	v_lshlrev_b16 v6.h, 8, v41.l
	v_and_b16 v7.l, 0xff, v40.l
	buffer_store_b64 v[14:15], v8, s[12:15], 0 offen
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v5.l, v4.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v5.l, 0xff, v36.l
	v_or_b16 v15.h, v6.l, v5.h
	v_or_b16 v15.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v74
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.l, v5.l, v4.l
	v_dual_cndmask_b32 v5, 0x80000000, v13 :: v_dual_and_b32 v6, 2, v6
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[10:11], v8, s[12:15], 0 offen
	buffer_store_b64 v[14:15], v5, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v43
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v4, v7, v6, v43
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
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s31, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 218
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 218
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14640
; TotalNumSgprs: 42
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 218
; Occupancy: 6
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
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
