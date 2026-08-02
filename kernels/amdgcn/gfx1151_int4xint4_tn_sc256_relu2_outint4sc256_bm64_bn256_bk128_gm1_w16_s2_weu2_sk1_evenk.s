	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v78, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v73, 15, v0
	v_lshlrev_b32_e32 v81, 2, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshrrev_b32_e32 v80, 2, v78
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	v_lshrrev_b32_e32 v3, 2, v78
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
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v79, 7, v0
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v75, 0x1f0, v0
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v74, 0x100, v0
	v_dual_mov_b32 v7, 0 :: v_dual_lshlrev_b32 v76, 4, v73
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v77, 16, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v36, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s40, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v1, 3, v75
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v5, 3, v79
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v26, s14, 9, v78
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s41, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s1, s12, 1
	s_mov_b32 s12, 0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s3, s13, 9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 4, v74
	v_xor_b32_e32 v4, v5, v1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v86, s3, v26
	s_lshl_b32 s3, s13, 8
	s_mov_b32 s13, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v7, 56, v81
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v8, v3, v73
	v_lshl_or_b32 v9, v73, 10, v4
	v_lshlrev_b32_e32 v4, 6, v73
	v_lshlrev_b32_e32 v11, 5, v78
	v_xor_b32_e32 v7, v7, v80
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add3_u32 v3, s40, v3, v73
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s0, s2, 31
.Ltmp18:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v84, s1, v1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s0, 24
	v_or3_b32 v7, v4, v11, v7
