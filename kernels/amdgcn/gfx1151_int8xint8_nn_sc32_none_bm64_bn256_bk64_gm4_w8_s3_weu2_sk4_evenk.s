	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	v_and_b32_e32 v140, 16, v0
	v_lshlrev_b32_e32 v141, 1, v0
	v_lshlrev_b32_e32 v142, 5, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s2
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
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s5, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s4, s5, s7
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s24, s5, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s2, s16, 0xff
.Ltmp13:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s4, s4, s6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl_b32 s6, s15, 5
	s_lshl_b32 s7, s15, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v4, s7 :: v_dual_and_b32 v1, 16, v0
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v3, s6 :: v_dual_lshlrev_b32 v2, 5, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow246
	s_load_b64 s[12:13], s[0:1], 0x20
	v_or_b32_e32 v137, s24, v0
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v138, 3, v0
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v139, 4, v0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 325 32 is_stmt 1              ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v2, 2, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:336:26 ]
	s_add_i32 s1, s16, 31
.Ltmp16:
	.loc	1 328 19 is_stmt 1              ; generate_amdgcn.py:328:19
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 338 26                        ; generate_amdgcn.py:338:26
	s_lshl_b32 s25, s3, 6
	v_mul_lo_u32 v2, s16, v2
	.loc	1 344 34                        ; generate_amdgcn.py:344:34
	s_mul_i32 s3, s14, s16
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_ashr_i32 s16, s1, 31
	v_dual_mov_b32 v113, 0 :: v_dual_lshlrev_b32 v4, 3, v138
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s2, s2, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_lshr_b32 s0, s16, 27
	v_mul_lo_u32 v3, s15, v3
	s_add_i32 s1, s1, s0
	s_mov_b32 s0, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s26, s2, 8
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_ashr_i32 s27, s1, 5
	v_add3_u32 v143, v2, v4, s3
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	v_bfe_i32 v6, v0, 2, 1
	v_lshrrev_b32_e32 v7, 1, v0
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s1, s0
	s_mov_b32 s2, s0
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
.Ltmp23:
	.loc	1 325 32 is_stmt 1              ; generate_amdgcn.py:325:32
	v_and_b32_e32 v5, 15, v0
	v_and_b32_e32 v4, 0x160, v142
	.loc	1 328 19                        ; generate_amdgcn.py:328:19
	v_and_b32_e32 v1, 0xf0, v0
	v_lshrrev_b32_e32 v8, 6, v0
	v_lshlrev_b32_e32 v2, 3, v0
	v_lshl_add_u32 v144, v5, 4, v3
	v_and_or_b32 v4, 0x90, v6, v4
	v_or_b32_e32 v6, s14, v5
	v_and_or_b32 v5, 0x70, v7, v5
	v_bfe_i32 v3, v0, 4, 1
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v7, 16, v6
	v_add_nc_u32_e32 v146, 0, v5
	v_or_b32_e32 v5, 32, v6
	v_mul_lo_u32 v147, v6, s27
	v_or_b32_e32 v6, 48, v6
	v_mul_lo_u32 v148, v7, s27
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v7, 2, v0
	v_mul_lo_u32 v149, v5, s27
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v5, 2, v8
	v_and_b32_e32 v2, 0x778, v2
	v_and_b32_e32 v3, 0x90, v3
	v_mul_lo_u32 v150, v6, s27
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v6, 0x1c0, v7
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v7, 32, v142
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v151, 0, v1
	v_xor_b32_e32 v2, v3, v2
	v_xor_b32_e32 v3, 16, v4
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v9, 28, v141
	v_add3_u32 v10, v5, v6, v7
	v_add3_u32 v11, v151, v1, v7
	s_lshl_b32 s28, s15, 4
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v152, 0, v2
	v_add_nc_u32_e32 v145, s28, v144
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v154, 0, v4
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v155, 0, v3
	v_dual_mov_b32 v8, s7 :: v_dual_add_nc_u32 v153, 0, v139
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v7, s6
	v_dual_mov_b32 v6, s5 :: v_dual_mov_b32 v5, s4
	v_dual_mov_b32 v4, s3 :: v_dual_mov_b32 v3, s2
	v_dual_mov_b32 v2, s1 :: v_dual_mov_b32 v1, s0
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v156, v10, v9
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v157, v11, v9
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v75, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s15, 5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s2, s0, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 338 21                        ; generate_amdgcn.py:338:21
	s_add_i32 s2, s2, s25
	.loc	1 348 34                        ; generate_amdgcn.py:348:34
	s_mul_i32 s3, s2, s15
	.loc	1 344 34                        ; generate_amdgcn.py:344:34
	v_add_nc_u32_e32 v9, s2, v143
	.loc	1 338 21                        ; generate_amdgcn.py:338:21
	s_or_b32 s1, s2, 32
	.loc	1 348 34                        ; generate_amdgcn.py:348:34
	s_add_i32 s3, s3, s24
	.loc	1 344 34                        ; generate_amdgcn.py:344:34
	v_add_nc_u32_e32 v10, s1, v143
	.loc	1 348 34                        ; generate_amdgcn.py:348:34
	v_add_nc_u32_e32 v11, s3, v144
	v_add_nc_u32_e32 v12, s3, v145
	s_add_i32 s3, s3, s29
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	buffer_load_b64 v[27:28], v9, s[16:19], 0 offen
	.loc	1 348 34                        ; generate_amdgcn.py:348:34
	v_add_nc_u32_e32 v9, s3, v144
	v_add_nc_u32_e32 v13, s3, v145
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	buffer_load_b64 v[25:26], v10, s[16:19], 0 offen
	.loc	1 348 26                        ; generate_amdgcn.py:348:26
	s_clause 0x3
	buffer_load_b128 v[17:20], v11, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v12, s[20:23], 0 offen
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 356 29                        ; generate_amdgcn.py:356:29
	s_ashr_i32 s2, s2, 5
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt vmcnt(5)
	ds_store_b64 v152, v[27:28] offset:16384
	.loc	1 348 26                        ; generate_amdgcn.py:348:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v153, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v153, v[21:24] offset:4096
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v152, v[25:26] offset:18432
	.loc	1 348 26                        ; generate_amdgcn.py:348:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v153, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v153, v[13:16] offset:12288
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	ds_load_u8 v9, v146 offset:3328
	ds_load_u8 v10, v146 offset:3072
	ds_load_u8 v11, v146 offset:3840
	ds_load_u8 v12, v146 offset:3584
	ds_load_u8 v13, v146 offset:2304
	ds_load_u8 v14, v146 offset:2048
	ds_load_u8 v15, v146 offset:2816
	ds_load_u8 v16, v146 offset:2560
	ds_load_u8 v17, v146 offset:3968
	ds_load_u8 v18, v146 offset:1280
	ds_load_u8 v19, v146 offset:1024
	ds_load_u8 v20, v146 offset:1792
	ds_load_u8 v21, v146 offset:1536
	ds_load_u8 v22, v146 offset:256
	ds_load_u8 v23, v146
	ds_load_u8 v24, v146 offset:768
	ds_load_u8 v25, v146 offset:512
	ds_load_u8 v26, v146 offset:7424
	ds_load_u8 v27, v146 offset:7168
	ds_load_u8 v28, v146 offset:7936
	ds_load_u8 v29, v146 offset:7680
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v146 offset:6400
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v146 offset:6144
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[166:169], v154 offset:17920
	ds_load_b128 v[170:173], v155 offset:17920
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v44, v11, 16, v9
	ds_load_u8 v9, v146 offset:6912
	ds_load_u8 v11, v146 offset:6656
	ds_load_u8 v16, v146 offset:5120
	.loc	1 360 40                        ; generate_amdgcn.py:360:40
	s_mul_i32 s3, s2, s15
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_lshl_or_b32 v43, v14, 16, v13
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v13, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v15, v21, v20, 0xc0c0004
	ds_load_u8 v14, v146 offset:5376
	ds_load_u8 v19, v146 offset:3456
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v18, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v20, v25, v24, 0xc0c0004
	v_lshl_or_b32 v42, v15, 16, v13
	ds_load_u8 v13, v146 offset:5888
	ds_load_u8 v15, v146 offset:5632
	ds_load_u8 v23, v146 offset:4352
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v22, v27, v26, 0xc0c0004
	v_lshl_or_b32 v41, v20, 16, v18
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v146 offset:4864
	ds_load_u8 v20, v146 offset:1408
	v_perm_b32 v24, v29, v28, 0xc0c0004
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cmp_lt_i32 s2, s27
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v146 offset:4608
	ds_load_u8 v25, v146 offset:4096
	ds_load_u8 v21, v146 offset:3200
	v_lshl_or_b32 v48, v24, 16, v22
	v_lshl_or_b32 v47, v9, 16, v10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v9, v146 offset:3712
	ds_load_u8 v10, v146 offset:2432
	ds_load_u8 v16, v146 offset:2176
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 356 29                        ; generate_amdgcn.py:356:29
	s_ashr_i32 s1, s1, 5
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v15, v146 offset:2944
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cmp_lt_i32 s1, s27
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_lshl_or_b32 v46, v13, 16, v14
	ds_load_u8 v13, v146 offset:2688
	ds_load_u8 v14, v146 offset:1920
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v18, v25, v23, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	ds_load_u8 v21, v146 offset:1664
	ds_load_u8 v12, v146 offset:1152
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v9, v9, v17, 0xc0c0004
	ds_load_u8 v17, v146 offset:384
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v16, v10, 0xc0c0004
	v_lshl_or_b32 v45, v11, 16, v18
	v_lshl_or_b32 v161, v9, 16, v19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v13, v15, 0xc0c0004
	ds_load_u8 v15, v146 offset:896
	ds_load_u8 v16, v146 offset:128
	v_lshl_or_b32 v160, v13, 16, v10
	ds_load_u8 v9, v146 offset:640
	ds_load_u8 v10, v146 offset:7552
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v21, v14, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v11, v12, v20, 0xc0c0004
	ds_load_u8 v12, v146 offset:7296
	ds_load_u8 v14, v146 offset:8064
	v_lshl_or_b32 v159, v13, 16, v11
	ds_load_u8 v11, v146 offset:7808
	ds_load_u8 v13, v146 offset:6528
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	ds_load_u8 v17, v146 offset:6272
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v9, v15, 0xc0c0004
	ds_load_u8 v15, v146 offset:7040
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v146 offset:6784
	v_lshl_or_b32 v158, v9, 16, v16
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v11, v14, 0xc0c0004
	ds_load_u8 v14, v146 offset:5504
	v_lshl_or_b32 v165, v11, 16, v10
	ds_load_u8 v9, v146 offset:5760
	ds_load_u8 v10, v146 offset:4480
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v146 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v12, v15, 0xc0c0004
	ds_load_u8 v15, v146 offset:6016
	v_lshl_or_b32 v164, v12, 16, v13
	ds_load_u8 v12, v146 offset:4224
	ds_load_u8 v13, v146 offset:4992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v15, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v146 offset:4736
	v_perm_b32 v11, v17, v14, 0xc0c0004
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[17:20], v154 offset:16384
	ds_load_b128 v[21:24], v155 offset:16384
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_lshl_or_b32 v163, v9, 16, v11
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[158:161], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v162, v12, 16, v10
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[162:165], v[21:24], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[21:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[17:20], v154 offset:16896
	ds_load_b128 v[21:24], v155 offset:16896
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[158:161], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[21:24], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[162:165], v[21:24], v[57:64] neg_lo:[1,1,0]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[17:20], v154 offset:17408
	ds_load_b128 v[21:24], v155 offset:17408
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[158:161], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[21:24], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[162:165], v[21:24], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[166:169], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[170:173], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[158:161], v[166:169], v[1:8] neg_lo:[1,1,0]
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_add_lshl_u32 v158, v137, s3, 1
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v159, v148, s2, 1
	v_add_lshl_u32 v160, v149, s2, 1
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_wmma_i32_16x16x16_iu8 v[41:48], v[162:165], v[170:173], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_dual_cndmask_b32 v158, 0x80000000, v158 :: v_dual_cndmask_b32 v159, 0x80000000, v159
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v162, 0x80000000, v160, vcc_lo
	v_add_lshl_u32 v160, v150, s2, 1
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	buffer_load_u16 v158, v158, s[8:11], 0 offen
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v163, 0x80000000, v160, vcc_lo
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v156, v158 offset:20480
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v158, v147, s2, 1
	.loc	1 360 40                        ; generate_amdgcn.py:360:40
	s_mul_i32 s2, s1, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v158, 0x80000000, v158, vcc_lo
	s_clause 0x3
	buffer_load_u16 v161, v158, s[4:7], 0 offen
	buffer_load_u16 v160, v159, s[4:7], 0 offen
	buffer_load_u16 v159, v162, s[4:7], 0 offen
	buffer_load_u16 v158, v163, s[4:7], 0 offen
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	ds_load_u8 v162, v146 offset:11520
	ds_load_u8 v163, v146 offset:11264
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[178:181], v154 offset:18432
	ds_load_b128 v[182:185], v155 offset:18432
	ds_load_b128 v[194:197], v154 offset:18944
	ds_load_b128 v[198:201], v155 offset:18944
	ds_load_b128 v[210:213], v154 offset:19456
	ds_load_b128 v[214:217], v155 offset:19456
	ds_load_b128 v[234:237], v154 offset:19968
	ds_load_b128 v[238:241], v155 offset:19968
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s0, s0, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s0, s26
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v146 offset:12032
	ds_load_u8 v164, v146 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v146 offset:10496
	ds_load_u8 v165, v146 offset:10240
	v_lshl_or_b32 v221, v163, 16, v162
	ds_load_u8 v162, v146 offset:9472
	ds_load_u8 v163, v146 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v146 offset:11008
	ds_load_u8 v166, v146 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v220, v165, 16, v164
	ds_load_u8 v163, v146 offset:9984
	ds_load_u8 v164, v146 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_lshl_or_b32 v219, v163, 16, v162
	ds_load_u8 v162, v146 offset:8448
	ds_load_u8 v163, v146 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v146 offset:8960
	ds_load_u8 v164, v146 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v218, v163, 16, v162
	ds_load_u8 v162, v146 offset:15616
	ds_load_u8 v163, v146 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v146 offset:16128
	ds_load_u8 v164, v146 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v146 offset:14592
	ds_load_u8 v165, v146 offset:14336
	v_lshl_or_b32 v225, v163, 16, v162
	ds_load_u8 v162, v146 offset:13568
	ds_load_u8 v163, v146 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v146 offset:15104
	ds_load_u8 v166, v146 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v224, v165, 16, v164
	ds_load_u8 v163, v146 offset:14080
	ds_load_u8 v164, v146 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_lshl_or_b32 v223, v163, 16, v162
	ds_load_u8 v162, v146 offset:12544
	ds_load_u8 v163, v146 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v146 offset:13056
	ds_load_u8 v164, v146 offset:12800
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v222, v163, 16, v162
	ds_load_u8 v162, v146 offset:11648
	ds_load_u8 v163, v146 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v146 offset:12160
	ds_load_u8 v164, v146 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v146 offset:10624
	ds_load_u8 v165, v146 offset:10368
	v_lshl_or_b32 v229, v163, 16, v162
	ds_load_u8 v162, v146 offset:9600
	ds_load_u8 v163, v146 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v146 offset:11136
	ds_load_u8 v166, v146 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v228, v165, 16, v164
	ds_load_u8 v163, v146 offset:10112
	ds_load_u8 v164, v146 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_lshl_or_b32 v227, v163, 16, v162
	ds_load_u8 v162, v146 offset:8576
	ds_load_u8 v163, v146 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v146 offset:9088
	ds_load_u8 v164, v146 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v226, v163, 16, v162
	ds_load_u8 v162, v146 offset:15744
	ds_load_u8 v163, v146 offset:15488
	v_wmma_i32_16x16x16_iu8 v[170:177], v[226:229], v[178:181], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[226:229], v[194:197], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[202:209], v[226:229], v[210:213], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v146 offset:16256
	ds_load_u8 v164, v146 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v146 offset:14720
	ds_load_u8 v165, v146 offset:14464
	v_lshl_or_b32 v233, v163, 16, v162
	ds_load_u8 v162, v146 offset:13696
	ds_load_u8 v163, v146 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v146 offset:15232
	ds_load_u8 v166, v146 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v232, v165, 16, v164
	ds_load_u8 v163, v146 offset:14208
	ds_load_u8 v164, v146 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_lshl_or_b32 v231, v163, 16, v162
	ds_load_u8 v162, v146 offset:12672
	ds_load_u8 v163, v146 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v146 offset:13184
	ds_load_u8 v164, v146 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v230, v163, 16, v162
	v_wmma_i32_16x16x16_iu8 v[162:169], v[218:221], v[178:181], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[230:233], v[182:185], v[170:177] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[162:169], v[222:225], v[182:185], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[218:221], v[194:197], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[230:233], v[198:201], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[202:209], v[230:233], v[214:217], v[202:209] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v162, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[178:185], v[222:225], v[198:201], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[194:201], v[218:221], v[210:213], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_wmma_i32_16x16x16_iu8 v[194:201], v[222:225], v[214:217], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[218:221], v[234:237], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v180, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[210:217], v[222:225], v[238:241], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[226:229], v[234:237], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v226, v10
	v_cvt_f32_i32_e32 v227, v11
	v_cvt_f32_i32_e32 v228, v12
	v_wmma_i32_16x16x16_iu8 v[218:225], v[230:233], v[238:241], v[218:225] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v232, v16
	v_cvt_f32_i32_e32 v16, v33
	v_cvt_f32_i32_e32 v33, v170
	v_cvt_f32_i32_e32 v170, v174
	v_cvt_f32_i32_e32 v174, v186
	v_cvt_f32_i32_e32 v186, v190
	v_cvt_f32_i32_e32 v190, v202
	v_cvt_f32_i32_e32 v202, v206
	v_cvt_f32_i32_e32 v206, v218
	v_cvt_f32_i32_e32 v218, v222
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v222, v9, v161
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	ds_load_b128 v[9:12], v151 offset:20480
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v230, v14
	v_cvt_f32_i32_e32 v14, v35
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v171
	v_cvt_f32_i32_e32 v171, v175
	v_cvt_f32_i32_e32 v175, v187
	v_cvt_f32_i32_e32 v187, v191
	v_cvt_f32_i32_e32 v191, v203
	v_cvt_f32_i32_e32 v203, v207
	v_cvt_f32_i32_e32 v207, v219
	v_cvt_f32_i32_e32 v219, v223
	v_cvt_f32_i32_e32 v229, v13
	v_cvt_f32_i32_e32 v13, v34
	v_cvt_f32_i32_e32 v231, v15
	v_cvt_f32_i32_e32 v15, v36
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v197, v197
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v223, 16, v9
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v212, v212
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v16, v16, v160
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v213, v213
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v169, v169
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v114, v16, v223
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v16, v25, v159 :: v_dual_lshlrev_b32 v25, 16, v158
	.loc	1 349 23 is_stmt 1              ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v40, v173
	v_cvt_f32_i32_e32 v173, v177
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v115, v16, v223 :: v_dual_mul_f32 v16, v17, v25
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_lshlrev_b32_e32 v17, 16, v10
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v13, v160, v13
	v_mul_f32_e32 v29, v159, v29
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v116, v16, v223
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v16, v161, v226 :: v_dual_fmac_f32 v113, v222, v223
	.loc	1 349 23 is_stmt 1              ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v39, v172
	v_cvt_f32_i32_e32 v172, v176
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v101, v16, v17 :: v_dual_lshlrev_b32 v16, 16, v11
	v_dual_fmac_f32 v102, v13, v17 :: v_dual_mul_f32 v13, v159, v26
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v176, v188
	v_cvt_f32_i32_e32 v188, v192
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v177, v189
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v103, v13, v17
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v13, v25, v18
	.loc	1 349 23 is_stmt 1              ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v189, v193
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v193, v205
	v_cvt_f32_i32_e32 v214, v214
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v104, v13, v17
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v13, v161, v227
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_add_lshl_u32 v17, v137, s2, 1
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v216, v216
	v_cvt_f32_i32_e32 v192, v204
	v_cvt_f32_i32_e32 v204, v208
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v133, v13, v16
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v13, v160, v14 :: v_dual_lshlrev_b32 v14, 16, v12
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v208, v220
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v134, v13, v16 :: v_dual_mul_f32 v13, v159, v27
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v205, v209
	v_cvt_f32_i32_e32 v209, v221
	v_cvt_f32_i32_e32 v221, v225
	v_cvt_f32_i32_e32 v220, v224
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v135, v13, v16
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v13, v25, v19
	.loc	1 349 23 is_stmt 1              ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v215, v215
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v168, v168
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v136, v13, v16
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v13, v161, v228
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v16, v150, s1, 1
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v217, v217
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v97, v13, v14
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v13, v160, v15
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v15, v149, s1, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v200, v200
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v98, v13, v14 :: v_dual_mul_f32 v13, v159, v28
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_and_b32_e32 v9, 0xffff0000, v9
	v_and_b32_e32 v10, 0xffff0000, v10
	v_and_b32_e32 v11, 0xffff0000, v11
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v99, v13, v14
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v13, v25, v20
	v_dual_mul_f32 v21, v25, v21 :: v_dual_mul_f32 v34, v160, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v100, v13, v14
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v13, v147, s1, 1
	v_add_lshl_u32 v14, v148, s1, 1
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_clause 0x3
	buffer_load_u16 v18, v13, s[4:7], 0 offen
	buffer_load_u16 v26, v14, s[4:7], 0 offen
	buffer_load_u16 v27, v15, s[4:7], 0 offen
	buffer_load_u16 v28, v16, s[4:7], 0 offen
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	ds_load_b128 v[13:16], v151 offset:20496
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v158, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v162, v162, v158 :: v_dual_lshlrev_b32 v27, 16, v27
	ds_store_b32 v157, v17 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v151 offset:20480
	.loc	1 362 17 is_stmt 0              ; generate_amdgcn.py:362:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v113, v162, v17
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v158, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v101, v162, v18
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v158, v164
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v133, v162, v19
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v158, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v97, v162, v20
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v178, v26
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v114, v162, v17
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v26, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v102, v162, v18
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v26, v180
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v134, v162, v19
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v26, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v98, v162, v20
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v194, v27
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v115, v162, v17 :: v_dual_mul_f32 v162, v27, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v103, v162, v18 :: v_dual_mul_f32 v162, v27, v196
	v_dual_fmac_f32 v135, v162, v19 :: v_dual_mul_f32 v162, v27, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v99, v162, v20
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v210, v28
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v116, v162, v17 :: v_dual_mul_f32 v17, v28, v211
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v162, v161, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v104, v17, v18 :: v_dual_mul_f32 v17, v28, v212
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_lshlrev_b32_e32 v18, 16, v14
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v136, v17, v19 :: v_dual_mul_f32 v17, v28, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v100, v17, v20 :: v_dual_lshlrev_b32 v19, 16, v15
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_lshlrev_b32_e32 v17, 16, v13
	v_lshlrev_b32_e32 v20, 16, v16
	v_and_b32_e32 v15, 0xffff0000, v15
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v129, v162, v17 :: v_dual_and_b32 v16, 0xffff0000, v16
	v_fmac_f32_e32 v130, v34, v17
	v_fmac_f32_e32 v131, v29, v17
	v_fmac_f32_e32 v132, v21, v17
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v17, v161, v230 :: v_dual_mul_f32 v34, v26, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v93, v17, v18
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v17, v160, v35
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v35, v26, v177 :: v_dual_fmac_f32 v94, v17, v18
	v_dual_mul_f32 v17, v159, v30 :: v_dual_mul_f32 v30, v26, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17 is_stmt 0              ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v95, v17, v18
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v17, v25, v22 :: v_dual_mul_f32 v22, v158, v171
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v96, v17, v18
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v17, v161, v231 :: v_dual_mul_f32 v18, v158, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v38, v26, v188 :: v_dual_fmac_f32 v125, v17, v19
	v_dual_mul_f32 v17, v160, v36 :: v_dual_mul_f32 v36, v26, v186
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v126, v17, v19
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v17, v159, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v127, v17, v19
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v17, v25, v23
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v128, v17, v19
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v17, v161, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v89, v17, v20
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v17, v160, v37
	v_dual_mul_f32 v37, v26, v187 :: v_dual_fmac_f32 v90, v17, v20
	v_dual_mul_f32 v17, v159, v32 :: v_dual_mul_f32 v32, v26, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v91, v17, v20
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v17, v25, v24 :: v_dual_mul_f32 v24, v158, v173
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v92, v17, v20
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v17, v161, v65 :: v_dual_mul_f32 v20, v158, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v40, v27, v199 :: v_dual_fmac_f32 v121, v17, v9
	v_mul_f32_e32 v17, v160, v57
	v_mul_f32_e32 v57, v28, v209
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v122, v17, v9
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v17, v159, v49
	v_mul_f32_e32 v49, v27, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v123, v17, v9
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v17, v25, v41
	v_dual_mul_f32 v41, v27, v200 :: v_dual_fmac_f32 v124, v17, v9
	v_mul_f32_e32 v9, v161, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v85, v9, v10
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v160, v58
	v_mul_f32_e32 v58, v28, v218
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v86, v9, v10
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v159, v50
	v_mul_f32_e32 v50, v28, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v87, v9, v10
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v9, v25, v42 :: v_dual_mul_f32 v42, v27, v201
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v88, v9, v10
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v9, v161, v67 :: v_dual_mul_f32 v10, v160, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v117, v9, v11
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v9, v160, v59 :: v_dual_fmac_f32 v74, v10, v16
	v_mul_f32_e32 v59, v28, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v118, v9, v11
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v159, v51
	v_mul_f32_e32 v51, v28, v215
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v119, v9, v11
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v25, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v43, v27, v190 :: v_dual_fmac_f32 v120, v9, v11
	v_mul_f32_e32 v9, v161, v68
	v_mul_f32_e32 v11, v159, v56
	v_mul_f32_e32 v56, v28, v208
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v81, v9, v12
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v160, v60
	v_dual_mul_f32 v60, v28, v220 :: v_dual_mul_f32 v31, v26, v185
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v75, v11, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v9, v12
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v159, v52
	v_mul_f32_e32 v52, v28, v216
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v83, v9, v12
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v9, v25, v44 :: v_dual_mul_f32 v44, v27, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v84, v9, v12
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v161, v69
	v_mul_f32_e32 v12, v25, v48
	v_dual_mul_f32 v48, v27, v203 :: v_dual_fmac_f32 v109, v9, v13
	v_mul_f32_e32 v9, v160, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v76, v12, v16
	v_fmac_f32_e32 v110, v9, v13
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v159, v53
	v_mul_f32_e32 v53, v28, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v111, v9, v13
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v25, v45
	v_dual_mul_f32 v45, v27, v192 :: v_dual_fmac_f32 v112, v9, v13
	v_mul_f32_e32 v9, v161, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v77, v9, v14
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v160, v62
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v78, v9, v14
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v159, v54
	v_mul_f32_e32 v54, v28, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v79, v9, v14
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v9, v25, v46 :: v_dual_mul_f32 v46, v27, v193
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v80, v9, v14
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v161, v71
	v_mul_f32_e32 v14, v158, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v105, v9, v15
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v160, v63
	v_mul_f32_e32 v19, v158, v39
	v_dual_mul_f32 v39, v27, v198 :: v_dual_fmac_f32 v106, v9, v15
	v_mul_f32_e32 v9, v159, v55
	v_mul_f32_e32 v55, v28, v207
	v_dual_mul_f32 v28, v28, v221 :: v_dual_mul_f32 v29, v26, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v107, v9, v15
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v9, v25, v47
	v_mul_f32_e32 v25, v26, v182
	v_mul_f32_e32 v47, v27, v202
	v_dual_mul_f32 v27, v27, v205 :: v_dual_fmac_f32 v108, v9, v15
	v_mul_f32_e32 v9, v161, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v73, v9, v16
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	ds_load_b128 v[9:12], v151 offset:20496
	v_mul_f32_e32 v13, v158, v166
	v_mul_f32_e32 v15, v158, v168
	v_mul_f32_e32 v16, v158, v169
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v21, v158, v170 :: v_dual_fmac_f32 v92, v53, v12
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v93, v14, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v89, v16, v12 :: v_dual_fmac_f32 v130, v25, v9
	v_fmac_f32_e32 v129, v13, v9
	v_dual_fmac_f32 v94, v29, v10 :: v_dual_fmac_f32 v125, v15, v11
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	ds_load_b128 v[13:16], v151 offset:20992
	v_mul_f32_e32 v17, v158, v33
	v_mul_f32_e32 v33, v26, v175
	v_mul_f32_e32 v26, v26, v189
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v126, v30, v11 :: v_dual_fmac_f32 v131, v39, v9
	v_fmac_f32_e32 v95, v40, v10
	v_fmac_f32_e32 v127, v41, v11
	v_fmac_f32_e32 v91, v42, v12
	v_fmac_f32_e32 v132, v50, v9
	v_fmac_f32_e32 v96, v51, v10
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v128, v52, v11 :: v_dual_fmac_f32 v85, v18, v14
	v_fmac_f32_e32 v117, v19, v15
	v_dual_fmac_f32 v81, v20, v16 :: v_dual_fmac_f32 v86, v33, v14
	v_fmac_f32_e32 v121, v17, v13
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	ds_load_b128 v[17:20], v151 offset:21008
	v_dual_mul_f32 v23, v158, v172 :: v_dual_fmac_f32 v122, v32, v13
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v118, v34, v15
	v_fmac_f32_e32 v82, v35, v16
	v_fmac_f32_e32 v123, v43, v13
	v_fmac_f32_e32 v87, v44, v14
	v_fmac_f32_e32 v119, v45, v15
	v_fmac_f32_e32 v83, v46, v16
	v_fmac_f32_e32 v124, v54, v13
	v_fmac_f32_e32 v88, v55, v14
	v_fmac_f32_e32 v120, v56, v15
	v_fmac_f32_e32 v84, v57, v16
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v110, v36, v17
	v_fmac_f32_e32 v78, v37, v18
	v_fmac_f32_e32 v106, v38, v19
	v_fmac_f32_e32 v77, v22, v18
	v_dual_fmac_f32 v74, v26, v20 :: v_dual_fmac_f32 v111, v47, v17
	v_fmac_f32_e32 v79, v48, v18
	v_fmac_f32_e32 v107, v49, v19
	v_dual_fmac_f32 v75, v27, v20 :: v_dual_fmac_f32 v112, v58, v17
	v_dual_fmac_f32 v73, v24, v20 :: v_dual_fmac_f32 v80, v59, v18
	v_fmac_f32_e32 v105, v23, v19
	v_fmac_f32_e32 v108, v60, v19
	v_dual_fmac_f32 v90, v31, v12 :: v_dual_fmac_f32 v109, v21, v17
	v_fmac_f32_e32 v76, v28, v20
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, s29 :: v_dual_mov_b32 v4, s28
	v_dual_mov_b32 v1, v140 :: v_dual_mov_b32 v2, v142
	v_mov_b32_e32 v5, v141
.LBB0_7:                                ; %._crit_edge
	.loc	1 418 23 is_stmt 1              ; generate_amdgcn.py:418:23
	s_mul_i32 s35, s14, s15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	v_and_b32_e32 v2, 0x1c00, v2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_add_nc_u32_e32 v64, s35, v4
	v_add_nc_u32_e32 v65, s35, v3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v3, 0xcf0, v139
	v_and_or_b32 v4, v5, 64, v1
	v_lshlrev_b32_e32 v5, 13, v0
	v_lshlrev_b32_e32 v0, 6, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v3, v4, v3
	v_lshlrev_b32_e32 v1, 2, v1
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s0, s15, 3
	s_add_i32 s66, s35, s15
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v3, 0xe000, v5, v3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl1_add_u32 s65, s15, s35
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v66, s35, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s14, s15, 18
	s_add_i32 s64, s35, s0
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v3, v3, 32, 0
	ds_store_b128 v4, v[113:116]
	ds_store_b128 v4, v[133:136] offset:256
	ds_store_b128 v4, v[129:132] offset:512
	ds_store_b128 v4, v[125:128] offset:768
	ds_store_b128 v4, v[121:124] offset:4096
	ds_store_b128 v4, v[117:120] offset:4352
	ds_store_b128 v4, v[109:112] offset:4608
	ds_store_b128 v4, v[105:108] offset:4864
	v_lshlrev_b32_e32 v4, 4, v138
	ds_store_b128 v3, v[101:104]
	ds_store_b128 v3, v[97:100] offset:256
	ds_store_b128 v3, v[93:96] offset:512
	ds_store_b128 v3, v[89:92] offset:768
	ds_store_b128 v3, v[85:88] offset:4096
	ds_store_b128 v3, v[81:84] offset:4352
	ds_store_b128 v3, v[77:80] offset:4608
	ds_store_b128 v3, v[73:76] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or3_b32 v40, v0, v4, v1
	v_add_lshl_u32 v67, s66, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s1, s15, 5
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v68, s65, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s2, s15, 6
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v4, 0, v40
	v_xad_u32 v12, 0x2010, v40, 0
	v_xad_u32 v28, 0x6030, v40, 0
	v_xad_u32 v20, 0x4020, v40, 0
	v_xad_u32 v44, 0xa050, v40, 0
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v20
	ds_load_b128 v[20:23], v20 offset:128
	v_xad_u32 v36, 0x8040, v40, 0
	ds_load_b128 v[24:27], v28
	ds_load_b128 v[28:31], v28 offset:128
	v_xad_u32 v52, 0xc060, v40, 0
	v_xad_u32 v60, 0xe070, v40, 0
	ds_load_b128 v[40:43], v44
	ds_load_b128 v[44:47], v44 offset:128
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[52:55], v52 offset:128
	ds_load_b128 v[56:59], v60
	ds_load_b128 v[32:35], v36
	ds_load_b128 v[36:39], v36 offset:128
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s3, s15, 7
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_load_b128 v[60:63], v60 offset:128
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s15, 9
	s_mul_i32 s5, s15, 10
	s_mul_i32 s6, s15, 11
	s_mul_i32 s7, s15, 12
	s_mul_i32 s8, s15, 13
	s_mul_i32 s9, s15, 14
	s_mul_i32 s10, s15, 15
	s_mul_i32 s11, s15, 17
	s_mul_i32 s16, s15, 19
	s_mul_i32 s17, s15, 20
	s_mul_i32 s18, s15, 21
	s_mul_i32 s19, s15, 22
	s_mul_i32 s20, s15, 23
	s_mul_i32 s21, s15, 24
	s_mul_i32 s22, s15, 25
	s_mul_i32 s23, s15, 26
	s_mul_i32 s24, s15, 27
	s_mul_i32 s25, s15, 28
	s_mul_i32 s26, s15, 29
	s_mul_i32 s27, s15, 30
	s_mul_i32 s28, s15, 31
	s_mul_i32 s29, s15, 33
	s_mul_i32 s30, s15, 34
	s_mul_i32 s31, s15, 35
	s_mul_i32 s67, s15, 36
	s_mul_i32 s68, s15, 37
	s_mul_i32 s69, s15, 38
	s_mul_i32 s70, s15, 39
	s_mul_i32 s71, s15, 40
	s_mul_i32 s72, s15, 41
	s_mul_i32 s73, s15, 42
	s_mul_i32 s74, s15, 43
	s_mul_i32 s75, s15, 44
	s_mul_i32 s76, s15, 45
	s_mul_i32 s77, s15, 46
	s_mul_i32 s78, s15, 47
	s_mul_i32 s79, s15, 48
	s_mul_i32 s80, s15, 49
	s_mul_i32 s81, s15, 50
	s_mul_i32 s82, s15, 51
	s_mul_i32 s83, s15, 52
	s_mul_i32 s84, s15, 53
	s_mul_i32 s85, s15, 54
	s_mul_i32 s86, s15, 55
	s_mul_i32 s87, s15, 56
	s_mul_i32 s88, s15, 57
	s_mul_i32 s89, s15, 58
	s_mul_i32 s90, s15, 59
	s_mul_i32 s91, s15, 60
	s_mul_i32 s92, s15, 61
	s_mul_i32 s93, s15, 62
	s_mul_i32 s94, s15, 63
	s_lshl2_add_u32 s63, s15, s35
	s_lshl3_add_u32 s59, s15, s35
	s_add_i32 s50, s35, s14
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_add_lshl_u32 v69, s64, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s62, s35, s1
	s_add_i32 s61, s35, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v68, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v69, s[12:15], 0 offen
	v_add_lshl_u32 v0, s63, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s60, s35, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s62, v137, 2
	v_add_lshl_u32 v16, s61, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s58, s35, s4
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v24, s60, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s57, s35, s5
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v66, s59, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s56, s35, s6
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v40, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v24, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v66, s[12:15], 0 offen
	v_add_lshl_u32 v0, s58, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s55, s35, s7
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s57, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s54, s35, s8
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s56, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s53, s35, s9
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v16, s55, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s52, s35, s10
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v24, s54, v137, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v8, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v24, s[12:15], 0 offen
	v_add_lshl_u32 v0, s53, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s51, s35, s11
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s52, v137, 2
	v_add_lshl_u32 v8, v64, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s49, s35, s16
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v12, s51, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s48, s35, s17
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v16, s50, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s47, s35, s18
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	buffer_atomic_add_f32 v52, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v12, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v16, s[12:15], 0 offen
	v_add_lshl_u32 v0, s49, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s46, s35, s19
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s48, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s45, s35, s20
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s47, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s44, s35, s21
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s46, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s43, s35, s22
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v9, s45, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s42, s35, s23
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v33, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v49, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v57, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s44, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s41, s35, s24
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s43, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s40, s35, s25
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s42, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s39, s35, s26
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s41, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s38, s35, s27
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v9, s40, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s37, s35, s28
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s39, v137, 2
	v_add_lshl_u32 v1, s38, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s36, s35, s29
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s37, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s34, s35, s30
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, v65, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s33, s35, s31
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s36, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s31, s35, s67
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v53, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v61, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v8, s[12:15], 0 offen
	v_add_lshl_u32 v0, s34, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s30, s35, s68
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s33, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s29, s35, s69
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s31, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s28, s35, s70
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s30, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s27, s35, s71
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, s29, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s25, s35, s72
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v34, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v42, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v50, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s28, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s23, s35, s73
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s27, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s21, s35, s74
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s25, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s17, s35, s75
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s23, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s10, s35, s76
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, s21, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s9, s35, s77
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s17, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s8, s35, s78
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s10, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s7, s35, s79
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s9, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s1, s35, s80
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s8, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s0, s35, s81
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, s7, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s26, s35, s82
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v46, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v54, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v62, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s1, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s24, s35, s83
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s0, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s22, s35, s84
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s26, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s20, s35, s85
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v3, s24, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s19, s35, s86
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s22, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s18, s35, s87
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s20, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s11, s35, s88
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s19, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s16, s35, s89
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s18, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s6, s35, s90
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v3, s11, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s5, s35, s91
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s16, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s3, s35, s92
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s6, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s4, s35, s93
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s5, v137, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s2, s35, s94
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s3, v137, 2
	v_add_lshl_u32 v3, s4, v137, 2
	v_add_lshl_u32 v4, s2, v137, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v39, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v47, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v55, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v63, v4, s[12:15], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 242
		.amdhsa_next_free_sgpr 95
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 242
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 95
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8796
; TotalNumSgprs: 97
; NumVgprs: 242
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 97
; NumVGPRsForWavesPerEU: 242
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	336                             ; DW_AT_call_line
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     97
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     242
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
