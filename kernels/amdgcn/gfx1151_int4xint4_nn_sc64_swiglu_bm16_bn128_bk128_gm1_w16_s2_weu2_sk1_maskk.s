	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v119, v0
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v120, 15, v119
	v_lshrrev_b32_e32 v2, 5, v119
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v3, 4, v119
	v_lshlrev_b32_e32 v1, 3, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v9, 24, v3
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v0, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s7, s7, 1
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s6, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s16, s7
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_sub_i32 s10, 0, s16
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v0, 31, v119
	s_mov_b32 s11, 0x31027000
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s10, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s5, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s18, s10, s18
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s16
	s_cmp_ge_u32 s18, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s38, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cselect_b32 s5, s19, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s16, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s19, s5, s17
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s5, s20, 31
.Ltmp15:
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s21, s19, s17
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s35, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s5, s21, s7
	.loc	1 102 14                        ; generate_amdgcn.py:102:14
	s_lshl_b32 s34, s27, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s5
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s18, s3, 5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s6
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[5:6], null, s34, v3, v[1:2]
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 4
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v4, s18, v0
	v_or_b32_e32 v7, s18, v3
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_or_b32_e32 v6, s33, v2
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s16, s34, s18
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s21, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s7, s20, s4
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s6, s35, v4
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 32, v4
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v7
	.loc	1 171 51                        ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s5, 32, v7
	.loc	1 193 34 is_stmt 1              ; generate_amdgcn.py:193:34
	v_add3_u32 v7, s26, s16, v5
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[4:5], null, v6, s35, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s7, s7, 6
.Ltmp21:
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 63
	.loc	1 201 43                        ; generate_amdgcn.py:201:43
	v_add_nc_u32_e32 v5, s27, v7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s6, s4, s6
	s_and_b32 s16, s5, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_and_b32 s37, s37, 0xffff
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v5
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u8 v8, v4, s[8:11], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_clause 0x1
	buffer_load_b64 v[4:5], v6, s[36:39], 0 offen
	buffer_load_b64 v[6:7], v7, s[36:39], 0 offen
	v_lshlrev_b32_e32 v10, 3, v119
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v11, v9, v119
	v_lshlrev_b32_e32 v9, 1, v119
	v_or_b32_e32 v15, 0x3f0, v119
	v_or_b32_e32 v16, 0x7f0, v119
	v_or_b32_e32 v17, 0xbf0, v119
	v_add_nc_u32_e32 v11, 0, v11
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0, v10
	v_or_b32_e32 v10, 0xff0, v119
	s_mov_b32 s6, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(2)
	ds_store_b8 v11, v8 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v18, v[4:5], v[6:7] offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v4, 24, v9
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v5, 0x7f0, v119
	v_or_b32_e32 v6, 0xbf0, v119
	v_or_b32_e32 v7, 0xf70, v120
	v_or_b32_e32 v8, 0xff0, v119
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v13, v120, 5, v4
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v4, 0x3f0, v119
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v14, 8, v13
	v_xor_b32_e32 v32, 16, v13
	v_xor_b32_e32 v33, 24, v13
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow1435
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v132, v119, 4, 1
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v31, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v4, 24, v9
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_lshl_b32 s6, s19, 8
	s_mov_b32 s16, 0
	s_max_i32 s20, s0, 1
	s_add_i32 s1, s6, s34
	s_lshl_b32 s21, s17, 8
	v_lshl_or_b32 v13, v120, 5, v4
	s_sub_i32 s1, s1, s21
	s_sub_i32 s6, s6, s21
	s_lshl_b32 s48, s20, 5
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_lshlrev_b32_e32 v4, 1, v3
	s_lshl_b32 s19, s19, 7
	v_sub_nc_u32_e32 v3, s35, v3
	s_lshl_b32 s17, s17, 7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:576
	scratch_store_b32 off, v132, off offset:652
	v_lshl_or_b32 v4, s3, 6, v4
	s_add_i32 s50, s18, 32
	v_xor_b32_e32 v14, 8, v13
	v_xor_b32_e32 v32, 16, v13
	v_xor_b32_e32 v33, 24, v13
	v_add_nc_u32_e32 v5, 0x41, v4
	v_add_nc_u32_e32 v4, 64, v4
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v89, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s27, v5
	v_mul_lo_u32 v4, s27, v4
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v91, 0
	v_add3_u32 v5, v5, s19, v1
	v_add3_u32 v1, v4, s19, v1
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v245, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v36, s17, v5
	v_subrev_nc_u32_e32 v56, s17, v1
	s_mov_b32 s17, s16
	v_lshlrev_b32_e32 v3, 1, v132
	v_add_nc_u32_e32 v2, s33, v2
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v27, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:580
	scratch_store_b32 off, v15, off offset:656
	v_add_nc_u32_e32 v3, s33, v120
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v244, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v55, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v3, s7, v3
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v246, 0
	v_mov_b32_e32 v239, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v8, 1, v3
	v_mad_u64_u32 v[2:3], null, s35, v2, s[18:19]
	v_mov_b32_e32 v227, 0
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	v_add_nc_u32_e32 v35, 0, v120
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v26, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v2, v0, 32
	v_add_nc_u32_e32 v0, s50, v0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v203, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:584
	scratch_store_b32 off, v0, off offset:588
	scratch_store_b32 off, v10, off offset:668
	v_add_nc_u32_e32 v0, 0, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:592
	scratch_store_b32 off, v16, off offset:660
	v_add_nc_u32_e32 v0, 0, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:596
	scratch_store_b32 off, v17, off offset:664
	v_add_nc_u32_e32 v0, 0, v17
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v235, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v65, 0
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v237, 0
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v1, s17
	v_dual_mov_b32 v2, s18 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v4, s20 :: v_dual_mov_b32 v5, s21
	v_dual_mov_b32 v6, s22 :: v_dual_mov_b32 v7, s23
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:608
	scratch_store_b128 off, v[4:7], off offset:624
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v119, off offset:644 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v67, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v151, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v122, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s3, s27, 2
	s_lshl_b32 s49, s27, 6
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v120, off offset:648
	scratch_store_b32 off, v0, off offset:56
	scratch_store_b32 off, v18, off offset:640
	scratch_store_b32 off, v13, off offset:556
	scratch_store_b32 off, v14, off offset:560
	scratch_store_b32 off, v32, off offset:564
	scratch_store_b32 off, v33, off offset:568
	scratch_store_b32 off, v11, off offset:572
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	scratch_load_b32 v0, off, off offset:588 ; 4-byte Folded Reload
	s_clause 0x18                           ; 100-byte Folded Spill
	scratch_store_b32 off, v8, off offset:104
	scratch_store_b32 off, v31, off offset:48
	scratch_store_b32 off, v255, off offset:100
	scratch_store_b32 off, v254, off offset:96
	scratch_store_b32 off, v253, off offset:92
	scratch_store_b32 off, v252, off offset:88
	scratch_store_b32 off, v251, off offset:84
	scratch_store_b32 off, v30, off offset:44
	scratch_store_b32 off, v29, off offset:40
	scratch_store_b32 off, v248, off offset:80
	scratch_store_b32 off, v247, off offset:76
	scratch_store_b32 off, v246, off offset:72
	scratch_store_b32 off, v245, off offset:68
	scratch_store_b32 off, v244, off offset:64
	scratch_store_b32 off, v28, off offset:36
	scratch_store_b32 off, v27, off offset:32
	scratch_store_b32 off, v26, off offset:28
	scratch_store_b32 off, v25, off offset:24
	scratch_store_b32 off, v239, off offset:60
	scratch_store_b32 off, v238, off offset:20
	scratch_store_b32 off, v237, off offset:16
	scratch_store_b32 off, v236, off offset:12
	scratch_store_b32 off, v235, off offset:8
	scratch_store_b32 off, v234, off offset:4
	scratch_store_b32 off, v12, off
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	s_add_i32 s12, s50, s16
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	scratch_load_b32 v0, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s16, s16, 32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	buffer_load_u16 v0, v8, s[44:47], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[68:71], off, off offset:608
	scratch_load_b128 v[72:75], off, off offset:624
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v35 offset:640
	ds_load_u8 v9, v35 offset:512
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:596
	scratch_load_b32 v4, off, off offset:600
	scratch_load_b32 v5, off, off offset:604
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:896
	ds_load_u8 v10, v35 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:128
	ds_load_u8 v11, v35
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v35 offset:1664
	ds_load_u8 v9, v35 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:384
	ds_load_u8 v12, v35 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v35 offset:1920
	ds_load_u8 v10, v35 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:1152
	ds_load_u8 v11, v35 offset:1024
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v35 offset:2688
	ds_load_u8 v9, v35 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:1408
	ds_load_u8 v12, v35 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v35 offset:2944
	ds_load_u8 v10, v35 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:2176
	ds_load_u8 v11, v35 offset:2048
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:3712
	ds_load_u8 v9, v35 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:2432
	ds_load_u8 v12, v35 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:3968
	ds_load_u8 v10, v35 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:3200
	ds_load_u8 v11, v35 offset:3072
	v_lshl_or_b32 v28, v9, 16, v0
	v_add_nc_u32_e32 v0, 0, v13
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[21:22], v0 offset:8192
	v_add_nc_u32_e32 v0, 0, v14
	ds_load_b64 v[23:24], v0 offset:8192
	v_add_nc_u32_e32 v0, 0, v32
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:3456
	ds_load_u8 v12, v35 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	s_waitcnt vmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[23:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[19:20], v0 offset:8192
	v_add_nc_u32_e32 v0, 0, v33
	ds_load_b64 v[17:18], v0 offset:8192
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[17:18], v[9:16] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:4736
	ds_load_u8 v9, v35 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:4992
	ds_load_u8 v10, v35 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:4224
	ds_load_u8 v11, v35 offset:4096
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:5760
	ds_load_u8 v9, v35 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:4480
	ds_load_u8 v12, v35 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:6016
	ds_load_u8 v10, v35 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:5248
	ds_load_u8 v11, v35 offset:5120
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:6784
	ds_load_u8 v9, v35 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:5504
	ds_load_u8 v12, v35 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:7040
	ds_load_u8 v10, v35 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:6272
	ds_load_u8 v11, v35 offset:6144
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v35 offset:7808
	ds_load_u8 v9, v35 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:6528
	ds_load_u8 v12, v35 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v35 offset:8064
	ds_load_u8 v10, v35 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:7296
	ds_load_u8 v11, v35 offset:7168
	v_lshl_or_b32 v32, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:7552
	ds_load_u8 v12, v35 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:656
	ds_load_u8 v9, v35 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:912
	ds_load_u8 v10, v35 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:16
	ds_load_u8 v11, v35 offset:144
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:1680
	ds_load_u8 v9, v35 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v35 offset:400
	ds_load_u8 v12, v35 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:1936
	ds_load_u8 v10, v35 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:1168
	ds_load_u8 v11, v35 offset:1040
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:2704
	ds_load_u8 v9, v35 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:1424
	ds_load_u8 v12, v35 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:2960
	ds_load_u8 v10, v35 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:2192
	ds_load_u8 v11, v35 offset:2064
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v35 offset:3728
	ds_load_u8 v9, v35 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:2448
	ds_load_u8 v12, v35 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v35 offset:3984
	ds_load_u8 v10, v35 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:3216
	ds_load_u8 v11, v35 offset:3088
	v_lshl_or_b32 v32, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:3472
	ds_load_u8 v12, v35 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:4752
	ds_load_u8 v9, v35 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:5008
	ds_load_u8 v10, v35 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:4240
	ds_load_u8 v11, v35 offset:4112
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:5776
	ds_load_u8 v9, v35 offset:5648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:4496
	ds_load_u8 v12, v35 offset:4368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:6032
	ds_load_u8 v10, v35 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:5264
	ds_load_u8 v11, v35 offset:5136
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:6800
	ds_load_u8 v9, v35 offset:6672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:5520
	ds_load_u8 v12, v35 offset:5392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:7056
	ds_load_u8 v10, v35 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:6288
	ds_load_u8 v11, v35 offset:6160
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v35 offset:7824
	ds_load_u8 v9, v35 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:6544
	ds_load_u8 v12, v35 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v35 offset:8080
	ds_load_u8 v10, v35 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:7312
	ds_load_u8 v11, v35 offset:7184
	v_lshl_or_b32 v32, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:7568
	ds_load_u8 v12, v35 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:672
	ds_load_u8 v9, v35 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:928
	ds_load_u8 v10, v35 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:32
	ds_load_u8 v11, v35 offset:160
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:1696
	ds_load_u8 v9, v35 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v35 offset:416
	ds_load_u8 v12, v35 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:1952
	ds_load_u8 v10, v35 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:1184
	ds_load_u8 v11, v35 offset:1056
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:2720
	ds_load_u8 v9, v35 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:1440
	ds_load_u8 v12, v35 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:2976
	ds_load_u8 v10, v35 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:2208
	ds_load_u8 v11, v35 offset:2080
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v35 offset:3744
	ds_load_u8 v9, v35 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:2464
	ds_load_u8 v12, v35 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v35 offset:4000
	ds_load_u8 v10, v35 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:3232
	ds_load_u8 v11, v35 offset:3104
	v_lshl_or_b32 v32, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:3488
	ds_load_u8 v12, v35 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:4768
	ds_load_u8 v9, v35 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:5024
	ds_load_u8 v10, v35 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:4256
	ds_load_u8 v11, v35 offset:4128
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:5792
	ds_load_u8 v9, v35 offset:5664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:4512
	ds_load_u8 v12, v35 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:6048
	ds_load_u8 v10, v35 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:5280
	ds_load_u8 v11, v35 offset:5152
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:6816
	ds_load_u8 v9, v35 offset:6688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:5536
	ds_load_u8 v12, v35 offset:5408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:7072
	ds_load_u8 v10, v35 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:6304
	ds_load_u8 v11, v35 offset:6176
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v35 offset:7840
	ds_load_u8 v9, v35 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:6560
	ds_load_u8 v12, v35 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v35 offset:8096
	ds_load_u8 v10, v35 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:7328
	ds_load_u8 v11, v35 offset:7200
	v_lshl_or_b32 v32, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:7584
	ds_load_u8 v12, v35 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:688
	ds_load_u8 v9, v35 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:944
	ds_load_u8 v10, v35 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:48
	ds_load_u8 v11, v35 offset:176
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:1712
	ds_load_u8 v9, v35 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v35 offset:432
	ds_load_u8 v12, v35 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:1968
	ds_load_u8 v10, v35 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:1200
	ds_load_u8 v11, v35 offset:1072
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:2736
	ds_load_u8 v9, v35 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:1456
	ds_load_u8 v12, v35 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:2992
	ds_load_u8 v10, v35 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:2224
	ds_load_u8 v11, v35 offset:2096
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v35 offset:3760
	ds_load_u8 v9, v35 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:2480
	ds_load_u8 v12, v35 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v35 offset:4016
	ds_load_u8 v10, v35 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:3248
	ds_load_u8 v11, v35 offset:3120
	v_lshl_or_b32 v32, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:3504
	ds_load_u8 v12, v35 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:4784
	ds_load_u8 v9, v35 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:5040
	ds_load_u8 v10, v35 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:4272
	ds_load_u8 v11, v35 offset:4144
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:5808
	ds_load_u8 v9, v35 offset:5680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:4528
	ds_load_u8 v12, v35 offset:4400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:6064
	ds_load_u8 v10, v35 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:5296
	ds_load_u8 v11, v35 offset:5168
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:6832
	ds_load_u8 v9, v35 offset:6704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:5552
	ds_load_u8 v12, v35 offset:5424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:7088
	ds_load_u8 v10, v35 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:6320
	ds_load_u8 v11, v35 offset:6192
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v35 offset:7856
	ds_load_u8 v9, v35 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:6576
	ds_load_u8 v12, v35 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v35 offset:8112
	ds_load_u8 v10, v35 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:7344
	ds_load_u8 v11, v35 offset:7216
	v_lshl_or_b32 v32, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:7600
	ds_load_u8 v12, v35 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:704
	ds_load_u8 v9, v35 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:960
	ds_load_u8 v10, v35 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:192
	ds_load_u8 v11, v35 offset:64
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:1728
	ds_load_u8 v9, v35 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:448
	ds_load_u8 v12, v35 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:1984
	ds_load_u8 v10, v35 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:1216
	ds_load_u8 v11, v35 offset:1088
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:2752
	ds_load_u8 v9, v35 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:1472
	ds_load_u8 v12, v35 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:3008
	ds_load_u8 v10, v35 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:2240
	ds_load_u8 v11, v35 offset:2112
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v35 offset:3776
	ds_load_u8 v9, v35 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:2496
	ds_load_u8 v12, v35 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v35 offset:4032
	ds_load_u8 v10, v35 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:3264
	ds_load_u8 v11, v35 offset:3136
	v_lshl_or_b32 v32, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:3520
	ds_load_u8 v12, v35 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:4800
	ds_load_u8 v9, v35 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:5056
	ds_load_u8 v10, v35 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:4288
	ds_load_u8 v11, v35 offset:4160
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:5824
	ds_load_u8 v9, v35 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:4544
	ds_load_u8 v12, v35 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:6080
	ds_load_u8 v10, v35 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:5312
	ds_load_u8 v11, v35 offset:5184
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:6848
	ds_load_u8 v9, v35 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:5568
	ds_load_u8 v12, v35 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:7104
	ds_load_u8 v10, v35 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:6336
	ds_load_u8 v11, v35 offset:6208
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v35 offset:7872
	ds_load_u8 v9, v35 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:6592
	ds_load_u8 v12, v35 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v35 offset:8128
	ds_load_u8 v10, v35 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:7360
	ds_load_u8 v11, v35 offset:7232
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:7616
	ds_load_u8 v12, v35 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:720
	ds_load_u8 v9, v35 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:976
	ds_load_u8 v10, v35 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:208
	ds_load_u8 v11, v35 offset:80
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v35 offset:1744
	ds_load_u8 v9, v35 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:464
	ds_load_u8 v12, v35 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v35 offset:2000
	ds_load_u8 v10, v35 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:1232
	ds_load_u8 v11, v35 offset:1104
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v35 offset:2768
	ds_load_u8 v9, v35 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:1488
	ds_load_u8 v12, v35 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v35 offset:3024
	ds_load_u8 v10, v35 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:2256
	ds_load_u8 v11, v35 offset:2128
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v35 offset:3792
	ds_load_u8 v9, v35 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:2512
	ds_load_u8 v12, v35 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v35 offset:4048
	ds_load_u8 v10, v35 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:3280
	ds_load_u8 v11, v35 offset:3152
	v_lshl_or_b32 v33, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:3536
	ds_load_u8 v12, v35 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v32, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_mov_b32_e32 v25, v54
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	ds_load_u8 v0, v35 offset:4816
	ds_load_u8 v9, v35 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v35 offset:5072
	ds_load_u8 v10, v35 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:4304
	ds_load_u8 v11, v35 offset:4176
	v_lshl_or_b32 v31, v9, 16, v0
	ds_load_u8 v0, v35 offset:5840
	ds_load_u8 v9, v35 offset:5712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:4560
	ds_load_u8 v12, v35 offset:4432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v35 offset:6096
	ds_load_u8 v10, v35 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:5328
	ds_load_u8 v11, v35 offset:5200
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v35 offset:6864
	ds_load_u8 v9, v35 offset:6736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:5584
	ds_load_u8 v12, v35 offset:5456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v35 offset:7120
	ds_load_u8 v10, v35 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:6352
	ds_load_u8 v11, v35 offset:6224
	v_lshl_or_b32 v48, v9, 16, v0
	ds_load_u8 v0, v35 offset:7888
	ds_load_u8 v9, v35 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:6608
	ds_load_u8 v12, v35 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	ds_load_u8 v9, v35 offset:8144
	ds_load_u8 v10, v35 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:7376
	ds_load_u8 v11, v35 offset:7248
	v_lshl_or_b32 v50, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:7632
	ds_load_u8 v12, v35 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v35 offset:736
	ds_load_u8 v10, v35 offset:608
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:992
	ds_load_u8 v11, v35 offset:864
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:224
	ds_load_u8 v12, v35 offset:96
	v_lshl_or_b32 v48, v10, 16, v9
	ds_load_u8 v9, v35 offset:1760
	ds_load_u8 v10, v35 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v35 offset:480
	ds_load_u8 v13, v35 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v12, 16, v11
	ds_load_u8 v10, v35 offset:2016
	ds_load_u8 v11, v35 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:1248
	ds_load_u8 v12, v35 offset:1120
	v_lshl_or_b32 v50, v10, 16, v9
	ds_load_u8 v9, v35 offset:2784
	ds_load_u8 v10, v35 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v35 offset:1504
	ds_load_u8 v13, v35 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v12, 16, v11
	ds_load_u8 v10, v35 offset:3040
	ds_load_u8 v11, v35 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:2272
	ds_load_u8 v12, v35 offset:2144
	v_lshl_or_b32 v52, v10, 16, v9
	ds_load_u8 v9, v35 offset:3808
	ds_load_u8 v10, v35 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v35 offset:2528
	ds_load_u8 v13, v35 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v12, 16, v11
	ds_load_u8 v10, v35 offset:4064
	ds_load_u8 v11, v35 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:3296
	ds_load_u8 v12, v35 offset:3168
	v_lshl_or_b32 v54, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v35 offset:3552
	ds_load_u8 v13, v35 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v26, v9
	v_cvt_f32_i32_e32 v27, v10
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v9, v35 offset:4832
	ds_load_u8 v10, v35 offset:4704
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v28, v11
	v_cvt_f32_i32_e32 v29, v12
	v_cvt_f32_i32_e32 v30, v13
	v_cvt_f32_i32_e32 v31, v14
	v_cvt_f32_i32_e32 v32, v15
	v_cvt_f32_i32_e32 v8, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:5088
	ds_load_u8 v11, v35 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:4320
	ds_load_u8 v12, v35 offset:4192
	v_lshl_or_b32 v48, v10, 16, v9
	ds_load_u8 v9, v35 offset:5856
	ds_load_u8 v10, v35 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v35 offset:4576
	ds_load_u8 v13, v35 offset:4448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v12, 16, v11
	ds_load_u8 v10, v35 offset:6112
	ds_load_u8 v11, v35 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:5344
	ds_load_u8 v12, v35 offset:5216
	v_lshl_or_b32 v50, v10, 16, v9
	ds_load_u8 v9, v35 offset:6880
	ds_load_u8 v10, v35 offset:6752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v35 offset:5600
	ds_load_u8 v13, v35 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v12, 16, v11
	ds_load_u8 v10, v35 offset:7136
	ds_load_u8 v11, v35 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:6368
	ds_load_u8 v12, v35 offset:6240
	v_lshl_or_b32 v52, v10, 16, v9
	ds_load_u8 v9, v35 offset:7904
	ds_load_u8 v10, v35 offset:7776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v35 offset:6624
	ds_load_u8 v13, v35 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v12, 16, v11
	ds_load_u8 v10, v35 offset:8160
	ds_load_u8 v11, v35 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:7392
	ds_load_u8 v12, v35 offset:7264
	v_lshl_or_b32 v54, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v35 offset:7648
	ds_load_u8 v13, v35 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v35 offset:240
	ds_load_u8 v10, v35 offset:112
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:496
	ds_load_u8 v11, v35 offset:368
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:752
	ds_load_u8 v12, v35 offset:624
	v_lshl_or_b32 v47, v10, 16, v9
	ds_load_u8 v9, v35 offset:1264
	ds_load_u8 v10, v35 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v12, v0
	ds_load_u8 v13, v35 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v12, 16, v11
	ds_load_u8 v10, v35 offset:1520
	ds_load_u8 v11, v35 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:1776
	ds_load_u8 v12, v35 offset:1648
	v_lshl_or_b32 v49, v10, 16, v9
	ds_load_u8 v9, v35 offset:2288
	ds_load_u8 v10, v35 offset:2160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v2
	ds_load_u8 v13, v35 offset:1904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v12, 16, v11
	ds_load_u8 v10, v35 offset:2544
	ds_load_u8 v11, v35 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:2800
	ds_load_u8 v12, v35 offset:2672
	v_lshl_or_b32 v51, v10, 16, v9
	ds_load_u8 v9, v35 offset:3312
	ds_load_u8 v10, v35 offset:3184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v4
	ds_load_u8 v13, v35 offset:2928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v12, 16, v11
	ds_load_u8 v10, v35 offset:3568
	ds_load_u8 v11, v35 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:3824
	ds_load_u8 v12, v35 offset:3696
	v_lshl_or_b32 v53, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v5
	ds_load_u8 v13, v35 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v43, v9
	v_cvt_f32_i32_e32 v9, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v10
	scratch_store_b32 off, v9, off offset:552 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v12
	scratch_store_b32 off, v9, off offset:548 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v13
	scratch_store_b32 off, v9, off offset:544 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v14
	scratch_store_b32 off, v9, off offset:540 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v15
	scratch_store_b32 off, v9, off offset:536 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_store_b32 off, v9, off offset:532 ; 4-byte Folded Spill
	ds_load_u8 v9, v35 offset:4336
	ds_load_u8 v10, v35 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:4592
	ds_load_u8 v11, v35 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:4848
	ds_load_u8 v12, v35 offset:4720
	v_lshl_or_b32 v47, v10, 16, v9
	ds_load_u8 v9, v35 offset:5360
	ds_load_u8 v10, v35 offset:5232
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v0 offset:4096
	ds_load_u8 v13, v35 offset:4976
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	scratch_load_b32 v0, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v12, 16, v11
	ds_load_u8 v10, v35 offset:5616
	ds_load_u8 v11, v35 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v35 offset:5872
	ds_load_u8 v12, v35 offset:5744
	v_lshl_or_b32 v49, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v2 offset:4096
	ds_load_u8 v13, v35 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[68:75] neg_lo:[1,1,0]
	ds_load_u8 v21, v35 offset:6384
	ds_load_u8 v22, v35 offset:6256
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v35 offset:6640
	ds_load_u8 v23, v35 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v35 offset:6896
	ds_load_u8 v24, v35 offset:6768
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v4 offset:4096
	ds_load_u8 v47, v35 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v47, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v19, v35 offset:7408
	ds_load_u8 v20, v35 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v35 offset:7664
	ds_load_u8 v21, v35 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v35 offset:7920
	ds_load_u8 v22, v35 offset:7792
	v_lshl_or_b32 v19, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v5 offset:4096
	ds_load_u8 v23, v35 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v20, v10
	scratch_load_b32 v10, off, off offset:580 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v21, v9
	v_cvt_f32_i32_e32 v19, v11
	v_cvt_f32_i32_e32 v17, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v18, v12
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_waitcnt vmcnt(1)
	v_cmp_lt_i32_e32 vcc_lo, s12, v0
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 201 35 is_stmt 1              ; generate_amdgcn.py:201:35
	v_cndmask_b32_e32 v11, 0x80000000, v36, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v36, s49, v36
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s6, v10
	s_clause 0x1f
	buffer_load_u16 v241, v9, s[40:43], 0 offen
	buffer_load_u16 v242, v9, s[40:43], 0 offen offset:4
	buffer_load_u16 v4, v9, s[40:43], 0 offen offset:8
	buffer_load_u16 v228, v9, s[40:43], 0 offen offset:12
	buffer_load_u16 v240, v9, s[40:43], 0 offen offset:16
	buffer_load_u16 v95, v9, s[40:43], 0 offen offset:20
	buffer_load_u16 v239, v9, s[40:43], 0 offen offset:24
	buffer_load_u16 v238, v9, s[40:43], 0 offen offset:28
	buffer_load_u16 v225, v9, s[40:43], 0 offen offset:32
	buffer_load_u16 v237, v9, s[40:43], 0 offen offset:36
	buffer_load_u16 v236, v9, s[40:43], 0 offen offset:40
	buffer_load_u16 v235, v9, s[40:43], 0 offen offset:44
	buffer_load_u16 v234, v9, s[40:43], 0 offen offset:48
	buffer_load_u16 v232, v9, s[40:43], 0 offen offset:52
	buffer_load_u16 v73, v9, s[40:43], 0 offen offset:56
	buffer_load_u16 v38, v9, s[40:43], 0 offen offset:60
	buffer_load_u16 v0, v9, s[40:43], 0 offen offset:64
	buffer_load_u16 v54, v9, s[40:43], 0 offen offset:68
	buffer_load_u16 v233, v9, s[40:43], 0 offen offset:72
	buffer_load_u16 v72, v9, s[40:43], 0 offen offset:76
	buffer_load_u16 v71, v9, s[40:43], 0 offen offset:80
	buffer_load_u16 v70, v9, s[40:43], 0 offen offset:84
	buffer_load_u16 v69, v9, s[40:43], 0 offen offset:88
	buffer_load_u16 v68, v9, s[40:43], 0 offen offset:92
	buffer_load_u16 v248, v9, s[40:43], 0 offen offset:96
	buffer_load_u16 v246, v9, s[40:43], 0 offen offset:100
	buffer_load_u16 v245, v9, s[40:43], 0 offen offset:104
	buffer_load_u16 v58, v9, s[40:43], 0 offen offset:108
	buffer_load_u16 v82, v9, s[40:43], 0 offen offset:112
	buffer_load_u16 v81, v9, s[40:43], 0 offen offset:116
	buffer_load_u16 v80, v9, s[40:43], 0 offen offset:120
	buffer_load_u16 v79, v9, s[40:43], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v78, v9, s[40:43], 0 offen offset:128
	buffer_load_u16 v247, v9, s[40:43], 0 offen offset:132
	buffer_load_u16 v77, v9, s[40:43], 0 offen offset:136
	buffer_load_u16 v252, v9, s[40:43], 0 offen offset:140
	buffer_load_u16 v251, v9, s[40:43], 0 offen offset:144
	buffer_load_u16 v254, v9, s[40:43], 0 offen offset:148
	buffer_load_u16 v253, v9, s[40:43], 0 offen offset:152
	buffer_load_u16 v45, v9, s[40:43], 0 offen offset:156
	buffer_load_u16 v59, v9, s[40:43], 0 offen offset:160
	buffer_load_u16 v76, v9, s[40:43], 0 offen offset:164
	buffer_load_u16 v37, v9, s[40:43], 0 offen offset:168
	buffer_load_u16 v75, v9, s[40:43], 0 offen offset:172
	buffer_load_u16 v74, v9, s[40:43], 0 offen offset:176
	buffer_load_u16 v34, v9, s[40:43], 0 offen offset:180
	buffer_load_u16 v244, v9, s[40:43], 0 offen offset:184
	buffer_load_u16 v42, v9, s[40:43], 0 offen offset:188
	buffer_load_u16 v217, v9, s[40:43], 0 offen offset:192
	buffer_load_u16 v255, v9, s[40:43], 0 offen offset:196
	buffer_load_u16 v87, v9, s[40:43], 0 offen offset:200
	buffer_load_u16 v86, v9, s[40:43], 0 offen offset:204
	buffer_load_u16 v41, v9, s[40:43], 0 offen offset:208
	buffer_load_u16 v46, v9, s[40:43], 0 offen offset:212
	buffer_load_u16 v249, v9, s[40:43], 0 offen offset:216
	buffer_load_u16 v250, v9, s[40:43], 0 offen offset:220
	buffer_load_u16 v243, v9, s[40:43], 0 offen offset:224
	buffer_load_u16 v61, v9, s[40:43], 0 offen offset:228
	buffer_load_u16 v57, v9, s[40:43], 0 offen offset:232
	buffer_load_u16 v188, v9, s[40:43], 0 offen offset:236
	buffer_load_u16 v53, v9, s[40:43], 0 offen offset:240
	buffer_load_u16 v51, v9, s[40:43], 0 offen offset:244
	buffer_load_u16 v49, v9, s[40:43], 0 offen offset:248
	buffer_load_u16 v149, v9, s[40:43], 0 offen offset:252
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e32 v9, 0x80000000, v56, vcc_lo
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v16, s1, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_clause 0x1
	buffer_load_b64 v[9:10], v9, s[36:39], 0 offen
	buffer_load_b64 v[11:12], v11, s[36:39], 0 offen
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1f
	buffer_load_u16 v60, v16, s[40:43], 0 offen
	buffer_load_u16 v152, v16, s[40:43], 0 offen offset:4
	buffer_load_u16 v5, v16, s[40:43], 0 offen offset:8
	buffer_load_u16 v52, v16, s[40:43], 0 offen offset:12
	buffer_load_u16 v50, v16, s[40:43], 0 offen offset:16
	buffer_load_u16 v150, v16, s[40:43], 0 offen offset:20
	buffer_load_u16 v48, v16, s[40:43], 0 offen offset:24
	buffer_load_u16 v47, v16, s[40:43], 0 offen offset:28
	buffer_load_u16 v148, v16, s[40:43], 0 offen offset:32
	buffer_load_u16 v147, v16, s[40:43], 0 offen offset:36
	buffer_load_u16 v146, v16, s[40:43], 0 offen offset:40
	buffer_load_u16 v145, v16, s[40:43], 0 offen offset:44
	buffer_load_u16 v144, v16, s[40:43], 0 offen offset:48
	buffer_load_u16 v143, v16, s[40:43], 0 offen offset:52
	buffer_load_u16 v142, v16, s[40:43], 0 offen offset:56
	buffer_load_u16 v141, v16, s[40:43], 0 offen offset:60
	buffer_load_u16 v140, v16, s[40:43], 0 offen offset:64
	buffer_load_u16 v139, v16, s[40:43], 0 offen offset:68
	buffer_load_u16 v138, v16, s[40:43], 0 offen offset:72
	buffer_load_u16 v137, v16, s[40:43], 0 offen offset:76
	buffer_load_u16 v136, v16, s[40:43], 0 offen offset:80
	buffer_load_u16 v135, v16, s[40:43], 0 offen offset:84
	buffer_load_u16 v134, v16, s[40:43], 0 offen offset:88
	buffer_load_u16 v133, v16, s[40:43], 0 offen offset:92
	buffer_load_u16 v132, v16, s[40:43], 0 offen offset:96
	buffer_load_u16 v131, v16, s[40:43], 0 offen offset:100
	buffer_load_u16 v130, v16, s[40:43], 0 offen offset:104
	buffer_load_u16 v2, v16, s[40:43], 0 offen offset:108
	buffer_load_u16 v128, v16, s[40:43], 0 offen offset:112
	buffer_load_u16 v85, v16, s[40:43], 0 offen offset:116
	buffer_load_u16 v126, v16, s[40:43], 0 offen offset:120
	buffer_load_u16 v84, v16, s[40:43], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v124, v16, s[40:43], 0 offen offset:128
	buffer_load_u16 v83, v16, s[40:43], 0 offen offset:132
	buffer_load_u16 v121, v16, s[40:43], 0 offen offset:136
	buffer_load_u16 v120, v16, s[40:43], 0 offen offset:140
	buffer_load_u16 v119, v16, s[40:43], 0 offen offset:144
	buffer_load_u16 v118, v16, s[40:43], 0 offen offset:148
	buffer_load_u16 v117, v16, s[40:43], 0 offen offset:152
	buffer_load_u16 v116, v16, s[40:43], 0 offen offset:156
	buffer_load_u16 v115, v16, s[40:43], 0 offen offset:160
	buffer_load_u16 v114, v16, s[40:43], 0 offen offset:164
	buffer_load_u16 v113, v16, s[40:43], 0 offen offset:168
	buffer_load_u16 v112, v16, s[40:43], 0 offen offset:172
	buffer_load_u16 v111, v16, s[40:43], 0 offen offset:176
	buffer_load_u16 v110, v16, s[40:43], 0 offen offset:180
	buffer_load_u16 v109, v16, s[40:43], 0 offen offset:184
	buffer_load_u16 v108, v16, s[40:43], 0 offen offset:188
	buffer_load_u16 v107, v16, s[40:43], 0 offen offset:192
	buffer_load_u16 v106, v16, s[40:43], 0 offen offset:196
	buffer_load_u16 v105, v16, s[40:43], 0 offen offset:200
	buffer_load_u16 v104, v16, s[40:43], 0 offen offset:204
	buffer_load_u16 v103, v16, s[40:43], 0 offen offset:208
	buffer_load_u16 v102, v16, s[40:43], 0 offen offset:212
	buffer_load_u16 v101, v16, s[40:43], 0 offen offset:216
	buffer_load_u16 v100, v16, s[40:43], 0 offen offset:220
	buffer_load_u16 v99, v16, s[40:43], 0 offen offset:224
	buffer_load_u16 v98, v16, s[40:43], 0 offen offset:228
	buffer_load_u16 v97, v16, s[40:43], 0 offen offset:232
	buffer_load_u16 v96, v16, s[40:43], 0 offen offset:236
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:240
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:244
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:248
	buffer_load_u16 v16, v16, s[40:43], 0 offen offset:252
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	scratch_load_b32 v33, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v56, s49, v56
	s_add_i32 s1, s1, s3
	s_add_i32 s6, s6, s3
	s_cmp_lg_u32 s48, s16
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v33, v[9:10], v[11:12] offset1:8
	.loc	1 168 18 is_stmt 1              ; generate_amdgcn.py:168:18
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v12, off, off
	scratch_load_b32 v9, off, off offset:144
	scratch_load_b32 v10, off, off offset:176
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v241
	scratch_load_b32 v33, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v231, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v10, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v242
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v230, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v10, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v4, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v229, v10, v11 :: v_dual_mul_f32 v10, v9, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v4, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v228
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v89, v10, v11
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v240
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v4
	scratch_load_b32 v4, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v227, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v4 :: v_dual_lshlrev_b32 v11, 16, v95
	scratch_load_b32 v4, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v226, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v4 :: v_dual_lshlrev_b32 v11, 16, v239
	scratch_load_b32 v4, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v88, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v238
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v4
	scratch_load_b32 v4, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v90, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v225
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v4
	scratch_load_b32 v4, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v91, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v4 :: v_dual_lshlrev_b32 v11, 16, v237
	scratch_load_b32 v4, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v92, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v236
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v4
	scratch_load_b32 v4, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v39, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v4 :: v_dual_lshlrev_b32 v11, 16, v235
	scratch_load_b32 v4, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v40, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v234
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v4
	scratch_load_b32 v4, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v93, v10, v11
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v232
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v4
	scratch_load_b32 v4, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v94, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v73
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v4
	scratch_load_b32 v4, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v1, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v4 :: v_dual_lshlrev_b32 v11, 16, v38
	scratch_load_b32 v4, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v3, v10, v11
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v0
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v9, v4
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v0, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v54
	v_mov_b32_e32 v54, v25
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v25, off, off offset:24
	scratch_load_b32 v239, off, off offset:60
	scratch_load_b32 v238, off, off offset:20
	scratch_load_b32 v237, off, off offset:16
	scratch_load_b32 v236, off, off offset:12
	scratch_load_b32 v235, off, off offset:8
	scratch_load_b32 v234, off, off offset:4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v0, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v233
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v6, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v72
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v7, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v71
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v208, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v70
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v207, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v69
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v205, v10, v11
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v68
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v206, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v248
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v203, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v246
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v204, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v245
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v187, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v58
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v202, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v82
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v185, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v81
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v186, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v80
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v184, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v79
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v183, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v78
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v181, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v247
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v182, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v77
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v179, v10, v11
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v252
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v180, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v251
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v177, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v254
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v178, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v253
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v176, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v45
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v175, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v59
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v173, v10, v11
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v76
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v174, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v37
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v171, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v75
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v172, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v74
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v169, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v34
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v170, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v244
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v168, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v42
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v167, v10, v11 :: v_dual_mul_f32 v10, v9, v26
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v217
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v165, v10, v11
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v10, v9, v27
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v255
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:32
	scratch_load_b32 v26, off, off offset:28
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v166, v10, v11
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v10, v9, v28 :: v_dual_lshlrev_b32 v11, 16, v87
	scratch_load_b32 v28, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v163, v10, v11 :: v_dual_mul_f32 v10, v9, v29
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v86
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v29, off, off offset:40
	scratch_load_b32 v248, off, off offset:80
	scratch_load_b32 v247, off, off offset:76
	scratch_load_b32 v246, off, off offset:72
	scratch_load_b32 v245, off, off offset:68
	scratch_load_b32 v244, off, off offset:64
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v164, v10, v11
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v10, v9, v30 :: v_dual_lshlrev_b32 v11, 16, v41
	scratch_load_b32 v30, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v161, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v10, v9, v31 :: v_dual_lshlrev_b32 v11, 16, v46
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v31, off, off offset:48
	scratch_load_b32 v255, off, off offset:100
	scratch_load_b32 v254, off, off offset:96
	scratch_load_b32 v253, off, off offset:92
	scratch_load_b32 v252, off, off offset:88
	scratch_load_b32 v251, off, off offset:84
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v162, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v10, v9, v32 :: v_dual_lshlrev_b32 v11, 16, v249
	scratch_load_b32 v32, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v160, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v10, v9, v8 :: v_dual_lshlrev_b32 v11, 16, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v159, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v10, v9, v43
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v243
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v157, v10, v11 :: v_dual_mul_f32 v10, v9, v44
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v61
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v158, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v57
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(17)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v155, v10, v11
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v188
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v156, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v53
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v153, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v51
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v154, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v49
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v151, v10, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v149
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v122, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v60
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v31, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v152
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v255, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v5
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v253, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v52
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v254, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v50
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v251, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v150
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v252, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v48
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v29, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v47
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v30, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v148
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v247, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v147
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v248, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v146
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v245, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v145
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v246, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v144
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v28, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v143
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v244, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v142
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v54, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v141
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v27, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v140
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v55, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v139
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v26, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v138
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v62, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v137
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v25, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v136
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v66, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v135
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v239, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v134
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v63, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v133
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v65, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v132
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v238, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v131
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v64, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v130
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v236, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v237, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v128
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v235, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v85
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v67, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v126
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v12, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v84
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v234, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v124
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v223, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v83
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v224, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v121
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v221, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v120
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v222, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v119
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v219, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v118
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v220, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v117
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v216, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v116
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v218, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v115
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v214, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v114
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v0
	scratch_load_b32 v0, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v215, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v9, v0 :: v_dual_lshlrev_b32 v11, 16, v113
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v212, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:572
	scratch_load_b32 v0, off, off offset:452
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v112
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v213, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v111
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v210, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v110
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v211, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v109
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v201, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v108
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v209, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v107
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v199, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v106
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v200, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v105
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v197, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v104
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v198, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v103
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v195, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v102
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v196, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v101
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v193, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v100
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v194, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v9, v21
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v99
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v191, v0, v10 :: v_dual_mul_f32 v0, v9, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v192, v0, v10
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v9, v19
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v97
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v189, v0, v10 :: v_dual_lshlrev_b32 v10, 16, v96
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v9, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v190, v0, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v9, v17
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v127, v0, v10 :: v_dual_mul_f32 v0, v9, v13
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v23
	scratch_load_b32 v13, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v129, v0, v10 :: v_dual_mul_f32 v0, v9, v15
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v123, v0, v10
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v0, v9, v14 :: v_dual_lshlrev_b32 v9, 16, v16
	scratch_load_b32 v14, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v125, v0, v9
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:104
	scratch_load_b32 v0, off, off offset:108
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v8, 2, v8
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(0)
	ds_store_b8 v11, v0 offset:8192
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	scratch_load_b32 v120, off, off offset:648 ; 4-byte Folded Reload
	v_dual_mov_b32 v115, v7 :: v_dual_mov_b32 v114, v6
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v6, off, off offset:664
	scratch_load_b32 v8, off, off offset:668
	scratch_load_b32 v119, off, off offset:644
	scratch_load_b32 v132, off, off offset:652
	scratch_load_b32 v116, off, off offset:52
	scratch_load_b32 v117, off, off offset:56
	scratch_load_b32 v4, off, off offset:656
	scratch_load_b32 v5, off, off offset:660
	v_dual_mov_b32 v118, v1 :: v_dual_mov_b32 v121, v3
	v_dual_mov_b32 v124, v93 :: v_dual_mov_b32 v135, v91
	v_dual_mov_b32 v126, v94 :: v_dual_mov_b32 v143, v89
	v_dual_mov_b32 v128, v39 :: v_dual_mov_b32 v139, v90
	v_dual_mov_b32 v134, v40 :: v_dual_mov_b32 v141, v226
	v_dual_mov_b32 v136, v92 :: v_dual_mov_b32 v145, v230
	v_mov_b32_e32 v138, v88
	v_mov_b32_e32 v140, v227
	v_mov_b32_e32 v142, v229
	v_mov_b32_e32 v144, v231
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v7, 0xf70, v120
.LBB0_7:                                ; %Flow1436
	.loc	1 168 26 is_stmt 1              ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v0, s7, v120
	s_mul_i32 s3, s33, s7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s1, s0, 0
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v30, off offset:44
	scratch_store_b32 off, v29, off offset:40
	scratch_store_b32 off, v28, off offset:36
	scratch_store_b32 off, v27, off offset:32
	scratch_store_b32 off, v26, off offset:28
	scratch_store_b32 off, v25, off offset:24
	scratch_store_b32 off, v238, off offset:20
	scratch_store_b32 off, v237, off offset:16
	scratch_store_b32 off, v236, off offset:12
	scratch_store_b32 off, v235, off offset:8
	scratch_store_b32 off, v234, off offset:4
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s3, s3, s1
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v1, 0, v14
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v2, 0, v32
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v0, s3, v0, 1
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v3, 0, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v31, off offset:48
	scratch_store_b32 off, v12, off
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v9, 0, 1, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v227, 0 :: v_dual_and_b32 v100, 16, v119
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v69, 0, v8
	buffer_load_u16 v237, v0, s[28:31], 0 offen
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v0, 0, v13
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[58:59], v0 offset:8192
	ds_load_b64 v[56:57], v1 offset:8192
	ds_load_b64 v[45:46], v2 offset:8192
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_b64 v[43:44], v3 offset:8192
	v_cmp_ne_u32_e64 s0, 1, v9
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v217, 0, v7
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v70, 0, v6
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v71, 0, v5
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v130, 0, v4
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v101, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v3, 0xfffff310, v217
	v_add_nc_u32_e32 v4, 0xfffff290, v217
	v_add_nc_u32_e32 v5, 0xfffff410, v217
	v_add_nc_u32_e32 v6, 0xfffff390, v217
	v_add_nc_u32_e32 v35, 0xfffff720, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v32, 0xfffff820, v217
	v_dual_mov_b32 v74, v54 :: v_dual_add_nc_u32 v29, 0xfffffaa0, v217
	v_add_nc_u32_e32 v33, 0xfffff7a0, v217
	v_add_nc_u32_e32 v34, 0xfffff6a0, v217
	v_add_nc_u32_e32 v30, 0xfffff620, v217
	v_add_nc_u32_e32 v31, 0xfffff5a0, v217
	v_add_nc_u32_e32 v36, 0xfffff520, v217
	v_add_nc_u32_e32 v37, 0xfffff4a0, v217
	v_add_nc_u32_e32 v13, 0xfffff110, v217
	v_add_nc_u32_e32 v14, 0xfffff090, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v35, v35
	ds_load_u8 v32, v32
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffff210, v217
	v_add_nc_u32_e32 v16, 0xfffff190, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	ds_load_u8 v16, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v24, 0xfffff8a0, v217
	v_add_nc_u32_e32 v17, 0xfffff490, v217
	v_add_nc_u32_e32 v48, 0xfffff710, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v6, 0xfffff690, v217
	v_add_nc_u32_e32 v40, 0xfffff810, v217
	v_add_nc_u32_e32 v41, 0xfffff790, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v4, v17
	ds_load_u8 v54, v29
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v51, 0xfffff510, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v7, 0xfffffb10, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v37, v36, 0xc0c0004
	ds_load_u8 v36, v24
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffff610, v217
	v_add_nc_u32_e32 v50, 0xfffff590, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v18, v5, 16, v3
	ds_load_u8 v3, v48
	ds_load_u8 v5, v6
	ds_load_u8 v6, v40
	ds_load_u8 v40, v41
	ds_load_u8 v41, v51
	ds_load_u8 v17, v17
	ds_load_u8 v48, v50
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v8, 0xfffffa90, v217
	v_add_nc_u32_e32 v1, 0xfffffc10, v217
	v_add_nc_u32_e32 v2, 0xfffffb90, v217
	v_add_nc_u32_e32 v11, 0xfffff910, v217
	v_add_nc_u32_e32 v12, 0xfffff890, v217
	v_add_nc_u32_e32 v9, 0xfffffa10, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	ds_load_u8 v15, v7
	ds_load_u8 v16, v8
	ds_load_u8 v50, v1
	ds_load_u8 v51, v2
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff990, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v52, v9
	ds_load_u8 v53, v10
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffc30, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v9, v5, v3, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v10, v40, v6, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v40, v4, v41, 0xc0c0004
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v2, s5 :: v_dual_add_nc_u32 v19, 0xfffffbb0, v217
	v_dual_mov_b32 v4, s7 :: v_dual_add_nc_u32 v21, 0xfffff830, v217
	v_dual_mov_b32 v3, s6 :: v_dual_add_nc_u32 v20, 0xfffff7b0, v217
	v_dual_mov_b32 v6, s9 :: v_dual_add_nc_u32 v25, 0xfffffc20, v217
	v_dual_mov_b32 v5, s8 :: v_dual_add_nc_u32 v26, 0xfffffba0, v217
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v27, 0xfffffb20, v217
	v_dual_mov_b32 v7, s10 :: v_dual_add_nc_u32 v22, 0xfffffa20, v217
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v48, v48, v17, 0xc0c0004
	v_lshl_or_b32 v17, v14, 16, v13
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v38, 0xfffff2a0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v41, v10, 16, v9
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v40, v48, 16, v40
	v_perm_b32 v48, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v12, v11, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[58:59], v[1:8] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v42, 0xfffff320, v217
	v_add_nc_u32_e32 v39, 0xfffff420, v217
	v_add_nc_u32_e32 v47, 0xfffff3a0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v38, v38
	ds_load_u8 v42, v42
	ds_load_u8 v39, v39
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v53, v52, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[56:57], v[9:16] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v40, 0xfffff120, v217
	v_add_nc_u32_e32 v41, 0xfffff0a0, v217
	v_add_nc_u32_e32 v49, 0xfffff220, v217
	v_add_nc_u32_e32 v52, 0xfffff1a0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v18, v50, 16, v48
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v50, 0xfffffc90, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v17, 16, v51
	ds_load_u8 v40, v40
	ds_load_u8 v48, v41
	ds_load_u8 v41, v49
	ds_load_u8 v49, v52
	ds_load_u8 v51, v217 offset:16
	ds_load_u8 v50, v50
	v_dual_mov_b32 v72, v55 :: v_dual_add_nc_u32 v23, 0xfffff9a0, v217
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v28, 0xfffff920, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[45:46], v[9:16] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xffffff10, v217
	v_add_nc_u32_e32 v17, 0xffffff90, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v55, v27
	ds_load_u8 v60, v25
	ds_load_u8 v61, v26
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v38, v38, v42, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v42, 0xfffffe90, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v39, v47, v39, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v47, 0xfffffe10, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	v_perm_b32 v34, v34, v35, 0xc0c0004
	v_perm_b32 v35, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v40, v48, v40, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v48, 0xfffffd10, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v41, v49, v41, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v49, 0xfffffd90, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v52, v18
	ds_load_u8 v42, v42
	ds_load_u8 v53, v17
	ds_load_u8 v48, v48
	ds_load_u8 v47, v47
	ds_load_u8 v49, v49
	v_lshl_or_b32 v18, v39, 16, v38
	ds_load_u8 v38, v28
	v_lshl_or_b32 v17, v41, 16, v40
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v39, 0xfffff430, v217
	v_add_nc_u32_e32 v41, 0xfffff330, v217
	v_add_nc_u32_e32 v40, 0xfffff3b0, v217
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[17:18], v[58:59], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v32, 16, v34
	v_lshl_or_b32 v17, v35, 16, v33
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v32, 0xfffff730, v217
	v_add_nc_u32_e32 v33, 0xfffff6b0, v217
	v_add_nc_u32_e32 v35, 0xfffff530, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[17:18], v[56:57], v[24:31] neg_lo:[1,1,0]
	v_perm_b32 v17, v54, v55, 0xc0c0004
	v_perm_b32 v18, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v49, 0xfffffea0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v38, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v38, 0xffffff20, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v49, v49
	ds_load_u8 v38, v38
	v_perm_b32 v37, v42, v52, 0xc0c0004
	v_perm_b32 v42, v53, v51, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v51, 0xfffff2b0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v18, v18, 16, v17
	v_lshl_or_b32 v17, v22, 16, v36
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v36, 0xfffff130, v217
	v_add_nc_u32_e32 v53, 0xfffff0b0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v22, v47, 16, v48
	ds_load_u8 v39, v39
	ds_load_u8 v41, v41
	ds_load_u8 v47, v51
	ds_load_u8 v40, v40
	ds_load_u8 v36, v36
	ds_load_u8 v48, v53
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v50, 0xfffff230, v217
	v_add_nc_u32_e32 v52, 0xfffff1b0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v23, v42, 16, v37
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v37, 0xffffffa0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[17:18], v[45:46], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v18, v217 offset:32
	ds_load_u8 v50, v50
	ds_load_u8 v51, v52
	ds_load_u8 v37, v37
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffca0, v217
	v_add_nc_u32_e32 v42, 0xfffffd20, v217
	v_add_nc_u32_e32 v34, 0xfffff630, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[22:23], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v49, v38, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v38, 0xfffff4b0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v42, v42
	ds_load_u8 v21, v21
	ds_load_u8 v32, v32
	ds_load_u8 v33, v33
	ds_load_u8 v20, v20
	ds_load_u8 v35, v35
	ds_load_u8 v38, v38
	v_mov_b32_e32 v55, v72
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v87, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff350, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v47, 0xfffff5b0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v34, v34
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v40, 0xfffffe20, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v36, v48, v36, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v48, 0xfffffda0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v52, v37, v18, 0xc0c0004
	ds_load_u8 v37, v40
	ds_load_u8 v40, v48
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v51, 0xfffffb30, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v20, v21, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v21, 0xfffff8b0, v217
	v_add_nc_u32_e32 v18, 0xfffffab0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v35, v38, v35, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v38, 0xfffff930, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v42, v17, v42, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffa30, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v32, v33, v32, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v33, 0xfffff9b0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v48, v51
	ds_load_u8 v51, v18
	v_lshl_or_b32 v18, v39, 16, v41
	ds_load_u8 v21, v21
	ds_load_u8 v0, v0
	ds_load_u8 v41, v19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v19, v47, v34, 0xc0c0004
	ds_load_u8 v47, v38
	ds_load_u8 v53, v17
	ds_load_u8 v54, v33
	v_lshl_or_b32 v17, v50, 16, v36
	v_lshl_or_b32 v20, v20, 16, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v84, v11
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v40, v37, 0xc0c0004
	v_lshl_or_b32 v19, v19, 16, v35
	v_wmma_i32_16x16x16_iu4 v[32:39], v[17:18], v[58:59], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v52, 16, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v17, v40, 16, v42
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v40, 0xfffff440, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[32:39], v[19:20], v[56:57], v[32:39] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffff340, v217
	v_add_nc_u32_e32 v20, 0xfffff2c0, v217
	v_add_nc_u32_e32 v42, 0xfffff3c0, v217
	v_add_nc_u32_e32 v49, 0xfffff240, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v48, v51, v48, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v51, 0xfffff0c0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v41, 0xfffff1c0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v21, v47, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v47, 0xfffff140, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v40, v40
	ds_load_u8 v42, v42
	ds_load_u8 v47, v47
	ds_load_u8 v51, v51
	ds_load_u8 v49, v49
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v54, v53, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff2d0, v217
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v86, v9
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff3d0, v217
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v85, v12
	v_cvt_f32_i32_e32 v82, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v80, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v12, 0xfffff250, v217
	v_add_nc_u32_e32 v13, 0xfffff1d0, v217
	v_add_nc_u32_e32 v14, 0xfffff150, v217
	v_add_nc_u32_e32 v15, 0xfffff0d0, v217
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v81, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffff7c0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v40, v42, v40, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v42, 0xfffff740, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v47, v51, v47, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v51, 0xfffff6c0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v41, v49, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v41, 0xfffff840, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v42, v42
	ds_load_u8 v51, v51
	ds_load_u8 v20, v20
	ds_load_u8 v41, v41
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffff5d0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[17:18], v[43:44], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v16, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v77, v27
	v_cvt_f32_i32_e32 v78, v24
	v_cvt_f32_i32_e32 v76, v26
	v_cvt_f32_i32_e32 v75, v29
	v_cvt_f32_i32_e32 v79, v25
	v_cvt_f32_i32_e32 v68, v28
	v_cvt_f32_i32_e32 v72, v31
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v42, v51, v42, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v51, 0xfffff4c0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v52, v20, v41, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffff540, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v41, v51
	ds_load_u8 v20, v20
	v_lshl_or_b32 v61, v52, 16, v42
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v42, 0xfffffdb0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v41, v20, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffff640, v217
	v_add_nc_u32_e32 v41, 0xfffff5c0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v20, v20
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v41, v20, 0xc0c0004
	v_lshl_or_b32 v20, v0, 16, v48
	v_lshl_or_b32 v41, v40, 16, v19
	v_lshl_or_b32 v19, v50, 16, v21
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb40, v217
	v_add_nc_u32_e32 v21, 0xfffffbc0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v40, v49, 16, v47
	v_lshl_or_b32 v60, v53, 16, v51
	v_wmma_i32_16x16x16_iu4 v[32:39], v[19:20], v[45:46], v[32:39] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffffac0, v217
	v_add_nc_u32_e32 v20, 0xfffffc40, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[47:54], v[40:41], v[58:59], v[1:8] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v40, 0xfffff9c0, v217
	v_add_nc_u32_e32 v41, 0xfffffd30, v217
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[47:54], v[60:61], v[56:57], v[47:54] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v61, v30
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffff940, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v21, 0xfffff8c0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v19, v19
	ds_load_u8 v21, v21
	v_lshl_or_b32 v20, v20, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff30, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v21, 0xfffffa40, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v40, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v21, 16, v19
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v21, 0xfffffeb0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[47:54], v[19:20], v[45:46], v[47:54] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffffec0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v21, 0xffffffb0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v21, v21
	ds_load_u8 v40, v217 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v40, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v40, 0xfffffcb0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v41, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v41, 0xfffffe30, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v41, 0xc0c0004
	v_lshl_or_b32 v41, v21, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff40, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v19, v19
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v21, 0xfffffd40, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v40, v42, 16, v40
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v42, 0xfffffdc0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[32:39], v[40:41], v[43:44], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v42, v42
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v60, v33
	v_cvt_f32_i32_e32 v40, v34
	v_cvt_f32_i32_e32 v41, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v33, v39
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_subrev_nc_u32_e32 v19, 64, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v217 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffffcc0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v20, v21, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffffe40, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffff450, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	ds_load_u8 v11, v11
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	ds_load_u8 v12, v12
	ds_load_u8 v13, v13
	v_lshl_or_b32 v19, v42, 16, v21
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v42, v32
	v_cvt_f32_i32_e32 v32, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[47:54], v[19:20], v[43:44], v[47:54] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v28, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v31, v48
	v_cvt_f32_i32_e32 v23, v49
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff850, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff750, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffff6d0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v13, 0xfffff7d0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	ds_load_u8 v15, v15
	ds_load_u8 v11, v11
	ds_load_u8 v13, v13
	v_lshl_or_b32 v18, v0, 16, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb50, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v12, 16, v14
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v25, v50
	v_cvt_f32_i32_e32 v150, v51
	v_cvt_f32_i32_e32 v149, v52
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v111, v53
	v_cvt_f32_i32_e32 v110, v54
	v_mov_b32_e32 v54, v74
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v15, v9, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffff550, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v13, 0xfffff4d0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	v_lshl_or_b32 v20, v11, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffff650, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v15, 16, v13
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[58:59], v[1:8] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffad0, v217
	v_add_nc_u32_e32 v18, 0xfffffbd0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[56:57], v[9:16] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffff9d0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffff8d0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v20, v20
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffc50, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffff950, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffa50, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff50, v217
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffffd50, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffffdd0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[45:46], v[9:16] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffed0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_subrev_nc_u32_e32 v17, 48, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v217 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffcd0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v18, v19, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffe50, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffff360, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v27, v9
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff2e0, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v30, v10
	v_cvt_f32_i32_e32 v24, v12
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff3e0, v217
	v_add_nc_u32_e32 v12, 0xfffff1e0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v21, v11
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff0e0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	ds_load_u8 v12, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v148, v13
	v_cvt_f32_i32_e32 v147, v14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v109, v15
	v_cvt_f32_i32_e32 v108, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff460, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff160, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v10, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffff760, v217
	v_add_nc_u32_e32 v9, 0xfffff6e0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff260, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff860, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v12, 0xfffff5e0, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v11, 16, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff7e0, v217
	v_add_nc_u32_e32 v11, 0xfffff4e0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v12, v12
	ds_load_u8 v10, v10
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff560, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v10, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb60, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff660, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[58:59], v[1:8] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffae0, v217
	v_add_nc_u32_e32 v18, 0xfffffbe0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[56:57], v[9:16] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffff9e0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffff8e0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v20, v20
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffc60, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffff960, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffa60, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff60, v217
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffffd60, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffffde0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[45:46], v[9:16] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffee0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_subrev_nc_u32_e32 v17, 32, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v217 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffce0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v18, v19, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffe60, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffff370, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v26, v9
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff2f0, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v29, v10
	v_cvt_f32_i32_e32 v22, v12
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff3f0, v217
	v_add_nc_u32_e32 v12, 0xfffff1f0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v188, v11
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff0f0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	ds_load_u8 v12, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v146, v13
	v_cvt_f32_i32_e32 v137, v14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v107, v15
	v_cvt_f32_i32_e32 v105, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff470, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff170, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v10, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffff770, v217
	v_add_nc_u32_e32 v9, 0xfffff6f0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff270, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff870, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v12, 0xfffff5f0, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v11, 16, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff7f0, v217
	v_add_nc_u32_e32 v11, 0xfffff4f0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v12, v12
	ds_load_u8 v10, v10
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff570, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v10, v10
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb70, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff670, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[58:59], v[1:8] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffaf0, v217
	v_add_nc_u32_e32 v18, 0xfffffbf0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[56:57], v[9:16] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffff9f0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffff8f0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v20, v20
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffc70, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffff970, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffa70, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff70, v217
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v19, 0xfffffcf0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v20, 0xfffffdf0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[45:46], v[9:16] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffef0, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, -16, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v217 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffd70, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffe70, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffff380, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v19, v9
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff300, v217
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v17, v11
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff100, v217
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v18, v10
	v_cvt_f32_i32_e32 v152, v12
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v12, 0xfffff200, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v112, v13
	v_cvt_f32_i32_e32 v133, v14
	v_cvt_f32_i32_e32 v106, v15
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v12, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v104, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff400, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff180, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff280, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffff780, v217
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff580, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v12, 0xfffff600, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[58:59], v[1:8] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff700, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffff800, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff500, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v10, v11, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff680, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb80, v217
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffff900, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v12, 0xfffffa00, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[56:57], v[1:8] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffffb00, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xfffffc00, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffff980, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffffa80, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v11, 0xfffffd00, v217
	v_add_nc_u32_e32 v12, 0xfffffe00, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[45:46], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v217
	ds_load_u8 v9, v69
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xffffff00, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v0, v9, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v9, 0xffffff80, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffffd80, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v10, 0xfffffe80, v217
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v0, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[43:44], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v9, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v3
	v_cvt_f32_i32_e32 v1, v4
	v_cvt_f32_i32_e32 v102, v5
	v_cvt_f32_i32_e32 v103, v6
	v_cvt_f32_i32_e32 v73, v7
	v_cvt_f32_i32_e32 v101, v8
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v9, off offset:216
	scratch_store_b32 off, v2, off offset:212
	scratch_store_b32 off, v1, off offset:208
	scratch_store_b32 off, v0, off offset:204
	scratch_store_b32 off, v87, off offset:200
	scratch_store_b32 off, v86, off offset:196
	scratch_store_b32 off, v85, off offset:192
	scratch_store_b32 off, v84, off offset:188
	scratch_store_b32 off, v83, off offset:184
	scratch_store_b32 off, v82, off offset:180
	scratch_store_b32 off, v81, off offset:176
	scratch_store_b32 off, v80, off offset:172
	scratch_store_b32 off, v79, off offset:168
	scratch_store_b32 off, v78, off offset:164
	scratch_store_b32 off, v77, off offset:160
	scratch_store_b32 off, v76, off offset:156
	scratch_store_b32 off, v75, off offset:152
	scratch_store_b32 off, v72, off offset:148
	scratch_store_b32 off, v68, off offset:144
	scratch_store_b32 off, v61, off offset:140
	scratch_store_b32 off, v60, off offset:136
	scratch_store_b32 off, v42, off offset:132
	scratch_store_b32 off, v41, off offset:128
	scratch_store_b32 off, v40, off offset:124
	scratch_store_b32 off, v35, off offset:120
	scratch_store_b32 off, v34, off offset:116
	scratch_store_b32 off, v33, off offset:112
	scratch_store_b32 off, v32, off offset:108
	scratch_store_b32 off, v31, off offset:104
	scratch_store_b32 off, v30, off offset:100
	scratch_store_b32 off, v29, off offset:96
	scratch_store_b32 off, v28, off offset:92
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v19, off offset:88
	scratch_store_b32 off, v27, off offset:84
	scratch_store_b32 off, v18, off offset:80
	scratch_store_b32 off, v26, off offset:76
	scratch_store_b32 off, v25, off offset:72
	scratch_store_b32 off, v24, off offset:68
	scratch_store_b32 off, v23, off offset:64
	scratch_store_b32 off, v22, off offset:60
	scratch_store_b32 off, v21, off offset:56
	scratch_store_b32 off, v17, off offset:52
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v0, v217 offset:784
	ds_load_u8 v1, v217 offset:656
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v238, v100
	v_dual_mov_b32 v235, v152 :: v_dual_mov_b32 v152, v143
	v_mov_b32_e32 v143, v134
	v_mov_b32_e32 v134, v114
	v_mov_b32_e32 v114, v101
	v_dual_mov_b32 v236, v188 :: v_dual_mov_b32 v243, v103
	v_dual_mov_b32 v188, v144 :: v_dual_mov_b32 v249, v145
	v_dual_mov_b32 v144, v135 :: v_dual_mov_b32 v145, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v217 offset:1040
	ds_load_u8 v2, v217 offset:912
	v_mov_b32_e32 v135, v115
	v_mov_b32_e32 v115, v102
	v_dual_mov_b32 v137, v117 :: v_dual_mov_b32 v250, v146
	v_dual_mov_b32 v117, v104 :: v_dual_mov_b32 v146, v138
	v_dual_mov_b32 v138, v118 :: v_dual_mov_b32 v113, v147
	v_dual_mov_b32 v118, v105 :: v_dual_mov_b32 v147, v139
	v_mov_b32_e32 v139, v106
	v_mov_b32_e32 v234, v150
	v_mov_b32_e32 v150, v148
	v_dual_mov_b32 v148, v140 :: v_dual_mov_b32 v241, v111
	v_mov_b32_e32 v140, v107
	v_dual_mov_b32 v68, v149 :: v_dual_mov_b32 v49, v64
	v_mov_b32_e32 v149, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_dual_mov_b32 v141, v108 :: v_dual_mov_b32 v242, v109
	v_mov_b32_e32 v53, v62
	v_dual_mov_b32 v240, v110 :: v_dual_mov_b32 v51, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v18, v1, 16, v0
	ds_load_u8 v1, v217 offset:272
	ds_load_u8 v2, v217 offset:144
	ds_load_u8 v19, v217 offset:160
	ds_load_u8 v25, v217 offset:176
	ds_load_u8 v0, v217 offset:192
	v_mov_b32_e32 v48, v67
	v_mov_b32_e32 v50, v63
	v_mov_b32_e32 v52, v66
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v217 offset:528
	ds_load_u8 v3, v217 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v217 offset:1808
	ds_load_u8 v18, v217 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v217 offset:2064
	ds_load_u8 v20, v217 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v217 offset:1296
	ds_load_u8 v20, v217 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v217 offset:1552
	ds_load_u8 v21, v217 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[56:57], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v217 offset:2832
	ds_load_u8 v18, v217 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v217 offset:3088
	ds_load_u8 v20, v217 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v217 offset:2320
	ds_load_u8 v20, v217 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v217 offset:2576
	ds_load_u8 v21, v217 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v217 offset:3856
	ds_load_u8 v18, v217 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v217 offset:4112
	ds_load_u8 v20, v217 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v217 offset:3344
	ds_load_u8 v20, v217 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v217 offset:3600
	ds_load_u8 v21, v217 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[43:44], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v217 offset:800
	ds_load_u8 v18, v217 offset:672
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v227, v9
	v_cvt_f32_i32_e32 v233, v10
	v_cvt_f32_i32_e32 v231, v11
	v_cvt_f32_i32_e32 v232, v12
	v_cvt_f32_i32_e32 v95, v13
	v_cvt_f32_i32_e32 v230, v14
	v_cvt_f32_i32_e32 v90, v15
	v_cvt_f32_i32_e32 v94, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v217 offset:1056
	ds_load_u8 v20, v217 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v18, 16, v17
	ds_load_u8 v17, v217 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v18, v217 offset:544
	ds_load_u8 v19, v217 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v217 offset:1824
	ds_load_u8 v27, v217 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v217 offset:2080
	ds_load_u8 v28, v217 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v217 offset:1312
	ds_load_u8 v28, v217 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v217 offset:1568
	ds_load_u8 v29, v217 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[56:57], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v217 offset:2848
	ds_load_u8 v27, v217 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v217 offset:3104
	ds_load_u8 v28, v217 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v217 offset:2336
	ds_load_u8 v28, v217 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v217 offset:2592
	ds_load_u8 v29, v217 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[45:46], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v217 offset:3872
	ds_load_u8 v27, v217 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v217 offset:4128
	ds_load_u8 v28, v217 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v217 offset:3360
	ds_load_u8 v28, v217 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v217 offset:3616
	ds_load_u8 v29, v217 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[43:44], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v217 offset:816
	ds_load_u8 v27, v217 offset:688
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v92, v17
	v_cvt_f32_i32_e32 v93, v18
	v_cvt_f32_i32_e32 v89, v19
	v_cvt_f32_i32_e32 v91, v20
	v_cvt_f32_i32_e32 v87, v21
	v_cvt_f32_i32_e32 v88, v22
	v_cvt_f32_i32_e32 v83, v23
	v_cvt_f32_i32_e32 v86, v24
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v217 offset:1072
	ds_load_u8 v28, v217 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v27, 16, v26
	ds_load_u8 v26, v217 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v217 offset:560
	ds_load_u8 v27, v217 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v33, v217 offset:1840
	ds_load_u8 v34, v217 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v217 offset:2096
	ds_load_u8 v35, v217 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v217 offset:1328
	ds_load_u8 v35, v217 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v217 offset:1584
	ds_load_u8 v36, v217 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[56:57], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v217 offset:2864
	ds_load_u8 v34, v217 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v217 offset:3120
	ds_load_u8 v35, v217 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v217 offset:2352
	ds_load_u8 v35, v217 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v217 offset:2608
	ds_load_u8 v36, v217 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[45:46], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v217 offset:3888
	ds_load_u8 v34, v217 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v217 offset:4144
	ds_load_u8 v35, v217 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v217 offset:3376
	ds_load_u8 v35, v217 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v217 offset:3632
	ds_load_u8 v36, v217 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[43:44], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v217 offset:832
	ds_load_u8 v34, v217 offset:704
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v84, v25
	v_cvt_f32_i32_e32 v85, v26
	v_cvt_f32_i32_e32 v81, v27
	v_cvt_f32_i32_e32 v82, v28
	v_cvt_f32_i32_e32 v79, v29
	v_cvt_f32_i32_e32 v80, v30
	v_cvt_f32_i32_e32 v77, v31
	v_cvt_f32_i32_e32 v78, v32
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v217 offset:1088
	ds_load_u8 v35, v217 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v34, 16, v33
	ds_load_u8 v33, v217 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	ds_load_u8 v33, v217 offset:576
	ds_load_u8 v34, v217 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:1856
	ds_load_u8 v41, v217 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2112
	ds_load_u8 v42, v217 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:1344
	ds_load_u8 v41, v217 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:1600
	ds_load_u8 v47, v217 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[56:57], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:2880
	ds_load_u8 v41, v217 offset:2752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3136
	ds_load_u8 v42, v217 offset:3008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:2368
	ds_load_u8 v41, v217 offset:2240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2624
	ds_load_u8 v47, v217 offset:2496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[45:46], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:3904
	ds_load_u8 v41, v217 offset:3776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:4160
	ds_load_u8 v42, v217 offset:4032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:3392
	ds_load_u8 v41, v217 offset:3264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3648
	ds_load_u8 v47, v217 offset:3520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[43:44], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:848
	ds_load_u8 v41, v217 offset:720
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v75, v33
	v_cvt_f32_i32_e32 v76, v34
	v_cvt_f32_i32_e32 v229, v35
	v_cvt_f32_i32_e32 v74, v36
	v_cvt_f32_i32_e32 v228, v38
	v_cvt_f32_i32_e32 v72, v39
	v_cvt_f32_i32_e32 v226, v40
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:1104
	ds_load_u8 v42, v217 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:336
	ds_load_u8 v41, v217 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:592
	ds_load_u8 v47, v217 offset:464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[96:103], v[41:42], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:1872
	ds_load_u8 v41, v217 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2128
	ds_load_u8 v42, v217 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:1360
	ds_load_u8 v41, v217 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:1616
	ds_load_u8 v47, v217 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[96:103], v[41:42], v[56:57], v[96:103] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:2896
	ds_load_u8 v41, v217 offset:2768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3152
	ds_load_u8 v42, v217 offset:3024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:2384
	ds_load_u8 v41, v217 offset:2256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2640
	ds_load_u8 v47, v217 offset:2512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[96:103], v[41:42], v[45:46], v[96:103] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:3920
	ds_load_u8 v41, v217 offset:3792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:4176
	ds_load_u8 v42, v217 offset:4048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:3408
	ds_load_u8 v41, v217 offset:3280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3664
	ds_load_u8 v47, v217 offset:3536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[96:103], v[41:42], v[43:44], v[96:103] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:864
	ds_load_u8 v41, v217 offset:736
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v131, v96
	v_cvt_f32_i32_e32 v225, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v96, v100
	v_mov_b32_e32 v100, v238
	v_cvt_f32_i32_e32 v97, v101
	v_mov_b32_e32 v101, v114
	v_mov_b32_e32 v114, v134
	v_dual_mov_b32 v134, v143 :: v_dual_mov_b32 v143, v152
	v_mov_b32_e32 v152, v235
	v_cvt_f32_i32_e32 v39, v102
	v_mov_b32_e32 v102, v115
	v_mov_b32_e32 v115, v135
	v_mov_b32_e32 v135, v144
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:1120
	ds_load_u8 v42, v217 offset:992
	v_mov_b32_e32 v144, v188
	v_mov_b32_e32 v188, v236
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:352
	ds_load_u8 v41, v217 offset:224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:608
	ds_load_u8 v47, v217 offset:480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[104:111], v[41:42], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:1888
	ds_load_u8 v41, v217 offset:1760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2144
	ds_load_u8 v42, v217 offset:2016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:1376
	ds_load_u8 v41, v217 offset:1248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:1632
	ds_load_u8 v47, v217 offset:1504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[104:111], v[41:42], v[56:57], v[104:111] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:2912
	ds_load_u8 v41, v217 offset:2784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3168
	ds_load_u8 v42, v217 offset:3040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:2400
	ds_load_u8 v41, v217 offset:2272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2656
	ds_load_u8 v47, v217 offset:2528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[104:111], v[41:42], v[45:46], v[104:111] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:3936
	ds_load_u8 v41, v217 offset:3808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:4192
	ds_load_u8 v42, v217 offset:4064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:3424
	ds_load_u8 v41, v217 offset:3296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3680
	ds_load_u8 v47, v217 offset:3552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[104:111], v[41:42], v[43:44], v[104:111] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:880
	ds_load_u8 v41, v217 offset:752
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v36, v106
	v_mov_b32_e32 v106, v139
	v_mov_b32_e32 v139, v147
	v_cvt_f32_i32_e32 v40, v107
	v_cvt_f32_i32_e32 v32, v108
	v_mov_b32_e32 v108, v141
	v_cvt_f32_i32_e32 v35, v109
	v_mov_b32_e32 v109, v242
	v_cvt_f32_i32_e32 v21, v110
	v_mov_b32_e32 v110, v240
	v_cvt_f32_i32_e32 v31, v111
	v_mov_b32_e32 v147, v113
	v_mov_b32_e32 v107, v140
	v_dual_mov_b32 v140, v148 :: v_dual_mov_b32 v111, v241
	v_mov_b32_e32 v148, v150
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:1136
	ds_load_u8 v42, v217 offset:1008
	v_dual_mov_b32 v150, v234 :: v_dual_mov_b32 v141, v149
	v_mov_b32_e32 v149, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:368
	ds_load_u8 v41, v217 offset:240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:624
	ds_load_u8 v47, v217 offset:496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[60:67], v[41:42], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:1904
	ds_load_u8 v41, v217 offset:1776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2160
	ds_load_u8 v42, v217 offset:2032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:1392
	ds_load_u8 v41, v217 offset:1264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:1648
	ds_load_u8 v47, v217 offset:1520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[60:67], v[41:42], v[56:57], v[60:67] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:2928
	ds_load_u8 v41, v217 offset:2800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3184
	ds_load_u8 v42, v217 offset:3056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:2416
	ds_load_u8 v41, v217 offset:2288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2672
	ds_load_u8 v47, v217 offset:2544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[60:67], v[41:42], v[45:46], v[60:67] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:3952
	ds_load_u8 v41, v217 offset:3824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:4208
	ds_load_u8 v42, v217 offset:4080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:3440
	ds_load_u8 v41, v217 offset:3312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3696
	ds_load_u8 v47, v217 offset:3568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[60:67], v[41:42], v[43:44], v[60:67] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:896
	ds_load_u8 v41, v217 offset:768
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v23, v60
	v_cvt_f32_i32_e32 v24, v61
	v_cvt_f32_i32_e32 v18, v62
	v_mov_b32_e32 v62, v53
	v_cvt_f32_i32_e32 v22, v63
	v_mov_b32_e32 v63, v50
	v_cvt_f32_i32_e32 v15, v64
	v_mov_b32_e32 v64, v49
	v_cvt_f32_i32_e32 v17, v65
	v_mov_b32_e32 v65, v51
	v_cvt_f32_i32_e32 v10, v66
	v_mov_b32_e32 v66, v52
	v_cvt_f32_i32_e32 v14, v67
	v_mov_b32_e32 v67, v48
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v130 offset:4096
	ds_load_u8 v42, v217 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:384
	ds_load_u8 v41, v217 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:640
	ds_load_u8 v47, v217 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:1920
	ds_load_u8 v41, v217 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v71 offset:4096
	ds_load_u8 v42, v217 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:1408
	ds_load_u8 v41, v217 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:1664
	ds_load_u8 v47, v217 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[56:57], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:2944
	ds_load_u8 v41, v217 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v70 offset:4096
	ds_load_u8 v42, v217 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:2432
	ds_load_u8 v41, v217 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:2688
	ds_load_u8 v47, v217 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v47, v41, 0xc0c0004
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v47, v103
	v_mov_b32_e32 v103, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[45:46], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v217 offset:3968
	ds_load_u8 v41, v217 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v69 offset:4096
	ds_load_u8 v42, v217 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v217 offset:3456
	ds_load_u8 v41, v217 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v217 offset:3712
	ds_load_u8 v45, v217 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v41, v41, 16, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v37
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[43:44], v[1:8] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v41, v104
	v_mov_b32_e32 v104, v117
	v_mov_b32_e32 v117, v137
	v_mov_b32_e32 v137, v145
	v_mov_b32_e32 v145, v249
	v_cvt_f32_i32_e32 v42, v105
	v_mov_b32_e32 v105, v118
	v_mov_b32_e32 v118, v138
	v_mov_b32_e32 v138, v146
	v_mov_b32_e32 v146, v250
	v_cvt_f32_i32_e32 v12, v1
	v_cvt_f32_i32_e32 v13, v2
	v_cvt_f32_i32_e32 v9, v3
	v_cvt_f32_i32_e32 v11, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v2, v8
.LBB0_11:
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s1, s34
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s1, s26, s0
	s_mov_b32 s7, 0x31027000
	.loc	1 208 35 is_stmt 1              ; generate_amdgcn.py:208:35
	s_add_i32 s3, s1, s27
	s_mov_b32 s6, 0x7ffffffe
	v_add_lshl_u32 v5, s3, v132, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s4, s14
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v113, off, off offset:48
	scratch_load_b32 v250, off, off offset:44
	scratch_load_b32 v249, off, off offset:40
	scratch_load_b32 v243, off, off offset:36
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v3, 0x80000000, v5, s2
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v242, off, off offset:32
	scratch_load_b32 v241, off, off offset:28
	scratch_load_b32 v240, off, off offset:24
	scratch_load_b32 v238, off, off offset:20
	scratch_load_b32 v236, off, off offset:12
	scratch_load_b32 v235, off, off offset:8
	scratch_load_b32 v234, off, off offset:4
	buffer_load_u16 v7, v3, s[4:7], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v3.h, v237.l
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v3.l, 0
	scratch_load_b32 v237, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	s_mul_i32 s33, s33, s27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v8, v227, v3
	v_mul_f32_e32 v47, v47, v3
	v_mul_f32_e32 v39, v39, v3
	v_mul_f32_e32 v41, v41, v3
	v_mul_f32_e32 v35, v35, v3
	v_mul_f32_e32 v31, v31, v3
	v_mul_f32_e32 v21, v21, v3
	v_mul_f32_e32 v23, v23, v3
	v_mul_f32_e32 v17, v17, v3
	v_mul_f32_e32 v15, v15, v3
	v_mul_f32_e32 v13, v13, v3
	v_mul_f32_e32 v11, v11, v3
	v_mul_f32_e32 v0, v0, v3
	v_mul_f32_e32 v42, v42, v3
	v_mul_f32_e32 v40, v40, v3
	v_mul_f32_e32 v36, v36, v3
	v_mul_f32_e32 v32, v32, v3
	v_mul_f32_e32 v24, v24, v3
	v_mul_f32_e32 v22, v22, v3
	v_mul_f32_e32 v18, v18, v3
	v_mul_f32_e32 v14, v14, v3
	v_mul_f32_e32 v10, v10, v3
	v_mul_f32_e32 v12, v12, v3
	v_mul_f32_e32 v6, v6, v3
	v_mul_f32_e32 v4, v4, v3
	v_mul_f32_e32 v2, v2, v3
	v_mul_f32_e32 v1, v1, v3
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v7, v8, v7, v113
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v113, v7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v7
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v16
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v8, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v16, null, v8, v8, v7
	v_rcp_f32_e32 v19, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, 1.0
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v7, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v20, v19
	v_fma_f32 v26, -v16, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v19
	v_fma_f32 v16, -v16, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v19, v25
	v_div_fixup_f32 v7, v16, v8, v7
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v8, 4, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v16, v233, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v8, v16, v8, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v8, v255, v8, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v19, null, v16, v16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v25, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v25, v20
	v_div_scale_f32 v25, vcc_lo, v8, v16, v8
	v_mul_f32_e32 v26, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v19, v26, v25
	v_fmac_f32_e32 v26, v27, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v232, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v19, v19, v20, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v20, 12, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v8, v19, v16, v8
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v19, v230, v3
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_add_nc_u32_e32 v16, 20, v5
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v25, v20, v254
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v254, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v16, v19, v16, v252
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v252, v16, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v20, v25, v20
	v_mul_f32_e32 v29, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v26, v29, v28
	v_fmac_f32_e32 v29, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v231, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v253, v27, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v33, -v29, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v33, v30
	v_div_scale_f32 v33, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v34, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v29, v34, v33
	v_fmac_f32_e32 v34, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v34, v33
	v_div_fmas_f32 v29, v29, v30, v34
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v19
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v30
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v30, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v16, null, v30, v30, v19
	v_rcp_f32_e32 v33, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v16, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v19, v30, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v34, v33
	v_fma_f32 v38, -v16, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v33
	v_fma_f32 v16, -v16, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v16, v33, v37
	v_div_fixup_f32 v16, v26, v25, v20
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v25, v95, v3 :: v_dual_add_nc_u32 v20, 16, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v19, v33, v30, v19
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v30, 24, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v33, v90, v3
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	s_clause 0x1
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v25, v20, v251
	v_fma_f32 v30, v33, v30, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v251, v20, s2
	v_cndmask_b32_e64 v30, v249, v30, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v20, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v25
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v26
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v26, v26, v25
	v_rcp_f32_e32 v34, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v20, v34, 1.0
	v_fmac_f32_e32 v34, v37, v34
	v_div_scale_f32 v37, vcc_lo, v25, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v34
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v43, -v20, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v43, v34
	v_fma_f32 v20, -v20, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v20, v34, v38
	v_div_fixup_f32 v20, v29, v28, v27
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v28, v94, v3 :: v_dual_add_nc_u32 v27, 28, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v25, v34, v26, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v26, 36, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v34, v93, v3
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x1
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v250
	v_fma_f32 v26, v34, v26, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v250, v27, s2
	v_cndmask_b32_e64 v34, v248, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	v_mul_f32_e32 v26, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v29
	v_fma_f32 v38, -v29, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v43, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v29, v43, v38
	v_fmac_f32_e32 v43, v44, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v43, v38
	v_div_fmas_f32 v29, v29, v37, v43
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v30
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v37
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v37, null, v33, v33, v30
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v43, v38
	v_div_scale_f32 v43, vcc_lo, v30, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v38
	v_fma_f32 v45, -v37, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v38
	v_fma_f32 v37, -v37, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v38, v44
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v38, 1.0, v26
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v38, v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v26
	v_fma_f32 v44, -v26, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v34, v38, v34
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v26, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v45, v44
	v_div_fmas_f32 v43, v26, v43, v45
	v_div_fixup_f32 v26, v29, v28, v27
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v28, v92, v3 :: v_dual_add_nc_u32 v27, 32, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v247, v27, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v44, 1.0, v27
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v27, null, v44, v44, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v45, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v45, v28
	v_div_scale_f32 v45, vcc_lo, v29, v44, v29
	v_mul_f32_e32 v46, v45, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v27, v46, v45
	v_fmac_f32_e32 v46, v48, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v46, v45
	v_div_fmas_f32 v45, v27, v28, v46
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v28, 44, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v27, v37, v33, v30
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v30, v91, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v29, v45, v44, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v45, v88, v3 :: v_dual_add_nc_u32 v44, 52, v5
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v28, v30, v28, v246
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v246, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v44, v45, v44, v244
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v44, v244, v44, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v45, 0xbfb8aa3b, v44
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v28, null, v33, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v28
	v_fma_f32 v46, -v28, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, vcc_lo, v30, v33, v30
	v_mul_f32_e32 v48, v46, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v28, v48, v46
	v_fmac_f32_e32 v48, v49, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v48, v46
	v_div_fmas_f32 v37, v28, v37, v48
	v_div_fixup_f32 v28, v43, v38, v34
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v34, 40, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v38, v89, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v30, v37, v33, v30
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v33, 48, v5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v37, v87, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	s_clause 0x1
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v34, v38, v34, v245
	v_fma_f32 v33, v37, v33, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v34, v245, v34, s2
	v_cndmask_b32_e64 v37, v243, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v38, 0xbfb8aa3b, v34 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v34
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v43
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v43, null, v38, v38, v34
	v_rcp_f32_e32 v46, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v43, v46, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, vcc_lo, v34, v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v46
	v_fma_f32 v50, -v43, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v46
	v_fma_f32 v43, -v43, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v43, v46, v49
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v34, v43, v38, v34
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v38, v86, v3 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v44
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v46
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v46, null, v45, v45, v44
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v46, v48, 1.0
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v44, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, v49, v48
	v_fma_f32 v51, -v46, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v48
	v_fma_f32 v46, -v46, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v46, v46, v48, v50
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v48, 1.0, v33
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v33, null, v48, v48, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v33
	v_fma_f32 v50, -v33, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v37, v48, v37
	v_mul_f32_e32 v51, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v33, v51, v50
	v_fmac_f32_e32 v51, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v51, v50
	v_div_fmas_f32 v49, v33, v49, v51
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v33, 60, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v37, v49, v48, v37
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v48, v85, v3
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v33, v38, v33, v242
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v38, v242, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v38
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v43
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v43, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v33, null, v43, v43, v38
	v_rcp_f32_e32 v50, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v33, v50, 1.0
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v38, v43, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v50
	v_fma_f32 v53, -v33, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v50
	v_fma_f32 v33, -v33, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v33, v50, v52
	v_div_fixup_f32 v33, v46, v45, v44
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v45, v83, v3 :: v_dual_add_nc_u32 v44, 56, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v38, v50, v43, v38
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v43, 0x44, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	s_clause 0x1
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v44, v45, v44, v54
	v_fma_f32 v43, v48, v43, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v44, v54, v44, s2
	v_cndmask_b32_e64 v43, v241, v43, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v45, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v44
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v46
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v46, null, v45, v45, v44
	v_rcp_f32_e32 v51, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v46, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v44, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v53, v52, v51
	v_fma_f32 v54, -v46, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v51
	v_fma_f32 v46, -v46, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v46, v46, v51, v53
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v49, null, v48, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v51, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v43, v48, v43
	v_mul_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v49, v52, v51
	v_fmac_f32_e32 v52, v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v49, v52, v51
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v51, v84, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v49, v49, v50, v52
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v50, 64, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v50, v51, v50, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v50, v55, v50, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v52, null, v51, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v52
	v_fma_f32 v54, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, vcc_lo, v50, v51, v50
	v_mul_f32_e32 v55, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v52, v55, v54
	v_fmac_f32_e32 v55, v56, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v52, v55, v54
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v54, v82, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v52, v52, v53, v55
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v53, 0x4c, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v53, v54, v53, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v53, v240, v53, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v54, v54, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v55, null, v54, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v55
	v_fma_f32 v57, -v55, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v53, v54, v53
	v_mul_f32_e32 v58, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v55, v58, v57
	v_fmac_f32_e32 v58, v59, v56
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v55, -v55, v58, v57
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v57, v81, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v81, v46, v45, v44
	v_div_fixup_f32 v46, v49, v48, v43
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v48, 0x54, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v55, v55, v56, v58
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v49, v80, v3 :: v_dual_add_nc_u32 v56, 0x48, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v45, v52, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v43, v55, v54, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v56, 0x80000000, v56, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v9, v9, v3
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v56, 16, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v48, v49, v48, v239
	v_fma_f32 v56, v57, v56, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v48, v239, v48, s2
	v_cndmask_b32_e64 v56, v62, v56, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v48
	v_mul_f32_e32 v57, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v58, null, v57, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v60, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v56, v57, v56
	v_mul_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v58, v61, v60
	v_fmac_f32_e32 v61, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v58, v61, v60
	v_div_fmas_f32 v58, v58, v59, v61
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v44, v58, v57, v56
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v49, v49
	v_ldexp_f32 v49, v49, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v50, null, v49, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v50
	v_fma_f32 v52, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v48, v49, v48
	v_mul_f32_e32 v53, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v50, v53, v52
	v_fmac_f32_e32 v53, v54, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v50, v53, v52
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v52, v79, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v50, v50, v51, v53
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v51, 0x50, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v51, v52, v51, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v52, v66, v51, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v53, 1.0, v51
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v51, null, v53, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v51
	v_fma_f32 v55, -v51, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v52, v53, v52
	v_mul_f32_e32 v56, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v51, v56, v55
	v_fmac_f32_e32 v56, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v51, v56, v55
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v55, v78, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v54, v51, v54, v56
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v51, 0x5c, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v52, v54, v53, v52
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v54, v75, v3 :: v_dual_add_nc_u32 v53, 0x60, v5
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v51, v55, v51, v65
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v55, v65, v51, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v53, v54, v53, v238
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v54, v238, v53, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v53, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v56, 1.0, v51
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v51, null, v56, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v51
	v_fma_f32 v58, -v51, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, vcc_lo, v55, v56, v55
	v_mul_f32_e32 v59, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v51, v59, v58
	v_fmac_f32_e32 v59, v60, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v51, v59, v58
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v58, v77, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v57, v51, v57, v59
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v51, 0x58, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v51, v58, v51, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v58, v63, v51, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v59, 1.0, v51
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v51, null, v59, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v51
	v_fma_f32 v61, -v51, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v58, v59, v58
	v_mul_f32_e32 v62, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v51, v62, v61
	v_fmac_f32_e32 v62, v63, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v51, v62, v61
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v61, v76, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v60, v51, v60, v62
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v51, 0x64, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v51, v61, v51, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v61, v64, v51, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v62, 1.0, v51
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v51, null, v62, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v51
	v_fma_f32 v64, -v51, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, vcc_lo, v61, v62, v61
	v_mul_f32_e32 v65, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v51, v65, v64
	v_fmac_f32_e32 v65, v66, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v65, v64
	v_div_fmas_f32 v63, v51, v63, v65
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v51, v50, v49, v48
	v_div_fixup_f32 v50, v57, v56, v55
	v_div_fixup_f32 v49, v60, v59, v58
	v_div_fixup_f32 v48, v63, v62, v61
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v54
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v53, v53, v55
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v56, 1.0, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v53, null, v56, v56, v54
	v_rcp_f32_e32 v55, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v53, v55, 1.0
	v_fmac_f32_e32 v55, v57, v55
	v_div_scale_f32 v57, vcc_lo, v54, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v57, v55
	v_fma_f32 v59, -v53, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v55
	v_fma_f32 v53, -v53, v58, v57
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v57, v74, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v53, v53, v55, v58
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v55, 0x6c, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v56, v53, v56, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v55, v57, v55, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v58, v237, v55, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v55, v55, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v57, null, v55, v55, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v57
	v_fma_f32 v60, -v57, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v58, v55, v58
	v_mul_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v57, v61, v60
	v_fmac_f32_e32 v61, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v57, v61, v60
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v60, v229, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v57, v57, v59, v61
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v59, 0x68, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v59, v60, v59, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v59, v236, v59, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v61, null, v60, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v61
	v_fma_f32 v63, -v61, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v59, v60, v59
	v_mul_f32_e32 v64, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v61, v64, v63
	v_fmac_f32_e32 v64, v65, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v61, -v61, v64, v63
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v63, v228, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v61, v61, v62, v64
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v62, 0x74, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v53, v61, v60, v59
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v62, v63, v62, v67
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v62, v67, v62, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v63, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v62
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v63, v63, v64
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v64, null, v63, v63, v62
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v64, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v62, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v64, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v64, v65, v67
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v64, 0x70, v5
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v0, v64, v235
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v66, v235, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v66
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v66
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v64
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v67, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v67, v67, v66
	v_rcp_f32_e32 v64, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v0, v64, 1.0
	v_fmac_f32_e32 v64, v68, v64
	v_div_scale_f32 v68, vcc_lo, v66, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v64
	v_fma_f32 v70, -v0, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v64
	v_fma_f32 v0, -v0, v69, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v68, v0, v64, v69
	v_div_fixup_f32 v64, v57, v55, v58
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v55, 0x7c, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v57, v226, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v0, v65, v63, v62
	v_div_fixup_f32 v54, v68, v67, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v55, v57, v55, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v55, v234, v55, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v58, null, v57, v57, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v60, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v55, v57, v55
	v_mul_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v58, v61, v60
	v_fmac_f32_e32 v61, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v58, v61, v60
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v60, v72, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v58, v58, v59, v61
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v59, 0x78, v5
	scratch_load_b32 v61, off, off          ; 4-byte Folded Reload
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v59, v60, v59, v61
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v59, v61, v59, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v59
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v59
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v60, v60, v61
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v60, 1.0, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v61, null, v60, v60, v59
	v_rcp_f32_e32 v62, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v61, v62, 1.0
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v59, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v63, v62
	v_fma_f32 v66, -v61, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v62
	v_fma_f32 v61, -v61, v65, v63
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v63, v225, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v61, v61, v62, v65
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v62, 0x84, v5
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v62, v63, v62, v224
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v63, v224, v62, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v63
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v63
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v62, v62, v65
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v65, 1.0, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v62, null, v65, v65, v63
	v_rcp_f32_e32 v66, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v62, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v63, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v62, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v62, -v62, v68, v67
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v67, v131, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v66, v62, v66, v68
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v62, 0x80, v5
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v62, v67, v62, v223
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v67, v223, v62, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v67
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v62, v62, v68
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v68, 1.0, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v62, null, v68, v68, v67
	v_rcp_f32_e32 v69, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v62, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v67, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v62, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v62, -v62, v71, v70
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v70, v99, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v69, v62, v69, v71
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v62, 0x8c, v5
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v62, v70, v62, v222
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v70, v222, v62, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v70
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v62, v62, v71
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v71, 1.0, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v62, null, v71, v71, v70
	v_rcp_f32_e32 v72, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v62, v72, 1.0
	v_fmac_f32_e32 v72, v74, v72
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v72
	v_fma_f32 v76, -v62, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v72
	v_fma_f32 v62, -v62, v75, v74
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v74, v98, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v72, v62, v72, v75
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v62, 0x88, v5
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v62, v74, v62, v221
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v74, v221, v62, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v74
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v62, v62, v75
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v75, 1.0, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v62, null, v75, v75, v74
	v_rcp_f32_e32 v76, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v62, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v74, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v62, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v62, -v62, v78, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v76, v62, v76, v78
	v_div_fixup_f32 v62, v61, v60, v59
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v59, 0x94, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v60, v66, v65, v63
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v63, v97, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v61, v58, v57, v55
	v_div_fixup_f32 v57, v69, v68, v67
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v58, v72, v71, v70
	v_div_fixup_f32 v55, v76, v75, v74
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v59, v63, v59, v220
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v59, v220, v59, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v63, 0xbfb8aa3b, v59
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v59
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v63, v63, v65
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v65, null, v63, v63, v59
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v59, v63, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v67, v96, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v66, 0x90, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v63, v65, v63, v59
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_add_nc_u32_e32 v59, 0x9c, v5
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v66, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v66, v67, v66, v219
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v66, v219, v66, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v47, v47, v59, v218
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v59, v218, v47, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v47, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v68, null, v67, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v66, v67, v66
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v59
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v65
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v69, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v47, null, v69, v69, v59
	v_rcp_f32_e32 v65, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v47, v65, 1.0
	v_fmac_f32_e32 v65, v70, v65
	v_div_scale_f32 v70, vcc_lo, v59, v69, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v65
	v_fma_f32 v72, -v47, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v65
	v_fma_f32 v47, -v47, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v70, v47, v65, v71
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v47, 0x98, v5
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v39, v39, v47, v216
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v39, v216, v39, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v39
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v65
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v65, null, v47, v47, v39
	v_rcp_f32_e32 v71, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v65, v71, 1.0
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v39, v47, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v72, v71
	v_fma_f32 v75, -v65, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v71
	v_fma_f32 v65, -v65, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v65, v71, v74
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v65, 0xa4, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v47, v71, v47, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	buffer_load_u16 v65, v65, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v42, v42, v65, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v72, v215, v42, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v42, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v74, 1.0, v42
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v42, null, v74, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v42
	v_fma_f32 v75, -v42, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v75, v65
	v_div_scale_f32 v75, vcc_lo, v72, v74, v72
	v_mul_f32_e32 v76, v75, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v42, v76, v75
	v_fmac_f32_e32 v76, v77, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v76, v75
	v_div_fmas_f32 v75, v42, v65, v76
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v42, 0xa0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v41, v41, v42, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v76, v214, v41, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v77, 1.0, v41
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v41, null, v77, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v65, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v76, v77, v76
	v_mul_f32_e32 v78, v65, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v41, v78, v65
	v_fmac_f32_e32 v78, v79, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v78, v65
	v_div_fixup_f32 v65, v68, v67, v66
	v_div_fmas_f32 v78, v41, v42, v78
	v_div_fixup_f32 v42, v70, v69, v59
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v59, 0xac, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v41, v75, v74, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v39, v78, v77, v76
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v40, v40, v59, v213
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v40, v213, v40, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v40
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v59, v59, v66
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v66, 1.0, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v59, null, v66, v66, v40
	v_rcp_f32_e32 v67, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v59, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v40, v66, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v59, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v59, -v59, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v59, v67, v69
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v59, 0xa8, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v66, v68, v66, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v36, v36, v59, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v36, v212, v36, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v59, v59, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v67, null, v59, v59, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v67
	v_fma_f32 v70, -v67, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v36, v59, v36
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v67, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v71, v70
	v_div_fmas_f32 v67, v67, v69, v71
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v69, 0xb4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v67, v67, v59, v36
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v35, v35, v69, v211
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v35, v211, v35, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v69, 0xbfb8aa3b, v35
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v35
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v70, null, v69, v69, v35
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v35, v69, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v72, v71
	v_fma_f32 v75, -v70, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v71
	v_fma_f32 v70, -v70, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v70, v70, v71, v74
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v71, 0xb0, v5
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v32, v32, v71, v210
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v71, v210, v32, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v71
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v72
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v72, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v72, v72, v71
	v_rcp_f32_e32 v74, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v32, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v71, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v32, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v32, -v32, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v32, v74, v76
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v32, 0xbc, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v40, v74, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v31, v32, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v209, v31, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v75, 1.0, v32
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v75, v75, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v32
	v_fma_f32 v77, -v32, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v31, v75, v31
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v32, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v78, v77
	v_div_fmas_f32 v76, v32, v76, v78
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v32, 0xb8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v21, v32, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v201, v21, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v77, 1.0, v32
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v77, v77, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v32
	v_fma_f32 v79, -v32, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v21, v77, v21
	v_mul_f32_e32 v80, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v32, v80, v79
	v_fmac_f32_e32 v80, v82, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v80, v79
	v_div_fmas_f32 v78, v32, v78, v80
	v_div_fixup_f32 v32, v70, v69, v35
	v_div_fixup_f32 v35, v76, v75, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v36, v78, v77, v21
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xc4, v5
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v24, v21, v200
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v200, v21, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v21
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v31
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v31, null, v24, v24, v21
	v_rcp_f32_e32 v59, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v31, v59, 1.0
	v_fmac_f32_e32 v59, v68, v59
	v_div_scale_f32 v68, vcc_lo, v21, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v59
	v_fma_f32 v70, -v31, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v59
	v_fma_f32 v31, -v31, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v31, v31, v59, v69
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v59, 0xc0, v5
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v23, v23, v59, v199
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v199, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v23
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v59, v59, v68
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v59, 1.0, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v68, null, v59, v59, v23
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v23, v59, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v68, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v69, 0xcc, v5
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v22, v22, v69, v198
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v198, v22, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v69, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v22
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v70, null, v69, v69, v22
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v22, v69, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v72, v71
	v_fma_f32 v75, -v70, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v71
	v_fma_f32 v70, -v70, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v70, v71, v74
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v70, 0xc8, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v69, v74, v69, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v18, v18, v70, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v197, v18, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v71, null, v70, v70, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v75, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, vcc_lo, v18, v70, v18
	v_mul_f32_e32 v76, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v76, v75
	v_fmac_f32_e32 v76, v77, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v76, v75
	v_div_fmas_f32 v75, v71, v72, v76
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v71, 0xd4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v70, v75, v70, v18
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v17, v17, v71, v196
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v196, v17, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v17
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v76, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v71, null, v76, v76, v17
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v77, v72
	v_div_scale_f32 v77, vcc_lo, v17, v76, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v72
	v_fma_f32 v79, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v72
	v_fma_f32 v71, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v77, v71, v72, v78
	v_div_fixup_f32 v72, v68, v59, v23
	v_div_fixup_f32 v71, v31, v24, v21
	v_div_fixup_f32 v68, v77, v76, v17
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v17, 0xd0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v15, v15, v17, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v195, v15, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v18, null, v17, v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v18
	v_fma_f32 v22, -v18, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v15, v17, v15
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v18, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v23, v22
	v_div_fmas_f32 v18, v18, v21, v23
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xdc, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v14, v14, v21, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v194, v14, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v14, v21, v14
	v_mul_f32_e32 v31, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v22, v31, v24
	v_fmac_f32_e32 v31, v59, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v31, v24
	v_div_fmas_f32 v22, v22, v23, v31
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v23, 0xd8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v10, v10, v23, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v193, v10, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v24, null, v23, v23, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v24
	v_fma_f32 v59, -v24, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v59, v31
	v_div_scale_f32 v59, vcc_lo, v10, v23, v10
	v_mul_f32_e32 v74, v59, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v24, v74, v59
	v_fmac_f32_e32 v74, v75, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v74, v59
	v_div_fmas_f32 v24, v24, v31, v74
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v31, 0xe4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v13, v13, v31, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v192, v13, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v59, null, v31, v31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v59
	v_fma_f32 v75, -v59, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v13, v31, v13
	v_mul_f32_e32 v76, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v59, v76, v75
	v_fmac_f32_e32 v76, v77, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v76, v75
	v_div_fmas_f32 v59, v59, v74, v76
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v74, 0xe0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v12, v12, v74, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v191, v12, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v74, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v74, v74
	v_ldexp_f32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v75, null, v74, v74, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v12, v74, v12
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v75, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v75, -v75, v78, v77
	v_div_fixup_f32 v77, v24, v23, v10
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v10, 0xec, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v23, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v79, v75, v76, v78
	v_div_fixup_f32 v75, v59, v31, v13
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_add_lshl_u32 v31, s1, v132, 1
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v76, v22, v21, v14
	v_div_fixup_f32 v74, v79, v74, v12
	v_div_fixup_f32 v78, v18, v17, v15
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v23, v23, v3 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v10, v11, v10, v190
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v190, v10, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v11, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v10
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v12
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v12, null, v11, v11, v10
	v_rcp_f32_e32 v13, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v12, v13, 1.0
	v_fmac_f32_e32 v13, v14, v13
	v_div_scale_f32 v14, vcc_lo, v10, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v15, v14, v13
	v_fma_f32 v17, -v12, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v17, v13
	v_fma_f32 v12, -v12, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v12, v12, v13, v15
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v13, 0xe8, v5
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v9, v9, v13, v189
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v189, v9, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v17
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v13
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v9, null, v18, v18, v17
	v_rcp_f32_e32 v13, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v9, v13, 1.0
	v_fmac_f32_e32 v13, v14, v13
	v_div_scale_f32 v14, vcc_lo, v17, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v15, v14, v13
	v_fma_f32 v21, -v9, v15, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v15, v21, v13
	v_div_fixup_f32 v21, v12, v11, v10
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v10, off, off offset:200
	scratch_load_b32 v11, off, off offset:196
	scratch_load_b32 v12, off, off offset:184
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v9, -v9, v15, v14
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v14, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v22, v9, v13, v15
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v9, 4, v31
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:180
	scratch_load_b32 v15, off, off offset:164
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v17, v22, v18, v17
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v10, v10, v3
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v11, v11, v3
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v12, v12, v3
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v14, v14, v3
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v13, v13, v3
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v15, v15, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v10, v9, v145
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_or_b32_e32 v10, s0, v132
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v145, v9, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v10, v10, s26, 1
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v8, v9, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_add_nc_u32_e32 v9, 12, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v11, v10, v144
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v11, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v144, v10, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v7, v10, v7
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v10, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v11, v3
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v10, v9, v143
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v10, 8, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v143, v9, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v9, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v16, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v11, v10, v142
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v3.l
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v8, v11, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v8, v142, v10, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e32 v10.h, v3.l
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v7, v10, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v7, v8, v20
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v8.l, v9.h
	v_mov_b16_e32 v8.h, v3.l
	v_cmp_o_f32_e64 s3, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v8, v9, v8, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v9, 20, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v12, v9, v141
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v12, 16, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v141, v9, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v9, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v12, v13, v12, v140
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v7.h
	v_mov_b16_e32 v13.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v140, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v7, v13, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v11.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v11, 28, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v7.l, 0x7fff, v10.h, s0
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v10, v12, v25
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v12, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v13, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v25, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v12, v12, v3
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v13, v13, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v11, v12, v11, v139
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v12, 24, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v139, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v11, v11, v26
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v26, off, off offset:108 ; 4-byte Folded Reload
	v_mul_f32_e32 v25, v25, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v26, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v12, v13, v12, v138
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v9.h
	v_mov_b16_e32 v13.h, v3.l
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v9, v13, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v138, v12, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.l, v10.h
	v_mov_b16_e32 v12.h, v3.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v9, v27
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v27, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e64 s3, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v10, v12, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v10, 36, v31
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v14, v10, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v14, 32, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v136, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v10, v10, v28
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v28, off, off offset:64 ; 4-byte Folded Reload
	v_mul_f32_e32 v27, v27, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.l, v10.h
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v15, v14, v135
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v3.l
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v11, v15, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v135, v14, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v14.l, v9.h
	v_mov_b16_e32 v14.h, v3.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v11, v11, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v29, v149, v3 :: v_dual_and_b32 v14, 1, v14
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v14, v9, v14, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s0
	v_mov_b16_e32 v12.h, v3.l
	v_cndmask_b16 v9.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v13, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v10, v12, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v10, 44, v31
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v13, v3 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v13, v10, v134
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v13, 40, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v134, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v10, v30
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v10.l, 0x7fff, v14.h, s3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v14, 52, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v10.h, 0x7fff, v15.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v15, off, off offset:152 ; 4-byte Folded Reload
	v_mul_f32_e32 v16, v16, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v16, v13, v128
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v16.l, v11.h
	v_mov_b16_e32 v16.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v128, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v16, 1, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v16, v11, v16, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, vcc_lo
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v12, v13, v34
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v19.h
	v_mov_b16_e32 v13.h, v3.l
	v_cndmask_b16 v11.l, 0x7fff, v16.h, s0
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v16, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v34, v147, v3 :: v_dual_and_b32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v13, v19, v13, 0x7fff
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:148
	scratch_load_b32 v20, off, off offset:140
	v_mul_f32_e32 v15, v15, v3
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v15, v14, v126
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v15, 48, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v126, v14, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v14, v14, v33
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	v_mul_f32_e32 v28, v28, v3
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v16, v16, v3
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v19, v19, v3
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v20, v20, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v15, v16, v15, v124
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v16, 60, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v124, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v16, v19, v16, v121
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 56, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v121, v16, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v118
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v12.h
	v_mov_b16_e32 v20.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v118, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v12, v20, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v13.h, vcc_lo
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v13, v15, v37
	v_dual_mul_f32 v15, v16, v38 :: v_dual_mul_f32 v16, v19, v81
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v14.h
	v_mov_b16_e32 v19.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v20.h, s0
	v_cmp_o_f32_e64 s0, v13, v13
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v20, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s1, v15, v15
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v38, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v19, v14, v19, 0x7fff
	v_mov_b16_e32 v14.l, v13.h
	v_mov_b16_e32 v14.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v13, 0x44, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v20, v20, v3
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v38, v3 :: v_dual_lshlrev_b32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v20, v13, v117
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 64, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v117, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v23, v20, v116
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v15.h
	v_mov_b16_e32 v23.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v15, v23, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v116, v20, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v20, v13, v46
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v16.h
	v_mov_b16_e32 v13.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v24, v16, v13, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v16, 0x4c, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v13.h, 0x7fff, v19.h, vcc_lo
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v19, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s0
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v14, v15, v45
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v20.h
	v_mov_b16_e32 v15.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v20, v15, 0x7fff
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v20, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, v19, v3 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v16, v19, v16, v115
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x48, v31
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v115, v16, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v16, v16, v43
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v43, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v114
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v14.h
	v_mov_b16_e32 v20.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v114, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v20, 1, v20
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v20, v14, v20, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v23.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v23, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v14.l, 0x7fff, v24.h, s3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v24, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v15.l, 0x7fff, v20.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x50, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v3
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v23, v20, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v23, 0x54, v31
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v24, v23, v207
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v24.l, v16.h
	v_mov_b16_e32 v24.h, v3.l
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v16, v24, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v208, v20, s2
	v_cndmask_b32_e64 v20, v207, v23, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v19.h
	v_mov_b16_e32 v23.h, v3.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v16, v16, v52 :: v_dual_and_b32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v16, v16
	v_add3_u32 v23, v19, v23, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v20, v51
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x5c, v31
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v51, v102, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v19, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v25, v20, v206
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.l, v19.h
	v_mov_b16_e32 v25.h, v3.l
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v25, v19, v25, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v206, v20, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x58, v31
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v26, v20, v205
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v205, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v26, 1, v26
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v20, v20, v49
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v26, v16, v26, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v24.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v24, 0x64, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v16.l, 0x7fff, v23.h, s0
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v23, v19, v50
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v19.h, 0x7fff, v25.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v25, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v19.l, 0x7fff, v26.h, s3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v26, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_cmp_o_f32_e64 s0, v20, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v50, v103, v3
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v3
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v24, v25, v24, v204
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0x60, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v204, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v24, v24, v48
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v26, v25, v203
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v26.l, v23.h
	v_mov_b16_e32 v26.h, v3.l
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v23, v26, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v203, v25, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.l, v20.h
	v_mov_b16_e32 v25.h, v3.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v23, v23, v56 :: v_dual_mul_f32 v56, v73, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v20, v25, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x6c, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v27, v20, v202
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x68, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v28, v28, v20, v187
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v20.l, 0x7fff, v25.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v202, v27, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v27.l, v24.h
	v_mov_b16_e32 v27.h, v3.l
	v_cndmask_b16 v20.h, 0x7fff, v26.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v187, v28, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v28, v150, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v27, 1, v27
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v25, v25, v64
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v27, v24, v27, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v24, v26, v53
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v26, 0x70, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v53, 1, v100
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v26, v28, v26, v185
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v28, 0x74, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v185, v26, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v26, v26, v54
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v28, v29, v28, v186
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v29.l, v23.h
	v_mov_b16_e32 v29.h, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v186, v28, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v23, v29, 0x7fff
	v_mov_b16_e32 v23.l, v25.h
	v_mov_b16_e32 v23.h, v3.l
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v25, v23, 0x7fff
	v_mov_b16_e32 v23.l, v24.h
	v_mov_b16_e32 v23.h, v3.l
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v24, v23, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v24, v28, v0
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v23.h, 0x7fff, v27.h, vcc_lo
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v27, v111, v3
	v_mul_f32_e32 v28, v110, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v0.l, 0x7fff, v25.h, s3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0x78, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cndmask_b16 v23.l, 0x7fff, v29.h, s0
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v29, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v0.h, 0x7fff, v30.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v30, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v29, v29, v3
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v30, v30, v3 :: v_dual_lshlrev_b32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v27, v25, v184
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v27, 0x7c, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v184, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v25, v25, v62
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v28, v27, v183
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v3.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v24, v28, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v183, v27, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v27.l, v26.h
	v_mov_b16_e32 v27.h, v3.l
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v26, v27, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v26, 0x84, v31
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v26, v29, v26, v182
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0x80, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v182, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v26, v26, v60
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v30, v29, v181
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v24, v61
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e32 v28.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v181, v29, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e32 v29.h, v3.l
	v_mov_b16_e32 v28.l, v30.h
	v_cmp_o_f32_e64 s0, v25, v25
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v27, v27, v57
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v25, v29, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0x8c, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v28, v30, v28, 0x7fff
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v30, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v30, v30, v3 :: v_dual_lshlrev_b32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v30, v30, v25, v180
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0x88, v31
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v33, v33, v25, v179
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v25.h, 0x7fff, v28.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v180, v30, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v30.l, v26.h
	v_mov_b16_e32 v30.h, v3.l
	v_cndmask_b16 v25.l, 0x7fff, v29.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v179, v33, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v33, v148, v3 :: v_dual_and_b32 v30, 1, v30
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v28, v28, v58
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v27, v27
	v_add3_u32 v30, v26, v30, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v26, v29, v55
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0x90, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v28, v28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v55, v101, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v26, v26
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v33, v29, v177
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v33, 0x94, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v177, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v29, v29, v65
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v33, v34, v33, v178
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v34.l, v27.h
	v_mov_b16_e32 v34.h, v3.l
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v27, v34, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v178, v33, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v3.l
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v28, v33, 0x7fff
	v_mov_b16_e32 v28.l, v26.h
	v_mov_b16_e32 v28.h, v3.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v26, v28, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v30.h, vcc_lo
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v27, v63
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v27.h, 0x7fff, v33.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v33, v109, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v28, 0x98, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v26.l, 0x7fff, v34.h, s0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v34, v108, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_cmp_o_f32_e64 s0, v29, v29
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v28, v33, v28, v176
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v33, 0x9c, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v176, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v33, v34, v33, v175
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v34.l, v30.h
	v_mov_b16_e32 v34.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v30, v34, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v175, v33, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v33, v28, v47
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v28.l, v29.h
	v_mov_b16_e32 v28.h, v3.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v30, v42
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v37, v29, v28, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v28, 0xa4, v31
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v29, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v37.l, v30.h
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v29, v29, v3 :: v_dual_lshlrev_b32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v28, v29, v28, v174
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0xa0, v31
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v38, v29, v173
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v38, v174, v28, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v28.l, 0x7fff, v37.h, s0
	v_mov_b16_e32 v37.h, v3.l
	v_cndmask_b16 v28.h, 0x7fff, v34.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_cmp_o_f32_e64 s0, v33, v33
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v34, v38, v41
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v37, 1, v37
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v38, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v173, v29, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v41, v188, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v37, v30, v37, 0x7fff
	v_mov_b16_e32 v30.l, v33.h
	v_mov_b16_e32 v30.h, v3.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v39, v29, v39
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v37.l, v34.h
	v_cndmask_b16 v29.h, 0x7fff, v37.h, vcc_lo
	v_mov_b16_e32 v37.h, v3.l
	v_and_b32_e32 v30, 1, v30
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v30, v33, v30, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v33, 0xac, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v37, v34, v37, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v34, 0xb0, v31
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s0
	v_cmp_o_f32_e64 s0, v39, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	s_clause 0x1
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v38, v38, v3 :: v_dual_lshlrev_b32 v33, 16, v33
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v33, v38, v33, v172
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v38, 0xa8, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v172, v33, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v30, v66
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v30, v30
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v38, v41, v38, v171
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v41, v137, v3
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v171, v38, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v38, v146, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v33, v33, v67
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v34, v38, v34, v169
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v38, 0xb4, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v34, v169, v34, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v34, v34, v40
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v40, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v38, v41, v38, v170
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v41.l, v39.h
	v_mov_b16_e32 v41.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v38, v170, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v39, v41, 0x7fff
	v_mov_b16_e32 v39.l, v30.h
	v_mov_b16_e32 v39.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v30, v39, 0x7fff
	v_mov_b16_e32 v30.l, v33.h
	v_mov_b16_e32 v30.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v42, v33, v30, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v37.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v37, 0xb8, v31
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v33, v38, v32 :: v_dual_mul_f32 v38, v107, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v32.h, 0x7fff, v39.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v39, v105, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v30.l, 0x7fff, v41.h, s0
	v_cmp_o_f32_e64 s0, v34, v34
	v_cndmask_b16 v32.l, 0x7fff, v42.h, s3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v42, v104, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v37, v38, v37, v168
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v38, 0xbc, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v37, v168, v37, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v36, v37, v36
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	v_add_nc_u32_e32 v37, 0xc0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v38, v39, v38, v167
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v39.l, v33.h
	v_mov_b16_e32 v39.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v33, v39, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v167, v38, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v38, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v35, v33, v35
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v33.h, 0x7fff, v39.h, vcc_lo
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v39, off, off offset:52 ; 4-byte Folded Reload
	v_mul_f32_e32 v40, v40, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v38, v38, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v37, v38, v37, v165
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v3
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v37, v165, v37, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v37, v37, v72 :: v_dual_add_nc_u32 v38, 0xc4, v31
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v37, v37
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v38, v40, v38, v166
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v40.l, v34.h
	v_mov_b16_e32 v40.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v34, v40, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v34, v166, v38, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v38.l, v35.h
	v_mov_b16_e32 v38.h, v3.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v33.l, 0x7fff, v40.h, s0
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v34, v34, v71
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v38, 1, v38
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v40, v152, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v34, v34
	v_add3_u32 v38, v35, v38, 0x7fff
	v_mov_b16_e32 v35.l, v36.h
	v_mov_b16_e32 v35.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v36, v35, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v36, 0xc8, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v36, v39, v36, v163
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v39, 0xcc, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v36, v163, v36, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v36, v36, v70
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v39, v40, v39, v164
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v40.l, v34.h
	v_mov_b16_e32 v40.h, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v39, v164, v39, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v34, v40, 0x7fff
	v_mov_b16_e32 v34.l, v37.h
	v_mov_b16_e32 v34.h, v3.l
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v41, v37, v34, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v38.h, vcc_lo
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v37, v39, v69 :: v_dual_add_nc_u32 v38, 0xd4, v31
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v39, v133, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s0
	v_cndmask_b16 v35.h, 0x7fff, v40.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v40, v112, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cmp_o_f32_e64 s0, v36, v36
	v_cndmask_b16 v35.l, 0x7fff, v41.h, s3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v38, v39, v38, v162
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v39, 0xd0, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v38, v162, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v38, v38, v68
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v39, v40, v39, v161
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v40.l, v37.h
	v_mov_b16_e32 v40.h, v3.l
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v37, v40, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v37, v161, v39, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v39.l, v36.h
	v_mov_b16_e32 v39.h, v3.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v37, v37, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v36, v39, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v36, 0xd8, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v106, v3 :: v_dual_lshlrev_b32 v36, 16, v36
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v41, v41, v36, v160
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v36, 0xdc, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v42, v42, v36, v159
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v39, v160, v41, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v41.l, v38.h
	v_mov_b16_e32 v41.h, v3.l
	v_cndmask_b16 v36.h, 0x7fff, v40.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v40, v159, v42, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v42, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v41, 1, v41
	v_cmp_o_f32_e64 s0, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v38, v41, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v38, v39, v77 :: v_dual_mul_f32 v39, v40, v76
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v40, 0xe0, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v39, v39
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v40, v42, v40, v157
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v42, 0xe4, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v40, v157, v40, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v42, v43, v42, v158
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v43.l, v37.h
	v_mov_b16_e32 v43.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v37, v43, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v37, v158, v42, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v42.l, v39.h
	v_mov_b16_e32 v42.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v39, v42, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v39, v37, v75
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v37.l, v38.h
	v_mov_b16_e32 v37.h, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v44, v38, v37, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v41.h, vcc_lo
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v41, v40, v74
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e32 v40.h, v3.l
	v_cndmask_b16 v37.l, 0x7fff, v43.h, s0
	v_cmp_o_f32_e64 s0, v39, v39
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s1
	v_and_b32_e32 v40, 1, v40
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v42, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v38.l, 0x7fff, v44.h, s3
	v_add3_u32 v40, v39, v40, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v39.h, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v41, v39, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v41, 0xec, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v40.l, 0x7fff, v39.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, v42, v3 :: v_dual_lshlrev_b32 v41, 16, v41
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v44, v42, v41, v156
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v41, 0xf4, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v42, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, v42, v3 :: v_dual_lshlrev_b32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v41, v6, v41, v129
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v6, 0xe8, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v41, v129, v41, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v42, v6, v155
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v42, 0xf0, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v155, v6, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v6, v6, v17
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v45, v42, s[4:7], 0 offen
	v_add_nc_u32_e32 v42, 0xfc, v5
	v_add_nc_u32_e32 v5, 0xf8, v5
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v43, v42, s[4:7], 0 offen
	buffer_load_u16 v42, v5, s[4:7], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v4, v4, v45, v127
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v45, 0xf0, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v127, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v22, 0xbfb8aa3b, v4 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v156, v44, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v41
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v2, v2, v43, v125
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v5, v5, v21 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v125, v2, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v39, 0, 0x42800000, s0
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v1, v1, v42, v123
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	v_mul_f32_e32 v21, 0xbfb8aa3b, v2
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v1, v123, v1, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v41
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v5, v5
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_exp_f32_e32 v39, v39
	v_mul_f32_e32 v42, 0xbfb8aa3b, v1
	v_exp_f32_e32 v47, v47
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v42
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v42.l, v5.h
	v_mov_b16_e32 v42.h, v3.l
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v39, v39, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v18, v47, v43
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_exp_f32_e32 v17, v17
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_dual_add_f32 v39, 1.0, v39 :: v_dual_and_b32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_fmac_f32 v43, 0xbfb8aa3b, v1
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v42, v5, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v18, v18, v41
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_ldexp_f32 v17, v17, v48
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v46, 0xf8, v31
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v21, v22
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s1
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v3.h, 0x7fff, v42.h, s3
	v_cmp_eq_u32_e64 s3, 0, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v5, v43, v5
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_fma_f32 v47, -v22, v21, 1.0
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v43.l, v6.h
	v_mov_b16_e32 v43.h, v3.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v21, v47, v21
	v_div_scale_f32 v47, s0, v41, v18, v41
	s_mov_b32 vcc_lo, s0
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v43, 1, v43
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_mul_f32_e32 v49, v47, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v43, v6, v43, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v48, -v22, v49, v47
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v44, 0xf4, v31
	v_add_nc_u32_e32 v31, 0xfc, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v49, v48, v21
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	s_clause 0x2
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v48, null, v39, v39, v4
	v_fma_f32 v22, -v22, v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v47, v48
	v_div_fmas_f32 v21, v22, v21, v49
	v_div_scale_f32 v49, null, v17, v17, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v21, v18, v41
	v_rcp_f32_e32 v6, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v48, v47, 1.0
	v_fmac_f32_e32 v47, v22, v47
	v_div_scale_f32 v22, null, v5, v5, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v49, v6, 1.0
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v6, v21, v6 :: v_dual_lshlrev_b32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v45, v51, v45, v153
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v51, vcc_lo, v4, v39, v4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v45, v153, v45, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_mul_f32_e32 v41, v51, v47
	v_fma_f32 v21, -v48, v41, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v21, v47
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v21, s27, v120
	.loc	1 216 9 is_stmt 0               ; generate_amdgcn.py:216:9
	s_mov_b32 s27, s7
	.loc	1 211 26 is_stmt 1              ; generate_amdgcn.py:211:26
	v_fma_f32 v48, -v48, v41, v51
	v_div_scale_f32 v51, s4, v1, v5, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v57, s33, s26, v21
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v41, v48, v47, v41
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s26, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v4, v41, v39, v4
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v4, v45, v4 :: v_dual_lshlrev_b32 v21, 16, v46
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v56, v21, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, v55, v31, v122
	v_fma_f32 v44, v50, v44, v154
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v50, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v151, v21, s2
	v_cndmask_b32_e64 v31, v122, v31, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v44, v154, v44, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v52, -v22, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s1, v2, v17, v2
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v48, v51, v50
	v_mul_f32_e32 v54, v52, v6
	v_fma_f32 v47, -v49, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v47, v6
	v_fma_f32 v47, -v22, v48, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v49, v54, v52
	v_fmac_f32_e32 v48, v47, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v6, v39, v6, v54
	v_fma_f32 v22, -v22, v48, v51
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v6, v17, v2
	v_div_fmas_f32 v22, v22, v50, v48
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v3.l
	v_mov_b16_e32 v17.h, v3.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v2, v31, v2
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v1, v22, v5, v1
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v5, v44, v18
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v18.h, v3.l
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v18.l, v2.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v1, v21, v1
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v17.l, v5.h
	v_mov_b16_e32 v21.h, v3.l
	v_cndmask_b16 v3.l, 0x7fff, v43.h, s0
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v21.l, v1.h
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v6, v4, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s0, v4, v4
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v17, v5, v17, 0x7fff
	v_add3_u32 v5, v2, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_cmp_o_f32_e64 s2, v1, v1
	v_add3_u32 v4, v1, v21, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v6.h, s0
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s1
	v_cndmask_b32_e64 v5, v7, v9, s3
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s2
	v_cndmask_b32_e64 v4, v9, v7, s3
	v_cndmask_b32_e64 v6, v10, v8, s3
	v_cndmask_b32_e64 v7, v8, v10, s3
	v_cndmask_b32_e64 v8, v13, v11, s3
	v_cndmask_b32_e64 v9, v11, v13, s3
	v_cndmask_b32_e64 v10, v14, v12, s3
	v_cndmask_b32_e64 v11, v12, v14, s3
	v_cndmask_b32_e64 v12, v19, v15, s3
	v_cndmask_b32_e64 v13, v15, v19, s3
	v_cndmask_b32_e64 v14, v20, v16, s3
	v_cndmask_b32_e64 v15, v16, v20, s3
	v_cndmask_b32_e64 v16, v24, v23, s3
	v_cndmask_b32_e64 v17, v23, v24, s3
	v_cndmask_b32_e64 v18, v25, v0, s3
	v_cndmask_b32_e64 v0, v0, v25, s3
	v_cndmask_b32_e64 v19, v28, v26, s3
	v_cndmask_b32_e64 v20, v26, v28, s3
	v_cndmask_b32_e64 v23, v33, v30, s3
	v_cndmask_b32_e64 v24, v30, v33, s3
	v_cndmask_b32_e64 v25, v34, v32, s3
	v_cndmask_b32_e64 v26, v32, v34, s3
	v_mov_b32_e32 v33, 0x5410
	v_mov_b32_e32 v34, 0x7632
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v32, v2, v3, s3
	v_cndmask_b32_e64 v2, v3, v2, s3
	v_permlanex16_b32 v3, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v5, 0x1054, v33, s3
	v_cndmask_b32_e64 v33, 0x3276, v34, s3
	v_permlanex16_b32 v34, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v21, v29, v27, s3
	v_cndmask_b32_e64 v22, v27, v29, s3
	v_lshl_or_b32 v5, v5, 8, v5
	v_lshl_or_b32 v33, v33, 8, v33
	v_cndmask_b32_e64 v27, v37, v35, s3
	v_cndmask_b32_e64 v28, v35, v37, s3
	v_cndmask_b32_e64 v31, v1, v40, s3
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v33, 0x760076, v33
	v_cndmask_b32_e64 v1, v40, v1, s3
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v5, 4, v5
	v_lshl_or_b32 v5, v33, 4, v33
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v30, v36, v38, s3
	v_cndmask_b32_e64 v29, v38, v36, s3
	v_and_b32_e32 v33, 0x5040504, v0
	v_and_b32_e32 v35, 0x7060706, v5
	v_permlanex16_b32 v36, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v4, v33
	v_perm_b32 v1, v3, v4, v35
	v_perm_b32 v2, v7, v6, v33
	v_perm_b32 v3, v7, v6, v35
	v_perm_b32 v6, v11, v10, v33
	v_perm_b32 v7, v11, v10, v35
	v_perm_b32 v10, v15, v14, v33
	v_perm_b32 v11, v15, v14, v35
	v_perm_b32 v14, v34, v18, v33
	v_perm_b32 v15, v34, v18, v35
	v_and_b32_e32 v34, 0x1e0, v119
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_add_lshl_u32 v38, v57, v53, 1
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	v_perm_b32 v4, v9, v8, v33
	v_perm_b32 v5, v9, v8, v35
	v_perm_b32 v8, v13, v12, v33
	v_perm_b32 v9, v13, v12, v35
	v_perm_b32 v12, v17, v16, v33
	v_perm_b32 v13, v17, v16, v35
	v_perm_b32 v16, v20, v19, v33
	v_perm_b32 v17, v20, v19, v35
	v_perm_b32 v18, v22, v21, v33
	v_perm_b32 v19, v22, v21, v35
	v_perm_b32 v20, v24, v23, v33
	v_perm_b32 v21, v24, v23, v35
	v_perm_b32 v22, v26, v25, v33
	v_perm_b32 v23, v26, v25, v35
	v_perm_b32 v24, v28, v27, v33
	v_perm_b32 v25, v28, v27, v35
	v_perm_b32 v26, v30, v29, v33
	v_perm_b32 v27, v30, v29, v35
	v_perm_b32 v28, v36, v31, v33
	v_perm_b32 v29, v36, v31, v35
	v_add_nc_u32_e32 v31, 32, v38
	v_perm_b32 v30, v37, v32, v33
	v_add_nc_u32_e32 v33, 64, v38
	v_cndmask_b32_e32 v34, 0x80000000, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v36, 0x80000000, v31, vcc_lo
	v_perm_b32 v31, v37, v32, v35
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[0:3], v34, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v36, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v33, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v38
	v_add_nc_u32_e32 v1, 0x80, v38
	v_add_nc_u32_e32 v2, 0xa0, v38
	v_add_nc_u32_e32 v3, 0xc0, v38
	v_add_nc_u32_e32 v4, 0xe0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v3, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 676
		.amdhsa_kernarg_size 80
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 676
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 56500
; TotalNumSgprs: 53
; NumVgprs: 256
; ScratchSize: 676
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 676
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 225
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