.Ltmp20:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v4, s41, v1
	v_add_nc_u32_e32 v1, 32, v3
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
.Ltmp22:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s42, s2, 8
.Ltmp24:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v24, 64, v4
	v_mul_lo_u32 v1, s42, v1
	v_mul_lo_u32 v3, s42, v3
	v_or_b32_e32 v22, s41, v2
	v_sub_nc_u32_e32 v83, s1, v2
	v_lshrrev_b32_e32 v2, 3, v77
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v26, 0x41, v4
	s_lshl_b32 s14, s14, 8
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v87, 1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v85, 2, v2
	v_mad_u64_u32 v[1:2], null, s35, v4, s[14:15]
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v88, 1, v3
	v_mad_u64_u32 v[2:3], null, s35, v24, s[14:15]
	v_cmp_gt_i32_e64 s0, 0x80, v4
	v_mad_u64_u32 v[3:4], null, s35, v26, s[14:15]
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_add_nc_u32_e32 v25, 64, v22
	v_mul_lo_u32 v4, s34, v22
	v_lshlrev_b32_e32 v6, 3, v0
	v_add_nc_u32_e32 v82, 0, v8
	v_xor_b32_e32 v8, 8, v7
	v_cmp_gt_i32_e64 s1, 0x80, v25
	v_mul_lo_u32 v25, s34, v25
	v_xor_b32_e32 v10, 0x88, v9
	v_xor_b32_e32 v12, 0x110, v9
	v_xor_b32_e32 v13, 0x198, v9
	v_xor_b32_e32 v14, 0x220, v9
	v_xor_b32_e32 v15, 0x2a8, v9
	v_xor_b32_e32 v11, 0x330, v9
	v_xor_b32_e32 v16, 0x3b8, v9
	v_xor_b32_e32 v17, 16, v7
	v_xor_b32_e32 v18, 24, v7
	v_xor_b32_e32 v19, 32, v7
	v_xor_b32_e32 v20, 40, v7
	v_xor_b32_e32 v21, 48, v7
	v_xor_b32_e32 v23, 56, v7
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v22
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v22, s35, v1
	v_add3_u32 v89, v25, s40, v5
	v_subrev_nc_u32_e32 v90, s3, v2
	v_subrev_nc_u32_e32 v91, s3, v3
	v_subrev_nc_u32_e32 v92, s3, v1
	v_add3_u32 v95, v4, s40, v5
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v105, 0, v6
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v119, 0, v7
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v121, 0, v8
	v_mov_b32_e32 v1, s12
	v_subrev_nc_u32_e32 v93, s3, v22
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v107, 0, v9
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v108, 0, v10
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v109, 0, v12
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v110, 0, v13
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v111, 0, v14
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v113, 0, v15
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v115, 0, v11
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v117, 0, v16
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v122, 0, v17
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v123, 0, v18
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v124, 0, v19
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v125, 0, v20
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v127, 0, v21
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v134, 0, v23
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_cmp_gt_i32_e64 s2, 0x80, v24
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v96, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s43, s35, 1
	s_lshl_b32 s44, s34, 7
	s_lshl_b32 s34, s35, 7
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
	buffer_load_u16 v9, v88, s[24:27], 0 offen
	buffer_load_u16 v10, v87, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s41, v83
	v_cmp_lt_i32_e64 s4, s41, v84
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v88, 2, v88
	s_add_i32 s42, s42, -1
	v_add_nc_u32_e32 v87, 2, v87
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v144, 16, v10
	v_lshlrev_b32_e32 v145, 16, v9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v95, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v13, v76, v93
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v93, s34, v93
	v_add_nc_u32_e32 v95, s44, v95
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[17:18], v9, s[28:31], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v76, v92
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v92, s34, v92
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s4, s41, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s41, 0x80
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s4, v83
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s4, v84
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	s_and_b32 s4, s4, s2
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s42, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v105, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v10, v14, v10, 0x7030602
	v_perm_b32 v14, v15, v11, 0x5010400
	v_perm_b32 v11, v15, v11, 0x7030602
	v_perm_b32 v15, v16, v12, 0x5010400
	v_perm_b32 v12, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v16, 8, v17
	v_perm_b32 v13, v13, v9, 0x7030602
	v_and_b16 v9.l, 0xff, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v9.h, 8, v16.l
	v_lshrrev_b32_e32 v16, 8, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v107, v9
	v_lshrrev_b32_e32 v9, 24, v17
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v16.l
	ds_store_b16 v107, v9 offset:64
	v_and_b16 v9.l, 0xff, v13.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v108, v9
	v_lshrrev_b32_e32 v9, 24, v13
	v_and_b16 v9.h, 0xff, v13.h
	v_lshrrev_b32_e32 v13, 8, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 8, v10
	ds_store_b16 v108, v9 offset:64
	v_and_b16 v9.l, 0xff, v18.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v109, v9
	v_lshrrev_b32_e32 v9, 24, v18
	v_and_b16 v9.h, 0xff, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v13.l
	ds_store_b16 v109, v9 offset:64
	v_and_b16 v9.l, 0xff, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v110, v9
	v_lshrrev_b32_e32 v9, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v10, 8, v14
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v11
	ds_store_b16 v110, v9 offset:64
	v_and_b16 v9.l, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v111, v9
	v_lshrrev_b32_e32 v9, 24, v14
	v_and_b16 v9.h, 0xff, v14.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v15
	ds_store_b16 v111, v9 offset:64
	v_and_b16 v9.l, 0xff, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v113, v9
	v_lshrrev_b32_e32 v9, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v12
	ds_store_b16 v113, v9 offset:64
	v_and_b16 v9.l, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v115, v9
	v_lshrrev_b32_e32 v9, 24, v15
	v_and_b16 v9.h, 0xff, v15.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_add_nc_u32_e32 v10, v76, v91
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v91, s34, v91
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v115, v9 offset:64
	v_and_b16 v9.l, 0xff, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v117, v9
	v_lshrrev_b32_e32 v9, 24, v12
	v_and_b16 v9.h, 0xff, v12.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	ds_store_b16 v117, v9 offset:64
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v89, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v89, s44, v89
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[154:155], v9, s[28:31], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v76, v90
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v90, s34, v90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	buffer_load_b128 v[41:44], v9, s[36:39], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s4
	buffer_load_b128 v[45:48], v9, s[36:39], 0 offen
	ds_load_2addr_stride64_b64 v[49:52], v119 offset1:16
	ds_load_2addr_stride64_b64 v[53:56], v121 offset1:16
	ds_load_2addr_stride64_b64 v[57:60], v122 offset1:16
	ds_load_2addr_stride64_b64 v[61:64], v123 offset1:16
	ds_load_2addr_stride64_b64 v[65:68], v124 offset1:16
	ds_load_2addr_stride64_b64 v[69:72], v125 offset1:16
	ds_load_2addr_stride64_b64 v[146:149], v127 offset1:16
	ds_load_2addr_stride64_b64 v[150:153], v134 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v82 offset:16704
	ds_load_u8 v10, v82 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v82 offset:16832
	ds_load_u8 v11, v82 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v82 offset:16448
	ds_load_u8 v11, v82 offset:16384
	ds_load_u8 v156, v82 offset:16416
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v82 offset:16576
	ds_load_u8 v12, v82 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	ds_load_u8 v11, v82 offset:17216
	ds_load_u8 v12, v82 offset:17152
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v82 offset:17344
	ds_load_u8 v13, v82 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v82 offset:16960
	ds_load_u8 v13, v82 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v82 offset:17088
	ds_load_u8 v14, v82 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	ds_load_u8 v13, v82 offset:17728
	ds_load_u8 v14, v82 offset:17664
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[11:12], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v82 offset:17856
	ds_load_u8 v15, v82 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v82 offset:17472
	ds_load_u8 v15, v82 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v15, v82 offset:17600
	ds_load_u8 v16, v82 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v15, 16, v13
	ds_load_u8 v15, v82 offset:18240
	ds_load_u8 v16, v82 offset:18176
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[13:14], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v82 offset:18368
	ds_load_u8 v17, v82 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v16, 16, v15
	ds_load_u8 v15, v82 offset:17984
	ds_load_u8 v17, v82 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v17, v15, 0xc0c0004
	ds_load_u8 v17, v82 offset:18112
	ds_load_u8 v18, v82 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v17, 16, v15
	ds_load_u8 v17, v82 offset:18752
	ds_load_u8 v18, v82 offset:18688
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[15:16], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:18880
	ds_load_u8 v19, v82 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v82 offset:18496
	ds_load_u8 v19, v82 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v82 offset:18624
	ds_load_u8 v20, v82 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v82 offset:19264
	ds_load_u8 v20, v82 offset:19200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[17:18], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v82 offset:19392
	ds_load_u8 v21, v82 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v20, 16, v19
	ds_load_u8 v19, v82 offset:19008
	ds_load_u8 v21, v82 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	ds_load_u8 v21, v82 offset:19136
	ds_load_u8 v22, v82 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v21, 16, v19
	ds_load_u8 v21, v82 offset:19776
	ds_load_u8 v22, v82 offset:19712
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[19:20], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v82 offset:19904
	ds_load_u8 v23, v82 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v22, 16, v21
	ds_load_u8 v21, v82 offset:19520
	ds_load_u8 v23, v82 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	ds_load_u8 v23, v82 offset:19648
	ds_load_u8 v24, v82 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v23, 16, v21
	ds_load_u8 v23, v82 offset:20288
	ds_load_u8 v24, v82 offset:20224
	v_wmma_i32_16x16x16_iu4 v[25:32], v[146:147], v[21:22], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v82 offset:20416
	ds_load_u8 v33, v82 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v33, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v23
	ds_load_u8 v23, v82 offset:20032
	ds_load_u8 v33, v82 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v33, v23, 0xc0c0004
	ds_load_u8 v33, v82 offset:20160
	ds_load_u8 v34, v82 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v33, 16, v23
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[9:10], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v82 offset:16736
	ds_load_u8 v10, v82 offset:16672
	v_wmma_i32_16x16x16_iu4 v[25:32], v[150:151], v[23:24], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[55:56], v[11:12], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[59:60], v[13:14], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[63:64], v[15:16], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[17:18], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v17, v82 offset:17248
	ds_load_u8 v18, v82 offset:17184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v82 offset:16864
	ds_load_u8 v11, v82 offset:16800
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[19:20], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[148:149], v[21:22], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[152:153], v[23:24], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:17376
	ds_load_u8 v19, v82 offset:17312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v10, 16, v9
	ds_load_u8 v9, v82 offset:16480
	ds_load_u8 v10, v82 offset:16608
	ds_load_u8 v11, v82 offset:16544
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v156, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v156, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[156:157], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v18, 16, v17
	ds_load_u8 v17, v82 offset:16992
	ds_load_u8 v18, v82 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:17120
	ds_load_u8 v19, v82 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v18, 16, v17
	ds_load_u8 v17, v82 offset:17760
	ds_load_u8 v18, v82 offset:17696
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[49:50], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:17888
	ds_load_u8 v19, v82 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v18, 16, v17
	ds_load_u8 v17, v82 offset:17504
	ds_load_u8 v18, v82 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:17632
	ds_load_u8 v19, v82 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v18, 16, v17
	ds_load_u8 v17, v82 offset:18272
	ds_load_u8 v18, v82 offset:18208
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:18400
	ds_load_u8 v19, v82 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v82 offset:18016
	ds_load_u8 v18, v82 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:18144
	ds_load_u8 v19, v82 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v82 offset:18784
	ds_load_u8 v18, v82 offset:18720
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[57:58], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:18912
	ds_load_u8 v19, v82 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v18, 16, v17
	ds_load_u8 v17, v82 offset:18528
	ds_load_u8 v18, v82 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:18656
	ds_load_u8 v19, v82 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v18, 16, v17
	ds_load_u8 v17, v82 offset:19296
	ds_load_u8 v18, v82 offset:19232
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:19424
	ds_load_u8 v19, v82 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v18, 16, v17
	ds_load_u8 v17, v82 offset:19040
	ds_load_u8 v18, v82 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:19168
	ds_load_u8 v19, v82 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v18, 16, v17
	ds_load_u8 v17, v82 offset:19808
	ds_load_u8 v18, v82 offset:19744
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:19936
	ds_load_u8 v19, v82 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v18, 16, v17
	ds_load_u8 v17, v82 offset:19552
	ds_load_u8 v18, v82 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:19680
	ds_load_u8 v19, v82 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v18, 16, v17
	ds_load_u8 v17, v82 offset:20320
	ds_load_u8 v18, v82 offset:20256
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:20448
	ds_load_u8 v19, v82 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v18, 16, v17
	ds_load_u8 v17, v82 offset:20064
	ds_load_u8 v18, v82 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v82 offset:20192
	ds_load_u8 v19, v82 offset:20128
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v146, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[156:157], v[1:8] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v51, v45, v41, 0x5010400
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[146:147], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[49:50], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v50, v45, v41, 0x7030602
	v_perm_b32 v45, v47, v43, 0x5010400
	v_perm_b32 v43, v47, v43, 0x7030602
	v_lshrrev_b32_e32 v47, 8, v51
	v_perm_b32 v49, v46, v42, 0x5010400
	v_perm_b32 v46, v46, v42, 0x7030602
	v_perm_b32 v42, v48, v44, 0x5010400
	v_perm_b32 v41, v48, v44, 0x7030602
	v_and_b16 v44.l, 0xff, v51.l
	v_lshlrev_b16 v44.h, 8, v47.l
	v_lshrrev_b32_e32 v47, 8, v50
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[59:60], v[53:54], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v44.l, v44.l, v44.h
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_store_b64 v105, v[154:155] offset:16384
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[57:58], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v107, v44
	v_lshrrev_b32_e32 v44, 24, v51
	v_and_b16 v44.h, 0xff, v51.h
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v44.l, 8, v44.l
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v44.l, v44.h, v44.l
	v_lshlrev_b16 v44.h, 8, v47.l
	v_lshrrev_b32_e32 v47, 8, v49
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[148:149], v[69:70], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v107, v44 offset:64
	v_and_b16 v44.l, 0xff, v50.l
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[152:153], v[146:147], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v108, v44
	v_lshrrev_b32_e32 v44, 24, v50
	v_and_b16 v44.h, 0xff, v50.h
	v_lshlrev_b16 v44.l, 8, v44.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v44.l, v44.h, v44.l
	v_lshlrev_b16 v44.h, 8, v47.l
	v_lshrrev_b32_e32 v47, 8, v46
	ds_store_b16 v108, v44 offset:64
	v_and_b16 v44.l, 0xff, v49.l
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v109, v44
	v_lshrrev_b32_e32 v44, 24, v49
	v_and_b16 v44.h, 0xff, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v44.l, v44.h, v44.l
	v_lshlrev_b16 v44.h, 8, v47.l
	ds_store_b16 v109, v44 offset:64
	v_and_b16 v44.l, 0xff, v46.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v110, v44
	v_lshrrev_b32_e32 v44, 24, v46
	v_and_b16 v44.h, 0xff, v46.h
	v_lshrrev_b32_e32 v46, 8, v45
	v_lshlrev_b16 v44.l, 8, v44.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v44.l, v44.h, v44.l
	v_lshlrev_b16 v44.h, 8, v46.l
	ds_store_b16 v110, v44 offset:64
	v_and_b16 v44.l, 0xff, v45.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v111, v44
	v_lshrrev_b32_e32 v44, 24, v45
	v_and_b16 v44.h, 0xff, v45.h
	v_lshrrev_b32_e32 v45, 8, v43
	v_lshlrev_b16 v44.l, 8, v44.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v44.l, v44.h, v44.l
	v_lshlrev_b16 v44.h, 8, v45.l
	ds_store_b16 v111, v44 offset:64
	v_and_b16 v44.l, 0xff, v43.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v44.l, v44.l, v44.h
	ds_store_b16 v113, v44
	v_lshrrev_b32_e32 v44, 24, v43
	v_and_b16 v43.h, 0xff, v43.h
	v_lshlrev_b16 v43.l, 8, v44.l
	v_lshrrev_b32_e32 v44, 8, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v43.l, v43.h, v43.l
	v_lshlrev_b16 v43.h, 8, v44.l
	ds_store_b16 v113, v43 offset:64
	v_and_b16 v43.l, 0xff, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v43.l, v43.l, v43.h
	ds_store_b16 v115, v43
	v_lshrrev_b32_e32 v43, 24, v42
	v_and_b16 v42.h, 0xff, v42.h
	v_lshlrev_b16 v42.l, 8, v43.l
	v_lshrrev_b32_e32 v43, 8, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v42.l, v42.h, v42.l
	v_lshlrev_b16 v42.h, 8, v43.l
	ds_store_b16 v115, v42 offset:64
	v_and_b16 v42.l, 0xff, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v42.l, v42.l, v42.h
	ds_store_b16 v117, v42
	v_lshrrev_b32_e32 v42, 24, v41
	v_and_b16 v41.h, 0xff, v41.h
	v_lshlrev_b16 v41.l, 8, v42.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v41.l, v41.h, v41.l
	ds_store_b16 v117, v41 offset:64
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[41:44], v119 offset1:16
	ds_load_2addr_stride64_b64 v[45:48], v121 offset1:16
	ds_load_2addr_stride64_b64 v[49:52], v122 offset1:16
	ds_load_2addr_stride64_b64 v[53:56], v123 offset1:16
	ds_load_2addr_stride64_b64 v[57:60], v124 offset1:16
	ds_load_2addr_stride64_b64 v[61:64], v125 offset1:16
	ds_load_2addr_stride64_b64 v[65:68], v127 offset1:16
	ds_load_2addr_stride64_b64 v[69:72], v134 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v146, v82 offset:16704
	ds_load_u8 v147, v82 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v82 offset:16832
	ds_load_u8 v148, v82 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v147, 16, v146
	ds_load_u8 v146, v82 offset:16448
	ds_load_u8 v148, v82 offset:16384
	ds_load_u8 v162, v82 offset:16416
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v146, v148, v146, 0xc0c0004
	ds_load_u8 v148, v82 offset:16576
	ds_load_u8 v149, v82 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v148, 16, v146
	ds_load_u8 v148, v82 offset:17216
	ds_load_u8 v149, v82 offset:17152
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[146:147], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[146:147], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v146, v82 offset:16736
	ds_load_u8 v147, v82 offset:16672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v82 offset:17344
	ds_load_u8 v150, v82 offset:17280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v82 offset:16960
	ds_load_u8 v150, v82 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v82 offset:17088
	ds_load_u8 v151, v82 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	ds_load_u8 v150, v82 offset:17728
	ds_load_u8 v151, v82 offset:17664
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[148:149], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[47:48], v[148:149], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v147, v82 offset:16864
	ds_load_u8 v148, v82 offset:16800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v82 offset:17856
	ds_load_u8 v152, v82 offset:17792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v82 offset:16608
	ds_load_u8 v149, v82 offset:16544
	v_lshl_or_b32 v147, v147, 16, v146
	ds_load_u8 v146, v82 offset:16480
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v150, v82 offset:17472
	ds_load_u8 v152, v82 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v162, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v148, 16, v146
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[146:147], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v41, v82 offset:17248
	ds_load_u8 v42, v82 offset:17184
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[146:147], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v152, v150, 0xc0c0004
	ds_load_u8 v152, v82 offset:17600
	ds_load_u8 v153, v82 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v82 offset:17376
	ds_load_u8 v148, v82 offset:17312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v152, 16, v150
	ds_load_u8 v152, v82 offset:18240
	ds_load_u8 v153, v82 offset:18176
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[150:151], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[150:151], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v148, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v82 offset:16992
	ds_load_u8 v148, v82 offset:16928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v82 offset:18368
	ds_load_u8 v154, v82 offset:18304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v148, v41, 0xc0c0004
	ds_load_u8 v148, v82 offset:17120
	ds_load_u8 v149, v82 offset:17056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v152
	ds_load_u8 v152, v82 offset:17984
	ds_load_u8 v154, v82 offset:17920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_lshl_or_b32 v41, v148, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[41:42], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v82 offset:17760
	ds_load_u8 v46, v82 offset:17696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v154, v152, 0xc0c0004
	ds_load_u8 v154, v82 offset:18112
	ds_load_u8 v155, v82 offset:18048
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[41:42], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v82 offset:17888
	ds_load_u8 v148, v82 offset:17824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v154, 16, v152
	ds_load_u8 v154, v82 offset:18752
	ds_load_u8 v155, v82 offset:18688
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[152:153], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[55:56], v[152:153], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v148, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v82 offset:17504
	ds_load_u8 v148, v82 offset:17440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v82 offset:18880
	ds_load_u8 v156, v82 offset:18816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v148, v45, 0xc0c0004
	ds_load_u8 v148, v82 offset:17632
	ds_load_u8 v149, v82 offset:17568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v155, v155, 16, v154
	ds_load_u8 v154, v82 offset:18496
	ds_load_u8 v156, v82 offset:18432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_lshl_or_b32 v45, v148, 16, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v156, v154, 0xc0c0004
	ds_load_u8 v156, v82 offset:18624
	ds_load_u8 v157, v82 offset:18560
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v82 offset:18272
	ds_load_u8 v50, v82 offset:18208
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[45:46], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v82 offset:18400
	ds_load_u8 v148, v82 offset:18336
	v_lshl_or_b32 v154, v156, 16, v154
	ds_load_u8 v156, v82 offset:19264
	ds_load_u8 v157, v82 offset:19200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[154:155], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[59:60], v[154:155], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v148, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v82 offset:19392
	ds_load_u8 v158, v82 offset:19328
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v82 offset:18016
	ds_load_u8 v148, v82 offset:17952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v148, v49, 0xc0c0004
	ds_load_u8 v148, v82 offset:18144
	ds_load_u8 v149, v82 offset:18080
	v_lshl_or_b32 v157, v157, 16, v156
	ds_load_u8 v156, v82 offset:19008
	ds_load_u8 v158, v82 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v158, v156, 0xc0c0004
	ds_load_u8 v158, v82 offset:19136
	ds_load_u8 v159, v82 offset:19072
	v_lshl_or_b32 v49, v148, 16, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[49:50], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v53, v82 offset:18784
	ds_load_u8 v54, v82 offset:18720
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[49:50], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v158, 16, v156
	ds_load_u8 v158, v82 offset:19776
	ds_load_u8 v159, v82 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v82 offset:18912
	ds_load_u8 v148, v82 offset:18848
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[156:157], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[63:64], v[156:157], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v82 offset:19904
	ds_load_u8 v160, v82 offset:19840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v148, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v82 offset:18528
	ds_load_u8 v148, v82 offset:18464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	v_lshl_or_b32 v159, v159, 16, v158
	ds_load_u8 v158, v82 offset:19520
	ds_load_u8 v160, v82 offset:19456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v148, v53, 0xc0c0004
	ds_load_u8 v148, v82 offset:18656
	ds_load_u8 v149, v82 offset:18592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v160, v158, 0xc0c0004
	ds_load_u8 v160, v82 offset:19648
	ds_load_u8 v161, v82 offset:19584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v148, 16, v53
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[53:54], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v57, v82 offset:19296
	ds_load_u8 v58, v82 offset:19232
	v_wmma_i32_16x16x16_iu4 v[17:24], v[59:60], v[53:54], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v160, 16, v158
	ds_load_u8 v160, v82 offset:20288
	ds_load_u8 v161, v82 offset:20224
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[158:159], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[158:159], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v82 offset:19424
	ds_load_u8 v148, v82 offset:19360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v82 offset:20416
	ds_load_u8 v163, v82 offset:20352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v148, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v82 offset:19040
	ds_load_u8 v148, v82 offset:18976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v161, v163, v161, 0xc0c0004
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v82 offset:20032
	ds_load_u8 v163, v82 offset:19968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v148, v57, 0xc0c0004
	ds_load_u8 v148, v82 offset:19168
	ds_load_u8 v149, v82 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v163, v160, 0xc0c0004
	ds_load_u8 v163, v82 offset:20160
	ds_load_u8 v164, v82 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v148, 16, v57
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[57:58], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v61, v82 offset:19808
	ds_load_u8 v62, v82 offset:19744
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v163, 16, v160
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[160:161], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[160:161], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v82 offset:19936
	ds_load_u8 v148, v82 offset:19872
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
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
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v148, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v82 offset:19552
	ds_load_u8 v148, v82 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v148, v61, 0xc0c0004
	ds_load_u8 v148, v82 offset:19680
	ds_load_u8 v149, v82 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v148, 16, v61
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:20320
	ds_load_u8 v66, v82 offset:20256
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:20448
	ds_load_u8 v148, v82 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v148, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:20064
	ds_load_u8 v148, v82 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v148, v65, 0xc0c0004
	ds_load_u8 v148, v82 offset:20192
	ds_load_u8 v149, v82 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v148, 16, v65
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_dual_mul_f32 v10, v144, v10 :: v_dual_mul_f32 v25, v145, v25
	v_dual_mul_f32 v12, v144, v12 :: v_dual_add_nc_u32 v41, v85, v86
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
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_mul_f32_e32 v26, v145, v26
	v_mul_f32_e32 v27, v145, v27
	v_mul_f32_e32 v28, v145, v28
	v_mul_f32_e32 v29, v145, v29
	v_mul_f32_e32 v30, v145, v30
	v_mul_f32_e32 v31, v145, v31
	v_mul_f32_e32 v32, v145, v32
	v_mul_f32_e32 v33, v145, v33
	v_mul_f32_e32 v34, v145, v34
	v_mul_f32_e32 v35, v145, v35
	v_mul_f32_e32 v36, v145, v36
	v_mul_f32_e32 v37, v145, v37
	v_mul_f32_e32 v38, v145, v38
	v_mul_f32_e32 v39, v145, v39
	v_dual_mul_f32 v40, v145, v40 :: v_dual_mul_f32 v9, v144, v9
	v_mul_f32_e32 v11, v144, v11
	v_mul_f32_e32 v14, v144, v14
	v_mul_f32_e32 v16, v144, v16
	v_mul_f32_e32 v18, v144, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v86, s43, v86
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
	v_dual_mul_f32 v13, v144, v13 :: v_dual_fmac_f32 v94, v25, v56
	v_dual_mul_f32 v15, v144, v15 :: v_dual_fmac_f32 v142, v27, v54
	v_dual_mul_f32 v17, v144, v17 :: v_dual_fmac_f32 v140, v29, v52
	v_dual_mul_f32 v19, v144, v19 :: v_dual_fmac_f32 v138, v31, v50
	v_dual_mul_f32 v20, v144, v20 :: v_dual_fmac_f32 v143, v26, v55
	v_dual_mul_f32 v21, v144, v21 :: v_dual_fmac_f32 v136, v33, v48
	v_dual_mul_f32 v22, v144, v22 :: v_dual_fmac_f32 v139, v30, v51
	v_dual_mul_f32 v23, v144, v23 :: v_dual_fmac_f32 v126, v9, v56
	v_dual_mul_f32 v24, v144, v24 :: v_dual_fmac_f32 v135, v34, v47
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v141, v28, v53 :: v_dual_fmac_f32 v130, v38, v43
	v_dual_fmac_f32 v137, v32, v49 :: v_dual_fmac_f32 v120, v10, v55
	v_dual_fmac_f32 v133, v35, v46 :: v_dual_fmac_f32 v132, v36, v45
	v_dual_fmac_f32 v131, v37, v44 :: v_dual_fmac_f32 v128, v40, v41
	v_dual_fmac_f32 v129, v39, v42 :: v_dual_fmac_f32 v116, v12, v53
	v_dual_fmac_f32 v118, v11, v54 :: v_dual_fmac_f32 v103, v17, v48
	v_dual_fmac_f32 v114, v13, v52 :: v_dual_fmac_f32 v101, v19, v46
	v_dual_fmac_f32 v112, v14, v51 :: v_dual_fmac_f32 v99, v21, v44
	v_fmac_f32_e32 v106, v15, v50
	v_dual_fmac_f32 v104, v16, v49 :: v_dual_fmac_f32 v97, v23, v42
	v_fmac_f32_e32 v102, v18, v47
	v_fmac_f32_e32 v100, v20, v45
	v_fmac_f32_e32 v98, v22, v43
	v_fmac_f32_e32 v96, v24, v41
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v15, v129, v129 :: v_dual_max_f32 v16, v128, v128
	v_max_f32_e32 v17, v126, v126
	v_dual_max_f32 v19, v118, v118 :: v_dual_max_f32 v22, v112, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v18, v120, v120
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, v116, v116 :: v_dual_max_f32 v21, v114, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v38, 0, v19 :: v_dual_max_f32 v3, v142, v142
	v_dual_max_f32 v4, v141, v141 :: v_dual_max_f32 v5, v140, v140
	v_dual_max_f32 v6, v139, v139 :: v_dual_max_f32 v7, v138, v138
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v39, 0, v20
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v40, 0, v22
	v_dual_max_f32 v19, v106, v106 :: v_dual_max_f32 v20, v104, v104
	v_dual_max_f32 v22, v103, v103 :: v_dual_max_f32 v23, v102, v102
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v24, v101, v101 :: v_dual_max_f32 v41, 0, v19
	v_dual_max_f32 v1, v94, v94 :: v_dual_max_f32 v2, v143, v143
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v10, v135, v135
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v8, v137, v137
	v_max_f32_e32 v9, v136, v136
	v_dual_max_f32 v11, v133, v133 :: v_dual_max_f32 v12, v132, v132
	v_dual_max_f32 v13, v131, v131 :: v_dual_max_f32 v14, v130, v130
	v_dual_max_f32 v42, 0, v20 :: v_dual_max_f32 v43, 0, v22
	v_dual_max_f32 v44, 0, v23 :: v_dual_max_f32 v45, 0, v24
	v_dual_max_f32 v19, v100, v100 :: v_dual_max_f32 v20, v99, v99
	v_dual_max_f32 v22, v98, v98 :: v_dual_max_f32 v23, v97, v97
	v_dual_max_f32 v24, v96, v96 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v6, 0, v6
	v_max_f32_e32 v10, 0, v10
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v46, 0, v19 :: v_dual_max_f32 v47, 0, v20
	v_dual_max_f32 v48, 0, v22 :: v_dual_mul_f32 v37, v1, v1
	v_dual_max_f32 v49, 0, v23 :: v_dual_max_f32 v50, 0, v24
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v35, v3, v3 :: v_dual_mul_f32 v36, v2, v2
	v_dual_mul_f32 v33, v5, v5 :: v_dual_mul_f32 v34, v4, v4
	v_dual_mul_f32 v31, v7, v7 :: v_dual_mul_f32 v32, v6, v6
	v_dual_mul_f32 v29, v9, v9 :: v_dual_mul_f32 v30, v8, v8
	v_dual_mul_f32 v27, v11, v11 :: v_dual_mul_f32 v28, v10, v10
	v_dual_mul_f32 v25, v13, v13 :: v_dual_mul_f32 v26, v12, v12
	v_dual_mul_f32 v23, v15, v15 :: v_dual_mul_f32 v24, v14, v14
	v_dual_mul_f32 v22, v16, v16 :: v_dual_mul_f32 v19, v18, v18
	v_dual_mul_f32 v20, v17, v17 :: v_dual_mul_f32 v15, v40, v40
	v_dual_mul_f32 v18, v38, v38 :: v_dual_mul_f32 v11, v44, v44
	v_dual_mul_f32 v17, v39, v39 :: v_dual_mul_f32 v16, v21, v21
	v_dual_mul_f32 v13, v42, v42 :: v_dual_mul_f32 v14, v41, v41
	v_mul_f32_e32 v7, v47, v47
	v_dual_mul_f32 v12, v43, v43 :: v_dual_mul_f32 v5, v49, v49
	v_dual_mul_f32 v10, v45, v45 :: v_dual_mov_b32 v3, v80
	v_dual_mul_f32 v8, v46, v46 :: v_dual_mov_b32 v1, v81
	v_mul_f32_e32 v6, v48, v48
	v_mul_f32_e32 v4, v50, v50
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v36, v36 :: v_dual_max_f32 v9, v37, v37
	v_max3_f32 v21, v34, v33, v32
	v_dual_max_f32 v38, v19, v19 :: v_dual_max_f32 v39, v20, v20
	v_max3_f32 v40, v28, v27, v26
	v_max_f32_e32 v2, v9, v2
	v_max3_f32 v41, v25, v24, v23
	v_max3_f32 v9, v31, v30, v29
	v_max_f32_e32 v38, v39, v38
	v_max3_f32 v39, v17, v16, v15
	v_max3_f32 v42, v11, v10, v8
	v_max3_f32 v43, v7, v6, v5
	v_max3_f32 v2, v2, v35, v21
	v_max3_f32 v21, v40, v41, v22
	v_max3_f32 v40, v14, v13, v12
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v41, 8, v0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v38, v38, v18, v39
	v_max3_f32 v39, v42, v43, v4
	v_max3_f32 v2, v2, v9, v21
	s_mov_b32 s0, 0x76543210
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v21, 1, v0
	v_lshl_add_u32 v43, v79, 8, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v9, v38, v40, v39
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v38, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v40, 4, v79
	v_and_b32_e32 v21, 0xf0, v21
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v39, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v42, v78, 3, v40
	v_xor_b32_e32 v40, v40, v21
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v38, v2, v38
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v2, v42, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v39, v9, v39
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v9, v43, v40, v41
	v_add3_u32 v2, 0, v41, v2
	v_lshrrev_b32_e32 v40, 1, v74
	ds_store_b64 v9, v[38:39]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[38:39], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v9, v39
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v2, v38
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v38, v39, v39
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v39, v41, 3, 0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_add3_u32 v3, v39, v3, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v38, v9
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v38, v9
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v21, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v38
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v38, v9 :: v_dual_max_f32 v21, v2, v21
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v2, v21
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v42, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v41, v2, v2 :: v_dual_lshlrev_b32 v2, 3, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v39, v9, v42
	v_max_f32_e32 v38, v21, v41
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v9, 0, v2, v40
	ds_store_b64 v3, v[38:39]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[38:39], v9
