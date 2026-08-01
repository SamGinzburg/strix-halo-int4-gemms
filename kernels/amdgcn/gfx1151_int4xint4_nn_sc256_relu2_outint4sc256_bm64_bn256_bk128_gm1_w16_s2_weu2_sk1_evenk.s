	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v94, 15, v0
	v_lshrrev_b32_e32 v101, 1, v0
	v_lshlrev_b32_e32 v102, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s9
	s_abs_i32 s9, s4
	s_add_i32 s8, s8, s2
	s_mul_hi_u32 s2, s9, s8
	s_xor_b32 s8, s4, s6
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s13, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s2, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s12, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s14, s13
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s33, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp15:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b128 s[20:23], s[0:1], 0x20
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v100, 7, v0
	v_lshrrev_b32_e32 v95, 4, v0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v96, 0x100, v0
	v_dual_mov_b32 v6, 0 :: v_dual_lshlrev_b32 v97, 4, v94
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v99, 0xe0, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v98, 16, v0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v37, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s34, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22 is_stmt 1              ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s12, 31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v19, s14, 9, v99
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s12, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s16, s13, 9
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s15, s12, 1
	s_mov_b32 s12, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, 32, v95
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v108, s16, v19
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v100
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 1, v99
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v96
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s3, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s2, 31
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	v_and_b32_e32 v7, 56, v101
.Ltmp18:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v103, s15, v2
	v_or_b32_e32 v2, s3, v1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s1, s1, 24
	v_add3_u32 v104, 0, v94, v3
.Ltmp20:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add3_u32 v3, s34, v4, v94
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s1
	v_xor_b32_e32 v7, v6, v7
	s_ashr_i32 s40, s2, 8
