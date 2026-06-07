	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s24, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	v_and_b32_e32 v146, 16, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s24, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s17, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s17, s16
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s20, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow130
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v138, 15, v0
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v139, 0xf0, v0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v167, 0
	s_lshl_b32 s14, s4, 6
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s2, s2, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	v_bfe_i32 v8, v0, 4, 1
	v_bfe_i32 v10, v0, 3, 1
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v1, 3, v0
	v_lshlrev_b32_e32 v9, 4, v0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s20, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s24, 31
.Ltmp16:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_and_b32_e32 v104, 24, v1
	v_and_b32_e32 v1, 0x778, v1
	v_lshlrev_b32_e32 v6, 5, v0
	v_bfe_i32 v7, v0, 2, 1
	v_and_b32_e32 v8, 0x90, v8
	v_dual_mov_b32 v172, 0 :: v_dual_and_b32 v11, 0xf70, v9
	v_dual_mov_b32 v173, 0 :: v_dual_and_b32 v10, 0x90, v10
	v_or_b32_e32 v13, s14, v138
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s22, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s20, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s22, 27
	v_and_b32_e32 v6, 0x160, v6
	v_dual_mov_b32 v174, 0 :: v_dual_and_b32 v7, 0x90, v7
	v_dual_mov_b32 v170, 0 :: v_dual_and_b32 v9, 0xe00, v9
	v_xor_b32_e32 v1, v8, v1
	v_xor_b32_e32 v8, v10, v11
	v_or_b32_e32 v10, 32, v13
	s_add_i32 s0, s1, s0