.Ltmp55:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v3, v38, v38
	v_max_f32_e32 v9, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_max_f32_e32 v9, 0x2b8cbccc, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v9
	v_div_scale_f32 v43, vcc_lo, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v21
	v_rcp_f32_e32 v40, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v21, v39, 1.0
	v_fma_f32 v42, -v38, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v40, v42, v40 :: v_dual_fmac_f32 v39, v41, v39
	v_div_scale_f32 v41, s0, v9, 0x40e00000, v9
	v_mul_f32_e32 v44, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v38, v44, v41
	v_fmac_f32_e32 v44, v46, v40
	v_mul_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v38, v44, v41
	v_fma_f32 v45, -v21, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v45, v39
	v_fma_f32 v21, -v21, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v39, v42
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v39.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v40, v44
	v_div_fixup_f32 v3, v21, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v21, v38, 0x40e00000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v9.h, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v39.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v38, 1, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v3, v9, 0x7fff
	v_add3_u32 v3, v21, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v9
	v_and_b32_e32 v21, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v43, null, v38, v38, v35
	v_rcp_f32_e32 v67, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v43, v67, 1.0
	v_fmac_f32_e32 v67, v86, v67
	v_div_scale_f32 v39, null, v38, v38, v37
	v_div_scale_f32 v41, null, v38, v38, v36
	v_div_scale_f32 v45, null, v38, v38, v34
	v_div_scale_f32 v49, null, v38, v38, v32
	v_div_scale_f32 v51, null, v38, v38, v31
	v_div_scale_f32 v61, null, v38, v38, v26
	v_div_scale_f32 v47, null, v38, v38, v33
	v_rcp_f32_e32 v65, v39
	v_rcp_f32_e32 v66, v41
	v_rcp_f32_e32 v68, v45
	v_rcp_f32_e32 v70, v49
	v_rcp_f32_e32 v71, v51
	v_rcp_f32_e32 v81, v61
	v_div_scale_f32 v55, null, v38, v38, v29
	v_rcp_f32_e32 v69, v47
	v_div_scale_f32 v59, null, v38, v38, v27
	v_div_scale_f32 v53, null, v38, v38, v30
	v_div_scale_f32 v57, null, v38, v38, v28
	v_rcp_f32_e32 v78, v55
	v_fma_f32 v84, -v39, v65, 1.0
	v_rcp_f32_e32 v80, v59
	v_fma_f32 v85, -v41, v66, 1.0
	v_fma_f32 v87, -v45, v68, 1.0
	v_fma_f32 v89, -v49, v70, 1.0
	v_fma_f32 v90, -v51, v71, 1.0
	v_fma_f32 v95, -v61, v81, 1.0
	v_rcp_f32_e32 v72, v53
	v_rcp_f32_e32 v79, v57
	v_div_scale_f32 v40, vcc_lo, v37, v38, v37
	v_fma_f32 v88, -v47, v69, 1.0
	v_fmac_f32_e32 v65, v84, v65
	v_div_scale_f32 v42, s0, v36, v38, v36
	v_div_scale_f32 v52, s5, v31, v38, v31
	v_div_scale_f32 v62, s10, v26, v38, v26
	v_dual_fmac_f32 v66, v85, v66 :: v_dual_fmac_f32 v69, v88, v69
	v_dual_fmac_f32 v68, v87, v68 :: v_dual_fmac_f32 v71, v90, v71
	v_dual_fmac_f32 v70, v89, v70 :: v_dual_fmac_f32 v81, v95, v81
	v_div_scale_f32 v44, s1, v35, v38, v35
	v_div_scale_f32 v46, s2, v34, v38, v34
	v_fma_f32 v92, -v55, v78, 1.0
	v_dual_mul_f32 v84, v40, v65 :: v_dual_mul_f32 v85, v42, v66
	v_fma_f32 v94, -v59, v80, 1.0
	v_dual_mul_f32 v90, v52, v71 :: v_dual_mul_f32 v95, v62, v81
	v_div_scale_f32 v48, s3, v33, v38, v33
	v_fma_f32 v91, -v53, v72, 1.0
	v_fma_f32 v93, -v57, v79, 1.0
	v_div_scale_f32 v50, s4, v32, v38, v32
	v_mul_f32_e32 v86, v44, v67
	v_dual_fmac_f32 v78, v92, v78 :: v_dual_mul_f32 v87, v46, v68
	v_fma_f32 v97, -v39, v84, v40
	v_div_scale_f32 v60, s9, v27, v38, v27
	v_fma_f32 v98, -v41, v85, v42
	v_fma_f32 v108, -v61, v95, v62
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v54, s6, v30, v38, v30
	v_dual_fmac_f32 v72, v91, v72 :: v_dual_fmac_f32 v79, v93, v79
	v_dual_mul_f32 v88, v48, v69 :: v_dual_mul_f32 v89, v50, v70
	v_fma_f32 v99, -v43, v86, v44
	v_fma_f32 v100, -v45, v87, v46
	v_fmac_f32_e32 v84, v97, v65
	v_div_scale_f32 v56, s7, v29, v38, v29
	v_fmac_f32_e32 v85, v98, v66
	v_fmac_f32_e32 v95, v108, v81
	v_mul_f32_e32 v94, v60, v80
	v_mul_f32_e32 v91, v54, v72
	v_fma_f32 v101, -v47, v88, v48
	v_fma_f32 v102, -v49, v89, v50
	v_dual_fmac_f32 v86, v99, v67 :: v_dual_fmac_f32 v87, v100, v68
	v_fma_f32 v39, -v39, v84, v40
	v_div_scale_f32 v58, s8, v28, v38, v28
	v_mul_f32_e32 v92, v56, v78
	v_fma_f32 v103, -v51, v90, v52
	v_fma_f32 v40, -v41, v85, v42
	v_fma_f32 v104, -v53, v91, v54
	v_dual_fmac_f32 v88, v101, v69 :: v_dual_fmac_f32 v89, v102, v70
	v_fma_f32 v41, -v43, v86, v44
	v_div_fmas_f32 v39, v39, v65, v84
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v93, v58, v79
	v_fma_f32 v105, -v55, v92, v56
	v_fma_f32 v42, -v45, v87, v46
	v_fmac_f32_e32 v90, v103, v71
	v_div_fmas_f32 v40, v40, v66, v85
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v91, v104, v72
	v_fma_f32 v43, -v47, v88, v48
	v_div_fmas_f32 v41, v41, v67, v86
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v44, -v49, v89, v50
	v_div_scale_f32 v64, null, v38, v38, v24
	v_fma_f32 v106, -v57, v93, v58
	v_fmac_f32_e32 v92, v105, v78
	v_div_fixup_f32 v37, v39, v38, v37
	v_div_fmas_f32 v39, v42, v68, v87
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v51, v90, v52
	v_div_fixup_f32 v36, v40, v38, v36
	v_div_fmas_f32 v40, v43, v69, v88
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v46, -v53, v91, v54
	v_div_fixup_f32 v35, v41, v38, v35
	v_div_fmas_f32 v41, v44, v70, v89
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v63, null, v38, v38, v25
	v_rcp_f32_e32 v83, v64
	v_fmac_f32_e32 v93, v106, v79
	v_fma_f32 v47, -v55, v92, v56
	v_div_fixup_f32 v34, v39, v38, v34
	v_div_fmas_f32 v39, v45, v71, v90
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v33, v40, v38, v33
	v_div_fmas_f32 v40, v46, v72, v91
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v82, v63
	v_div_fixup_f32 v32, v41, v38, v32
	v_div_fmas_f32 v41, v47, v78, v92
	v_fma_f32 v107, -v59, v94, v60
	v_div_fixup_f32 v30, v40, v38, v30
	v_div_scale_f32 v40, s0, v25, v38, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v41, v38, v29
	v_fma_f32 v41, -v64, v83, 1.0
	v_fmac_f32_e32 v94, v107, v80
	v_fma_f32 v96, -v63, v82, 1.0
	v_fma_f32 v48, -v57, v93, v58
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v41, v83
	v_div_scale_f32 v41, s1, v24, v38, v24
	v_fmac_f32_e32 v82, v96, v82
	v_div_fixup_f32 v31, v39, v38, v31
	v_div_fmas_f32 v39, v48, v79, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v41, v83
	v_div_scale_f32 v43, null, v38, v38, v23
	v_div_scale_f32 v48, null, v38, v38, v22
	v_fma_f32 v49, -v64, v47, v41
	v_mul_f32_e32 v42, v40, v82
	v_div_fixup_f32 v28, v39, v38, v28
	v_fma_f32 v39, -v59, v94, v60
	v_fma_f32 v44, -v61, v95, v62
	v_fmac_f32_e32 v47, v49, v83
	v_fma_f32 v45, -v63, v42, v40
	v_rcp_f32_e32 v46, v43
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v52, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v42, v45, v82
	v_rcp_f32_e32 v45, v48
	v_div_fmas_f32 v39, v39, v80, v94
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v41, -v64, v47, v41
	v_div_fmas_f32 v44, v44, v81, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v43, v46, 1.0
	v_div_fixup_f32 v27, v39, v38, v27
	v_fma_f32 v39, -v63, v42, v40
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v26, v44, v38, v26
	v_fma_f32 v44, -v48, v45, 1.0
	v_div_scale_f32 v40, s2, v23, v38, v23
	v_div_fmas_f32 v39, v39, v82, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v44, v45
	v_div_scale_f32 v44, null, v21, v21, v20
	v_div_scale_f32 v49, s0, v22, v38, v22
	v_fmac_f32_e32 v46, v50, v46
	v_div_fmas_f32 v41, v41, v83, v47
	v_rcp_f32_e32 v47, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v51, v49, v45
	v_div_fixup_f32 v25, v39, v38, v25
	v_mul_f32_e32 v42, v40, v46
	v_div_fixup_f32 v24, v41, v38, v24
	v_rcp_f32_e32 v41, v52
	v_fma_f32 v39, -v48, v51, v49
	v_div_scale_f32 v54, null, v21, v21, v17
	v_fma_f32 v50, -v43, v42, v40
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v51, v39, v45
	v_div_scale_f32 v39, s1, v20, v21, v20
	v_rcp_f32_e32 v56, v54
	v_fma_f32 v53, -v52, v41, 1.0
	v_fmac_f32_e32 v42, v50, v46
	v_fma_f32 v50, -v44, v47, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v41, v53, v41
	v_fma_f32 v40, -v43, v42, v40
	v_div_scale_f32 v43, null, v21, v21, v18
	v_fmac_f32_e32 v47, v50, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v40, v40, v46, v42
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v42, -v48, v51, v49
	v_div_scale_f32 v48, s2, v19, v21, v19
	v_mul_f32_e32 v46, v39, v47
	v_div_fixup_f32 v23, v40, v38, v23
	v_fma_f32 v40, -v54, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v55, v48, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v53, -v44, v46, v39
	v_fma_f32 v49, -v43, v50, 1.0
	v_div_fmas_f32 v42, v42, v45, v51
	v_fmac_f32_e32 v56, v40, v56
	v_fma_f32 v45, -v52, v55, v48
	v_div_scale_f32 v40, s0, v17, v21, v17
	v_fmac_f32_e32 v50, v49, v50
	v_div_scale_f32 v49, s3, v18, v21, v18
	v_div_fixup_f32 v22, v42, v38, v22
	v_div_scale_f32 v42, null, v21, v21, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v51, v49, v50
	v_fmac_f32_e32 v46, v53, v47
	v_fmac_f32_e32 v55, v45, v41
	v_div_scale_f32 v45, null, v21, v21, v15
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v44, v46, v39
	v_fma_f32 v39, -v43, v51, v49
	v_fma_f32 v44, -v52, v55, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v51, v39, v50
	v_rcp_f32_e32 v39, v42
	v_div_fmas_f32 v38, v38, v47, v46
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v47, v45
	v_div_fmas_f32 v41, v44, v41, v55
	v_fma_f32 v43, -v43, v51, v49
	v_mul_f32_e32 v44, v40, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v20, v38, v21, v20
	v_div_fixup_f32 v19, v41, v21, v19
	v_fma_f32 v46, -v42, v39, 1.0
	v_fma_f32 v48, -v54, v44, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v41, -v45, v47, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v43, v43, v50, v51
	v_div_scale_f32 v46, s1, v16, v21, v16
	v_dual_fmac_f32 v44, v48, v56 :: v_dual_fmac_f32 v47, v41, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v43, v21, v18
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v43, null, v21, v21, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v54, v44, v40
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v48, -v42, v38, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v43
	v_div_scale_f32 v41, s2, v15, v21, v15
	v_div_fmas_f32 v40, v40, v56, v44
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v21, v21, v13
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v40, v21, v17
	v_fma_f32 v40, -v42, v38, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v43, v49, 1.0
	v_rcp_f32_e32 v50, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v49, v46, v49
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v46, null, v21, v21, v11
	v_div_scale_f32 v40, s0, v14, v21, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v16, v38, v21, v16
	v_fma_f32 v38, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v39, null, v21, v21, v12
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s1, v13, v21, v13
	v_mul_f32_e32 v44, v41, v47
	v_div_scale_f32 v53, s2, v12, v21, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v46, v52, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v42, -v45, v44, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s3, v11, v21, v11
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v41, -v45, v44, v41
	v_mul_f32_e32 v45, v40, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v41, v41, v47, v44
	v_fma_f32 v44, -v43, v45, v40
	v_fma_f32 v51, -v39, v42, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 86 37 is_stmt 1               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s35, 31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v15, v41, v21, v15
	v_fmac_f32_e32 v45, v44, v49
	v_mul_f32_e32 v47, v38, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v43, v45, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v48, v47, v38
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v44, v50
	v_dual_fmac_f32 v42, v51, v42 :: v_dual_mul_f32 v43, v54, v52
	v_div_scale_f32 v51, null, v21, v21, v10
	v_fma_f32 v38, -v48, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v21, v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v55, v51
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v14, v40, v21, v14
	v_div_scale_f32 v49, null, v21, v21, v4
	v_div_fixup_f32 v13, v38, v21, v13
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v51, v55, 1.0
	v_mul_f32_e32 v56, v53, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v45, v47, 1.0
	v_fmac_f32_e32 v55, v44, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v39, v56, v53
	v_div_scale_f32 v44, s0, v10, v21, v10
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v41, -v46, v43, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v56, v53
	v_div_fmas_f32 v39, v39, v42, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v46, v43, v54
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v46, -v51, v41, v44
	v_div_fixup_f32 v12, v39, v21, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v52, v43
	v_div_scale_f32 v39, null, v21, v21, v7
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v42, v21, v11
	v_div_scale_f32 v42, null, v21, v21, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v53, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_div_scale_f32 v53, s2, v5, v21, v5
	v_rcp_f32_e32 v51, v49
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v8, v21, v8
	v_mul_f32_e32 v57, v53, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v10, v38, v21, v10
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s3, v4, v21, v4
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s0, v7, v21, v7
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v21, v21, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v54, v38, v41
	v_mul_f32_e32 v48, v43, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v44, v40
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v48, v52, v47
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v50, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v45, v48, v43
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s1, v6, v21, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_div_fmas_f32 v43, v43, v47, v48
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_mul_f32_e32 v56, v50, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v58, v55, v51
	v_fma_f32 v38, -v39, v54, v38
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v45, -v40, v56, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v56, v45, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v7, v38, v21, v7
	v_div_fixup_f32 v8, v43, v21, v8
	v_fma_f32 v40, -v40, v56, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v31, v31
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v40, v21, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v48, v7
	v_and_b32_e32 v7, 15, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v49, v58, v55
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v43, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v45, v12
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v14, 15, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v39, v39, v46, v57
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v46, v11
	v_and_b32_e32 v11, 15, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v41, -v49, v58, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v39, v21, v5
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v29, 11, v0
	v_lshlrev_b32_e32 v31, 5, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v4, v41, v21, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v44, v13
	v_cvt_i32_f32_e32 v49, v6
	v_cvt_i32_f32_e32 v50, v5
	v_and_b32_e32 v5, 15, v36
	v_and_b32_e32 v6, 15, v35
	v_and_b32_e32 v13, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 0x160, v0
	v_and_b32_e32 v29, 0x3000, v29
	v_lshlrev_b32_e32 v32, 7, v77
	v_lshlrev_b32_e32 v35, 7, v0
	v_and_b32_e32 v36, 0x60, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v38, v19
	v_cvt_i32_f32_e32 v47, v10
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v10, 15, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v33, 0x200, v1
	v_xor_b32_e32 v34, v76, v30
	v_add3_u32 v32, 0, v29, v32
	v_and_or_b32 v35, 0x3600, v35, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v26, v26
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v37, v20
	v_cvt_i32_f32_e32 v51, v4
	v_and_b32_e32 v4, 15, v21
	v_and_b32_e32 v20, 15, v23
	v_and_b32_e32 v23, 15, v38
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v38, v32, v33, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v32, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v8, v35, v75, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v40, v17
	v_cvt_i32_f32_e32 v41, v16
	v_cvt_i32_f32_e32 v42, v15
	v_and_b32_e32 v15, 15, v28
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v17, 15, v26
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v39, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v38, v[4:7]
	ds_store_b128 v38, v[14:17] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v8
	ds_load_b128 v[14:17], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v25
	v_and_b32_e32 v19, 15, v24
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v37
	v_and_b32_e32 v24, 15, v39
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v29, 15, v45
	v_and_b32_e32 v30, 15, v46
	v_and_b32_e32 v31, 15, v47
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[22:25]
	ds_store_b128 v38, v[29:32] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v8
	ds_load_b128 v[30:33], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[10:13]
	ds_store_b128 v38, v[18:21] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v8
	ds_load_b128 v[18:21], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_and_b32_e32 v29, 15, v44
	v_and_b32_e32 v34, 15, v48
	v_and_b32_e32 v35, 15, v49
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v37, 15, v51
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[26:29]
	ds_store_b128 v38, v[34:37] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v8
	ds_load_b128 v[34:37], v8 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