.Ltmp22:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v6, s3, v95
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v2
	s_add_i32 s42, s3, 64
	s_lshl_b32 s3, s13, 8
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v17, 64, v2
	v_lshrrev_b32_e32 v2, 3, v98
	v_add_nc_u32_e32 v18, 32, v3
	v_mul_lo_u32 v3, s40, v3
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s14, s14, 8
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v107, 2, v2
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v2, 0x60, v6
	v_add_nc_u32_e32 v4, 64, v6
	v_lshlrev_b32_e32 v110, 1, v3
	v_cmp_gt_i32_e64 s1, 0x80, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[2:3], null, s35, v2, s[14:15]
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v17, s34, v5
	v_or_b32_e32 v5, 32, v6
	v_cmp_gt_i32_e64 s2, 0x80, v4
	v_mad_u64_u32 v[3:4], null, s35, v4, s[14:15]
	v_sub_nc_u32_e32 v105, s15, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s35, v5, s[14:15]
	v_sub_nc_u32_e32 v106, s15, v95
	v_cmp_gt_i32_e64 s0, 0x80, v6
	v_mad_u64_u32 v[5:6], null, s35, v6, s[14:15]
	v_mad_u64_u32 v[81:82], null, s15, v17, v[1:2]
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_and_b32_e32 v8, 0x438, v102
	v_subrev_nc_u32_e32 v115, s3, v2
	v_subrev_nc_u32_e32 v117, s3, v3
	v_subrev_nc_u32_e32 v118, s3, v4
	v_subrev_nc_u32_e32 v120, s3, v5
	v_lshl_or_b32 v8, v94, 6, v8
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v130, 0, v7
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v10, 8, v8
	v_xor_b32_e32 v11, 16, v8
	v_xor_b32_e32 v12, 24, v8
	v_xor_b32_e32 v13, 32, v8
	v_xor_b32_e32 v14, 40, v8
	v_xor_b32_e32 v15, 48, v8
	v_xor_b32_e32 v16, 56, v8
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v133, 0, v8
	v_mov_b32_e32 v1, s12
	v_mul_lo_u32 v18, s40, v18
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v134, 0, v10
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v135, 0, v11
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v136, 0, v12
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v138, 0, v13
	v_lshlrev_b32_e32 v109, 1, v18
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v140, 0, v14
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v142, 0, v15
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v149, 0, v16
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v6, s17
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v132, 0, v9
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_mov_b32_e32 v111, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s41, s35, 1
	s_lshl_b32 s43, s35, 7
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s6
	s_mov_b32 s37, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v9, v110, s[24:27], 0 offen
	buffer_load_u16 v10, v109, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_sub_i32 s5, s42, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v109, 2, v109
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s5, v105
	v_cmp_lt_i32_e64 s4, s5, v106
	v_cmp_lt_i32_e64 s5, s5, v103
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s40, s40, -1
	v_add_nc_u32_e32 v110, 2, v110
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	s_and_b32 s5, s5, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v157, 16, v10
	v_lshlrev_b32_e32 v158, 16, v9
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v19, s42, v81
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v13, v97, v118
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v118, s43, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_subrev_nc_u32_e32 v9, 64, v19
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s5, s42, v103
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s42, v105
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s5, s5, s2
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	buffer_load_b64 v[17:18], v9, s[28:31], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v97, v120
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v120, s43, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s42, v106
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s42, 0x80
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v130, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[9:12]
	ds_store_b128 v132, v[13:16] offset:8192
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v9, 0x80000000, v19, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, s2
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v97, v115
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v115, s43, v115
	s_cmp_lg_u32 s40, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[82:83], v9, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v17, v104 offset:3328
	ds_load_u8 v18, v104 offset:3072
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v97, v117
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v33, v104 offset:3456
	ds_load_u8 v34, v104 offset:3200
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[49:52], v133 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[53:56], v134 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[57:60], v135 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[61:64], v136 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[65:68], v138 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[69:72], v140 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[73:76], v142 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[77:80], v149 offset0:32 offset1:36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v117, s43, v117
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	buffer_load_b128 v[41:44], v9, s[36:39], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s5
	buffer_load_b128 v[45:48], v9, s[36:39], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v104 offset:1280
	ds_load_u8 v10, v104 offset:1024
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:3840
	ds_load_u8 v19, v104 offset:3584
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:3968
	ds_load_u8 v35, v104 offset:3712
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:1792
	ds_load_u8 v11, v104 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v104 offset:2304
	ds_load_u8 v18, v104 offset:2048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v104 offset:256
	ds_load_u8 v10, v104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:2816
	ds_load_u8 v19, v104 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:768
	ds_load_u8 v11, v104 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v18, 16, v17
	ds_load_u8 v17, v104 offset:5376
	ds_load_u8 v18, v104 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v25, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:5888
	ds_load_u8 v19, v104 offset:5632
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[49:50], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v104 offset:4352
	ds_load_u8 v18, v104 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:4864
	ds_load_u8 v19, v104 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v104 offset:7424
	ds_load_u8 v18, v104 offset:7168
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[57:58], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:7936
	ds_load_u8 v19, v104 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v104 offset:6400
	ds_load_u8 v18, v104 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:6912
	ds_load_u8 v19, v104 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v104 offset:9472
	ds_load_u8 v18, v104 offset:9216
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[61:62], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:9984
	ds_load_u8 v19, v104 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v18, 16, v17
	ds_load_u8 v17, v104 offset:8448
	ds_load_u8 v18, v104 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:8960
	ds_load_u8 v19, v104 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v18, 16, v17
	ds_load_u8 v17, v104 offset:11520
	ds_load_u8 v18, v104 offset:11264
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:12032
	ds_load_u8 v19, v104 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v18, 16, v17
	ds_load_u8 v17, v104 offset:10496
	ds_load_u8 v18, v104 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:11008
	ds_load_u8 v19, v104 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v18, 16, v17
	ds_load_u8 v17, v104 offset:13568
	ds_load_u8 v18, v104 offset:13312
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:14080
	ds_load_u8 v19, v104 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v18, 16, v17
	ds_load_u8 v17, v104 offset:12544
	ds_load_u8 v18, v104 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:13056
	ds_load_u8 v19, v104 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v18, 16, v17
	ds_load_u8 v17, v104 offset:15616
	ds_load_u8 v18, v104 offset:15360
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[73:74], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:16128
	ds_load_u8 v19, v104 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v18, 16, v17
	ds_load_u8 v17, v104 offset:14592
	ds_load_u8 v18, v104 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:15104
	ds_load_u8 v19, v104 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v18, 16, v17
	ds_load_u8 v17, v104 offset:1408
	ds_load_u8 v18, v104 offset:1152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[77:78], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:1920
	ds_load_u8 v19, v104 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v18, 16, v17
	ds_load_u8 v17, v104 offset:384
	ds_load_u8 v18, v104 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:896
	ds_load_u8 v19, v104 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[49:50], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v104 offset:2432
	ds_load_u8 v34, v104 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:2944
	ds_load_u8 v35, v104 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v104 offset:5504
	ds_load_u8 v34, v104 offset:5248
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[53:54], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:6016
	ds_load_u8 v35, v104 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v34, 16, v33
	ds_load_u8 v33, v104 offset:4480
	ds_load_u8 v34, v104 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:4992
	ds_load_u8 v35, v104 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v104 offset:7552
	ds_load_u8 v34, v104 offset:7296
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:8064
	ds_load_u8 v35, v104 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v34, 16, v33
	ds_load_u8 v33, v104 offset:6528
	ds_load_u8 v34, v104 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:7040
	ds_load_u8 v35, v104 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v34, 16, v33
	ds_load_u8 v33, v104 offset:9600
	ds_load_u8 v34, v104 offset:9344
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:10112
	ds_load_u8 v35, v104 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v104 offset:8576
	ds_load_u8 v34, v104 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:9088
	ds_load_u8 v35, v104 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v104 offset:11648
	ds_load_u8 v34, v104 offset:11392
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:12160
	ds_load_u8 v35, v104 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v34, 16, v33
	ds_load_u8 v33, v104 offset:10624
	ds_load_u8 v34, v104 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:11136
	ds_load_u8 v35, v104 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v34, 16, v33
	ds_load_u8 v33, v104 offset:13696
	ds_load_u8 v34, v104 offset:13440
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[69:70], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:14208
	ds_load_u8 v35, v104 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v34, 16, v33
	ds_load_u8 v33, v104 offset:12672
	ds_load_u8 v34, v104 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:13184
	ds_load_u8 v35, v104 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v34, 16, v33
	ds_load_u8 v33, v104 offset:15744
	ds_load_u8 v34, v104 offset:15488
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[73:74], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:16256
	ds_load_u8 v35, v104 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v34, 16, v33
	ds_load_u8 v33, v104 offset:14720
	ds_load_u8 v34, v104 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:15232
	ds_load_u8 v35, v104 offset:14976
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v130, v[82:83] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v132, v[41:44]
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[45:48] offset:8192
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[25:26], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[77:78], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[27:28], v[55:56], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[29:30], v[59:60], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[31:32], v[63:64], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[92:93], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[67:68], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[55:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[86:87], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[75:76], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[63:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[71:72], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[79:80], v[25:32] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[41:44], v133 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[45:48], v134 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[49:52], v135 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[53:56], v136 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[57:60], v138 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[61:64], v140 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[65:68], v142 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[69:72], v149 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v73, v104 offset:1280
	ds_load_u8 v74, v104 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v104 offset:1792
	ds_load_u8 v75, v104 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v104 offset:256
	ds_load_u8 v75, v104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v104 offset:768
	ds_load_u8 v76, v104 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	ds_load_u8 v75, v104 offset:3328
	ds_load_u8 v76, v104 offset:3072
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[43:44], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v104 offset:3840
	ds_load_u8 v77, v104 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v76, 16, v75
	ds_load_u8 v75, v104 offset:2304
	ds_load_u8 v77, v104 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v77, v75, 0xc0c0004
	ds_load_u8 v77, v104 offset:2816
	ds_load_u8 v78, v104 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v77, 16, v75
	ds_load_u8 v77, v104 offset:5376
	ds_load_u8 v78, v104 offset:5120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[47:48], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v104 offset:5888
	ds_load_u8 v79, v104 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v104 offset:4352
	ds_load_u8 v79, v104 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v79, v77, 0xc0c0004
	ds_load_u8 v79, v104 offset:4864
	ds_load_u8 v80, v104 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v79, 16, v77
	ds_load_u8 v79, v104 offset:7424
	ds_load_u8 v80, v104 offset:7168
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[51:52], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v104 offset:7936
	ds_load_u8 v82, v104 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v82, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v79
	ds_load_u8 v79, v104 offset:6400
	ds_load_u8 v82, v104 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v82, v79, 0xc0c0004
	ds_load_u8 v82, v104 offset:6912
	ds_load_u8 v83, v104 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v82, 16, v79
	ds_load_u8 v82, v104 offset:9472
	ds_load_u8 v83, v104 offset:9216
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[79:80], v[55:56], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:9984
	ds_load_u8 v84, v104 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v82, v104 offset:8448
	ds_load_u8 v84, v104 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v84, v82, 0xc0c0004
	ds_load_u8 v84, v104 offset:8960
	ds_load_u8 v85, v104 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v84, 16, v82
	ds_load_u8 v84, v104 offset:11520
	ds_load_u8 v85, v104 offset:11264
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[82:83], v[59:60], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:12032
	ds_load_u8 v86, v104 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v85, 16, v84
	ds_load_u8 v84, v104 offset:10496
	ds_load_u8 v86, v104 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v86, v84, 0xc0c0004
	ds_load_u8 v86, v104 offset:11008
	ds_load_u8 v87, v104 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v86, 16, v84
	ds_load_u8 v86, v104 offset:13568
	ds_load_u8 v87, v104 offset:13312
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[63:64], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:14080
	ds_load_u8 v88, v104 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v87, 16, v86
	ds_load_u8 v86, v104 offset:12544
	ds_load_u8 v88, v104 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v88, v86, 0xc0c0004
	ds_load_u8 v88, v104 offset:13056
	ds_load_u8 v89, v104 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v88, 16, v86
	ds_load_u8 v88, v104 offset:15616
	ds_load_u8 v89, v104 offset:15360
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[86:87], v[67:68], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:16128
	ds_load_u8 v90, v104 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v89, 16, v88
	ds_load_u8 v88, v104 offset:14592
	ds_load_u8 v90, v104 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	ds_load_u8 v90, v104 offset:15104
	ds_load_u8 v91, v104 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v88, v90, 16, v88
	ds_load_u8 v90, v104 offset:1408
	ds_load_u8 v91, v104 offset:1152
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[71:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[69:70], v[9:16] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_mul_f32_e32 v35, v157, v35
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:1920
	ds_load_u8 v92, v104 offset:1664
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v9, v158, v9
	v_mul_f32_e32 v10, v158, v10
	v_mul_f32_e32 v11, v158, v11
	v_mul_f32_e32 v12, v158, v12
	v_mul_f32_e32 v13, v158, v13
	v_mul_f32_e32 v14, v158, v14
	v_mul_f32_e32 v15, v158, v15
	v_mul_f32_e32 v16, v158, v16
	v_mul_f32_e32 v34, v157, v34
	v_mul_f32_e32 v36, v157, v36
	v_mul_f32_e32 v38, v157, v38
	v_mul_f32_e32 v40, v157, v40
	v_mul_f32_e32 v33, v157, v33
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v104 offset:384
	ds_load_u8 v92, v104 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v104 offset:896
	ds_load_u8 v93, v104 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[41:42], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v104 offset:3456
	ds_load_u8 v42, v104 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[43:44], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v104 offset:3968
	ds_load_u8 v92, v104 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v92, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v104 offset:2432
	ds_load_u8 v92, v104 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v92, v41, 0xc0c0004
	ds_load_u8 v92, v104 offset:2944
	ds_load_u8 v93, v104 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v92, 16, v41
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[45:46], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v45, v104 offset:5504
	ds_load_u8 v46, v104 offset:5248
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[47:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v104 offset:6016
	ds_load_u8 v92, v104 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v92, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v104 offset:4480
	ds_load_u8 v92, v104 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v92, v45, 0xc0c0004
	ds_load_u8 v92, v104 offset:4992
	ds_load_u8 v93, v104 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v92, 16, v45
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[49:50], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v49, v104 offset:7552
	ds_load_u8 v50, v104 offset:7296
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[51:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:8064
	ds_load_u8 v92, v104 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v92, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v104 offset:6528
	ds_load_u8 v92, v104 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v92, v49, 0xc0c0004
	ds_load_u8 v92, v104 offset:7040
	ds_load_u8 v93, v104 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v92, 16, v49
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[53:54], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v53, v104 offset:9600
	ds_load_u8 v54, v104 offset:9344
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[55:56], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v104 offset:10112
	ds_load_u8 v92, v104 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v92, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v104 offset:8576
	ds_load_u8 v92, v104 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v92, v53, 0xc0c0004
	ds_load_u8 v92, v104 offset:9088
	ds_load_u8 v93, v104 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v92, 16, v53
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[57:58], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v104 offset:11648
	ds_load_u8 v58, v104 offset:11392
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[59:60], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v104 offset:12160
	ds_load_u8 v92, v104 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v92, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v104 offset:10624
	ds_load_u8 v92, v104 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v92, v57, 0xc0c0004
	ds_load_u8 v92, v104 offset:11136
	ds_load_u8 v93, v104 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v92, 16, v57
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[61:62], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v104 offset:13696
	ds_load_u8 v62, v104 offset:13440
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[63:64], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v104 offset:14208
	ds_load_u8 v92, v104 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v92, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v104 offset:12672
	ds_load_u8 v92, v104 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v92, v61, 0xc0c0004
	ds_load_u8 v92, v104 offset:13184
	ds_load_u8 v93, v104 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v92, 16, v61
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[65:66], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v104 offset:15744
	ds_load_u8 v66, v104 offset:15488
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[67:68], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v104 offset:16256
	ds_load_u8 v92, v104 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v92, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v104 offset:14720
	ds_load_u8 v92, v104 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v92, v65, 0xc0c0004
	ds_load_u8 v92, v104 offset:15232
	ds_load_u8 v93, v104 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v92, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[69:70], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[71:72], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v41, v107, v108
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_mul_f32_e32 v22, v158, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0xf
	buffer_load_u16 v42, v41, s[8:11], 0 offen
	buffer_load_u16 v43, v41, s[8:11], 0 offen offset:4
	buffer_load_u16 v44, v41, s[8:11], 0 offen offset:8
	buffer_load_u16 v45, v41, s[8:11], 0 offen offset:12
	buffer_load_u16 v46, v41, s[8:11], 0 offen offset:16
	buffer_load_u16 v47, v41, s[8:11], 0 offen offset:20
	buffer_load_u16 v48, v41, s[8:11], 0 offen offset:24
	buffer_load_u16 v49, v41, s[8:11], 0 offen offset:28
	buffer_load_u16 v57, v41, s[8:11], 0 offen offset:256
	buffer_load_u16 v58, v41, s[8:11], 0 offen offset:260
	buffer_load_u16 v59, v41, s[8:11], 0 offen offset:264
	buffer_load_u16 v60, v41, s[8:11], 0 offen offset:268
	buffer_load_u16 v61, v41, s[8:11], 0 offen offset:272
	buffer_load_u16 v62, v41, s[8:11], 0 offen offset:276
	buffer_load_u16 v63, v41, s[8:11], 0 offen offset:280
	buffer_load_u16 v41, v41, s[8:11], 0 offen offset:284
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_mul_f32_e32 v17, v158, v17
	v_mul_f32_e32 v18, v158, v18
	v_mul_f32_e32 v19, v158, v19
	v_mul_f32_e32 v20, v158, v20
	v_mul_f32_e32 v21, v158, v21
	v_mul_f32_e32 v23, v158, v23
	v_mul_f32_e32 v24, v158, v24
	v_mul_f32_e32 v28, v157, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v108, s41, v108
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v26, v157, v26
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v56, 16, v42
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v55, 16, v43
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v54, 16, v44
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v53, 16, v45
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v52, 16, v46
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v51, 16, v47
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v50, 16, v48
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v49, 16, v49
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v48, 16, v57
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v47, 16, v58
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v46, 16, v59
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v45, 16, v60
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v61
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v62
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v42, 16, v63
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v37, v157, v37 :: v_dual_fmac_f32 v156, v10, v55
	v_dual_mul_f32 v39, v157, v39 :: v_dual_fmac_f32 v154, v12, v53
	v_dual_mul_f32 v25, v157, v25 :: v_dual_fmac_f32 v152, v14, v51
	v_dual_mul_f32 v27, v157, v27 :: v_dual_fmac_f32 v150, v16, v49
	v_dual_mul_f32 v29, v157, v29 :: v_dual_fmac_f32 v146, v19, v46
	v_dual_mul_f32 v30, v157, v30 :: v_dual_fmac_f32 v147, v18, v47
	v_dual_mul_f32 v31, v157, v31 :: v_dual_fmac_f32 v128, v36, v53
	v_dual_mul_f32 v32, v157, v32 :: v_dual_fmac_f32 v155, v11, v54
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v119, v9, v56 :: v_dual_fmac_f32 v126, v38, v51
	v_dual_fmac_f32 v153, v13, v52 :: v_dual_fmac_f32 v124, v40, v49
	v_dual_fmac_f32 v151, v15, v50 :: v_dual_fmac_f32 v148, v17, v48
	v_dual_fmac_f32 v145, v20, v45 :: v_dual_fmac_f32 v144, v21, v44
	v_dual_fmac_f32 v143, v22, v43 :: v_dual_fmac_f32 v116, v28, v45
	v_dual_fmac_f32 v141, v23, v42 :: v_dual_fmac_f32 v122, v26, v47
	v_dual_fmac_f32 v139, v24, v41 :: v_dual_fmac_f32 v114, v29, v44
	v_dual_fmac_f32 v137, v33, v56 :: v_dual_fmac_f32 v112, v31, v42
	v_fmac_f32_e32 v131, v34, v55
	v_fmac_f32_e32 v129, v35, v54
	v_fmac_f32_e32 v127, v37, v52
	v_fmac_f32_e32 v125, v39, v50
	v_fmac_f32_e32 v123, v25, v48
	v_fmac_f32_e32 v121, v27, v46
	v_fmac_f32_e32 v113, v30, v43
	v_fmac_f32_e32 v111, v32, v41
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v13, v144, v144 :: v_dual_max_f32 v14, v143, v143
	v_dual_max_f32 v15, v141, v141 :: v_dual_max_f32 v16, v139, v139
	v_dual_max_f32 v17, v137, v137 :: v_dual_max_f32 v18, v131, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v20, v128, v128 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v19, v129, v129 :: v_dual_max_f32 v22, v126, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v21, v127, v127 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v1, v119, v119 :: v_dual_max_f32 v2, v156, v156
	v_dual_max_f32 v3, v155, v155 :: v_dual_max_f32 v4, v154, v154
	v_dual_max_f32 v5, v153, v153 :: v_dual_max_f32 v6, v152, v152
	v_max_f32_e32 v7, v151, v151
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v40, 0, v21
	v_dual_max_f32 v39, 0, v20 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v20, v125, v125 :: v_dual_max_f32 v21, v124, v124
	v_dual_max_f32 v23, v123, v123 :: v_dual_max_f32 v24, v122, v122
	v_max_f32_e32 v25, v121, v121
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, v150, v150 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v12, v145, v145 :: v_dual_max_f32 v9, v148, v148
	v_dual_max_f32 v10, v147, v147 :: v_dual_max_f32 v11, v146, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v41, 0, v20 :: v_dual_max_f32 v42, 0, v21
	v_dual_max_f32 v43, 0, v23 :: v_dual_max_f32 v20, v116, v116
	v_dual_max_f32 v44, 0, v24 :: v_dual_max_f32 v45, 0, v25
	v_dual_max_f32 v24, v112, v112 :: v_dual_max_f32 v21, v114, v114
	v_dual_max_f32 v46, 0, v20 :: v_dual_max_f32 v23, v113, v113
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v36, v3, v3
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v25, v111, v111 :: v_dual_mul_f32 v38, v1, v1
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v47, 0, v21 :: v_dual_max_f32 v48, 0, v23
	v_dual_max_f32 v49, 0, v24 :: v_dual_max_f32 v50, 0, v25
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v37, v2, v2 :: v_dual_mul_f32 v34, v5, v5
	v_dual_mul_f32 v35, v4, v4 :: v_dual_mul_f32 v32, v7, v7
	v_dual_mul_f32 v33, v6, v6 :: v_dual_mul_f32 v30, v9, v9
	v_dual_mul_f32 v31, v8, v8 :: v_dual_mul_f32 v28, v11, v11
	v_dual_mul_f32 v29, v10, v10 :: v_dual_mul_f32 v26, v13, v13
	v_dual_mul_f32 v27, v12, v12 :: v_dual_mul_f32 v24, v15, v15
	v_mul_f32_e32 v25, v14, v14
	v_dual_mul_f32 v23, v16, v16 :: v_dual_mul_f32 v20, v18, v18
	v_dual_mul_f32 v21, v17, v17 :: v_dual_mul_f32 v16, v22, v22
	v_dual_mul_f32 v19, v19, v19 :: v_dual_mul_f32 v14, v42, v42
	v_dual_mul_f32 v18, v39, v39 :: v_dual_mul_f32 v17, v40, v40
	v_dual_mul_f32 v8, v47, v47 :: v_dual_mul_f32 v15, v41, v41
	v_dual_mul_f32 v12, v44, v44 :: v_dual_mul_f32 v13, v43, v43
	v_mul_f32_e32 v6, v49, v49
	v_mul_f32_e32 v11, v45, v45
	v_mul_f32_e32 v9, v46, v46
	v_mul_f32_e32 v7, v48, v48
	v_mul_f32_e32 v5, v50, v50
	v_mov_b32_e32 v3, v101
	v_mov_b32_e32 v1, v102
.LBB0_7:                                ; %Flow211
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v37, v37 :: v_dual_max_f32 v39, v20, v20
	v_max_f32_e32 v10, v38, v38
	v_max3_f32 v22, v35, v34, v33
	v_max3_f32 v41, v29, v28, v27
	v_max3_f32 v42, v26, v25, v24
	s_mov_b32 s0, 0x76543210
	v_max_f32_e32 v4, v10, v4
	v_max3_f32 v10, v32, v31, v30
	v_max3_f32 v43, v12, v11, v9
	v_max3_f32 v44, v8, v7, v6
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v4, v4, v36, v22
	v_max3_f32 v22, v41, v42, v23
	v_max3_f32 v41, v15, v14, v13
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v4, v4, v10, v22
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v22, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v40, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v39, v40, v39 :: v_dual_and_b32 v2, 0x1f0, v0
	v_max3_f32 v40, v18, v17, v16
	v_max3_f32 v39, v39, v19, v40
	v_max3_f32 v40, v43, v44, v5
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v43, v100, 8, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v10, v39, v41, v40
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v41, 0xf0, v3
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v3, v22, v22 :: v_dual_lshlrev_b32 v40, 4, v100
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v39, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v4, v3
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v42, v99, 3, v40
	v_xor_b32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v22, v39, v39 :: v_dual_and_b32 v39, 8, v0
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v41, v42, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v10, v22
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v10, v43, v40, v39
	v_lshrrev_b32_e32 v40, 2, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v22, 0, v39, v41
	v_lshrrev_b32_e32 v41, 1, v96
	v_lshl_add_u32 v39, v39, 3, 0
	ds_store_b64 v10, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v22
	v_add3_u32 v43, v39, v40, v41
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v10, v3
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v22, v4 :: v_dual_max_f32 v3, v3, v10
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v10, v3
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v3, v10
	v_dual_max_f32 v4, v4, v4 :: v_dual_mov_b32 v3, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v4, v22
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v42, v3, v3
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v22, v4 :: v_dual_lshlrev_b32 v3, 3, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v39, v10, v42
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v4, v4, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v4
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v40, v4, v22
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v4, 0, v3, v41
	ds_store_b64 v43, v[39:40]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[39:40], v4
.Ltmp57:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v4, v39, v39
	v_max_f32_e32 v10, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	v_max_f32_e32 v10, 0x2b8cbccc, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v39, null, 0x40e00000, 0x40e00000, v10
	v_div_scale_f32 v44, vcc_lo, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v22
	v_rcp_f32_e32 v41, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v22, v40, 1.0
	v_fma_f32 v43, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s0, v10, 0x40e00000, v10
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v43, v44, v40
	v_mul_f32_e32 v45, v42, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v22, v43, v44
	v_fma_f32 v47, -v39, v45, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v46, v40
	v_fmac_f32_e32 v45, v47, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v43, v44
	v_fma_f32 v39, -v39, v45, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v22, v40, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v40.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v39, v39, v41, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v22, 0x40e00000, v4
	v_div_fixup_f32 v22, v39, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v10.h, v40.h
	v_mov_b16_e32 v10.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v40.l, v22.h
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v39, 1, v40
	v_add3_u32 v10, v4, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v22, v39, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v39, 0xffff0000, v10
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v10.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v10.h, v4.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v42, null, v39, v39, v37
	v_div_scale_f32 v50, null, v39, v39, v33
	v_div_scale_f32 v40, null, v39, v39, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v67, v42
	v_div_scale_f32 v62, null, v39, v39, v27
	v_div_scale_f32 v58, null, v39, v39, v29
	v_rcp_f32_e32 v71, v50
	v_div_scale_f32 v44, null, v39, v39, v36
	v_rcp_f32_e32 v66, v40
	v_rcp_f32_e32 v77, v62
	v_div_scale_f32 v46, null, v39, v39, v35
	v_rcp_f32_e32 v75, v58
	v_div_scale_f32 v48, null, v39, v39, v34
	v_div_scale_f32 v64, null, v39, v39, v26
	v_rcp_f32_e32 v68, v44
	v_fma_f32 v81, -v42, v67, 1.0
	v_rcp_f32_e32 v69, v46
	v_div_scale_f32 v52, null, v39, v39, v32
	v_rcp_f32_e32 v70, v48
	v_fma_f32 v85, -v50, v71, 1.0
	v_div_scale_f32 v43, s0, v37, v39, v37
	v_div_scale_f32 v54, null, v39, v39, v31
	v_rcp_f32_e32 v78, v64
	v_fmac_f32_e32 v67, v81, v67
	v_fma_f32 v80, -v40, v66, 1.0
	v_fma_f32 v91, -v62, v77, 1.0
	v_rcp_f32_e32 v72, v52
	v_fma_f32 v89, -v58, v75, 1.0
	v_div_scale_f32 v51, s4, v33, v39, v33
	v_fmac_f32_e32 v71, v85, v71
	v_rcp_f32_e32 v73, v54
	v_fma_f32 v82, -v44, v68, 1.0
	v_mul_f32_e32 v81, v43, v67
	v_div_scale_f32 v41, vcc_lo, v38, v39, v38
	v_div_scale_f32 v63, s10, v27, v39, v27
	v_div_scale_f32 v65, null, v39, v39, v25
	v_dual_fmac_f32 v77, v91, v77 :: v_dual_fmac_f32 v66, v80, v66
	v_fma_f32 v83, -v46, v69, 1.0
	v_div_scale_f32 v59, s8, v29, v39, v29
	v_fmac_f32_e32 v75, v89, v75
	v_fma_f32 v84, -v48, v70, 1.0
	v_mul_f32_e32 v85, v51, v71
	v_div_scale_f32 v45, s1, v36, v39, v36
	v_fma_f32 v92, -v64, v78, 1.0
	v_fma_f32 v99, -v42, v81, v43
	v_fmac_f32_e32 v68, v82, v68
	v_rcp_f32_e32 v79, v65
	v_dual_mul_f32 v91, v63, v77 :: v_dual_mul_f32 v80, v41, v66
	v_div_scale_f32 v47, s2, v35, v39, v35
	v_div_scale_f32 v56, null, v39, v39, v30
	v_dual_fmac_f32 v69, v83, v69 :: v_dual_and_b32 v22, 0xffff0000, v4
	v_mul_f32_e32 v89, v59, v75
	v_fma_f32 v86, -v52, v72, 1.0
	v_div_scale_f32 v49, s3, v34, v39, v34
	v_fma_f32 v103, -v50, v85, v51
	v_fmac_f32_e32 v70, v84, v70
	v_fma_f32 v87, -v54, v73, 1.0
	v_dual_fmac_f32 v81, v99, v67 :: v_dual_fmac_f32 v78, v92, v78
	v_mul_f32_e32 v82, v45, v68
	v_fma_f32 v93, -v40, v80, v41
	v_rcp_f32_e32 v74, v56
	v_mul_f32_e32 v83, v47, v69
	v_div_scale_f32 v53, s5, v32, v39, v32
	v_fma_f32 v107, -v58, v89, v59
	v_dual_fmac_f32 v72, v86, v72 :: v_dual_fmac_f32 v85, v103, v71
	v_mul_f32_e32 v84, v49, v70
	v_div_scale_f32 v55, s6, v31, v39, v31
	v_fmac_f32_e32 v73, v87, v73
	v_fma_f32 v100, -v44, v82, v45
	v_fmac_f32_e32 v80, v93, v66
	v_fma_f32 v101, -v46, v83, v47
	v_dual_fmac_f32 v89, v107, v75 :: v_dual_mul_f32 v86, v53, v72
	v_fma_f32 v102, -v48, v84, v49
	v_dual_mul_f32 v87, v55, v73 :: v_dual_fmac_f32 v82, v100, v68
	v_fma_f32 v40, -v40, v80, v41
	v_fma_f32 v88, -v56, v74, 1.0
	v_fmac_f32_e32 v83, v101, v69
	v_fma_f32 v104, -v52, v86, v53
	v_fma_f32 v41, -v42, v81, v43
	v_fmac_f32_e32 v84, v102, v70
	v_div_scale_f32 v60, null, v39, v39, v28
	v_fma_f32 v105, -v54, v87, v55
	v_fma_f32 v42, -v44, v82, v45
	v_div_fmas_f32 v40, v40, v66, v80
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v57, s7, v30, v39, v30
	v_fma_f32 v109, -v62, v91, v63
	v_fmac_f32_e32 v74, v88, v74
	v_fma_f32 v43, -v46, v83, v47
	v_fmac_f32_e32 v86, v104, v72
	v_div_fmas_f32 v41, v41, v67, v81
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v44, -v48, v84, v49
	v_rcp_f32_e32 v76, v60
	v_fmac_f32_e32 v87, v105, v73
	v_div_fmas_f32 v42, v42, v68, v82
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v45, -v50, v85, v51
	v_div_fixup_f32 v38, v40, v39, v38
	v_div_fmas_f32 v40, v43, v69, v83
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v91, v109, v77
	v_mul_f32_e32 v88, v57, v74
	v_fma_f32 v46, -v52, v86, v53
	v_div_fixup_f32 v37, v41, v39, v37
	v_div_fmas_f32 v41, v44, v70, v84
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v47, -v54, v87, v55
	v_div_fixup_f32 v36, v42, v39, v36
	v_div_fmas_f32 v42, v45, v71, v85
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v106, -v56, v88, v57
	v_div_fixup_f32 v35, v40, v39, v35
	v_div_fmas_f32 v40, v46, v72, v86
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v90, -v60, v76, 1.0
	v_div_fixup_f32 v34, v41, v39, v34
	v_div_fmas_f32 v41, v47, v73, v87
	v_fmac_f32_e32 v88, v106, v74
	v_div_scale_f32 v61, s9, v28, v39, v28
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v31, v41, v39, v31
	v_div_scale_f32 v41, s0, v26, v39, v26
	v_fmac_f32_e32 v76, v90, v76
	v_fma_f32 v48, -v56, v88, v57
	v_div_fixup_f32 v33, v42, v39, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v43, v41, v78
	v_fma_f32 v49, -v58, v89, v59
	v_mul_f32_e32 v90, v61, v76
	v_div_fmas_f32 v42, v48, v74, v88
	v_div_scale_f32 v44, null, v39, v39, v24
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v108, -v60, v90, v61
	v_div_fixup_f32 v30, v42, v39, v30
	v_fma_f32 v42, -v65, v79, 1.0
	v_div_fixup_f32 v32, v40, v39, v32
	v_div_fmas_f32 v40, v49, v75, v89
	v_fmac_f32_e32 v90, v108, v76
	v_fma_f32 v46, -v64, v43, v41
	v_fmac_f32_e32 v79, v42, v79
	v_div_scale_f32 v42, s1, v25, v39, v25
	v_rcp_f32_e32 v47, v44
	v_div_scale_f32 v49, null, v39, v39, v23
	v_div_fixup_f32 v29, v40, v39, v29
	v_fma_f32 v40, -v60, v90, v61
	v_fma_f32 v45, -v62, v91, v63
	v_mul_f32_e32 v48, v42, v79
	v_fmac_f32_e32 v43, v46, v78
	v_rcp_f32_e32 v46, v49
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v44, v47, 1.0
	v_div_fmas_f32 v40, v40, v76, v90
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v50, -v65, v48, v42
	v_div_fmas_f32 v45, v45, v77, v91
	v_fmac_f32_e32 v47, v51, v47
	v_div_fixup_f32 v28, v40, v39, v28
	v_fma_f32 v40, -v64, v43, v41
	v_fmac_f32_e32 v48, v50, v79
	v_div_fixup_f32 v27, v45, v39, v27
	v_div_scale_f32 v41, s2, v24, v39, v24
	v_fma_f32 v45, -v49, v46, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v42, -v65, v48, v42
	v_div_fmas_f32 v40, v40, v78, v43
	v_mul_f32_e32 v43, v41, v47
	v_fmac_f32_e32 v46, v45, v46
	v_div_scale_f32 v45, null, v22, v22, v21
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v51, -v44, v43, v41
	v_div_fmas_f32 v42, v42, v79, v48
	v_rcp_f32_e32 v48, v45
	v_div_scale_f32 v50, s0, v23, v39, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v51, v47
	v_div_scale_f32 v53, null, v22, v22, v20
	v_mul_f32_e32 v52, v50, v46
	v_div_fixup_f32 v26, v40, v39, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v44, v43, v41
	v_div_scale_f32 v44, null, v22, v22, v19
	v_fma_f32 v51, -v45, v48, 1.0
	v_div_fixup_f32 v25, v42, v39, v25
	v_fma_f32 v40, -v49, v52, v50
	v_rcp_f32_e32 v42, v53
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v48, v51, v48
	v_rcp_f32_e32 v51, v44
	v_fmac_f32_e32 v52, v40, v46
	v_div_scale_f32 v40, s1, v21, v22, v21
	v_div_fmas_f32 v41, v41, v47, v43
	v_div_scale_f32 v55, null, v22, v22, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v54, -v53, v42, 1.0
	v_fma_f32 v43, -v49, v52, v50
	v_mul_f32_e32 v47, v40, v48
	v_fma_f32 v50, -v44, v51, 1.0
	v_div_scale_f32 v49, s2, v20, v22, v20
	v_fmac_f32_e32 v42, v54, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v45, v47, v40
	v_fmac_f32_e32 v51, v50, v51
	v_div_scale_f32 v50, s3, v19, v22, v19
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v56, v49, v42
	v_rcp_f32_e32 v57, v55
	v_div_fmas_f32 v43, v43, v46, v52
	v_fmac_f32_e32 v47, v54, v48
	v_mul_f32_e32 v52, v50, v51
	v_fma_f32 v46, -v53, v56, v49
	v_div_fixup_f32 v24, v41, v39, v24
	v_div_fixup_f32 v23, v43, v39, v23
	v_fma_f32 v39, -v45, v47, v40
	v_fma_f32 v40, -v44, v52, v50
	v_div_scale_f32 v43, null, v22, v22, v17
	v_fmac_f32_e32 v56, v46, v42
	v_fma_f32 v41, -v55, v57, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v40, v51
	v_rcp_f32_e32 v40, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v45, -v53, v56, v49
	v_fmac_f32_e32 v57, v41, v57
	v_div_scale_f32 v41, s0, v18, v22, v18
	v_div_fmas_f32 v39, v39, v48, v47
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, null, v22, v22, v16
	v_div_fmas_f32 v42, v45, v42, v56
	v_mul_f32_e32 v45, v41, v57
	v_fma_f32 v47, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v44, -v44, v52, v50
	v_div_fixup_f32 v21, v39, v22, v21
	v_fma_f32 v49, -v55, v45, v41
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s1, v17, v22, v17
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v49, v57
	v_div_fmas_f32 v44, v44, v51, v52
	v_mul_f32_e32 v39, v47, v40
	v_div_fixup_f32 v20, v42, v22, v20
	v_fma_f32 v42, -v46, v48, 1.0
	v_fma_f32 v41, -v55, v45, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v49, -v43, v39, v47
	v_div_fixup_f32 v19, v44, v22, v19
	v_div_scale_f32 v44, null, v22, v22, v15
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s2, v16, v22, v16
	v_div_fmas_f32 v41, v41, v57, v45
	v_fmac_f32_e32 v39, v49, v40
	v_rcp_f32_e32 v50, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v42, v48
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v18, v41, v22, v18
	v_fma_f32 v41, -v43, v39, v47
	v_div_scale_f32 v49, null, v22, v22, v14
	v_fma_f32 v43, -v46, v45, v42
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v39, v41, v40, v39
	v_div_scale_f32 v40, null, v22, v22, v13
	v_fma_f32 v47, -v44, v50, 1.0
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, s0, v15, v22, v15
	v_fmac_f32_e32 v50, v47, v50
	v_div_scale_f32 v47, null, v22, v22, v12
	v_div_fixup_f32 v17, v39, v22, v17
	v_fma_f32 v42, -v46, v45, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_rcp_f32_e32 v53, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v40, v43, 1.0
	v_mul_f32_e32 v46, v41, v50
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v51, v39, v51
	v_div_scale_f32 v39, s1, v14, v22, v14
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v22, v22, v11
	v_div_fmas_f32 v42, v42, v48, v45
	v_fma_f32 v45, -v44, v46, v41
	v_mul_f32_e32 v48, v39, v51
	v_div_scale_f32 v54, s2, v13, v22, v13
	v_fma_f32 v55, -v47, v53, 1.0
	v_rcp_f32_e32 v56, v52
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_mul_f32_e32 v57, v54, v43
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s3, v12, v22, v12
	v_div_fixup_f32 v16, v42, v22, v16
	v_fma_f32 v41, -v44, v46, v41
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	v_mul_f32_e32 v44, v55, v53
	v_fma_f32 v45, -v52, v56, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v39, -v49, v48, v39
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s0, v11, v22, v11
	v_div_fmas_f32 v41, v41, v50, v46
	v_fma_f32 v40, -v40, v57, v54
	v_fmac_f32_e32 v44, v42, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v45, v56
	v_div_scale_f32 v46, null, v22, v22, v9
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v15, v41, v22, v15
	v_div_fmas_f32 v39, v39, v51, v48
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v48, v46
	v_div_fmas_f32 v40, v40, v43, v57
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_div_fixup_f32 v14, v39, v22, v14
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v40, v22, v13
	v_div_fmas_f32 v43, v43, v53, v44
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v41, -v46, v48, 1.0
	v_div_scale_f32 v40, null, v22, v22, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v52, v42, v45
	v_div_fixup_f32 v12, v43, v22, v12
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, null, v22, v22, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v56, v42
	v_div_scale_f32 v44, vcc_lo, v9, v22, v9
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v43, null, v22, v22, v6
	v_mul_f32_e32 v49, v44, v48
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v50, null, v22, v22, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v53, -v46, v49, v44
	v_div_fixup_f32 v11, v39, v22, v11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_fma_f32 v39, -v40, v42, 1.0
	v_rcp_f32_e32 v52, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v49, v53, v48
	v_fma_f32 v51, -v41, v45, 1.0
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s0, v8, v22, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v54, -v43, v47, 1.0
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s1, v7, v22, v7
	v_div_fmas_f32 v44, v44, v48, v49
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_mul_f32_e32 v55, v39, v42
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s2, v6, v22, v6
	v_fma_f32 v56, -v50, v52, 1.0
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v57, v51, v45
	v_fma_f32 v53, -v40, v55, v39
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s3, v5, v22, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v58, v54, v47
	v_fma_f32 v46, -v41, v57, v51
	v_fmac_f32_e32 v55, v53, v42
	v_mul_f32_e32 v59, v56, v52
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v53, -v43, v58, v54
	v_fmac_f32_e32 v57, v46, v45
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v58, v53, v47
	v_fma_f32 v41, -v41, v57, v51
	v_div_fmas_f32 v39, v39, v42, v55
	v_fmac_f32_e32 v59, v40, v52
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v43, v58, v54
	v_div_fmas_f32 v41, v41, v45, v57
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v42, -v50, v59, v56
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v40, v40, v47, v58
	v_div_fixup_f32 v7, v41, v22, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v40, v22, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v8, v39, v22, v8
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v44, v22, v9
	v_div_fixup_f32 v5, v42, v22, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v38
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v44, v15
	v_cvt_i32_f32_e32 v46, v13
	v_and_b32_e32 v13, 15, v32
	v_and_b32_e32 v15, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v30, 11, v0
	v_lshlrev_b32_e32 v32, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v45, v14
	v_cvt_i32_f32_e32 v47, v12
	v_cvt_i32_f32_e32 v50, v7
	v_cvt_i32_f32_e32 v51, v6
	v_and_b32_e32 v6, 15, v37
	v_and_b32_e32 v7, 15, v36
	v_and_b32_e32 v12, 15, v33
	v_and_b32_e32 v14, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 0x160, v0
	v_and_b32_e32 v30, 0x3000, v30
	v_lshlrev_b32_e32 v33, 7, v98
	v_lshlrev_b32_e32 v36, 7, v0
	v_and_b32_e32 v37, 0x60, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v39, v20
	v_cvt_i32_f32_e32 v48, v11
	v_cvt_i32_f32_e32 v49, v8
	v_and_b32_e32 v8, 15, v35
	v_and_b32_e32 v11, 15, v34
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v34, 0x200, v1
	v_xor_b32_e32 v35, v97, v31
	v_add3_u32 v33, 0, v30, v33
	v_and_or_b32 v36, 0x3600, v36, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v38, v21
	v_cvt_i32_f32_e32 v40, v19
	v_cvt_i32_f32_e32 v41, v18
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v52, v5
	v_and_b32_e32 v5, 15, v22
	v_and_b32_e32 v21, 15, v24
	v_and_b32_e32 v24, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v39, v33, v34, v35
	v_xad_u32 v2, v36, v2, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v17
	v_cvt_i32_f32_e32 v43, v16
	v_and_b32_e32 v16, 15, v29
	v_and_b32_e32 v17, 15, v28
	v_and_b32_e32 v18, 15, v27
	v_and_b32_e32 v19, 15, v26
	v_and_b32_e32 v20, 15, v25
	v_and_b32_e32 v22, 15, v23
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v30, 15, v46
	v_and_b32_e32 v31, 15, v47
	v_and_b32_e32 v32, 15, v48
	v_and_b32_e32 v33, 15, v9
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v39, v[5:8]
	ds_store_b128 v39, v[15:18] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v2
	ds_load_b128 v[15:18], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_and_b32_e32 v29, 15, v44
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[23:26]
	ds_store_b128 v39, v[30:33] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v2
	ds_load_b128 v[31:34], v2 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[11:14]
	ds_store_b128 v39, v[19:22] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v2
	ds_load_b128 v[19:22], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 15, v45
	v_and_b32_e32 v35, 15, v49
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v37, 15, v51
	v_and_b32_e32 v38, 15, v52
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[27:30]
	ds_store_b128 v39, v[35:38] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v2
	ds_load_b128 v[35:38], v2 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v17, 4, v7
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v15, 4, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v17, s0, v95
	s_mul_i32 s2, s34, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v16, 4, v6
	v_lshl_or_b32 v2, v18, 4, v8
	v_lshl_or_b32 v9, v19, 4, v11
	v_lshl_or_b32 v11, v20, 4, v12
	v_lshl_or_b32 v8, v21, 4, v13
	v_lshl_or_b32 v12, v22, 4, v14
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, s2, s1, v3
	s_lshl_b32 s0, s0, 5
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v31, 4, v23
	v_lshl_or_b32 v14, v32, 4, v24
	v_lshl_or_b32 v15, v33, 4, v25
	v_lshl_or_b32 v16, v34, 4, v26
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v18, v35, 4, v27
	v_lshl_or_b32 v19, v36, 4, v28
	v_lshl_or_b32 v20, v37, 4, v29
	v_lshl_or_b32 v21, v38, 4, v30
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v22, v3, v17
	v_add3_u32 v17, v17, s0, v3
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v2.l
	v_and_b16 v2.h, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v3.h, 0xff, v5.l
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v5.l, 0xff, v8.l
	v_or_b16 v8.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v11.l
	v_or_b16 v8.l, v3.h, v3.l
	v_and_b16 v2.h, 0xff, v9.l
	v_or_b16 v9.h, v5.l, v4.l
	v_lshlrev_b16 v3.l, 8, v16.l
	v_and_b16 v3.h, 0xff, v15.l
	v_lshlrev_b16 v4.l, 8, v14.l
	v_and_b16 v5.l, 0xff, v13.l
	v_lshlrev_b16 v5.h, 8, v21.l
	v_and_b16 v6.l, 0xff, v20.l
	v_lshlrev_b16 v6.h, 8, v19.l
	v_and_b16 v7.l, 0xff, v18.l
	v_or_b16 v9.l, v2.h, v2.l
	v_or_b16 v2.h, v3.h, v3.l
	v_or_b16 v2.l, v5.l, v4.l
	v_or_b16 v3.h, v6.l, v5.h
	v_or_b16 v3.l, v7.l, v6.h
	s_and_b32 s1, s21, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v1, 0x7c, v1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v22, s[0:3], 0 offen
	buffer_store_b64 v[2:3], v17, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 2, v94
	v_lshrrev_b32_e32 v3, 2, v96
	v_and_b32_e32 v4, 2, v95
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s35, 31
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, 0, v2, v3
	v_add3_u32 v1, 0, v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, v0, 63, s34
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	ds_store_b32 v2, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp58:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 159
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 159
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13344
; TotalNumSgprs: 46
; NumVgprs: 159
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 159
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     159
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