.Ltmp21:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s25, s0, 5
	v_or_b32_e32 v12, v7, v6
	v_or3_b32 v6, v6, v9, v7
	v_or_b32_e32 v9, 16, v13
	v_or_b32_e32 v11, 48, v13
	v_mul_lo_u32 v177, v10, s25
	v_lshrrev_b32_e32 v10, 6, v0
	v_mul_lo_u32 v5, s24, v3
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v3, s17, 8, v3
	v_dual_mov_b32 v167, 0 :: v_dual_and_b32 v2, 1, v0
	v_mul_lo_u32 v176, v9, s25
	v_mul_lo_u32 v178, v11, s25
	v_dual_mov_b32 v168, 0 :: v_dual_lshlrev_b32 v9, 2, v0
	v_dual_mov_b32 v171, 0 :: v_dual_and_b32 v10, 2, v10
	v_dual_mov_b32 v164, 0 :: v_dual_lshlrev_b32 v11, 1, v139
	s_lshl_b32 s0, s16, 8
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 2, v0
	v_or_b32_e32 v179, s2, v0
	v_dual_mov_b32 v169, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v3, s0, v3
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v105, 4, v2
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v9, 0x1c0, v9
	v_dual_mov_b32 v165, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v10, 0, v10
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v180, 0, v11
	v_mul_lo_u32 v175, v13, s25
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v13, 28, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v0, 0x80, v3
	v_add3_u32 v9, v10, v9, v2
	v_add3_u32 v10, v180, v11, v2
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v2, s14, v4
	v_xor_b32_e32 v7, 16, v12
	v_xor_b32_e32 v14, 16, v6
	v_mad_u64_u32 v[106:107], null, s24, v0, v[105:106]
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s21, s2, s24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mad_u64_u32 v[107:108], null, s24, v2, v[104:105]
	v_add3_u32 v181, v5, v105, s21
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v182, 0, v1
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v185, 0, v7
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v186, 0, v6
	v_dual_mov_b32 v0, s36 :: v_dual_add_nc_u32 v183, 0, v8
	v_mov_b32_e32 v160, 0
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v184, 0, v12
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v187, 0, v14
	v_dual_mov_b32 v1, s37 :: v_dual_mov_b32 v2, s38
	v_dual_mov_b32 v3, s39 :: v_dual_mov_b32 v4, s40
	v_dual_mov_b32 v5, s41 :: v_dual_mov_b32 v6, s42
	v_dual_mov_b32 v7, s43 :: v_dual_add_nc_u32 v188, v9, v13
	v_mov_b32_e32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v189, v10, v13
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v108, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s20, 6
.Ltmp25:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v9, s3, v105
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v8, s3, v104
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v11, s3, v181
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v10, s3, v107
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v12, s3, v106
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s24, v9
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v8
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v8, 32, v8
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v14, 32, v11
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v9, 32, v9
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v15, 0x80000000, v10, vcc_lo
	v_add_nc_u32_e32 v13, 32, v10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v18, 32, v12
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v9
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s24, v8
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	buffer_load_b128 v[8:11], v11, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[16:17], v15, s[16:19], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s26, s3, 5
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v22, 0x80000000, v14, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v19, 0x80000000, v13, s0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_load_b128 v[12:15], v12, s[4:7], 0 offen
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s27, s26, s15
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s3, 32
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[20:21], v19, s[16:19], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s26, s25
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s25
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v183, v[8:11]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v182, v[16:17] offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[8:11], v22, s[4:7], 0 offen
	buffer_load_b128 v[16:19], v18, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	ds_store_b128 v183, v[12:15] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v182, v[20:21] offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v183, v[8:11] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v183, v[16:19] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[72:75], v186 offset:4096
	ds_load_b128 v[76:79], v187 offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v184 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[40:43], v186
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[20:23], v185 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[44:47], v187
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[80:83], v184 offset:17920
	ds_load_b128 v[84:87], v185 offset:17920
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[40:43], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[72:75], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[44:47], v[20:23], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[76:79], v[20:23], v[64:71] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v184 offset:16896
	ds_load_b128 v[20:23], v185 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v196, v65
	v_cvt_f32_i32_e32 v195, v66
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v65, v70
	v_cvt_f32_i32_e32 v194, v67
	v_cvt_f32_i32_e32 v67, v68
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[40:43], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[72:75], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[44:47], v[20:23], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[76:79], v[20:23], v[56:63] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v184 offset:17408
	ds_load_b128 v[20:23], v185 offset:17408
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v70, v56
	v_cvt_f32_i32_e32 v69, v58
	v_cvt_f32_i32_e32 v58, v61
	v_cvt_f32_i32_e32 v56, v63
	v_cvt_f32_i32_e32 v68, v59
	v_cvt_f32_i32_e32 v59, v60
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[24:31], v[40:43], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[72:75], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[24:31], v[44:47], v[20:23], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[76:79], v[20:23], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[16:23], v[40:43], v[80:83], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v61, v48
	v_wmma_i32_16x16x16_iu8 v[16:23], v[44:47], v[84:87], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[72:75], v[80:83], v[0:7] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v72, v179, s27, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v73, v176, s26, 1
	v_add_lshl_u32 v74, v177, s26, 1
	v_add_lshl_u32 v75, v178, s26, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[40:47], v[76:79], v[84:87], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v63, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v72, v72, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v50, v53
	v_cvt_f32_i32_e32 v48, v55
	v_cvt_f32_i32_e32 v53, v41
	v_cvt_f32_i32_e32 v55, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v41, v46
	v_cvt_f32_i32_e32 v44, v9
	v_cvt_f32_i32_e32 v46, v11
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v60, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v40
	v_cvt_f32_i32_e32 v40, v47
	v_cvt_f32_i32_e32 v47, v12
	v_cvt_f32_i32_e32 v12, v33
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v33, v36
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v188, v72 offset:20480
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v72, v175, s26, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s26, s0, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	s_clause 0x3
	buffer_load_u16 v193, v72, s[20:23], 0 offen
	buffer_load_u16 v192, v73, s[20:23], 0 offen
	buffer_load_u16 v191, v74, s[20:23], 0 offen
	buffer_load_u16 v190, v75, s[20:23], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[229:232], v186 offset:12288
	ds_load_b128 v[233:236], v187 offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[80:83], v184 offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[221:224], v186 offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[84:87], v185 offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[225:228], v187 offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[237:240], v184 offset:19968
	ds_load_b128 v[241:244], v185 offset:19968
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s1, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[221:224], v[80:83], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[229:232], v[80:83], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[225:228], v[84:87], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[233:236], v[84:87], v[197:204] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[80:83], v184 offset:18944
	ds_load_b128 v[84:87], v185 offset:18944
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v39, v200
	v_cvt_f32_i32_e32 v200, v204
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[221:224], v[80:83], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[205:212], v[229:232], v[80:83], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[225:228], v[84:87], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[205:212], v[233:236], v[84:87], v[205:212] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[80:83], v184 offset:19456
	ds_load_b128 v[84:87], v185 offset:19456
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v204, v208
	v_cvt_f32_i32_e32 v208, v212
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[221:224], v[80:83], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[229:232], v[80:83], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[225:228], v[84:87], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[233:236], v[84:87], v[213:220] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[221:224], v[237:240], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[225:228], v[241:244], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[221:228], v[229:232], v[237:240], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v229, v64
	v_cvt_f32_i32_e32 v64, v71
	v_cvt_f32_i32_e32 v71, v57
	v_wmma_i32_16x16x16_iu8 v[221:228], v[233:236], v[241:244], v[221:228] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v57, v62
	v_cvt_f32_i32_e32 v62, v49
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v54, v42
	v_cvt_f32_i32_e32 v42, v45
	v_cvt_f32_i32_e32 v45, v10
	v_cvt_f32_i32_e32 v232, v15
	v_cvt_f32_i32_e32 v15, v32
	v_cvt_f32_i32_e32 v32, v197
	v_cvt_f32_i32_e32 v197, v201
	v_cvt_f32_i32_e32 v201, v205
	v_cvt_f32_i32_e32 v205, v209
	v_cvt_f32_i32_e32 v209, v213
	v_cvt_f32_i32_e32 v213, v217
	v_cvt_f32_i32_e32 v217, v221
	v_cvt_f32_i32_e32 v221, v225
	v_cvt_f32_i32_e32 v230, v13
	v_cvt_f32_i32_e32 v13, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v198
	v_cvt_f32_i32_e32 v198, v202
	v_cvt_f32_i32_e32 v202, v206
	v_cvt_f32_i32_e32 v206, v210
	v_cvt_f32_i32_e32 v210, v214
	v_cvt_f32_i32_e32 v214, v218
	v_cvt_f32_i32_e32 v218, v222
	v_cvt_f32_i32_e32 v222, v226
	v_cvt_f32_i32_e32 v231, v14
	v_cvt_f32_i32_e32 v14, v35
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v199
	v_cvt_f32_i32_e32 v199, v203
	v_cvt_f32_i32_e32 v203, v207
	v_cvt_f32_i32_e32 v207, v211
	v_cvt_f32_i32_e32 v212, v216
	v_cvt_f32_i32_e32 v211, v215
	v_cvt_f32_i32_e32 v215, v219
	v_cvt_f32_i32_e32 v219, v223
	v_cvt_f32_i32_e32 v223, v227
	v_cvt_f32_i32_e32 v216, v220
	v_cvt_f32_i32_e32 v220, v224
	v_cvt_f32_i32_e32 v224, v228
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v193, 16, v193
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v191, 16, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v225, v8, v193
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[8:11], v180 offset:20480
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v226, 16, v8
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v192, 16, v192
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v15, v15, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v158, v15, v226 :: v_dual_mul_f32 v15, v24, v191
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v190
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v141, v15, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v15, v16, v24 :: v_dual_lshlrev_b32 v16, 16, v9
	v_dual_mul_f32 v12, v192, v12 :: v_dual_and_b32 v9, 0xffff0000, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v123, v15, v226
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v15, v193, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v157, v12, v16 :: v_dual_mul_f32 v12, v191, v25
	v_dual_fmac_f32 v174, v15, v16 :: v_dual_lshlrev_b32 v15, 16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v12, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v24, v17
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v122, v12, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v193, v45
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v16, v179, s26, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v173, v12, v15
	v_dual_fmac_f32 v167, v225, v226 :: v_dual_mul_f32 v12, v192, v13
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v13, 16, v11
	v_and_b32_e32 v11, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v156, v12, v15
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v191, v26
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v137, v12, v15
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v24, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v121, v12, v15 :: v_dual_mul_f32 v12, v193, v46
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v15, v178, s0, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v172, v12, v13
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v192, v14
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v14, v177, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v155, v12, v13 :: v_dual_mul_f32 v12, v191, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v136, v12, v13
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v24, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v120, v12, v13
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v12, v175, s0, 1
	v_add_lshl_u32 v13, v176, s0, 1
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v17, v12, s[20:23], 0 offen
	buffer_load_u16 v25, v13, s[20:23], 0 offen
	buffer_load_u16 v26, v14, s[20:23], 0 offen
	buffer_load_u16 v27, v15, s[20:23], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[12:15], v180 offset:20496
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v26, 16, v26
	v_lshlrev_b32_e32 v44, 16, v17
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v72, v44
	ds_store_b32 v189, v16 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v180 offset:20480
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v167, v45, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v44, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v174, v45, v17 :: v_dual_mul_f32 v45, v44, v74
	v_fmac_f32_e32 v173, v45, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v44, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v172, v45, v19 :: v_dual_mul_f32 v45, v96, v25
	v_fmac_f32_e32 v158, v45, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v25, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v157, v45, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v25, v98
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v156, v45, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v25, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v155, v45, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v45, v88, v26 :: v_dual_and_b32 v8, 0xffff0000, v8
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v141, v45, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v26, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v140, v45, v17 :: v_dual_mul_f32 v45, v26, v90
	v_fmac_f32_e32 v137, v45, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v26, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v136, v45, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v80, v27
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v123, v45, v16 :: v_dual_mul_f32 v16, v27, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v16, v27, v82 :: v_dual_lshlrev_b32 v17, 16, v12
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v121, v16, v18 :: v_dual_mul_f32 v16, v27, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v16, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v193, v47
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v171, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v16, v192, v33 :: v_dual_mul_f32 v33, v26, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v154, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v191, v28
	v_dual_mul_f32 v28, v25, v206 :: v_dual_fmac_f32 v135, v16, v17
	v_mul_f32_e32 v16, v24, v20
	v_mul_f32_e32 v20, v44, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v119, v16, v17 :: v_dual_mul_f32 v16, v193, v230
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v17, 16, v13
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v170, v16, v17
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v192, v34
	v_mul_f32_e32 v34, v26, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v153, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v16, v191, v29 :: v_dual_mul_f32 v29, v25, v207
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v134, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v16, v24, v21 :: v_dual_mul_f32 v21, v25, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v118, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v16, v193, v231 :: v_dual_lshlrev_b32 v17, 16, v14
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v169, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v16, v192, v35 :: v_dual_mul_f32 v35, v26, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v152, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v191, v30
	v_mul_f32_e32 v30, v26, v209
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v133, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v22, v25, v203 :: v_dual_fmac_f32 v117, v16, v17
	v_dual_mul_f32 v16, v193, v232 :: v_dual_lshlrev_b32 v17, 16, v15
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v168, v16, v17 :: v_dual_and_b32 v15, 0xffff0000, v15
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v192, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v36, v26, v215 :: v_dual_fmac_f32 v151, v16, v17
	v_dual_mul_f32 v16, v191, v31 :: v_dual_mul_f32 v31, v26, v210
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v132, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v16, v24, v23 :: v_dual_mul_f32 v23, v25, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v116, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[16:19], v180 offset:20496
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v171, v20, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v44, v77
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v170, v20, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v44, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v169, v20, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v44, v79
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v168, v20, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v25, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v154, v20, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v25, v101
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v153, v20, v17 :: v_dual_mul_f32 v20, v25, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v20, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v25, v103
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v151, v20, v19 :: v_dual_mul_f32 v20, v26, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v135, v20, v16 :: v_dual_mul_f32 v20, v26, v93
	v_fmac_f32_e32 v134, v20, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v26, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v133, v20, v18 :: v_dual_mul_f32 v20, v26, v95
	v_fmac_f32_e32 v132, v20, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v27, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v119, v20, v16 :: v_dual_mul_f32 v16, v27, v85
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v25, v201
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v118, v16, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v27, v86
	v_mul_f32_e32 v17, v44, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v117, v16, v18 :: v_dual_mul_f32 v16, v27, v87
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v18, v44, v199
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v116, v16, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v16, v193, v229 :: v_dual_mul_f32 v19, v44, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v166, v16, v8
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v192, v70
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v150, v16, v8
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v191, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v131, v16, v8
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v24, v52
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v115, v16, v8 :: v_dual_and_b32 v10, 0xffff0000, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v193, v196
	v_mul_f32_e32 v16, v44, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v165, v8, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v192, v71
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v149, v8, v9 :: v_dual_mul_f32 v8, v191, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v8, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v24, v53
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v114, v8, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v8, v193, v195 :: v_dual_mul_f32 v9, v192, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v164, v8, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v192, v69
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v142, v9, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v8, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v191, v63
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v129, v8, v10 :: v_dual_and_b32 v12, 0xffff0000, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v24, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v113, v8, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v193, v194
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v191, v48 :: v_dual_fmac_f32 v163, v8, v11
	v_mul_f32_e32 v8, v192, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v124, v10, v15
	v_dual_fmac_f32 v147, v8, v11 :: v_dual_mul_f32 v8, v191, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v8, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v24, v55
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v112, v8, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v8, v193, v67 :: v_dual_mul_f32 v11, v24, v40
	v_mul_f32_e32 v40, v27, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v162, v8, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v192, v59
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v108, v11, v15 :: v_dual_fmac_f32 v145, v8, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v191, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v127, v8, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v24, v43
	v_mul_f32_e32 v43, v27, v223
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v111, v8, v12 :: v_dual_mul_f32 v8, v193, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v44, v32
	v_mul_f32_e32 v32, v26, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v26, v26, v216 :: v_dual_fmac_f32 v161, v8, v13
	v_mul_f32_e32 v8, v192, v58
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v144, v8, v13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v191, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v126, v8, v13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v24, v42
	v_mul_f32_e32 v42, v27, v222
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v110, v8, v13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v193, v65
	v_mul_f32_e32 v13, v44, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v37, v27, v217 :: v_dual_fmac_f32 v160, v8, v14
	v_mul_f32_e32 v8, v192, v57
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v143, v8, v14 :: v_dual_mul_f32 v8, v191, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v125, v8, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v24, v41
	v_mul_f32_e32 v24, v25, v205
	v_mul_f32_e32 v25, v25, v208
	v_mul_f32_e32 v41, v27, v221
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v109, v8, v14 :: v_dual_mul_f32 v8, v193, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v14, v44, v38
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v38, v27, v218 :: v_dual_fmac_f32 v159, v8, v15
	ds_load_b128 v[8:11], v180 offset:20992
	v_mul_f32_e32 v15, v44, v39
	v_mul_f32_e32 v39, v27, v219
	v_mul_f32_e32 v27, v27, v224
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v166, v12, v8 :: v_dual_fmac_f32 v165, v13, v9
	v_dual_fmac_f32 v164, v14, v10 :: v_dual_fmac_f32 v163, v15, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[12:15], v180 offset:21008
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v150, v20, v8 :: v_dual_fmac_f32 v149, v21, v9
	v_dual_fmac_f32 v148, v22, v10 :: v_dual_fmac_f32 v147, v23, v11
	v_dual_fmac_f32 v131, v30, v8 :: v_dual_fmac_f32 v130, v31, v9
	v_dual_fmac_f32 v129, v32, v10 :: v_dual_fmac_f32 v128, v33, v11
	v_dual_fmac_f32 v115, v37, v8 :: v_dual_fmac_f32 v114, v38, v9
	v_dual_fmac_f32 v113, v39, v10 :: v_dual_fmac_f32 v112, v40, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v162, v16, v12 :: v_dual_fmac_f32 v161, v17, v13
	v_dual_fmac_f32 v160, v18, v14 :: v_dual_fmac_f32 v159, v19, v15
	v_fmac_f32_e32 v145, v24, v12
	v_dual_fmac_f32 v144, v28, v13 :: v_dual_fmac_f32 v143, v29, v14
	v_dual_fmac_f32 v142, v25, v15 :: v_dual_fmac_f32 v127, v34, v12
	v_dual_fmac_f32 v126, v35, v13 :: v_dual_fmac_f32 v125, v36, v14
	v_dual_fmac_f32 v124, v26, v15 :: v_dual_fmac_f32 v111, v41, v12
	v_dual_fmac_f32 v110, v42, v13 :: v_dual_fmac_f32 v109, v43, v14
	v_fmac_f32_e32 v108, v27, v15
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v3, v146
.LBB0_7:                                ; %._crit_edge
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v0, 1, v139
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v7, v167, 16, 1
	v_bfe_u32 v8, v174, 16, 1
	v_bfe_u32 v10, v172, 16, 1
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s14, s14, s15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v9, v173, 16, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s14, s2, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v167, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_add3_u32 v8, v174, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v174, v174
	v_add3_u32 v10, v172, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v172, v172
	v_bfe_u32 v11, v171, 16, 1
	v_add3_u32 v9, v173, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v173, v173
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s2
	v_add3_u32 v10, v171, v11, 0x7fff
	v_bfe_u32 v11, v169, 16, 1
	v_bfe_u32 v12, v168, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s1
	v_bfe_u32 v9, v170, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	v_add3_u32 v11, v169, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v169, v169
	v_add3_u32 v12, v168, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v168, v168
	v_add3_u32 v9, v170, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v170, v170
	v_cndmask_b16 v9.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v166, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s2
	v_bfe_u32 v12, v165, 16, 1
	v_bfe_u32 v14, v163, 16, 1
	v_bfe_u32 v13, v164, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	v_add3_u32 v10, v166, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_add3_u32 v12, v165, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v165, v165
	v_add3_u32 v14, v163, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v163, v163
	v_bfe_u32 v15, v162, 16, 1
	v_add3_u32 v13, v164, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v164, v164
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_add3_u32 v14, v162, v15, 0x7fff
	v_bfe_u32 v15, v160, 16, 1
	v_bfe_u32 v16, v159, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s1
	v_bfe_u32 v13, v161, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_add3_u32 v15, v160, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v160, v160
	v_add3_u32 v16, v159, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v159, v159
	v_add3_u32 v13, v161, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v161, v161
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v158, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s1
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s2
	v_bfe_u32 v16, v157, 16, 1
	v_bfe_u32 v18, v155, 16, 1
	v_bfe_u32 v17, v156, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	v_add3_u32 v14, v158, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_add3_u32 v16, v157, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v157, v157
	v_add3_u32 v18, v155, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v155, v155
	v_bfe_u32 v19, v154, 16, 1
	v_add3_u32 v17, v156, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v156, v156
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s2
	v_add3_u32 v18, v154, v19, 0x7fff
	v_bfe_u32 v19, v152, 16, 1
	v_bfe_u32 v20, v151, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v153, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_add3_u32 v19, v152, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v152, v152
	v_add3_u32 v20, v151, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v151, v151
	v_add3_u32 v17, v153, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v153, v153
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v150, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v149, 16, 1
	v_bfe_u32 v22, v147, 16, 1
	v_bfe_u32 v21, v148, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	v_add3_u32 v18, v150, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	v_add3_u32 v20, v149, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v149, v149
	v_add3_u32 v22, v147, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v147, v147
	v_bfe_u32 v23, v145, 16, 1
	v_add3_u32 v21, v148, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v148, v148
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s2
	v_add3_u32 v22, v145, v23, 0x7fff
	v_bfe_u32 v23, v143, 16, 1
	v_bfe_u32 v24, v142, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v144, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_add3_u32 v23, v143, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v143, v143
	v_add3_u32 v24, v142, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v142, v142
	v_add3_u32 v21, v144, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v144, v144
	v_cndmask_b16 v21.l, 0x7fff, v22.h, vcc_lo
	v_bfe_u32 v22, v141, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s1
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s2
	v_bfe_u32 v24, v140, 16, 1
	v_bfe_u32 v26, v136, 16, 1
	v_bfe_u32 v25, v137, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s0
	v_add3_u32 v22, v141, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	v_add3_u32 v24, v140, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v140, v140
	v_add3_u32 v26, v136, v26, 0x7fff
	v_cmp_o_f32_e64 s2, v136, v136
	v_bfe_u32 v27, v135, 16, 1
	v_add3_u32 v25, v137, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v137, v137
	v_cndmask_b16 v22.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s2
	v_add3_u32 v26, v135, v27, 0x7fff
	v_bfe_u32 v27, v133, 16, 1
	v_bfe_u32 v28, v132, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s1
	v_bfe_u32 v25, v134, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_add3_u32 v27, v133, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v133, v133
	v_add3_u32 v28, v132, v28, 0x7fff
	v_cmp_o_f32_e64 s2, v132, v132
	v_add3_u32 v25, v134, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v134, v134
	v_cndmask_b16 v25.l, 0x7fff, v26.h, vcc_lo
	v_bfe_u32 v26, v131, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s2
	v_bfe_u32 v28, v130, 16, 1
	v_bfe_u32 v30, v128, 16, 1
	v_bfe_u32 v29, v129, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s0
	v_add3_u32 v26, v131, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_add3_u32 v28, v130, v28, 0x7fff
	v_cmp_o_f32_e64 s0, v130, v130
	v_add3_u32 v30, v128, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v128, v128
	v_bfe_u32 v31, v127, 16, 1
	v_add3_u32 v29, v129, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v129, v129
	v_cndmask_b16 v26.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s0
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s2
	v_add3_u32 v30, v127, v31, 0x7fff
	v_bfe_u32 v31, v125, 16, 1
	v_bfe_u32 v32, v124, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s1
	v_bfe_u32 v29, v126, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v127, v127
	v_add3_u32 v31, v125, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v125, v125
	v_add3_u32 v32, v124, v32, 0x7fff
	v_cmp_o_f32_e64 s2, v124, v124
	v_add3_u32 v29, v126, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v126, v126
	v_cndmask_b16 v29.l, 0x7fff, v30.h, vcc_lo
	v_bfe_u32 v30, v123, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v32.h, s2
	v_bfe_u32 v32, v122, 16, 1
	v_bfe_u32 v34, v120, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	v_add3_u32 v30, v123, v30, 0x7fff
	v_bfe_u32 v33, v121, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v123, v123
	v_add3_u32 v32, v122, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v122, v122
	v_add3_u32 v34, v120, v34, 0x7fff
	v_cmp_o_f32_e64 s2, v120, v120
	v_bfe_u32 v35, v119, 16, 1
	v_add3_u32 v33, v121, v33, 0x7fff
	v_cmp_o_f32_e64 s1, v121, v121
	v_cndmask_b16 v30.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s0
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s2
	v_add3_u32 v34, v119, v35, 0x7fff
	v_bfe_u32 v35, v117, 16, 1
	v_bfe_u32 v36, v116, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s1
	v_bfe_u32 v33, v118, 16, 1
	v_cmp_o_f32_e64 s1, v117, v117
	v_add3_u32 v35, v117, v35, 0x7fff
	v_add3_u32 v36, v116, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v116, v116
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_bfe_u32 v37, v113, 16, 1
	v_add3_u32 v33, v118, v33, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s2
	v_bfe_u32 v36, v114, 16, 1
	v_cmp_o_f32_e64 s0, v118, v118
	v_cndmask_b16 v33.l, 0x7fff, v34.h, vcc_lo
	v_bfe_u32 v34, v115, 16, 1
	v_bfe_u32 v38, v112, 16, 1
	v_add3_u32 v37, v113, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v113, v113
	v_add3_u32 v36, v114, v36, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s0
	v_add3_u32 v34, v115, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_cmp_o_f32_e64 s0, v114, v114
	v_add3_u32 v38, v112, v38, 0x7fff
	v_cmp_o_f32_e64 s2, v112, v112
	v_bfe_u32 v39, v111, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v110, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s0
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s2
	v_add3_u32 v38, v111, v39, 0x7fff
	v_bfe_u32 v39, v109, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_bfe_u32 v40, v108, 16, 1
	v_add3_u32 v37, v110, v37, 0x7fff
	v_cmp_o_f32_e64 s0, v110, v110
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v2, s15, v138
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v109, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v109, v109
	v_add3_u32 v40, v108, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v108, v108
	v_cndmask_b16 v37.l, 0x7fff, v38.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[0:1], null, s15, 48, v[2:3]
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v38, v9, v7 :: v_dual_add_nc_u32 v1, 0x80, v4
	v_cndmask_b16 v3.l, 0x7fff, v39.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v40.h, s2
	v_cndmask_b32_e32 v7, v7, v9, vcc_lo
	v_dual_cndmask_b32 v39, v11, v8 :: v_dual_cndmask_b32 v40, v13, v10
	v_dual_cndmask_b32 v8, v8, v11 :: v_dual_cndmask_b32 v9, v10, v13
	v_dual_cndmask_b32 v10, v12, v15 :: v_dual_cndmask_b32 v41, v15, v12
	v_dual_cndmask_b32 v42, v17, v14 :: v_dual_cndmask_b32 v11, v14, v17
	v_dual_cndmask_b32 v12, v16, v19 :: v_dual_cndmask_b32 v43, v19, v16
	v_dual_cndmask_b32 v44, v21, v18 :: v_dual_cndmask_b32 v13, v18, v21
	v_dual_cndmask_b32 v14, v20, v23 :: v_dual_cndmask_b32 v45, v23, v20
	v_dual_cndmask_b32 v46, v25, v22 :: v_dual_cndmask_b32 v15, v22, v25
	v_dual_cndmask_b32 v16, v24, v27 :: v_dual_cndmask_b32 v21, v34, v37
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v47, v27, v24 :: v_dual_cndmask_b32 v48, v29, v26
	v_cndmask_b32_e32 v53, v3, v36, vcc_lo
	v_permlanex16_b32 v24, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v22, vcc_lo
	v_cndmask_b32_e32 v22, 0x3276, v23, vcc_lo
	v_permlanex16_b32 v23, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v51, v35, v32 :: v_dual_cndmask_b32 v52, v37, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e32 v3, v36, v3, vcc_lo
	v_dual_cndmask_b32 v17, v26, v29 :: v_dual_cndmask_b32 v18, v28, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_dual_cndmask_b32 v19, v30, v33 :: v_dual_and_b32 v8, 0x760076, v8
	v_cndmask_b32_e32 v20, v32, v35, vcc_lo
	v_permlanex16_b32 v25, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_permlanex16_b32 v26, v10, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v6, s15, 4, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v22, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	v_permlanex16_b32 v27, v12, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v5, s15, 5, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v49, v31, v28 :: v_dual_cndmask_b32 v50, v33, v30
	v_permlanex16_b32 v28, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v24, v38, v37
	v_perm_b32 v8, v24, v38, v54
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v2, v4, v2, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v30, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
	v_perm_b32 v13, v26, v41, v37
	v_perm_b32 v14, v26, v41, v54
	v_perm_b32 v15, v22, v42, v37
	v_perm_b32 v16, v22, v42, v54
	v_perm_b32 v17, v27, v43, v37
	v_perm_b32 v18, v27, v43, v54
	v_add_lshl_u32 v39, v4, v6, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_perm_b32 v19, v28, v44, v37
	v_perm_b32 v20, v28, v44, v54
	v_perm_b32 v21, v29, v45, v37
	v_perm_b32 v22, v29, v45, v54
	s_clause 0x2
	buffer_store_b128 v[7:10], v2, s[12:15], 0 offen
	buffer_store_b128 v[11:14], v2, s[12:15], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[12:15], 0 offen
	v_add_lshl_u32 v2, v1, v6, 1
	v_perm_b32 v23, v30, v46, v37
	v_perm_b32 v24, v30, v46, v54
	v_perm_b32 v25, v31, v47, v37
	v_perm_b32 v26, v31, v47, v54
	v_perm_b32 v27, v32, v48, v37
	v_perm_b32 v28, v32, v48, v54
	v_perm_b32 v29, v33, v49, v37
	v_perm_b32 v30, v33, v49, v54
	v_perm_b32 v31, v34, v50, v37
	v_perm_b32 v32, v34, v50, v54
	v_perm_b32 v33, v35, v51, v37
	v_perm_b32 v34, v35, v51, v54
	v_perm_b32 v35, v36, v52, v37
	v_perm_b32 v37, v3, v53, v37
	v_perm_b32 v38, v3, v53, v54
	v_add_lshl_u32 v3, v4, v5, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_add_lshl_u32 v4, v4, v0, 1
	v_perm_b32 v36, v36, v52, v54
	v_add_lshl_u32 v0, v1, v0, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v2, s[12:15], 0 offen
	buffer_store_b128 v[23:26], v3, s[12:15], 0 offen
	buffer_store_b128 v[27:30], v5, s[12:15], 0 offen
	buffer_store_b128 v[31:34], v4, s[12:15], 0 offen
	buffer_store_b128 v[35:38], v0, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 245
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 245
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8048
; TotalNumSgprs: 46
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 245
; Occupancy: 5
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