.Ltmp56:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v39, 4, v75
.Ltmp57:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v16, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v16, s0, v39
	s_mul_i32 s2, s40, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v17, 4, v7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, s2, s1, v2
	s_lshl_b32 s0, s0, 5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v14, 4, v4
	v_lshl_or_b32 v5, v15, 4, v5
	v_lshl_or_b32 v9, v18, 4, v10
	v_lshl_or_b32 v10, v19, 4, v11
	v_lshl_or_b32 v8, v20, 4, v12
	v_lshl_or_b32 v11, v21, 4, v13
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v21, v2, v16
	v_add3_u32 v16, v16, s0, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v7.l
	v_and_b16 v2.h, 0xff, v6.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v30, 4, v22
	v_lshl_or_b32 v13, v31, 4, v23
	v_lshl_or_b32 v14, v32, 4, v24
	v_lshl_or_b32 v15, v33, 4, v25
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v3.l, 8, v5.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v11.l
	v_and_b16 v5.l, 0xff, v8.l
	v_or_b16 v8.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v34, 4, v26
	v_lshl_or_b32 v18, v35, 4, v27
	v_lshl_or_b32 v19, v36, 4, v28
	v_lshl_or_b32 v20, v37, 4, v29
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_or_b16 v9.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v5.h, 8, v20.l
	v_and_b16 v6.l, 0xff, v19.l
	v_lshlrev_b16 v6.h, 8, v18.l
	v_and_b16 v7.l, 0xff, v17.l
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v5.l, v4.h
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.h, v3.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v73
	v_lshrrev_b32_e32 v4, 2, v74
	v_and_b32_e32 v1, 0x7c, v1
	v_and_b32_e32 v2, 2, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	s_and_b32 s1, s21, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, 0, v3, v4
	v_add3_u32 v1, 0, v1, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v21, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v16, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v4, v0, 63, s40
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_store_b32 v3, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v4, s0
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 165
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 165
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15000
; TotalNumSgprs: 47
; NumVgprs: 165
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 165
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     165
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
