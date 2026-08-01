	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v159, v0
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v8, 4, v159
	v_and_b32_e32 v2, 0x70, v8
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 3, v159
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v11, 56, v3
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s5, s5, 2
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[4:5], null, s35, v3, v[2:3]
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
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
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s16, s6, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s6, s6, s5
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s20, s7, 4
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s20
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v0, 5, v159
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s20
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s19, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s19, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s7, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s19, s5, s17
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s22, s35, s7
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s19, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s6, s4, 31
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s5, 7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s4, 0x7f
.Ltmp13:
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v4, s22, s33, v4
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v9, 1, v159
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s18, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s20
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 62, v9
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v10, s7, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s7, v1
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[5:6], null, s18, v0, v[1:2]
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s6, s21, s3
.Ltmp19:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 4
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s18, v10
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v10
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s6, 7
.Ltmp21:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s2, s34, s18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v5, s7, s2, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v10, v5, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[4:7], v4, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v9, v9, v11
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v112, 0, v8
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0xff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v14, 0, v9
	s_waitcnt vmcnt(1)
	ds_store_b16 v14, v10 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[4:7]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b64 s[26:27], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
.LBB0_3:                                ; %Flow601
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[0:1], s[0:1], 0x20
	v_dual_mov_b32 v231, 0 :: v_dual_and_b32 v160, 15, v159
	v_bfe_u32 v4, v159, 4, 1
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v167, 0 :: v_dual_lshlrev_b32 v10, 2, v159
	scratch_store_b32 off, v4, off offset:688 ; 4-byte Folded Spill
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v234, 0, v160
	v_or_b32_e32 v104, 0x3f0, v159
	v_or_b32_e32 v108, 0x7f0, v159
	v_or_b32_e32 v4, 0xbf0, v159
	v_or_b32_e32 v52, 0xff0, v159
	v_or_b32_e32 v51, 0x13f0, v159
	v_or_b32_e32 v50, 0x17f0, v159
	v_or_b32_e32 v49, 0x1bf0, v159
	v_or_b32_e32 v48, 0x1ff0, v159
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v225, 0
	v_mov_b32_e32 v222, 0
	v_mov_b32_e32 v224, 0
	v_mov_b32_e32 v178, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s6, -1
	scratch_store_b32 off, v4, off offset:692 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, 64
	s_lshl_b32 s20, s19, 8
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v12, s7, v3
	s_lshl_b32 s19, s19, 7
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v0, s34, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v12, s35, v12
	v_dual_mov_b32 v225, 0 :: v_dual_and_b32 v4, 56, v10
	v_sub_nc_u32_e32 v15, s18, v1
	v_sub_nc_u32_e32 v3, s18, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v159, off offset:800
	scratch_store_b32 off, v10, off offset:828
	v_lshl_or_b32 v4, v160, 6, v4
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v13, s34, v160
	v_add3_u32 v2, v12, s19, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v15, off offset:700
	scratch_store_b32 off, v14, off offset:696
	v_xor_b32_e32 v5, 8, v4
	v_xor_b32_e32 v6, 16, v4
	v_mad_u64_u32 v[0:1], null, s18, v0, v[1:2]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:704
	scratch_store_b32 off, v160, off offset:804
	v_xor_b32_e32 v7, 24, v4
	v_xor_b32_e32 v8, 32, v4
	v_xor_b32_e32 v9, 40, v4
	v_mov_b32_e32 v219, 0
	scratch_store_b64 off, v[0:1], off offset:708 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v10, 48, v4
	v_xor_b32_e32 v11, 56, v4
	v_mov_b32_e32 v217, 0
	v_mul_lo_u32 v3, s6, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:716
	scratch_store_b32 off, v52, off offset:824
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v0, 0, v5
	s_mov_b32 s16, 0
	s_lshl_b32 s21, s17, 8
	s_lshl_b32 s17, s17, 7
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v0, 0, v6
	s_sub_i32 s45, s20, s21
	v_subrev_nc_u32_e32 v114, s17, v2
	s_mov_b32 s17, s16
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v0, 0, v7
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	v_mov_b32_e32 v209, 0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	v_mov_b32_e32 v207, 0
	s_mov_b32 s22, s16
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	s_mov_b32 s23, s16
	v_mov_b32_e32 v205, 0
	v_dual_mov_b32 v224, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v0, 0, v10
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v191, 0
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v0, 0, v11
	v_mov_b32_e32 v4, s16
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v189, 0
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:748
	scratch_store_b32 off, v51, off offset:820
	v_add_nc_u32_e32 v0, 0, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:752
	scratch_store_b32 off, v50, off offset:816
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v0, 0, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:756
	scratch_store_b32 off, v49, off offset:812
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v0, 0, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:760
	scratch_store_b32 off, v48, off offset:808
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v0, 0, v48
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v5, s17
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v7, s19
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v9, s21
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v11, s23
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v176, 0
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v172, 0
	v_mov_b32_e32 v170, 0
	v_mov_b32_e32 v168, 0
	v_mov_b32_e32 v166, 0
	v_mov_b32_e32 v230, 0
	v_mov_b32_e32 v228, 0
	v_mov_b32_e32 v226, 0
	v_mov_b32_e32 v6, s18
	v_mov_b32_e32 v8, s20
	v_mov_b32_e32 v10, s22
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[12:13]
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s44, s5, 1
	s_lshl_b32 s46, s35, 1
	s_lshl_b32 s47, s35, 6
	s_mov_b32 s40, s12
	s_mov_b32 s41, s13
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b32 off, v0, off offset:764
	scratch_store_b128 off, v[4:7], off offset:768
	scratch_store_b128 off, v[8:11], off offset:784
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	scratch_load_b32 v0, off, off offset:700 ; 4-byte Folded Reload
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v226, off offset:84
	scratch_store_b32 off, v3, off offset:80
	scratch_store_b32 off, v220, off offset:76
	scratch_store_b32 off, v219, off offset:72
	scratch_store_b32 off, v208, off offset:68
	scratch_store_b32 off, v207, off offset:64
	scratch_store_b32 off, v204, off offset:60
	scratch_store_b32 off, v203, off offset:56
	scratch_store_b32 off, v202, off offset:52
	scratch_store_b32 off, v201, off offset:48
	scratch_store_b32 off, v200, off offset:44
	scratch_store_b32 off, v199, off offset:40
	scratch_store_b32 off, v198, off offset:36
	scratch_store_b32 off, v196, off offset:32
	scratch_store_b32 off, v192, off offset:28
	scratch_store_b32 off, v191, off offset:24
	scratch_store_b32 off, v182, off offset:20
	scratch_store_b32 off, v179, off offset:16
	scratch_store_b32 off, v174, off offset:12
	scratch_store_b32 off, v173, off offset:8
	scratch_store_b32 off, v170, off offset:4
	scratch_store_b32 off, v169, off
	v_mov_b32_e32 v226, v231
	v_mov_b32_e32 v110, v104
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s44, s44, -1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc_lo, s7, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	scratch_load_b64 v[0:1], off, off offset:708 ; 8-byte Folded Reload
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	buffer_load_u16 v0, v3, s[40:43], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v1, v234 offset:768
	ds_load_u8 v2, v234 offset:896
	ds_load_u8 v203, v234 offset:912
	ds_load_u8 v3, v234 offset:928
	ds_load_u8 v9, v234 offset:512
	ds_load_u8 v10, v234 offset:640
	ds_load_u8 v18, v234 offset:656
	ds_load_u8 v0, v234 offset:672
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off offset:768
	scratch_load_b128 v[24:27], off, off offset:784
	ds_load_u8 v73, v234 offset:7056
	ds_load_u8 v97, v234 offset:7072
	ds_load_u8 v131, v234 offset:7088
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v3, off offset:412 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:352 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:292 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:992
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:688
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v202, v234 offset:784
	ds_load_u8 v3, v234 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:416 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:832
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:848
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v2, v234
	ds_load_u8 v3, v234 offset:128
	ds_load_u8 v201, v234 offset:144
	ds_load_u8 v4, v234 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:432 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:176
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:704
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:192
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:720
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:316 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:208
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:736
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:224
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:752
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:240
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v204, v234 offset:528
	ds_load_u8 v0, v234 offset:544
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v200, v234 offset:16
	ds_load_u8 v4, v234 offset:32
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:560
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:440 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:48
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:576
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:384 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:64
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:592
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:80
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:608
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:96
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:624
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:112
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_perm_b32 v0, v9, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:256
	ds_load_u8 v4, v234 offset:384
	ds_load_u8 v199, v234 offset:400
	ds_load_u8 v5, v234 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:448 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:432
	v_lshl_or_b32 v9, v3, 16, v2
	ds_load_u8 v0, v234 offset:1664
	ds_load_u8 v1, v234 offset:1536
	ds_load_u8 v2, v234 offset:1520
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:388 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:1648
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:332 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:464
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v1, v234 offset:1920
	ds_load_u8 v2, v234 offset:1792
	ds_load_u8 v3, v234 offset:1776
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:1904
	v_lshl_or_b32 v12, v1, 16, v0
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:496
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:1024
	ds_load_u8 v3, v234 offset:1152
	ds_load_u8 v4, v234 offset:1136
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v198, v234 offset:272
	ds_load_u8 v5, v234 offset:288
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:220 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:452 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:396 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:340 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:336
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:1408
	ds_load_u8 v4, v234 offset:1280
	ds_load_u8 v5, v234 offset:1264
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v3, 16, v2
	ds_load_u8 v0, v234 offset:2688
	ds_load_u8 v1, v234 offset:2560
	ds_load_u8 v2, v234 offset:2576
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:508 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:2544
	scratch_store_b32 off, v5, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:1392
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:2704
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:548 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:2672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v1, v234 offset:2944
	ds_load_u8 v2, v234 offset:2816
	ds_load_u8 v3, v234 offset:2832
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:556 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:2800
	v_lshl_or_b32 v14, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:2960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:564 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:2928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:2176
	ds_load_u8 v3, v234 offset:2048
	ds_load_u8 v4, v234 offset:2064
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:604 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:324 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:2192
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:612 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:2160
	scratch_store_b32 off, v5, off offset:232 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:2432
	ds_load_u8 v4, v234 offset:2304
	ds_load_u8 v5, v234 offset:2320
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v3, 16, v2
	ds_load_u8 v1, v234 offset:3712
	ds_load_u8 v2, v234 offset:3584
	ds_load_u8 v219, v234 offset:3600
	ds_load_u8 v0, v234 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:3568
	scratch_store_b32 off, v5, off offset:616 ; 4-byte Folded Spill
	ds_load_u8 v5, v234 offset:2288
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v196, v234 offset:3728
	ds_load_u8 v0, v234 offset:3744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:3696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:3968
	ds_load_u8 v3, v234 offset:3840
	ds_load_u8 v192, v234 offset:3856
	ds_load_u8 v0, v234 offset:3872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:3824
	v_lshl_or_b32 v17, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v191, v234 offset:3984
	ds_load_u8 v0, v234 offset:4000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:3952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:3200
	ds_load_u8 v4, v234 offset:3072
	ds_load_u8 v182, v234 offset:3088
	ds_load_u8 v0, v234 offset:3104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:3040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	ds_load_u8 v179, v234 offset:3216
	ds_load_u8 v0, v234 offset:3232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:3184
	scratch_store_b32 off, v5, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v220, v234 offset:2448
	ds_load_u8 v5, v234 offset:2416
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:3456
	ds_load_u8 v5, v234 offset:3328
	ds_load_u8 v174, v234 offset:3344
	ds_load_u8 v0, v234 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:3312
	v_lshl_or_b32 v16, v4, 16, v3
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	ds_load_u8 v15, v234 offset:3472
	ds_load_u8 v0, v234 offset:3488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:3440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	ds_load_u8 v1, v234 offset:4736
	ds_load_u8 v2, v234 offset:4608
	ds_load_u8 v170, v234 offset:4624
	ds_load_u8 v0, v234 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4656
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4592
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	ds_load_u8 v163, v234 offset:4752
	ds_load_u8 v0, v234 offset:4768
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4784
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4720
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:4992
	ds_load_u8 v3, v234 offset:4864
	ds_load_u8 v156, v234 offset:4880
	ds_load_u8 v0, v234 offset:4896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4912
	v_lshl_or_b32 v137, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4848
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	ds_load_u8 v152, v234 offset:5008
	ds_load_u8 v255, v234 offset:5024
	ds_load_u8 v0, v234 offset:5040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:4224
	ds_load_u8 v4, v234 offset:4096
	ds_load_u8 v144, v234 offset:4112
	ds_load_u8 v249, v234 offset:4128
	ds_load_u8 v0, v234 offset:4144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4064
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	ds_load_u8 v127, v234 offset:4240
	ds_load_u8 v246, v234 offset:4256
	ds_load_u8 v0, v234 offset:4272
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4208
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:4480
	ds_load_u8 v5, v234 offset:4352
	ds_load_u8 v39, v234 offset:4368
	ds_load_u8 v242, v234 offset:4384
	ds_load_u8 v0, v234 offset:4400
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4336
	v_lshl_or_b32 v136, v4, 16, v3
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	ds_load_u8 v38, v234 offset:4496
	ds_load_u8 v173, v234 offset:4512
	ds_load_u8 v0, v234 offset:4528
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:4464
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	ds_load_u8 v1, v234 offset:5760
	ds_load_u8 v2, v234 offset:5632
	ds_load_u8 v126, v234 offset:5648
	ds_load_u8 v169, v234 offset:5664
	ds_load_u8 v0, v234 offset:5680
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	ds_load_u8 v113, v234 offset:5776
	ds_load_u8 v160, v234 offset:5792
	ds_load_u8 v0, v234 offset:5808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:6016
	ds_load_u8 v3, v234 offset:5888
	ds_load_u8 v107, v234 offset:5904
	ds_load_u8 v155, v234 offset:5920
	ds_load_u8 v253, v234 offset:5936
	ds_load_u8 v0, v234 offset:5952
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5872
	v_lshl_or_b32 v139, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	ds_load_u8 v105, v234 offset:6032
	ds_load_u8 v149, v234 offset:6048
	ds_load_u8 v250, v234 offset:6064
	ds_load_u8 v0, v234 offset:6080
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:6000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:5248
	ds_load_u8 v4, v234 offset:5120
	ds_load_u8 v96, v234 offset:5136
	ds_load_u8 v134, v234 offset:5152
	ds_load_u8 v239, v234 offset:5168
	ds_load_u8 v0, v234 offset:5184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5088
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	ds_load_u8 v91, v234 offset:5264
	ds_load_u8 v147, v234 offset:5280
	ds_load_u8 v238, v234 offset:5296
	ds_load_u8 v0, v234 offset:5312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:5504
	ds_load_u8 v5, v234 offset:5376
	ds_load_u8 v56, v234 offset:5392
	ds_load_u8 v130, v234 offset:5408
	ds_load_u8 v236, v234 offset:5424
	ds_load_u8 v0, v234 offset:5440
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5360
	v_lshl_or_b32 v138, v4, 16, v3
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	ds_load_u8 v55, v234 offset:5520
	ds_load_u8 v129, v234 offset:5536
	ds_load_u8 v232, v234 offset:5552
	ds_load_u8 v0, v234 offset:5568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:5488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	ds_load_u8 v1, v234 offset:6784
	ds_load_u8 v2, v234 offset:6656
	ds_load_u8 v90, v234 offset:6672
	ds_load_u8 v125, v234 offset:6688
	ds_load_u8 v241, v234 offset:6704
	ds_load_u8 v0, v234 offset:6720
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:6736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:6640
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	ds_load_u8 v75, v234 offset:6800
	ds_load_u8 v109, v234 offset:6816
	ds_load_u8 v145, v234 offset:6832
	ds_load_u8 v244, v234 offset:6848
	ds_load_u8 v0, v234 offset:6864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:6768
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:7040
	ds_load_u8 v3, v234 offset:6912
	ds_load_u8 v72, v234 offset:6928
	ds_load_u8 v99, v234 offset:6944
	ds_load_u8 v133, v234 offset:6960
	ds_load_u8 v235, v234 offset:6976
	ds_load_u8 v0, v234 offset:6992
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:6896
	v_lshl_or_b32 v141, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	ds_load_u8 v231, v234 offset:7104
	ds_load_u8 v0, v234 offset:7120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:7024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:6272
	ds_load_u8 v4, v234 offset:6144
	ds_load_u8 v65, v234 offset:6160
	ds_load_u8 v88, v234 offset:6176
	ds_load_u8 v121, v234 offset:6192
	ds_load_u8 v161, v234 offset:6208
	ds_load_u8 v254, v234 offset:6224
	ds_load_u8 v0, v234 offset:6112
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	ds_load_u8 v64, v234 offset:6288
	ds_load_u8 v87, v234 offset:6304
	ds_load_u8 v120, v234 offset:6320
	ds_load_u8 v164, v234 offset:6336
	ds_load_u8 v251, v234 offset:6352
	ds_load_u8 v0, v234 offset:6256
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:6528
	ds_load_u8 v5, v234 offset:6400
	ds_load_u8 v54, v234 offset:6416
	ds_load_u8 v85, v234 offset:6432
	ds_load_u8 v118, v234 offset:6448
	ds_load_u8 v154, v234 offset:6464
	ds_load_u8 v248, v234 offset:6480
	ds_load_u8 v0, v234 offset:6384
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v4, 16, v3
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	ds_load_u8 v50, v234 offset:6544
	ds_load_u8 v82, v234 offset:6560
	ds_load_u8 v117, v234 offset:6576
	ds_load_u8 v151, v234 offset:6592
	ds_load_u8 v252, v234 offset:6608
	ds_load_u8 v0, v234 offset:6512
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	ds_load_u8 v1, v234 offset:7808
	ds_load_u8 v2, v234 offset:7680
	ds_load_u8 v49, v234 offset:7696
	ds_load_u8 v79, v234 offset:7712
	ds_load_u8 v115, v234 offset:7728
	ds_load_u8 v148, v234 offset:7744
	ds_load_u8 v240, v234 offset:7760
	ds_load_u8 v0, v234 offset:7776
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	ds_load_u8 v0, v234 offset:7664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	ds_load_u8 v47, v234 offset:7824
	ds_load_u8 v67, v234 offset:7840
	ds_load_u8 v92, v234 offset:7856
	ds_load_u8 v122, v234 offset:7872
	ds_load_u8 v157, v234 offset:7888
	ds_load_u8 v245, v234 offset:7904
	ds_load_u8 v0, v234 offset:7792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	ds_load_u8 v2, v234 offset:8064
	ds_load_u8 v3, v234 offset:7936
	ds_load_u8 v43, v234 offset:7952
	ds_load_u8 v180, v234 offset:7968
	ds_load_u8 v86, v234 offset:7984
	ds_load_u8 v116, v234 offset:8000
	ds_load_u8 v146, v234 offset:8016
	ds_load_u8 v237, v234 offset:8032
	ds_load_u8 v0, v234 offset:7920
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v2, 16, v1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	scratch_load_b32 v1, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	ds_load_u8 v37, v234 offset:8080
	ds_load_u8 v61, v234 offset:8096
	ds_load_u8 v81, v234 offset:8112
	ds_load_u8 v159, v234 offset:8128
	ds_load_u8 v135, v234 offset:8144
	ds_load_u8 v233, v234 offset:8160
	ds_load_u8 v0, v234 offset:8048
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v3, v234 offset:7296
	ds_load_u8 v4, v234 offset:7168
	ds_load_u8 v36, v234 offset:7184
	ds_load_u8 v57, v234 offset:7200
	ds_load_u8 v74, v234 offset:7216
	ds_load_u8 v101, v234 offset:7232
	ds_load_u8 v128, v234 offset:7248
	ds_load_u8 v162, v234 offset:7264
	ds_load_u8 v158, v234 offset:7136
	ds_load_u8 v35, v234 offset:7312
	ds_load_u8 v58, v234 offset:7328
	ds_load_u8 v76, v234 offset:7344
	ds_load_u8 v98, v234 offset:7360
	ds_load_u8 v124, v234 offset:7376
	ds_load_u8 v165, v234 offset:7392
	ds_load_u8 v0, v234 offset:7280
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	ds_load_u8 v4, v234 offset:7552
	ds_load_u8 v5, v234 offset:7424
	ds_load_u8 v34, v234 offset:7440
	ds_load_u8 v51, v234 offset:7456
	ds_load_u8 v77, v234 offset:7472
	ds_load_u8 v94, v234 offset:7488
	ds_load_u8 v123, v234 offset:7504
	ds_load_u8 v153, v234 offset:7520
	ds_load_u8 v247, v234 offset:7408
	ds_load_u8 v0, v234 offset:7568
	ds_load_u8 v48, v234 offset:7584
	ds_load_u8 v78, v234 offset:7600
	ds_load_u8 v93, v234 offset:7616
	ds_load_u8 v132, v234 offset:7632
	ds_load_u8 v150, v234 offset:7648
	ds_load_u8 v243, v234 offset:7536
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v4, 16, v3
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[30:31], v1 offset:8192
	scratch_load_b32 v1, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[32:33], v1 offset:8192
	scratch_load_b32 v1, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[28:29], v1 offset:8192
	scratch_load_b32 v1, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[70:71], v1 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	scratch_load_b32 v9, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[16:17], v[70:71], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[68:69], v9 offset:8192
	scratch_load_b32 v9, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[136:137], v[68:69], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[62:63], v9 offset:8192
	scratch_load_b32 v9, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[138:139], v[62:63], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v139, v234 offset:1248
	ds_load_u8 v16, v234 offset:1056
	ds_load_u8 v42, v234 offset:1072
	ds_load_u8 v111, v234 offset:1088
	ds_load_u8 v104, v234 offset:1104
	ds_load_u8 v137, v234 offset:1120
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[52:53], v9 offset:8192
	scratch_load_b32 v9, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[140:141], v[52:53], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[207:208], v9 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[142:143], v[207:208], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v143, v1
	v_cvt_f32_i32_e32 v1, v2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v2, v202, v203, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v3, v200, v201, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v4, v198, v199, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v5
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v6
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v7
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v8, v4, 16, v3
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_perm_b32 v1, v204, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v2, 16, v1
	ds_load_u8 v1, v234 offset:1552
	ds_load_u8 v2, v234 offset:1680
	ds_load_u8 v198, v234 offset:1696
	ds_load_u8 v199, v234 offset:1712
	ds_load_u8 v200, v234 offset:1728
	ds_load_u8 v201, v234 offset:1744
	ds_load_u8 v202, v234 offset:1760
	ds_load_u8 v203, v234 offset:1568
	ds_load_u8 v204, v234 offset:1584
	ds_load_u8 v80, v234 offset:1600
	ds_load_u8 v89, v234 offset:1616
	ds_load_u8 v119, v234 offset:1632
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v234 offset:1808
	ds_load_u8 v3, v234 offset:1936
	ds_load_u8 v19, v234 offset:1952
	ds_load_u8 v46, v234 offset:1968
	ds_load_u8 v66, v234 offset:1984
	ds_load_u8 v84, v234 offset:2000
	ds_load_u8 v18, v234 offset:1824
	ds_load_u8 v45, v234 offset:1840
	ds_load_u8 v83, v234 offset:1856
	ds_load_u8 v95, v234 offset:1872
	ds_load_u8 v141, v234 offset:1888
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v234 offset:1040
	ds_load_u8 v4, v234 offset:1168
	ds_load_u8 v17, v234 offset:1184
	ds_load_u8 v44, v234 offset:1200
	ds_load_u8 v102, v234 offset:1216
	ds_load_u8 v103, v234 offset:1232
	v_lshl_or_b32 v11, v2, 16, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:508
	scratch_load_b32 v2, off, off offset:548
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	ds_load_u8 v4, v234 offset:1296
	ds_load_u8 v5, v234 offset:1424
	ds_load_u8 v100, v234 offset:1440
	ds_load_u8 v41, v234 offset:1456
	ds_load_u8 v60, v234 offset:1472
	ds_load_u8 v138, v234 offset:1488
	ds_load_u8 v106, v234 offset:1504
	ds_load_u8 v229, v234 offset:1312
	ds_load_u8 v40, v234 offset:1328
	ds_load_u8 v59, v234 offset:1344
	ds_load_u8 v136, v234 offset:1360
	ds_load_u8 v142, v234 offset:1376
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v4, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v4, 16, v3
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:556
	scratch_load_b32 v3, off, off offset:564
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:604
	scratch_load_b32 v4, off, off offset:612
	v_lshl_or_b32 v13, v2, 16, v1
	v_perm_b32 v1, v219, v196, 0xc0c0004
	v_perm_b32 v2, v192, v191, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v4, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v4, 16, v3
	v_perm_b32 v3, v182, v179, 0xc0c0004
	v_perm_b32 v4, v174, v15, 0xc0c0004
	v_lshl_or_b32 v15, v2, 16, v1
	v_perm_b32 v1, v170, v163, 0xc0c0004
	v_perm_b32 v2, v156, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v14, v4, 16, v3
	v_perm_b32 v3, v144, v127, 0xc0c0004
	v_perm_b32 v4, v39, v38, 0xc0c0004
	v_lshl_or_b32 v39, v2, 16, v1
	v_perm_b32 v1, v126, v113, 0xc0c0004
	v_perm_b32 v2, v107, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v38, v4, 16, v3
	v_perm_b32 v3, v96, v91, 0xc0c0004
	v_perm_b32 v4, v56, v55, 0xc0c0004
	v_lshl_or_b32 v56, v2, 16, v1
	v_perm_b32 v1, v90, v75, 0xc0c0004
	v_perm_b32 v2, v72, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v55, v4, 16, v3
	v_perm_b32 v3, v65, v64, 0xc0c0004
	v_perm_b32 v4, v54, v50, 0xc0c0004
	v_lshl_or_b32 v91, v2, 16, v1
	v_perm_b32 v1, v49, v47, 0xc0c0004
	v_perm_b32 v2, v43, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v90, v4, 16, v3
	v_perm_b32 v3, v36, v35, 0xc0c0004
	v_lshl_or_b32 v127, v2, 16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v0, 16, v3
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[32:33], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[12:13], v[28:29], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[14:15], v[70:71], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[38:39], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[55:56], v[62:63], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[90:91], v[52:53], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[126:127], v[207:208], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v127, v0
	v_cvt_f32_i32_e32 v126, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:96
	scratch_load_b32 v1, off, off offset:408
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v90, v2
	v_cvt_f32_i32_e32 v91, v3
	v_cvt_f32_i32_e32 v163, v4
	v_cvt_f32_i32_e32 v144, v5
	v_cvt_f32_i32_e32 v152, v6
	v_cvt_f32_i32_e32 v140, v7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:412
	scratch_load_b32 v2, off, off offset:416
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:432
	scratch_load_b32 v3, off, off offset:440
	v_lshl_or_b32 v9, v1, 16, v0
	v_perm_b32 v0, v203, v198, 0xc0c0004
	v_perm_b32 v1, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:448
	scratch_load_b32 v4, off, off offset:452
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v16, v17, 0xc0c0004
	ds_load_u8 v0, v234 offset:2592
	ds_load_u8 v1, v234 offset:2720
	ds_load_u8 v16, v234 offset:2736
	ds_load_u8 v17, v234 offset:2752
	ds_load_u8 v18, v234 offset:2768
	ds_load_u8 v19, v234 offset:2784
	ds_load_u8 v34, v234 offset:2608
	ds_load_u8 v35, v234 offset:2624
	ds_load_u8 v43, v234 offset:2640
	ds_load_u8 v47, v234 offset:2656
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v229, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v3, 16, v2
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	ds_load_u8 v1, v234 offset:2848
	ds_load_u8 v2, v234 offset:2976
	ds_load_u8 v36, v234 offset:2992
	ds_load_u8 v39, v234 offset:3008
	ds_load_u8 v72, v234 offset:3024
	ds_load_u8 v65, v234 offset:2864
	ds_load_u8 v64, v234 offset:2880
	ds_load_u8 v73, v234 offset:2896
	ds_load_u8 v75, v234 offset:2912
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v234 offset:2080
	ds_load_u8 v3, v234 offset:2208
	ds_load_u8 v96, v234 offset:2224
	ds_load_u8 v105, v234 offset:2240
	ds_load_u8 v170, v234 offset:2256
	ds_load_u8 v174, v234 offset:2272
	ds_load_u8 v100, v234 offset:2096
	ds_load_u8 v179, v234 offset:2112
	ds_load_u8 v182, v234 offset:2128
	ds_load_u8 v191, v234 offset:2144
	v_lshl_or_b32 v13, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:492
	scratch_load_b32 v1, off, off offset:520
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v234 offset:2336
	ds_load_u8 v4, v234 offset:2464
	ds_load_u8 v107, v234 offset:2480
	ds_load_u8 v192, v234 offset:2496
	ds_load_u8 v196, v234 offset:2512
	ds_load_u8 v198, v234 offset:2528
	ds_load_u8 v113, v234 offset:2352
	ds_load_u8 v203, v234 offset:2368
	ds_load_u8 v219, v234 offset:2384
	ds_load_u8 v220, v234 offset:2400
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:524
	scratch_load_b32 v2, off, off offset:536
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:552
	scratch_load_b32 v3, off, off offset:560
	v_lshl_or_b32 v15, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:596
	scratch_load_b32 v1, off, off offset:668
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:576
	scratch_load_b32 v4, off, off offset:584
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	scratch_load_b32 v1, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v14, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v255, 0xc0c0004
	v_perm_b32 v2, v249, v246, 0xc0c0004
	v_perm_b32 v3, v242, v173, 0xc0c0004
	v_lshl_or_b32 v38, v1, 16, v0
	v_perm_b32 v0, v169, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v37, v3, 16, v2
	v_perm_b32 v1, v155, v149, 0xc0c0004
	v_perm_b32 v2, v134, v147, 0xc0c0004
	v_perm_b32 v3, v130, v129, 0xc0c0004
	v_lshl_or_b32 v50, v1, 16, v0
	v_perm_b32 v0, v125, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v49, v3, 16, v2
	v_perm_b32 v1, v99, v97, 0xc0c0004
	v_perm_b32 v2, v88, v87, 0xc0c0004
	v_perm_b32 v3, v85, v82, 0xc0c0004
	v_lshl_or_b32 v55, v1, 16, v0
	v_perm_b32 v0, v79, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v54, v3, 16, v2
	v_perm_b32 v1, v180, v61, 0xc0c0004
	v_perm_b32 v2, v57, v58, 0xc0c0004
	v_perm_b32 v3, v51, v48, 0xc0c0004
	v_lshl_or_b32 v57, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[32:33], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[12:13], v[28:29], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[14:15], v[70:71], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[37:38], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[62:63], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[54:55], v[52:53], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[56:57], v[207:208], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v242, v0
	v_cvt_f32_i32_e32 v149, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:100
	scratch_load_b32 v1, off, off offset:348
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v125, v2
	v_cvt_f32_i32_e32 v129, v3
	v_cvt_f32_i32_e32 v134, v4
	v_cvt_f32_i32_e32 v229, v5
	v_cvt_f32_i32_e32 v147, v6
	v_cvt_f32_i32_e32 v160, v7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:352
	scratch_load_b32 v2, off, off offset:360
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:372
	scratch_load_b32 v3, off, off offset:384
	v_lshl_or_b32 v9, v1, 16, v0
	v_perm_b32 v0, v204, v199, 0xc0c0004
	v_perm_b32 v1, v45, v46, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v204, off, off offset:60
	scratch_load_b32 v199, off, off offset:40
	v_lshl_or_b32 v11, v1, 16, v0
	v_perm_b32 v0, v34, v16, 0xc0c0004
	v_perm_b32 v1, v65, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v1, 16, v0
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:388
	scratch_load_b32 v4, off, off offset:396
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v42, v44, 0xc0c0004
	v_perm_b32 v3, v40, v41, 0xc0c0004
	ds_load_u8 v0, v234 offset:3632
	ds_load_u8 v1, v234 offset:3760
	ds_load_u8 v16, v234 offset:3776
	ds_load_u8 v34, v234 offset:3792
	ds_load_u8 v40, v234 offset:3808
	ds_load_u8 v36, v234 offset:3648
	ds_load_u8 v41, v234 offset:3664
	ds_load_u8 v42, v234 offset:3680
	v_lshl_or_b32 v10, v3, 16, v2
	v_perm_b32 v2, v100, v96, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v3, v113, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v3, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	ds_load_u8 v1, v234 offset:3888
	ds_load_u8 v2, v234 offset:4016
	ds_load_u8 v46, v234 offset:4032
	ds_load_u8 v48, v234 offset:4048
	ds_load_u8 v51, v234 offset:3904
	ds_load_u8 v97, v234 offset:3920
	ds_load_u8 v99, v234 offset:3936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v234 offset:3120
	ds_load_u8 v3, v234 offset:3248
	ds_load_u8 v56, v234 offset:3264
	ds_load_u8 v57, v234 offset:3280
	ds_load_u8 v65, v234 offset:3296
	ds_load_u8 v67, v234 offset:3136
	ds_load_u8 v79, v234 offset:3152
	ds_load_u8 v85, v234 offset:3168
	v_lshl_or_b32 v15, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:484
	scratch_load_b32 v1, off, off offset:516
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v234 offset:3376
	ds_load_u8 v4, v234 offset:3504
	ds_load_u8 v82, v234 offset:3520
	ds_load_u8 v87, v234 offset:3536
	ds_load_u8 v156, v234 offset:3552
	ds_load_u8 v88, v234 offset:3392
	ds_load_u8 v169, v234 offset:3408
	ds_load_u8 v173, v234 offset:3424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:532
	scratch_load_b32 v2, off, off offset:540
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:568
	scratch_load_b32 v3, off, off offset:580
	v_lshl_or_b32 v38, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:620
	scratch_load_b32 v1, off, off offset:676
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:592
	scratch_load_b32 v4, off, off offset:608
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	v_perm_b32 v1, v253, v250, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v1, 16, v0
	v_perm_b32 v0, v241, v145, 0xc0c0004
	v_perm_b32 v1, v133, v131, 0xc0c0004
	v_lshl_or_b32 v50, v1, 16, v0
	v_perm_b32 v0, v115, v92, 0xc0c0004
	v_perm_b32 v1, v86, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	v_lshl_or_b32 v37, v3, 16, v2
	v_perm_b32 v2, v239, v238, 0xc0c0004
	v_perm_b32 v3, v236, v232, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v3, 16, v2
	v_perm_b32 v2, v121, v120, 0xc0c0004
	v_perm_b32 v3, v118, v117, 0xc0c0004
	v_lshl_or_b32 v49, v3, 16, v2
	v_perm_b32 v2, v74, v76, 0xc0c0004
	v_perm_b32 v3, v77, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[32:33], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[12:13], v[28:29], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[14:15], v[70:71], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[37:38], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[44:45], v[62:63], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[52:53], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[54:55], v[207:208], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v107, v0
	v_cvt_f32_i32_e32 v113, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:104
	scratch_load_b32 v1, off, off offset:288
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v121, v2
	v_cvt_f32_i32_e32 v109, v3
	v_cvt_f32_i32_e32 v118, v4
	v_cvt_f32_i32_e32 v100, v5
	v_cvt_f32_i32_e32 v131, v6
	v_cvt_f32_i32_e32 v130, v7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:292
	scratch_load_b32 v2, off, off offset:296
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:316
	scratch_load_b32 v3, off, off offset:320
	v_lshl_or_b32 v9, v1, 16, v0
	v_perm_b32 v0, v80, v200, 0xc0c0004
	v_perm_b32 v1, v83, v66, 0xc0c0004
	scratch_load_b32 v200, off, off offset:44 ; 4-byte Folded Reload
	v_lshl_or_b32 v11, v1, 16, v0
	v_perm_b32 v0, v35, v17, 0xc0c0004
	v_perm_b32 v1, v64, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v1, 16, v0
	v_perm_b32 v0, v36, v16, 0xc0c0004
	v_perm_b32 v1, v51, v46, 0xc0c0004
	v_lshl_or_b32 v15, v1, 16, v0
	ds_load_u8 v0, v234 offset:4672
	ds_load_u8 v1, v234 offset:4800
	ds_load_u8 v35, v234 offset:4816
	ds_load_u8 v46, v234 offset:4832
	ds_load_u8 v49, v234 offset:4688
	ds_load_u8 v50, v234 offset:4704
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:332
	scratch_load_b32 v4, off, off offset:340
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v111, v102, 0xc0c0004
	v_perm_b32 v3, v59, v60, 0xc0c0004
	v_lshl_or_b32 v10, v3, 16, v2
	v_perm_b32 v2, v179, v105, 0xc0c0004
	v_perm_b32 v3, v203, v192, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v203, off, off offset:56
	scratch_load_b32 v192, off, off offset:28
	v_lshl_or_b32 v12, v3, 16, v2
	v_perm_b32 v2, v67, v56, 0xc0c0004
	v_perm_b32 v3, v88, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v3, 16, v2
	ds_load_u8 v1, v234 offset:4928
	ds_load_u8 v2, v234 offset:5056
	ds_load_u8 v51, v234 offset:5072
	ds_load_u8 v54, v234 offset:4944
	ds_load_u8 v55, v234 offset:4960
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v234 offset:4160
	ds_load_u8 v3, v234 offset:4288
	ds_load_u8 v56, v234 offset:4304
	ds_load_u8 v58, v234 offset:4320
	ds_load_u8 v59, v234 offset:4176
	ds_load_u8 v60, v234 offset:4192
	v_lshl_or_b32 v37, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:496
	scratch_load_b32 v1, off, off offset:544
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v234 offset:4416
	ds_load_u8 v4, v234 offset:4544
	ds_load_u8 v61, v234 offset:4560
	ds_load_u8 v67, v234 offset:4576
	ds_load_u8 v64, v234 offset:4432
	ds_load_u8 v66, v234 offset:4448
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:572
	scratch_load_b32 v2, off, off offset:588
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:628
	scratch_load_b32 v3, off, off offset:640
	v_lshl_or_b32 v17, v1, 16, v0
	scratch_load_b32 v0, off, off offset:664 ; 4-byte Folded Reload
	v_perm_b32 v1, v235, v231, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:648
	scratch_load_b32 v4, off, off offset:656
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v244, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v1, 16, v0
	v_perm_b32 v0, v148, v122, 0xc0c0004
	v_perm_b32 v1, v116, v159, 0xc0c0004
	v_lshl_or_b32 v45, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v3, 16, v2
	v_perm_b32 v2, v161, v164, 0xc0c0004
	v_perm_b32 v3, v154, v151, 0xc0c0004
	v_lshl_or_b32 v38, v3, 16, v2
	v_perm_b32 v2, v101, v98, 0xc0c0004
	v_perm_b32 v3, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[32:33], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[12:13], v[28:29], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[14:15], v[70:71], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[36:37], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[16:17], v[62:63], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[38:39], v[52:53], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[44:45], v[207:208], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v94, v0
	v_cvt_f32_i32_e32 v93, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:108
	scratch_load_b32 v1, off, off offset:224
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v105, v2
	v_cvt_f32_i32_e32 v111, v3
	v_cvt_f32_i32_e32 v117, v4
	v_cvt_f32_i32_e32 v115, v5
	v_cvt_f32_i32_e32 v88, v6
	v_cvt_f32_i32_e32 v96, v7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:236
	scratch_load_b32 v2, off, off offset:240
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:256
	scratch_load_b32 v3, off, off offset:260
	v_lshl_or_b32 v9, v1, 16, v0
	v_perm_b32 v0, v89, v201, 0xc0c0004
	v_perm_b32 v1, v95, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v1, 16, v0
	v_perm_b32 v0, v43, v18, 0xc0c0004
	v_perm_b32 v1, v73, v72, 0xc0c0004
	v_lshl_or_b32 v13, v1, 16, v0
	v_perm_b32 v0, v41, v34, 0xc0c0004
	v_perm_b32 v1, v97, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v1, 16, v0
	v_perm_b32 v0, v49, v35, 0xc0c0004
	v_perm_b32 v1, v54, v51, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:692
	scratch_load_b32 v51, off, off offset:688
	v_lshl_or_b32 v17, v1, 16, v0
	ds_load_u8 v0, v234 offset:5712
	ds_load_u8 v1, v234 offset:5840
	ds_load_u8 v18, v234 offset:5856
	ds_load_u8 v41, v234 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:268
	scratch_load_b32 v4, off, off offset:280
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v104, v103, 0xc0c0004
	v_perm_b32 v3, v136, v138, 0xc0c0004
	v_mov_b32_e32 v104, v110
	v_lshl_or_b32 v10, v3, 16, v2
	v_perm_b32 v2, v182, v170, 0xc0c0004
	v_perm_b32 v3, v219, v196, 0xc0c0004
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v182, off, off offset:20
	scratch_load_b32 v170, off, off offset:4
	scratch_load_b32 v219, off, off offset:72
	scratch_load_b32 v196, off, off offset:32
	v_lshl_or_b32 v12, v3, 16, v2
	v_perm_b32 v2, v79, v57, 0xc0c0004
	v_perm_b32 v3, v169, v87, 0xc0c0004
	scratch_load_b32 v169, off, off         ; 4-byte Folded Reload
	v_lshl_or_b32 v14, v3, 16, v2
	v_perm_b32 v2, v59, v56, 0xc0c0004
	v_perm_b32 v3, v64, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v3, 16, v2
	ds_load_u8 v1, v234 offset:6096
	ds_load_u8 v2, v234 offset:5968
	ds_load_u8 v43, v234 offset:5984
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v234 offset:5200
	ds_load_u8 v3, v234 offset:5328
	ds_load_u8 v44, v234 offset:5344
	ds_load_u8 v45, v234 offset:5216
	v_lshl_or_b32 v37, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:528
	scratch_load_b32 v1, off, off offset:632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v234 offset:5456
	ds_load_u8 v4, v234 offset:5584
	ds_load_u8 v48, v234 offset:5600
	ds_load_u8 v49, v234 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v3, 16, v2
	v_perm_b32 v3, v248, v252, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:660
	scratch_load_b32 v2, off, off offset:680
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v254, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v35, v1, 16, v0
	v_lshl_or_b32 v34, v3, 16, v2
	v_perm_b32 v0, v240, v157, 0xc0c0004
	v_perm_b32 v1, v146, v135, 0xc0c0004
	v_perm_b32 v2, v128, v124, 0xc0c0004
	v_perm_b32 v3, v123, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v39, v1, 16, v0
	v_lshl_or_b32 v38, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[32:33], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[12:13], v[28:29], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[14:15], v[70:71], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[16:17], v[68:69], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[36:37], v[62:63], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[34:35], v[52:53], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[38:39], v[207:208], v[0:7] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v82, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v83, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:140
	scratch_load_b32 v1, off, off offset:168
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v76, v2
	v_cvt_f32_i32_e32 v81, v3
	v_cvt_f32_i32_e32 v80, v4
	v_cvt_f32_i32_e32 v77, v5
	v_cvt_f32_i32_e32 v78, v6
	v_cvt_f32_i32_e32 v79, v7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:176
	scratch_load_b32 v2, off, off offset:180
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:188
	scratch_load_b32 v3, off, off offset:200
	v_lshl_or_b32 v9, v1, 16, v0
	v_perm_b32 v0, v119, v202, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v202, off, off offset:52
	scratch_load_b32 v1, off, off offset:324
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:208
	scratch_load_b32 v4, off, off offset:216
	s_waitcnt vmcnt(2)
	v_perm_b32 v1, v141, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v1, 16, v0
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	v_perm_b32 v0, v47, v19, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v137, v139, 0xc0c0004
	v_perm_b32 v3, v142, v106, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v75, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v10, v3, 16, v2
	v_perm_b32 v2, v191, v174, 0xc0c0004
	v_perm_b32 v3, v220, v198, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:24
	scratch_load_b32 v174, off, off offset:12
	v_lshl_or_b32 v13, v1, 16, v0
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	v_perm_b32 v0, v42, v40, 0xc0c0004
	v_lshl_or_b32 v12, v3, 16, v2
	v_perm_b32 v2, v85, v65, 0xc0c0004
	v_perm_b32 v3, v173, v156, 0xc0c0004
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v220, off, off offset:76
	scratch_load_b32 v198, off, off offset:36
	scratch_load_b32 v173, off, off offset:8
	v_lshl_or_b32 v14, v3, 16, v2
	v_perm_b32 v2, v60, v58, 0xc0c0004
	v_perm_b32 v3, v66, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v3, 16, v2
	v_perm_b32 v2, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v49, v48, 0xc0c0004
	v_lshl_or_b32 v34, v3, 16, v2
	ds_load_u8 v2, v234 offset:6368
	ds_load_u8 v3, v234 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v234 offset:6624
	ds_load_u8 v4, v234 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v3, 16, v2
	v_perm_b32 v2, v162, v165, 0xc0c0004
	v_perm_b32 v3, v153, v150, 0xc0c0004
	v_lshl_or_b32 v38, v3, 16, v2
	s_waitcnt vmcnt(3)
	v_perm_b32 v1, v99, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v1, 16, v0
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	v_perm_b32 v0, v50, v46, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v55, v1, 0xc0c0004
	v_lshl_or_b32 v17, v1, 16, v0
	scratch_load_b32 v1, off, off offset:624 ; 4-byte Folded Reload
	v_perm_b32 v0, v41, v18, 0xc0c0004
	scratch_load_b32 v18, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v1, v43, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v1, 16, v0
	ds_load_u8 v0, v234 offset:6880
	ds_load_u8 v1, v234 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v234 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v1, 16, v0
	scratch_load_b32 v0, off, off offset:644 ; 4-byte Folded Reload
	v_perm_b32 v1, v237, v233, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v245, 0xc0c0004
	v_lshl_or_b32 v39, v1, 16, v0
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[32:33], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[12:13], v[28:29], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[14:15], v[70:71], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[16:17], v[68:69], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[34:35], v[62:63], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[36:37], v[52:53], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[38:39], v[207:208], v[0:7] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v99, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v87, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:156
	scratch_load_b32 v1, off, off offset:160
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v92, v2
	v_cvt_f32_i32_e32 v85, v3
	v_cvt_f32_i32_e32 v8, v5
	v_cvt_f32_i32_e32 v5, v7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v7, off, off offset:152
	scratch_load_b32 v201, off, off offset:48
	scratch_load_b32 v179, off, off offset:16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v86, v4
	v_cvt_f32_i32_e32 v180, v6
	v_add_nc_u32_e32 v4, 0, v108
	v_add_nc_u32_e32 v6, 0, v54
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v4, v4
	ds_load_u8 v6, v6
	s_waitcnt vmcnt(3)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:164
	scratch_load_b32 v2, off, off offset:172
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:144
	scratch_load_b32 v3, off, off offset:148
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_add_nc_u32_e32 v3, 0, v104
	v_mov_b32_e32 v231, v226
	scratch_load_b32 v226, off, off offset:84 ; 4-byte Folded Reload
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v7, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:220
	scratch_load_b32 v3, off, off offset:228
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:192
	scratch_load_b32 v7, off, off offset:232
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v7, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:196
	scratch_load_b32 v9, off, off offset:204
	v_lshl_or_b32 v2, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v7, v7, v9, 0xc0c0004
	scratch_load_b32 v9, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v9, v4, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:272
	scratch_load_b32 v1, off, off offset:276
	v_lshl_or_b32 v3, v4, 16, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[2:3], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:244
	scratch_load_b32 v2, off, off offset:284
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:248
	scratch_load_b32 v3, off, off offset:252
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[28:29], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:328
	scratch_load_b32 v1, off, off offset:336
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:300
	scratch_load_b32 v2, off, off offset:344
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:304
	scratch_load_b32 v3, off, off offset:308
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v0, v3, 0xc0c0004
	scratch_load_b32 v0, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v4, v0
	scratch_load_b32 v0, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v18, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[70:71], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:392
	scratch_load_b32 v2, off, off offset:400
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:356
	scratch_load_b32 v3, off, off offset:404
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:364
	scratch_load_b32 v4, off, off offset:368
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:376 ; 4-byte Folded Reload
	ds_load_u8 v6, v0
	scratch_load_b32 v0, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[68:69], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:456
	scratch_load_b32 v2, off, off offset:460
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:420
	scratch_load_b32 v3, off, off offset:464
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:424
	scratch_load_b32 v4, off, off offset:428
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:444 ; 4-byte Folded Reload
	ds_load_u8 v7, v0
	scratch_load_b32 v0, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[62:63], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:500
	scratch_load_b32 v2, off, off offset:504
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:468
	scratch_load_b32 v3, off, off offset:512
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:472
	scratch_load_b32 v4, off, off offset:480
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:488 ; 4-byte Folded Reload
	ds_load_u8 v17, v0
	scratch_load_b32 v0, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[52:53], v[9:16] neg_lo:[1,1,0]
	scratch_load_b32 v1, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v1, v247, 0xc0c0004
	scratch_load_b32 v1, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v243, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:636
	scratch_load_b32 v2, off, off offset:652
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v1, v2, 0xc0c0004
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_perm_b32 v1, v1, v0, 0xc0c0004
	v_lshl_or_b32 v0, v20, 16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[207:208], v[9:16] neg_lo:[1,1,0]
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:704
	scratch_load_b32 v208, off, off offset:68
	scratch_load_b32 v207, off, off offset:64
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v19, v9
	v_cvt_f32_i32_e32 v18, v10
	v_cvt_f32_i32_e32 v17, v11
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v10, v14
	v_cvt_f32_i32_e32 v9, v15
	v_cvt_f32_i32_e32 v0, v16
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_waitcnt vmcnt(2)
	v_cmp_lt_i32_e32 vcc_lo, s7, v1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v1, 1, v51
	s_add_i32 s7, s7, 64
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v1, s45, v1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s45, s45, s46
	s_cmp_lg_u32 s44, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1f
	buffer_load_u16 v6, v1, s[36:39], 0 offen
	buffer_load_u16 v7, v1, s[36:39], 0 offen offset:4
	buffer_load_u16 v97, v1, s[36:39], 0 offen offset:8
	buffer_load_u16 v101, v1, s[36:39], 0 offen offset:12
	buffer_load_u16 v75, v1, s[36:39], 0 offen offset:16
	buffer_load_u16 v74, v1, s[36:39], 0 offen offset:20
	buffer_load_u16 v73, v1, s[36:39], 0 offen offset:24
	buffer_load_u16 v72, v1, s[36:39], 0 offen offset:28
	buffer_load_u16 v71, v1, s[36:39], 0 offen offset:32
	buffer_load_u16 v70, v1, s[36:39], 0 offen offset:36
	buffer_load_u16 v69, v1, s[36:39], 0 offen offset:40
	buffer_load_u16 v68, v1, s[36:39], 0 offen offset:44
	buffer_load_u16 v67, v1, s[36:39], 0 offen offset:48
	buffer_load_u16 v66, v1, s[36:39], 0 offen offset:52
	buffer_load_u16 v65, v1, s[36:39], 0 offen offset:56
	buffer_load_u16 v64, v1, s[36:39], 0 offen offset:60
	buffer_load_u16 v63, v1, s[36:39], 0 offen offset:64
	buffer_load_u16 v62, v1, s[36:39], 0 offen offset:68
	buffer_load_u16 v61, v1, s[36:39], 0 offen offset:72
	buffer_load_u16 v60, v1, s[36:39], 0 offen offset:76
	buffer_load_u16 v59, v1, s[36:39], 0 offen offset:80
	buffer_load_u16 v58, v1, s[36:39], 0 offen offset:84
	buffer_load_u16 v57, v1, s[36:39], 0 offen offset:88
	buffer_load_u16 v56, v1, s[36:39], 0 offen offset:92
	buffer_load_u16 v55, v1, s[36:39], 0 offen offset:96
	buffer_load_u16 v54, v1, s[36:39], 0 offen offset:100
	buffer_load_u16 v53, v1, s[36:39], 0 offen offset:104
	buffer_load_u16 v52, v1, s[36:39], 0 offen offset:108
	buffer_load_u16 v51, v1, s[36:39], 0 offen offset:112
	buffer_load_u16 v50, v1, s[36:39], 0 offen offset:116
	buffer_load_u16 v49, v1, s[36:39], 0 offen offset:120
	buffer_load_u16 v48, v1, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v47, v1, s[36:39], 0 offen offset:128
	buffer_load_u16 v46, v1, s[36:39], 0 offen offset:132
	buffer_load_u16 v45, v1, s[36:39], 0 offen offset:136
	buffer_load_u16 v44, v1, s[36:39], 0 offen offset:140
	buffer_load_u16 v43, v1, s[36:39], 0 offen offset:144
	buffer_load_u16 v42, v1, s[36:39], 0 offen offset:148
	buffer_load_u16 v41, v1, s[36:39], 0 offen offset:152
	buffer_load_u16 v40, v1, s[36:39], 0 offen offset:156
	buffer_load_u16 v39, v1, s[36:39], 0 offen offset:160
	buffer_load_u16 v38, v1, s[36:39], 0 offen offset:164
	buffer_load_u16 v37, v1, s[36:39], 0 offen offset:168
	buffer_load_u16 v36, v1, s[36:39], 0 offen offset:172
	buffer_load_u16 v35, v1, s[36:39], 0 offen offset:176
	buffer_load_u16 v34, v1, s[36:39], 0 offen offset:180
	buffer_load_u16 v33, v1, s[36:39], 0 offen offset:184
	buffer_load_u16 v32, v1, s[36:39], 0 offen offset:188
	buffer_load_u16 v31, v1, s[36:39], 0 offen offset:192
	buffer_load_u16 v30, v1, s[36:39], 0 offen offset:196
	buffer_load_u16 v29, v1, s[36:39], 0 offen offset:200
	buffer_load_u16 v28, v1, s[36:39], 0 offen offset:204
	buffer_load_u16 v27, v1, s[36:39], 0 offen offset:208
	buffer_load_u16 v26, v1, s[36:39], 0 offen offset:212
	buffer_load_u16 v25, v1, s[36:39], 0 offen offset:216
	buffer_load_u16 v24, v1, s[36:39], 0 offen offset:220
	buffer_load_u16 v23, v1, s[36:39], 0 offen offset:224
	buffer_load_u16 v22, v1, s[36:39], 0 offen offset:228
	buffer_load_u16 v21, v1, s[36:39], 0 offen offset:232
	buffer_load_u16 v20, v1, s[36:39], 0 offen offset:236
	buffer_load_u16 v16, v1, s[36:39], 0 offen offset:240
	buffer_load_u16 v15, v1, s[36:39], 0 offen offset:244
	buffer_load_u16 v14, v1, s[36:39], 0 offen offset:248
	buffer_load_u16 v13, v1, s[36:39], 0 offen offset:252
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v1, 0x80000000, v114, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v114, s47, v114
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[1:4]
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v6
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v143
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v178, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v2, off, off offset:136 ; 4-byte Folded Reload
	v_dual_mul_f32 v0, v1, v0 :: v_dual_lshlrev_b32 v3, 16, v7
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v225, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v2, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, v1, v2 :: v_dual_lshlrev_b32 v3, 16, v97
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v224, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v2, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, v1, v2 :: v_dual_lshlrev_b32 v3, 16, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v223, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v2, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, v1, v2 :: v_dual_lshlrev_b32 v3, 16, v75
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v222, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v2, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v74
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v221, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v2, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, v1, v2 :: v_dual_lshlrev_b32 v3, 16, v73
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v220, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v2, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, v1, v2 :: v_dual_lshlrev_b32 v3, 16, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v219, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v127
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v71
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v218, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v126
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v217, v2, v3 :: v_dual_mul_f32 v2, v1, v90
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v216, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v91 :: v_dual_lshlrev_b32 v3, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v215, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v163
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v67
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v214, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v144 :: v_dual_lshlrev_b32 v3, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v213, v2, v3 :: v_dual_mul_f32 v2, v1, v152
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v65
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v212, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v140
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v211, v2, v3 :: v_dual_mul_f32 v2, v1, v242
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v63
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v210, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v149 :: v_dual_lshlrev_b32 v3, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v209, v2, v3 :: v_dual_mul_f32 v2, v1, v125
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v61
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v208, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v129 :: v_dual_lshlrev_b32 v3, 16, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v207, v2, v3 :: v_dual_mul_f32 v2, v1, v134
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v59
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v206, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v229 :: v_dual_lshlrev_b32 v3, 16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v205, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v147 :: v_dual_lshlrev_b32 v3, 16, v57
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v204, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v160
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v203, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v107
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v55
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v202, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v113 :: v_dual_lshlrev_b32 v3, 16, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v201, v2, v3 :: v_dual_mul_f32 v2, v1, v121
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v53
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v200, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v109 :: v_dual_lshlrev_b32 v3, 16, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v199, v2, v3 :: v_dual_mul_f32 v2, v1, v118
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v51
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v198, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v100 :: v_dual_lshlrev_b32 v3, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v197, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v131 :: v_dual_lshlrev_b32 v3, 16, v49
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v196, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v130 :: v_dual_lshlrev_b32 v3, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v195, v2, v3 :: v_dual_mul_f32 v2, v1, v94
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v47
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v194, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v93 :: v_dual_lshlrev_b32 v3, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v193, v2, v3 :: v_dual_mul_f32 v2, v1, v105
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v45
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v192, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v111 :: v_dual_lshlrev_b32 v3, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v191, v2, v3 :: v_dual_mul_f32 v2, v1, v117
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v43
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v190, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v115 :: v_dual_lshlrev_b32 v3, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v189, v2, v3 :: v_dual_mul_f32 v2, v1, v88
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v41
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v188, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v96
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v187, v2, v3 :: v_dual_mul_f32 v2, v1, v82
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v186, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v83 :: v_dual_lshlrev_b32 v3, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v185, v2, v3 :: v_dual_mul_f32 v2, v1, v76
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v37
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v184, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v81 :: v_dual_lshlrev_b32 v3, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v183, v2, v3 :: v_dual_mul_f32 v2, v1, v80
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v182, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v77 :: v_dual_lshlrev_b32 v3, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v181, v2, v3 :: v_dual_mul_f32 v2, v1, v78
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v33
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v179, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v79 :: v_dual_lshlrev_b32 v3, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v177, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v99
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v176, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v87 :: v_dual_lshlrev_b32 v3, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v175, v2, v3 :: v_dual_mul_f32 v2, v1, v92
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v29
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v174, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v85 :: v_dual_lshlrev_b32 v3, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v173, v2, v3 :: v_dual_mul_f32 v2, v1, v86
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v27
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v172, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v8 :: v_dual_lshlrev_b32 v3, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v171, v2, v3 :: v_dual_mul_f32 v2, v1, v180
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v170, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v5 :: v_dual_lshlrev_b32 v3, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v169, v2, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v19
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v23
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v168, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v18
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v167, v2, v3 :: v_dual_mul_f32 v2, v1, v17
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v21
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v166, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v1, v12
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v227, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v11 :: v_dual_lshlrev_b32 v3, 16, v16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v231, v2, v3 :: v_dual_mul_f32 v2, v1, v10
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 16, v15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v230, v2, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v1, v9 :: v_dual_lshlrev_b32 v3, 16, v14
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v1, 16, v13
	scratch_load_b32 v14, off, off offset:696 ; 4-byte Folded Reload
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v228, v2, v3
	scratch_load_b32 v3, off, off offset:80 ; 4-byte Folded Reload
	v_fmac_f32_e32 v226, v0, v1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, 2, v3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v14, v0 offset:8192
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v159, off, off offset:800
	scratch_load_b32 v160, off, off offset:804
	scratch_load_b32 v48, off, off offset:808
	scratch_load_b32 v49, off, off offset:812
	scratch_load_b32 v50, off, off offset:816
	scratch_load_b32 v51, off, off offset:820
	scratch_load_b32 v52, off, off offset:824
	scratch_load_b32 v10, off, off offset:828
.LBB0_7:                                ; %Flow602
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	s_waitcnt vmcnt(6)
	v_mul_lo_u32 v0, s6, v160
	s_mul_i32 s4, s34, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s5, 0
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v25, 16, v159
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s4, s4, s3
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v0, s4, v0, 1
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v110, 0
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	buffer_load_u16 v26, v0, s[24:27], 0 offen
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v7, 0
	s_mov_b32 s4, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v0, v234 offset:640
	ds_load_u8 v1, v234 offset:512
	ds_load_u8 v2, v234 offset:896
	ds_load_u8 v3, v234 offset:768
	ds_load_u8 v4, v234 offset:128
	ds_load_u8 v5, v234
	ds_load_u8 v6, v234 offset:384
	ds_load_u8 v7, v234 offset:256
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v8, 56, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v234 offset:1664
	ds_load_u8 v11, v234 offset:1536
	ds_load_u8 v12, v234 offset:1920
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v37, v160, 6, v8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v8, v234 offset:1792
	ds_load_u8 v13, v234 offset:1152
	ds_load_u8 v14, v234 offset:1024
	ds_load_u8 v15, v234 offset:1408
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v1, v3, v2, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v10, v37, 8, 0
	v_add_nc_u32_e32 v16, 0, v37
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v2, v234 offset:1280
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[21:22], v10 offset:8192
	ds_load_b64 v[23:24], v16 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	v_lshl_or_b32 v10, v1, 16, v0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v7, v6, 0xc0c0004
	ds_load_u8 v16, v234 offset:2688
	ds_load_u8 v17, v234 offset:2560
	ds_load_u8 v18, v234 offset:2944
	ds_load_u8 v19, v234 offset:2816
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v11, v9, 0xc0c0004
	v_lshl_or_b32 v9, v0, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v12, v8, v12, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v12, v12, 16, v11
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v2, v15, 0xc0c0004
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_mov_b32_e32 v5, s8
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	v_lshl_or_b32 v11, v14, 16, v13
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[9:10], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:2176
	ds_load_u8 v9, v234 offset:2048
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v17, v16, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[27:34], v[11:12], v[21:22], v[27:34] neg_lo:[1,1,0]
	ds_load_u8 v12, v234 offset:2432
	ds_load_u8 v13, v234 offset:2304
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v11, 16, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v9, v37, 16, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[19:20], v9 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v9, v12, 16, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[9:10], v[19:20], v[27:34] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:3712
	ds_load_u8 v9, v234 offset:3584
	ds_load_u8 v10, v234 offset:3968
	ds_load_u8 v11, v234 offset:3840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v10, 0xc0c0004
	ds_load_u8 v10, v234 offset:3200
	ds_load_u8 v11, v234 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v234 offset:3456
	ds_load_u8 v12, v234 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v0, v37, 24, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[17:18], v0 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[9:10], v[17:18], v[27:34] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:4736
	ds_load_u8 v9, v234 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v234 offset:4992
	ds_load_u8 v10, v234 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v234 offset:4224
	ds_load_u8 v11, v234 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v234 offset:4480
	ds_load_u8 v12, v234 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v0, v37, 32, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[15:16], v0 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[9:10], v[15:16], v[27:34] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:5760
	ds_load_u8 v9, v234 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v234 offset:6016
	ds_load_u8 v10, v234 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v234 offset:5248
	ds_load_u8 v11, v234 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v234 offset:5504
	ds_load_u8 v12, v234 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v0, v37, 40, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[13:14], v0 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[9:10], v[13:14], v[27:34] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:6784
	ds_load_u8 v9, v234 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v234 offset:7040
	ds_load_u8 v10, v234 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v234 offset:6272
	ds_load_u8 v11, v234 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v234 offset:6528
	ds_load_u8 v12, v234 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v0, v37, 48, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[11:12], v0 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[9:10], v[11:12], v[27:34] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:7808
	ds_load_u8 v9, v234 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v234 offset:8064
	ds_load_u8 v10, v234 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v234 offset:7296
	ds_load_u8 v35, v234 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v35, v10, 0xc0c0004
	ds_load_u8 v35, v234 offset:7552
	ds_load_u8 v36, v234 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v36, v9, 16, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v0, v37, 56, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v35, v35, 16, v10
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[9:10], v0 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[35:36], v[9:10], v[27:34] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v110, v34
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v0, v234 offset:656
	ds_load_u8 v34, v234 offset:528
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v234 offset:912
	ds_load_u8 v35, v234 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v234 offset:16
	ds_load_u8 v36, v234 offset:144
	v_lshl_or_b32 v43, v34, 16, v0
	ds_load_u8 v0, v234 offset:1680
	ds_load_u8 v34, v234 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	ds_load_u8 v36, v234 offset:400
	ds_load_u8 v37, v234 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v36, 16, v35
	ds_load_u8 v34, v234 offset:1936
	ds_load_u8 v35, v234 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v234 offset:1168
	ds_load_u8 v36, v234 offset:1040
	v_lshl_or_b32 v45, v34, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v234 offset:1424
	ds_load_u8 v37, v234 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:2704
	ds_load_u8 v42, v234 offset:2576
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[21:22], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:2960
	ds_load_u8 v43, v234 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:2192
	ds_load_u8 v44, v234 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:2448
	ds_load_u8 v45, v234 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[19:20], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:3728
	ds_load_u8 v42, v234 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:3984
	ds_load_u8 v43, v234 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:3216
	ds_load_u8 v44, v234 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:3472
	ds_load_u8 v45, v234 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[17:18], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:4752
	ds_load_u8 v42, v234 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:5008
	ds_load_u8 v43, v234 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:4240
	ds_load_u8 v44, v234 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:4496
	ds_load_u8 v45, v234 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[15:16], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:5776
	ds_load_u8 v42, v234 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:6032
	ds_load_u8 v43, v234 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:5264
	ds_load_u8 v44, v234 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:5520
	ds_load_u8 v45, v234 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[13:14], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:6800
	ds_load_u8 v42, v234 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:7056
	ds_load_u8 v43, v234 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:6288
	ds_load_u8 v44, v234 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:6544
	ds_load_u8 v45, v234 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[11:12], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:7824
	ds_load_u8 v42, v234 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:8080
	ds_load_u8 v43, v234 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:7312
	ds_load_u8 v44, v234 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:7568
	ds_load_u8 v45, v234 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[9:10], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v111, v34
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v0, v234 offset:672
	ds_load_u8 v34, v234 offset:544
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v112, v35
	v_cvt_f32_i32_e32 v113, v36
	v_cvt_f32_i32_e32 v114, v37
	v_cvt_f32_i32_e32 v115, v38
	v_cvt_f32_i32_e32 v116, v39
	v_cvt_f32_i32_e32 v117, v40
	v_cvt_f32_i32_e32 v118, v41
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v234 offset:928
	ds_load_u8 v35, v234 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v234 offset:32
	ds_load_u8 v36, v234 offset:160
	v_lshl_or_b32 v43, v34, 16, v0
	ds_load_u8 v0, v234 offset:1696
	ds_load_u8 v34, v234 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	ds_load_u8 v36, v234 offset:416
	ds_load_u8 v37, v234 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v36, 16, v35
	ds_load_u8 v34, v234 offset:1952
	ds_load_u8 v35, v234 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v234 offset:1184
	ds_load_u8 v36, v234 offset:1056
	v_lshl_or_b32 v45, v34, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v234 offset:1440
	ds_load_u8 v37, v234 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:2720
	ds_load_u8 v42, v234 offset:2592
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[21:22], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:2976
	ds_load_u8 v43, v234 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:2208
	ds_load_u8 v44, v234 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:2464
	ds_load_u8 v45, v234 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[19:20], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:3744
	ds_load_u8 v42, v234 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:4000
	ds_load_u8 v43, v234 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:3232
	ds_load_u8 v44, v234 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:3488
	ds_load_u8 v45, v234 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[17:18], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:4768
	ds_load_u8 v42, v234 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:5024
	ds_load_u8 v43, v234 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:4256
	ds_load_u8 v44, v234 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:4512
	ds_load_u8 v45, v234 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[15:16], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:5792
	ds_load_u8 v42, v234 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:6048
	ds_load_u8 v43, v234 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:5280
	ds_load_u8 v44, v234 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:5536
	ds_load_u8 v45, v234 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[13:14], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:6816
	ds_load_u8 v42, v234 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:7072
	ds_load_u8 v43, v234 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:6304
	ds_load_u8 v44, v234 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:6560
	ds_load_u8 v45, v234 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[11:12], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:7840
	ds_load_u8 v42, v234 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:8096
	ds_load_u8 v43, v234 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:7328
	ds_load_u8 v44, v234 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:7584
	ds_load_u8 v45, v234 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[9:10], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v119, v34
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v0, v234 offset:688
	ds_load_u8 v34, v234 offset:560
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v35
	v_cvt_f32_i32_e32 v121, v36
	v_cvt_f32_i32_e32 v122, v37
	v_cvt_f32_i32_e32 v123, v38
	v_cvt_f32_i32_e32 v124, v39
	v_cvt_f32_i32_e32 v125, v40
	v_cvt_f32_i32_e32 v126, v41
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v234 offset:944
	ds_load_u8 v35, v234 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v234 offset:48
	ds_load_u8 v36, v234 offset:176
	v_lshl_or_b32 v43, v34, 16, v0
	ds_load_u8 v0, v234 offset:1712
	ds_load_u8 v34, v234 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	ds_load_u8 v36, v234 offset:432
	ds_load_u8 v37, v234 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v36, 16, v35
	ds_load_u8 v34, v234 offset:1968
	ds_load_u8 v35, v234 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v234 offset:1200
	ds_load_u8 v36, v234 offset:1072
	v_lshl_or_b32 v45, v34, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v234 offset:1456
	ds_load_u8 v37, v234 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:2736
	ds_load_u8 v42, v234 offset:2608
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[21:22], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:2992
	ds_load_u8 v43, v234 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:2224
	ds_load_u8 v44, v234 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:2480
	ds_load_u8 v45, v234 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[19:20], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:3760
	ds_load_u8 v42, v234 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:4016
	ds_load_u8 v43, v234 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:3248
	ds_load_u8 v44, v234 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:3504
	ds_load_u8 v45, v234 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[17:18], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:4784
	ds_load_u8 v42, v234 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:5040
	ds_load_u8 v43, v234 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:4272
	ds_load_u8 v44, v234 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:4528
	ds_load_u8 v45, v234 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[15:16], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:5808
	ds_load_u8 v42, v234 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:6064
	ds_load_u8 v43, v234 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:5296
	ds_load_u8 v44, v234 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:5552
	ds_load_u8 v45, v234 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[13:14], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:6832
	ds_load_u8 v42, v234 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:7088
	ds_load_u8 v43, v234 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:6320
	ds_load_u8 v44, v234 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:6576
	ds_load_u8 v45, v234 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[11:12], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:7856
	ds_load_u8 v42, v234 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v234 offset:8112
	ds_load_u8 v43, v234 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v234 offset:7344
	ds_load_u8 v44, v234 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v234 offset:7600
	ds_load_u8 v45, v234 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[9:10], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v127, v34
	v_cvt_f32_i32_e32 v34, v36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v0, v234 offset:704
	ds_load_u8 v36, v234 offset:576
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v128, v35
	v_cvt_f32_i32_e32 v35, v37
	v_cvt_f32_i32_e32 v131, v38
	v_cvt_f32_i32_e32 v132, v39
	v_cvt_f32_i32_e32 v133, v40
	v_cvt_f32_i32_e32 v134, v41
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	ds_load_u8 v36, v234 offset:960
	ds_load_u8 v37, v234 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v234 offset:192
	ds_load_u8 v38, v234 offset:64
	v_lshl_or_b32 v45, v36, 16, v0
	ds_load_u8 v0, v234 offset:1728
	ds_load_u8 v36, v234 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v234 offset:448
	ds_load_u8 v39, v234 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v38, 16, v37
	ds_load_u8 v36, v234 offset:1984
	ds_load_u8 v37, v234 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v234 offset:1216
	ds_load_u8 v38, v234 offset:1088
	v_lshl_or_b32 v47, v36, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v234 offset:1472
	ds_load_u8 v39, v234 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:2752
	ds_load_u8 v44, v234 offset:2624
	v_wmma_i32_16x16x16_iu4 v[36:43], v[46:47], v[21:22], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:3008
	ds_load_u8 v45, v234 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:2240
	ds_load_u8 v46, v234 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:2496
	ds_load_u8 v47, v234 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[19:20], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:3776
	ds_load_u8 v44, v234 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:4032
	ds_load_u8 v45, v234 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:3264
	ds_load_u8 v46, v234 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:3520
	ds_load_u8 v47, v234 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[17:18], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:4800
	ds_load_u8 v44, v234 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:5056
	ds_load_u8 v45, v234 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:4288
	ds_load_u8 v46, v234 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:4544
	ds_load_u8 v47, v234 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[15:16], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:5824
	ds_load_u8 v44, v234 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:6080
	ds_load_u8 v45, v234 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:5312
	ds_load_u8 v46, v234 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:5568
	ds_load_u8 v47, v234 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[13:14], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:6848
	ds_load_u8 v44, v234 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:7104
	ds_load_u8 v45, v234 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:6336
	ds_load_u8 v46, v234 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:6592
	ds_load_u8 v47, v234 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[11:12], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:7872
	ds_load_u8 v44, v234 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:8128
	ds_load_u8 v45, v234 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:7360
	ds_load_u8 v46, v234 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:7616
	ds_load_u8 v47, v234 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[9:10], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v135, v36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v0, v234 offset:720
	ds_load_u8 v36, v234 offset:592
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v136, v37
	v_cvt_f32_i32_e32 v137, v38
	v_cvt_f32_i32_e32 v138, v39
	v_cvt_f32_i32_e32 v139, v40
	v_cvt_f32_i32_e32 v140, v41
	v_cvt_f32_i32_e32 v141, v42
	v_cvt_f32_i32_e32 v142, v43
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	ds_load_u8 v36, v234 offset:976
	ds_load_u8 v37, v234 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v234 offset:208
	ds_load_u8 v38, v234 offset:80
	v_lshl_or_b32 v45, v36, 16, v0
	ds_load_u8 v0, v234 offset:1744
	ds_load_u8 v36, v234 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v234 offset:464
	ds_load_u8 v39, v234 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v38, 16, v37
	ds_load_u8 v36, v234 offset:2000
	ds_load_u8 v37, v234 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v234 offset:1232
	ds_load_u8 v38, v234 offset:1104
	v_lshl_or_b32 v47, v36, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v234 offset:1488
	ds_load_u8 v39, v234 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:2768
	ds_load_u8 v44, v234 offset:2640
	v_wmma_i32_16x16x16_iu4 v[36:43], v[46:47], v[21:22], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:3024
	ds_load_u8 v45, v234 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:2256
	ds_load_u8 v46, v234 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:2512
	ds_load_u8 v47, v234 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[19:20], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:3792
	ds_load_u8 v44, v234 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:4048
	ds_load_u8 v45, v234 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:3280
	ds_load_u8 v46, v234 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:3536
	ds_load_u8 v47, v234 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[17:18], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:4816
	ds_load_u8 v44, v234 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:5072
	ds_load_u8 v45, v234 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:4304
	ds_load_u8 v46, v234 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:4560
	ds_load_u8 v47, v234 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[15:16], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:5840
	ds_load_u8 v44, v234 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:6096
	ds_load_u8 v45, v234 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:5328
	ds_load_u8 v46, v234 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:5584
	ds_load_u8 v47, v234 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[13:14], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:6864
	ds_load_u8 v44, v234 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:7120
	ds_load_u8 v45, v234 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:6352
	ds_load_u8 v46, v234 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:6608
	ds_load_u8 v47, v234 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[11:12], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:7888
	ds_load_u8 v44, v234 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:8144
	ds_load_u8 v45, v234 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:7376
	ds_load_u8 v46, v234 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:7632
	ds_load_u8 v47, v234 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[9:10], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v143, v36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v0, v234 offset:736
	ds_load_u8 v36, v234 offset:608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v144, v37
	v_cvt_f32_i32_e32 v145, v38
	v_cvt_f32_i32_e32 v146, v39
	v_cvt_f32_i32_e32 v147, v40
	v_cvt_f32_i32_e32 v148, v41
	v_cvt_f32_i32_e32 v149, v42
	v_cvt_f32_i32_e32 v150, v43
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	ds_load_u8 v36, v234 offset:992
	ds_load_u8 v37, v234 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v234 offset:224
	ds_load_u8 v38, v234 offset:96
	v_lshl_or_b32 v45, v36, 16, v0
	ds_load_u8 v0, v234 offset:1760
	ds_load_u8 v36, v234 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v234 offset:480
	ds_load_u8 v39, v234 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v38, 16, v37
	ds_load_u8 v36, v234 offset:2016
	ds_load_u8 v37, v234 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v234 offset:1248
	ds_load_u8 v38, v234 offset:1120
	v_lshl_or_b32 v47, v36, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v234 offset:1504
	ds_load_u8 v39, v234 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:2784
	ds_load_u8 v44, v234 offset:2656
	v_wmma_i32_16x16x16_iu4 v[36:43], v[46:47], v[21:22], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:3040
	ds_load_u8 v45, v234 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:2272
	ds_load_u8 v46, v234 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:2528
	ds_load_u8 v47, v234 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[19:20], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:3808
	ds_load_u8 v44, v234 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:4064
	ds_load_u8 v45, v234 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:3296
	ds_load_u8 v46, v234 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:3552
	ds_load_u8 v47, v234 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[17:18], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:4832
	ds_load_u8 v44, v234 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:5088
	ds_load_u8 v45, v234 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:4320
	ds_load_u8 v46, v234 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:4576
	ds_load_u8 v47, v234 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[15:16], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:5856
	ds_load_u8 v44, v234 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:6112
	ds_load_u8 v45, v234 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:5344
	ds_load_u8 v46, v234 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:5600
	ds_load_u8 v47, v234 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[13:14], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:6880
	ds_load_u8 v44, v234 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:7136
	ds_load_u8 v45, v234 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:6368
	ds_load_u8 v46, v234 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:6624
	ds_load_u8 v47, v234 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[11:12], v[36:43] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:7904
	ds_load_u8 v44, v234 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v234 offset:8160
	ds_load_u8 v45, v234 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v234 offset:7392
	ds_load_u8 v46, v234 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v234 offset:7648
	ds_load_u8 v47, v234 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[9:10], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v151, v36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v0, v234 offset:240
	ds_load_u8 v36, v234 offset:112
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v152, v37
	v_cvt_f32_i32_e32 v153, v38
	v_cvt_f32_i32_e32 v154, v39
	v_cvt_f32_i32_e32 v155, v40
	v_cvt_f32_i32_e32 v156, v41
	v_cvt_f32_i32_e32 v157, v42
	v_cvt_f32_i32_e32 v158, v43
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	ds_load_u8 v36, v234 offset:496
	ds_load_u8 v37, v234 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v234 offset:752
	ds_load_u8 v38, v234 offset:624
	v_lshl_or_b32 v36, v36, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v38, 0, v104
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v38, v38
	ds_load_u8 v39, v234 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:1264
	ds_load_u8 v23, v234 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v23, v0, 0xc0c0004
	ds_load_u8 v23, v234 offset:1520
	ds_load_u8 v24, v234 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v234 offset:1776
	ds_load_u8 v36, v234 offset:1648
	v_lshl_or_b32 v23, v23, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v36, v24, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v36, 0, v108
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v36, v36
	ds_load_u8 v37, v234 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v36, 16, v24
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:2288
	ds_load_u8 v21, v234 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	ds_load_u8 v21, v234 offset:2544
	ds_load_u8 v22, v234 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v234 offset:2800
	ds_load_u8 v23, v234 offset:2672
	v_lshl_or_b32 v21, v21, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	scratch_load_b32 v23, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, 0, v23
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v23, v23
	ds_load_u8 v24, v234 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v23, 16, v22
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[19:20], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:3312
	ds_load_u8 v19, v234 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v234 offset:3568
	ds_load_u8 v20, v234 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v234 offset:3824
	ds_load_u8 v21, v234 offset:3696
	v_lshl_or_b32 v19, v19, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v21, 0, v52
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v21, v21
	ds_load_u8 v22, v234 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[17:18], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:4336
	ds_load_u8 v17, v234 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v234 offset:4592
	ds_load_u8 v18, v234 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v234 offset:4848
	ds_load_u8 v19, v234 offset:4720
	v_lshl_or_b32 v17, v17, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v19, 0, v51
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v234 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v19, 16, v18
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:5360
	ds_load_u8 v15, v234 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v234 offset:5616
	ds_load_u8 v16, v234 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v234 offset:5872
	ds_load_u8 v17, v234 offset:5744
	v_lshl_or_b32 v15, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v17, 0, v50
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v234 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[13:14], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:6384
	ds_load_u8 v13, v234 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	ds_load_u8 v13, v234 offset:6640
	ds_load_u8 v14, v234 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v234 offset:6896
	ds_load_u8 v15, v234 offset:6768
	v_lshl_or_b32 v13, v13, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v15, 0, v49
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v15, v15
	ds_load_u8 v16, v234 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v15, 16, v14
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[11:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v234 offset:7408
	ds_load_u8 v11, v234 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v0, 0xc0c0004
	ds_load_u8 v0, v234 offset:7664
	ds_load_u8 v12, v234 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v12, v0, 0xc0c0004
	ds_load_u8 v12, v234 offset:7920
	ds_load_u8 v13, v234 offset:7792
	v_lshl_or_b32 v11, v0, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v13, 0, v48
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v14, v234 offset:8048
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v13, 16, v12
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v0, v1
	v_cvt_f32_i32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_9:
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	scratch_load_b32 v1, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 232 36 is_stmt 0              ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s3, s33, s3
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s14
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	s_mul_i32 s34, s34, s35
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v25
	s_and_b32 s1, s1, 0xffff
	.loc	1 232 26 is_stmt 1              ; generate_amdgcn.py:232:26
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s3, v1, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s3, s7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v10, 4, v1
	v_add_nc_u32_e32 v11, 8, v1
	v_add_nc_u32_e32 v12, 12, v1
	v_add_nc_u32_e32 v13, 16, v1
	v_add_nc_u32_e32 v14, 20, v1
	v_add_nc_u32_e32 v15, 24, v1
	v_add_nc_u32_e32 v16, 28, v1
	v_cndmask_b32_e64 v2, 0x80000000, v1, s2
	v_add_nc_u32_e32 v17, 32, v1
	v_add_nc_u32_e32 v18, 36, v1
	v_add_nc_u32_e32 v19, 40, v1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	s_clause 0x7
	buffer_load_u16 v20, v2, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v17, s2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s2
	v_cndmask_b32_e64 v18, 0x80000000, v19, s2
	v_add_nc_u32_e32 v19, 44, v1
	v_add_nc_u32_e32 v21, 48, v1
	v_add_nc_u32_e32 v22, 52, v1
	v_add_nc_u32_e32 v23, 56, v1
	v_add_nc_u32_e32 v24, 60, v1
	v_add_nc_u32_e32 v36, 64, v1
	v_add_nc_u32_e32 v37, 0x44, v1
	v_add_nc_u32_e32 v38, 0x48, v1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	s_clause 0x7
	buffer_load_u16 v39, v2, s[4:7], 0 offen
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v36, s2
	v_cndmask_b32_e64 v36, 0x80000000, v37, s2
	v_cndmask_b32_e64 v37, 0x80000000, v38, s2
	v_add_nc_u32_e32 v38, 0x4c, v1
	v_add_nc_u32_e32 v40, 0x50, v1
	v_add_nc_u32_e32 v41, 0x54, v1
	v_add_nc_u32_e32 v42, 0x58, v1
	v_add_nc_u32_e32 v43, 0x5c, v1
	v_add_nc_u32_e32 v44, 0x60, v1
	v_add_nc_u32_e32 v45, 0x64, v1
	v_add_nc_u32_e32 v46, 0x68, v1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	s_clause 0x7
	buffer_load_u16 v47, v2, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v44, s2
	v_cndmask_b32_e64 v44, 0x80000000, v45, s2
	v_cndmask_b32_e64 v45, 0x80000000, v46, s2
	v_add_nc_u32_e32 v46, 0x6c, v1
	v_add_nc_u32_e32 v48, 0x70, v1
	v_add_nc_u32_e32 v49, 0x74, v1
	v_add_nc_u32_e32 v50, 0x78, v1
	v_add_nc_u32_e32 v51, 0x7c, v1
	v_add_nc_u32_e32 v52, 0x80, v1
	v_add_nc_u32_e32 v53, 0x84, v1
	v_add_nc_u32_e32 v54, 0x88, v1
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	s_clause 0x7
	buffer_load_u16 v55, v2, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v52, s2
	v_cndmask_b32_e64 v52, 0x80000000, v53, s2
	v_cndmask_b32_e64 v53, 0x80000000, v54, s2
	v_add_nc_u32_e32 v54, 0x8c, v1
	v_add_nc_u32_e32 v56, 0x90, v1
	v_add_nc_u32_e32 v57, 0x94, v1
	v_add_nc_u32_e32 v58, 0x98, v1
	v_add_nc_u32_e32 v59, 0x9c, v1
	v_add_nc_u32_e32 v60, 0xa0, v1
	v_add_nc_u32_e32 v61, 0xa4, v1
	v_add_nc_u32_e32 v62, 0xa8, v1
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	v_cndmask_b32_e64 v56, 0x80000000, v56, s2
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	s_clause 0x7
	buffer_load_u16 v63, v2, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v60, s2
	v_cndmask_b32_e64 v60, 0x80000000, v61, s2
	v_cndmask_b32_e64 v61, 0x80000000, v62, s2
	v_add_nc_u32_e32 v62, 0xac, v1
	v_add_nc_u32_e32 v64, 0xb0, v1
	v_add_nc_u32_e32 v65, 0xb4, v1
	v_add_nc_u32_e32 v66, 0xb8, v1
	v_add_nc_u32_e32 v67, 0xbc, v1
	v_add_nc_u32_e32 v68, 0xc0, v1
	v_add_nc_u32_e32 v69, 0xc4, v1
	v_add_nc_u32_e32 v70, 0xc8, v1
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	s_clause 0x7
	buffer_load_u16 v71, v2, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	buffer_load_u16 v65, v65, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v68, s2
	v_cndmask_b32_e64 v68, 0x80000000, v69, s2
	v_cndmask_b32_e64 v69, 0x80000000, v70, s2
	v_add_nc_u32_e32 v70, 0xcc, v1
	v_add_nc_u32_e32 v72, 0xd0, v1
	v_add_nc_u32_e32 v73, 0xd4, v1
	v_add_nc_u32_e32 v74, 0xd8, v1
	v_add_nc_u32_e32 v75, 0xdc, v1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	s_clause 0x7
	buffer_load_u16 v79, v2, s[4:7], 0 offen
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	v_add_nc_u32_e32 v76, 0xe0, v1
	v_add_nc_u32_e32 v77, 0xe4, v1
	v_add_nc_u32_e32 v78, 0xe8, v1
	v_add_nc_u32_e32 v80, 0xf0, v1
	v_add_nc_u32_e32 v81, 0xf4, v1
	v_cndmask_b32_e64 v2, 0x80000000, v76, s2
	v_cndmask_b32_e64 v76, 0x80000000, v77, s2
	v_cndmask_b32_e64 v77, 0x80000000, v78, s2
	v_add_nc_u32_e32 v78, 0xec, v1
	v_add_nc_u32_e32 v82, 0xf8, v1
	v_add_nc_u32_e32 v1, 0xfc, v1
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x7
	buffer_load_u16 v83, v2, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v84, v1, s[4:7], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v2.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.h, v26.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v86, v112, v2
	v_mul_f32_e32 v6, v6, v2
	v_mul_f32_e32 v26, v27, v2
	v_mul_f32_e32 v27, v28, v2
	v_mul_f32_e32 v28, v29, v2
	v_mul_f32_e32 v29, v30, v2
	v_mul_f32_e32 v30, v31, v2
	v_mul_f32_e32 v96, v122, v2
	v_mul_f32_e32 v130, v158, v2
	v_mul_f32_e32 v31, v32, v2
	v_mul_f32_e32 v32, v33, v2
	v_mul_f32_e32 v102, v128, v2
	v_mul_f32_e32 v0, v0, v2
	v_mul_f32_e32 v90, v116, v2
	v_mul_f32_e32 v91, v117, v2
	v_mul_f32_e32 v98, v124, v2
	v_mul_f32_e32 v108, v136, v2
	v_mul_f32_e32 v116, v144, v2
	v_mul_f32_e32 v124, v152, v2
	v_mul_f32_e32 v33, v110, v2
	v_mul_f32_e32 v89, v115, v2
	v_mul_f32_e32 v99, v125, v2
	v_mul_f32_e32 v106, v134, v2
	v_mul_f32_e32 v115, v143, v2
	v_mul_f32_e32 v128, v156, v2
	v_mul_f32_e32 v88, v114, v2
	v_mul_f32_e32 v93, v119, v2
	v_mul_f32_e32 v95, v121, v2
	v_mul_f32_e32 v101, v127, v2
	v_mul_f32_e32 v119, v147, v2
	v_mul_f32_e32 v8, v8, v2
	v_mul_f32_e32 v85, v111, v2
	v_mul_f32_e32 v3, v3, v2
	v_mul_f32_e32 v4, v4, v2
	v_mul_f32_e32 v92, v118, v2
	v_mul_f32_e32 v100, v126, v2
	v_mul_f32_e32 v34, v34, v2
	v_mul_f32_e32 v35, v35, v2
	v_mul_f32_e32 v109, v137, v2
	v_mul_f32_e32 v110, v138, v2
	v_mul_f32_e32 v117, v145, v2
	v_mul_f32_e32 v118, v146, v2
	v_mul_f32_e32 v125, v153, v2
	v_mul_f32_e32 v126, v154, v2
	v_mul_f32_e32 v5, v5, v2
	v_mul_f32_e32 v87, v113, v2
	v_mul_f32_e32 v94, v120, v2
	v_mul_f32_e32 v107, v135, v2
	v_mul_f32_e32 v127, v155, v2
	v_mul_f32_e32 v111, v139, v2
	v_mul_f32_e32 v120, v148, v2
	v_mul_f32_e32 v129, v157, v2
	v_mul_f32_e32 v9, v9, v2
	v_mul_f32_e32 v97, v123, v2
	v_mul_f32_e32 v103, v131, v2
	v_mul_f32_e32 v105, v133, v2
	v_mul_f32_e32 v112, v140, v2
	v_mul_f32_e32 v114, v142, v2
	v_mul_f32_e32 v121, v149, v2
	v_mul_f32_e32 v123, v151, v2
	v_mul_f32_e32 v104, v132, v2
	v_mul_f32_e32 v113, v141, v2
	v_mul_f32_e32 v122, v150, v2
	v_mul_f32_e32 v7, v7, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v29, v12, v223
	v_fma_f32 v13, v30, v13, v222
	v_fma_f32 v11, v28, v11, v224
	v_fma_f32 v15, v32, v15, v220
	v_fma_f32 v16, v33, v16, v219
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v223, v12, s2
	v_cndmask_b32_e64 v13, v222, v13, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v31, v14, v221
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v220, v15, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v224, v11, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v221, v14, s2
	v_cndmask_b32_e64 v16, v219, v16, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v86, v17, v217
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v11, v11, v11
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v88, v19, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v217, v17, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v215, v19, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v27, v10, v225
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v225, v10, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v96, v38, v207
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	s_waitcnt vmcnt(40)
	v_dual_max_f32 v10, v10, v10 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v91, v23, v212
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v207, v30, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v33, v99, v42, v204
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v212, v23, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v204, v33, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v38, v102, v44, v201
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v201, v38, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v42, v106, v51, v195
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v195, v42, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v54, 16, v54
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v44, v108, v52, v193
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v193, v44, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v71, 16, v71
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v60, 16, v60
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v62, 16, v62
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v51, v115, v71, v186
	v_fma_f32 v52, v116, v60, v185
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v66, 16, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v51, v186, v51, s2
	v_cndmask_b32_e64 v52, v185, v52, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v79, 16, v79
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v68, 16, v68
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v69, 16, v69
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v70, 16, v70
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v72, 16, v72
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v60, v124, v68, v175
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v68, 0, v10
	v_max_f32_e32 v10, v12, v12
	v_dual_max_f32 v12, v13, v13 :: v_dual_max_f32 v13, v15, v15
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v20, 16, v20
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v29, v95, v37, v208
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v71, 0, v13
	v_max_f32_e32 v13, v17, v17
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v26, v20, v178
	v_fma_f32 v37, v101, v55, v202
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v119, v64, v182
	v_fma_f32 v64, v128, v73, v171
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v73, 0, v13
	v_dual_max_f32 v13, v23, v23 :: v_dual_lshlrev_b32 v36, 16, v36
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v85, v39, v218
	v_fma_f32 v3, v3, v77, v166
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v178, v20, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v202, v37, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v77, 0, v13 :: v_dual_lshlrev_b32 v46, 16, v46
	v_max_f32_e32 v13, v30, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v41, 16, v41
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v80, v231
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v218, v26, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v20, v20, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v89, v21, v214
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v80, 0, v13
	v_max_f32_e32 v13, v37, v37
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v35, v35, v46, v199
	v_fma_f32 v46, v110, v54, v191
	v_fma_f32 v54, v118, v62, v183
	v_fma_f32 v62, v126, v70, v173
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v70, 0, v10
	v_max_f32_e32 v10, v16, v16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v34, v34, v45, v200
	v_fma_f32 v45, v109, v53, v192
	v_fma_f32 v53, v117, v61, v184
	v_fma_f32 v61, v125, v69, v174
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v69, 0, v11
	v_max_f32_e32 v11, v14, v14
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v214, v21, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v14, v19, v19
	v_dual_max_f32 v16, 0, v11 :: v_dual_max_f32 v11, v26, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v22, v90, v22, v213
	v_fma_f32 v27, v93, v47, v210
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v94, v36, v209
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v19, 0, v11
	v_max_f32_e32 v11, v21, v21
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v87, v18, v216
	v_fma_f32 v36, v100, v43, v203
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v213, v22, s2
	v_cndmask_b32_e64 v27, v210, v27, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v216, v18, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v63, 16, v63
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v98, v41, v205
	v_fma_f32 v47, v111, v56, v190
	v_fma_f32 v56, v120, v65, v181
	v_fma_f32 v43, v107, v63, v194
	v_fma_f32 v63, v127, v72, v172
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v72, 0, v10
	v_dual_max_f32 v10, v18, v18 :: v_dual_lshlrev_b32 v57, 16, v57
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v65, v129, v74, v170
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v209, v28, s2
	v_cndmask_b32_e64 v46, v191, v46, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v74, 0, v10
	v_max_f32_e32 v10, v22, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v37, 0, v13 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v76, v167
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v205, v32, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v76, 0, v10 :: v_dual_lshlrev_b32 v75, 16, v75
	v_max_f32_e32 v10, v28, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v41, v105, v50, v196
	v_fma_f32 v50, v114, v59, v187
	v_fma_f32 v59, v123, v79, v176
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v79, 0, v10
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v39, v103, v48, v198
	v_fma_f32 v48, v112, v57, v189
	v_fma_f32 v57, v121, v66, v179
	v_fma_f32 v66, v130, v75, v169
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v75, 0, v14
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v92, v24, v211
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v208, v29, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v22, 0, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v211, v24, s2
	v_cndmask_b32_e64 v36, v203, v36, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	s_waitcnt vmcnt(2)
	v_dual_max_f32 v14, v27, v27 :: v_dual_lshlrev_b32 v81, 16, v81
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v78, v227
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v11, v24, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v200, v34, s2
	v_cndmask_b32_e64 v35, v199, v35, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v78, 0, v14
	v_max_f32_e32 v14, v32, v32
	v_dual_max_f32 v28, 0, v11 :: v_dual_max_f32 v11, v29, v29
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v97, v40, v206
	v_fma_f32 v40, v104, v49, v197
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v198, v39, s2
	v_cndmask_b32_e64 v41, v196, v41, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v32, 0, v11
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v206, v31, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v11, v33, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v197, v40, s2
	v_cndmask_b32_e64 v53, v184, v53, s2
	v_cndmask_b32_e64 v55, v182, v55, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v31, v31
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v194, v43, s2
	v_cndmask_b32_e64 v45, v192, v45, s2
	v_cndmask_b32_e64 v59, v176, v59, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v33, 0, v10 :: v_dual_max_f32 v10, v36, v36
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v81, v230
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v81, 0, v14 :: v_dual_max_f32 v36, 0, v11
	v_max_f32_e32 v11, v38, v38
	v_max_f32_e32 v14, v34, v34
	v_max_f32_e32 v34, 0, v10
	v_dual_max_f32 v10, v35, v35 :: v_dual_max_f32 v13, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, 0, v11
	v_max_f32_e32 v11, v39, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v113, v58, v188
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v39, 0, v10 :: v_dual_max_f32 v10, v41, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v189, v48, s2
	v_cndmask_b32_e64 v50, v187, v50, s2
	v_cndmask_b32_e64 v56, v181, v56, s2
	v_cndmask_b32_e64 v60, v175, v60, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v38, 0, v14
	v_max_f32_e32 v14, v42, v42
	v_dual_max_f32 v40, 0, v11 :: v_dual_max_f32 v41, 0, v13
	v_dual_max_f32 v11, v43, v43 :: v_dual_max_f32 v42, 0, v10
	v_dual_max_f32 v10, v44, v44 :: v_dual_max_f32 v13, v45, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v190, v47, s2
	v_cndmask_b32_e64 v49, v188, v49, s2
	v_cndmask_b32_e64 v63, v172, v63, s2
	v_cndmask_b32_e64 v65, v170, v65, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v44, 0, v11 :: v_dual_max_f32 v11, v46, v46
	v_dual_max_f32 v45, 0, v10 :: v_dual_max_f32 v46, 0, v13
	v_dual_max_f32 v10, v48, v48 :: v_dual_max_f32 v13, v50, v50
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v0, v83, v168
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v169, v66, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v43, 0, v14 :: v_dual_max_f32 v14, v47, v47
	v_max_f32_e32 v47, 0, v11
	v_max_f32_e32 v11, v49, v49
	v_dual_max_f32 v49, 0, v10 :: v_dual_max_f32 v10, v51, v51
	v_max_f32_e32 v51, 0, v13
	v_max_f32_e32 v13, v55, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v183, v54, s2
	v_cndmask_b32_e64 v0, v168, v0, s2
	v_cndmask_b32_e64 v9, v167, v9, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v50, 0, v11 :: v_dual_max_f32 v11, v53, v53
	v_max_f32_e32 v29, 0, v13
	v_max_f32_e32 v13, v60, v60
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v227, v4, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v48, 0, v14
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v24, 0, v13
	v_dual_max_f32 v13, v65, v65 :: v_dual_max_f32 v14, v52, v52
	v_max_f32_e32 v52, 0, v10
	v_max_f32_e32 v10, v54, v54
	v_dual_max_f32 v54, 0, v11 :: v_dual_max_f32 v11, v56, v56
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v179, v57, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v58, v122, v67, v177
	v_fma_f32 v8, v8, v84, v226
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v62, v173, v62, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v30, 0, v11
	v_max_f32_e32 v11, v59, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v230, v6, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v15, 0, v13
	v_dual_max_f32 v53, 0, v14 :: v_dual_max_f32 v14, v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v23, 0, v11
	v_max_f32_e32 v11, v63, v63
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v82, v228
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v177, v58, s2
	v_cndmask_b32_e64 v3, v166, v3, s2
	v_cndmask_b32_e64 v8, v226, v8, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v26, 0, v14 :: v_dual_max_f32 v17, 0, v11
	v_max_f32_e32 v11, v66, v66
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v56.h, v2.l
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v14, v62, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v174, v61, s2
	v_cndmask_b32_e64 v5, v231, v5, s2
	v_cndmask_b32_e64 v7, v228, v7, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v67, 0, v20 :: v_dual_max_f32 v20, 0, v14
	v_dual_max_f32 v14, 0, v11 :: v_dual_max_f32 v11, 0, v0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v60.h, v2.l
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v0, v3, v3 :: v_dual_max_f32 v3, v4, v4
	v_max_f32_e32 v55, 0, v10
	v_max_f32_e32 v10, v58, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v64, v171, v64, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v13, 0, v9
	v_dual_max_f32 v4, v5, v5 :: v_dual_max_f32 v5, v6, v6
	v_max_f32_e32 v9, 0, v0
	v_dual_max_f32 v27, 0, v10 :: v_dual_max_f32 v0, v7, v7
	v_max_f32_e32 v10, v61, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v7, 0, v5
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v31, s35, v160
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.h, v2.l
	.loc	1 240 19 is_stmt 1              ; generate_amdgcn.py:240:19
	v_max_f32_e32 v5, 0, v0
	v_dual_max_f32 v21, 0, v10 :: v_dual_max_f32 v10, v64, v64
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v0, v68, v68
	v_mul_f32_e32 v58, v69, v69
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, 0, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.h, v2.l
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v18, 0, v10 :: v_dual_mul_f32 v19, v19, v19
	v_dual_max_f32 v10, 0, v3 :: v_dual_mul_f32 v61, v22, v22
	v_dual_max_f32 v3, v8, v8 :: v_dual_mul_f32 v8, v67, v67
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v0.h
	v_mov_b16_e32 v59.l, v58.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v4, 0, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v56.l, v8.h
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add3_u32 v3, s34, s33, v31
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v12, v12, v12 :: v_dual_mul_f32 v33, v33, v33
	v_mul_f32_e32 v35, v35, v35
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v31, 1, v56
	v_and_b32_e32 v56, 1, v57
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v57, v70, v70
	v_mul_f32_e32 v37, v37, v37
	v_mul_f32_e32 v39, v39, v39
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v8, v8, v31, 0x7fff
	v_mov_b16_e32 v31.h, v2.l
	v_mov_b16_e32 v31.l, v57.h
	v_add3_u32 v0, v0, v56, 0x7fff
	v_and_b32_e32 v56, 1, v59
	v_mov_b16_e32 v0.l, v8.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v41, v41, v41 :: v_dual_and_b32 v8, 1, v31
	v_mul_f32_e32 v32, v32, v32
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v31, v58, v56, 0x7fff
	v_mov_b16_e32 v56.l, v16.h
	v_mov_b16_e32 v58.l, v12.h
	v_mov_b16_e32 v58.h, v2.l
	v_mov_b16_e32 v56.h, v2.l
	v_add3_u32 v8, v57, v8, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v57, v71, v71
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v8.l, v31.h
	v_and_b32_e32 v31, 1, v58
	v_and_b32_e32 v56, 1, v56
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v58, v72, v72
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.l, v57.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v36, v36, v36
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v31, v12, v31, 0x7fff
	v_add3_u32 v12, v16, v56, 0x7fff
	v_mov_b16_e32 v16.l, v58.h
	v_mov_b16_e32 v16.h, v2.l
	v_and_b32_e32 v56, 1, v59
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v59, v73, v73
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v12.l, v31.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v34, v34, v34
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v31, v57, v56, 0x7fff
	v_mov_b16_e32 v56.l, v59.h
	v_mov_b16_e32 v57.l, v19.h
	v_mov_b16_e32 v57.h, v2.l
	v_mov_b16_e32 v56.h, v2.l
	v_add3_u32 v16, v58, v16, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v58, v74, v74
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v16.l, v31.h
	v_and_b32_e32 v31, 1, v57
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v57, v75, v75 :: v_dual_and_b32 v56, 1, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v60.l, v58.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v29, v29, v29
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v31, v19, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v19, v59, v56, 0x7fff
	v_mov_b16_e32 v56.l, v57.h
	v_mov_b16_e32 v56.h, v2.l
	v_and_b32_e32 v59, 1, v60
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v60, v76, v76
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v19.l, v31.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v21, v21, v21 :: v_dual_and_b32 v22, 1, v56
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v31, v58, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v56.l, v60.h
	v_mov_b16_e32 v58.l, v61.h
	v_mov_b16_e32 v58.h, v2.l
	v_add3_u32 v22, v57, v22, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v57, v77, v77
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v22.l, v31.h
	v_and_b32_e32 v56, 1, v56
	v_and_b32_e32 v31, 1, v58
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v58, v28, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.l, v57.h
	v_mov_b16_e32 v59.h, v2.l
	v_add3_u32 v28, v60, v56, 0x7fff
	v_add3_u32 v31, v61, v31, 0x7fff
	v_mov_b16_e32 v56.l, v58.h
	v_mov_b16_e32 v56.h, v2.l
	v_and_b32_e32 v59, 1, v59
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v60, v79, v79 :: v_dual_mul_f32 v61, v78, v78
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v28.l, v31.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v31, 1, v56
	v_add3_u32 v56, v57, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v57.l, v60.h
	v_mov_b16_e32 v59.l, v61.h
	v_mov_b16_e32 v59.h, v2.l
	v_mov_b16_e32 v57.h, v2.l
	v_add3_u32 v31, v58, v31, 0x7fff
	v_mov_b16_e32 v31.l, v56.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v58, v80, v80
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v56, 1, v59
	v_and_b32_e32 v57, 1, v57
	v_mov_b16_e32 v59.l, v32.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v40, v40, v40 :: v_dual_mul_f32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v56, v61, v56, 0x7fff
	v_add3_u32 v57, v60, v57, 0x7fff
	v_mov_b16_e32 v60.l, v58.h
	v_mov_b16_e32 v60.h, v2.l
	v_and_b32_e32 v59, 1, v59
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v61, v81, v81
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v56.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v23, v23, v23 :: v_dual_and_b32 v56, 1, v60
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v32, v32, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v59.l, v61.h
	v_mov_b16_e32 v60.l, v33.h
	v_mov_b16_e32 v59.h, v2.l
	v_add3_u32 v56, v58, v56, 0x7fff
	v_mov_b16_e32 v56.l, v32.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v32, 1, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v58, 1, v59
	v_mov_b16_e32 v59.l, v36.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v17, v17, v17
	v_mul_f32_e32 v13, v13, v13
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v32, v33, v32, 0x7fff
	v_add3_u32 v33, v61, v58, 0x7fff
	v_mov_b16_e32 v58.l, v34.h
	v_mov_b16_e32 v58.h, v2.l
	v_and_b32_e32 v59, 1, v59
	v_mov_b16_e32 v33.l, v32.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v9, v9, v9 :: v_dual_and_b32 v32, 1, v58
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v36, v36, v59, 0x7fff
	v_mov_b16_e32 v59.l, v37.h
	v_mov_b16_e32 v59.h, v2.l
	v_mov_b16_e32 v58.l, v35.h
	v_add3_u32 v32, v34, v32, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v34, v38, v38
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v32.l, v36.h
	v_and_b32_e32 v36, 1, v59
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v7, v7, v7 :: v_dual_and_b32 v38, 1, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v58.l, v34.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v5, v5, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v36, v37, v36, 0x7fff
	v_mov_b16_e32 v37.l, v39.h
	v_mov_b16_e32 v37.h, v2.l
	v_add3_u32 v35, v35, v38, 0x7fff
	v_and_b32_e32 v38, 1, v58
	v_mov_b16_e32 v35.l, v36.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v24, v24, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v36, 1, v37
	v_mov_b16_e32 v37.l, v41.h
	v_add3_u32 v34, v34, v38, 0x7fff
	v_mov_b16_e32 v38.l, v40.h
	v_mov_b16_e32 v38.h, v2.l
	v_add3_u32 v36, v39, v36, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v39, v42, v42
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v36.l, v34.h
	v_and_b32_e32 v37, 1, v37
	v_and_b32_e32 v34, 1, v38
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v38, v43, v43
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v42.l, v39.h
	v_mov_b16_e32 v42.h, v2.l
	v_add3_u32 v37, v41, v37, 0x7fff
	v_add3_u32 v34, v40, v34, 0x7fff
	v_mov_b16_e32 v40.l, v38.h
	v_mov_b16_e32 v40.h, v2.l
	v_and_b32_e32 v41, 1, v42
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v42, v45, v45 :: v_dual_mul_f32 v43, v44, v44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v37.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v34, 1, v40
	v_add3_u32 v39, v39, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v42.h
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v2.l
	v_add3_u32 v34, v38, v34, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v38, v46, v46
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v39.h
	v_and_b32_e32 v40, 1, v40
	v_and_b32_e32 v39, 1, v41
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v41, v47, v47
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v44.l, v38.h
	v_mov_b16_e32 v44.h, v2.l
	v_add3_u32 v40, v42, v40, 0x7fff
	v_add3_u32 v39, v43, v39, 0x7fff
	v_mov_b16_e32 v42.l, v41.h
	v_mov_b16_e32 v42.h, v2.l
	v_and_b32_e32 v43, 1, v44
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v44, v49, v49 :: v_dual_mul_f32 v45, v48, v48
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v42
	v_add3_u32 v38, v38, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v44.h
	v_mov_b16_e32 v43.l, v45.h
	v_mov_b16_e32 v43.h, v2.l
	v_add3_u32 v39, v41, v39, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v41, v50, v50
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v39.l, v38.h
	v_and_b32_e32 v42, 1, v42
	v_and_b32_e32 v38, 1, v43
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v43, v51, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v46.l, v41.h
	v_mov_b16_e32 v46.h, v2.l
	v_add3_u32 v42, v44, v42, 0x7fff
	v_add3_u32 v38, v45, v38, 0x7fff
	v_mov_b16_e32 v44.l, v43.h
	v_mov_b16_e32 v44.h, v2.l
	v_and_b32_e32 v45, 1, v46
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v46, v53, v53 :: v_dual_mul_f32 v47, v52, v52
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v42.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v38, 1, v44
	v_add3_u32 v41, v41, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v46.h
	v_mov_b16_e32 v45.l, v47.h
	v_mov_b16_e32 v45.h, v2.l
	v_add3_u32 v38, v43, v38, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v43, v54, v54
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v38.l, v41.h
	v_and_b32_e32 v44, 1, v44
	v_and_b32_e32 v41, 1, v45
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v45, v55, v55
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v48.l, v43.h
	v_mov_b16_e32 v48.h, v2.l
	v_add3_u32 v44, v46, v44, 0x7fff
	v_add3_u32 v41, v47, v41, 0x7fff
	v_mov_b16_e32 v46.l, v45.h
	v_mov_b16_e32 v46.h, v2.l
	v_and_b32_e32 v47, 1, v48
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v4, v4, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v44.l, v41.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v6, v6, v6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v41, 1, v46
	v_add3_u32 v43, v43, v47, 0x7fff
	v_mov_b16_e32 v47.l, v29.h
	v_mov_b16_e32 v47.h, v2.l
	s_mov_b32 s2, 0x76543210
	v_add3_u32 v41, v45, v41, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v47
	v_add3_u32 v29, v29, v43, 0x7fff
	v_mov_b16_e32 v43.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v30, v30, v30
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v43.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v46.l, v30.h
	v_and_b32_e32 v45, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v30, v45, 0x7fff
	v_mov_b16_e32 v30.l, v29.h
	v_and_b32_e32 v29, 1, v43
	v_mov_b16_e32 v43.l, v24.h
	v_cndmask_b32_e32 v25, v36, v34, vcc_lo
	v_add3_u32 v27, v27, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v29, 1, v43
	v_mov_b16_e32 v43.l, v21.h
	v_add3_u32 v24, v24, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v43
	v_add3_u32 v21, v21, v29, 0x7fff
	v_mov_b16_e32 v29.l, v17.h
	v_mov_b16_e32 v29.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v46.l, v26.h
	v_and_b32_e32 v45, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v26, v45, 0x7fff
	v_mov_b16_e32 v45.l, v23.h
	v_mov_b16_e32 v45.h, v2.l
	v_mov_b16_e32 v27.l, v26.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v26, 1, v45
	v_add3_u32 v23, v23, v26, 0x7fff
	v_mov_b16_e32 v26.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v23.h
	v_mov_b16_e32 v26.l, v20.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v26
	v_add3_u32 v20, v20, v23, 0x7fff
	v_mov_b16_e32 v20.l, v21.h
	v_and_b32_e32 v21, 1, v29
	v_cndmask_b32_e32 v29, v38, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v17, v21, 0x7fff
	v_mov_b16_e32 v21.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v14, v14, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v21.l, v14.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v26.l, v18.h
	v_and_b32_e32 v23, 1, v26
	v_mov_b16_e32 v26.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v23, 0x7fff
	v_and_b32_e32 v23, 1, v26
	v_mov_b16_e32 v18.l, v17.h
	v_and_b32_e32 v17, 1, v21
	v_mov_b16_e32 v21.l, v13.h
	v_mov_b16_e32 v26.l, v9.h
	v_add3_u32 v15, v15, v23, 0x7fff
	v_mov_b16_e32 v23.l, v11.h
	v_mov_b16_e32 v23.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v10, v10, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v14, v14, v17, 0x7fff
	v_and_b32_e32 v17, 1, v21
	v_mov_b16_e32 v14.l, v15.h
	v_and_b32_e32 v21, 1, v23
	v_mov_b16_e32 v23.l, v10.h
	v_and_b32_e32 v15, 1, v26
	v_add3_u32 v13, v13, v17, 0x7fff
	v_cndmask_b32_e32 v26, v42, v40, vcc_lo
	v_add3_u32 v11, v11, v21, 0x7fff
	v_and_b32_e32 v17, 1, v23
	v_add3_u32 v9, v9, v15, 0x7fff
	v_mov_b16_e32 v21.l, v4.h
	v_mov_b16_e32 v21.h, v2.l
	v_mov_b16_e32 v13.l, v11.h
	v_add3_u32 v10, v10, v17, 0x7fff
	v_mov_b16_e32 v17.l, v5.h
	v_mov_b16_e32 v17.h, v2.l
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v15.h, v2.l
	v_mov_b16_e32 v11.h, v2.l
	v_mov_b16_e32 v11.l, v7.h
	v_and_b32_e32 v2, 1, v17
	v_mov_b16_e32 v10.l, v9.h
	v_and_b32_e32 v9, 1, v21
	v_and_b32_e32 v15, 1, v15
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v2, v5, v2, 0x7fff
	v_cndmask_b32_e32 v21, v37, v35, vcc_lo
	v_add3_u32 v4, v4, v9, 0x7fff
	v_cndmask_b32_e32 v9, v28, v19, vcc_lo
	v_add3_u32 v5, v7, v11, 0x7fff
	v_mov_b16_e32 v4.l, v2.h
	v_cndmask_b32_e32 v2, v12, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v12, vcc_lo
	v_add3_u32 v6, v6, v15, 0x7fff
	v_cndmask_b32_e32 v7, v16, v8, vcc_lo
	v_dual_cndmask_b32 v11, v31, v22 :: v_dual_cndmask_b32 v12, v22, v31
	v_cndmask_b32_e32 v15, v33, v57, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v5.l, v6.h
	v_cndmask_b32_e32 v6, v8, v16, vcc_lo
	v_cndmask_b32_e32 v8, v19, v28, vcc_lo
	v_dual_cndmask_b32 v16, v57, v33 :: v_dual_cndmask_b32 v17, v32, v56
	v_dual_cndmask_b32 v19, v56, v32 :: v_dual_cndmask_b32 v22, v35, v37
	v_dual_cndmask_b32 v23, v34, v36 :: v_dual_cndmask_b32 v28, v40, v42
	v_cndmask_b32_e32 v33, v27, v41, vcc_lo
	v_cndmask_b32_e32 v27, v41, v27, vcc_lo
	v_dual_cndmask_b32 v35, v14, v20 :: v_dual_cndmask_b32 v36, v5, v13
	v_dual_cndmask_b32 v14, v20, v14 :: v_dual_cndmask_b32 v5, v13, v5
	v_mov_b32_e32 v20, 0x7632
	v_mov_b32_e32 v13, 0x5410
	v_dual_cndmask_b32 v37, v4, v10 :: v_dual_cndmask_b32 v4, v10, v4
	v_dual_cndmask_b32 v31, v39, v38 :: v_dual_cndmask_b32 v34, v18, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v10, 0x1054, v13, vcc_lo
	v_dual_cndmask_b32 v13, 0x3276, v20 :: v_dual_cndmask_b32 v18, v24, v18
	v_permlanex16_b32 v20, v6, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v8, v13, 8, v13
	v_cndmask_b32_e32 v32, v30, v44, vcc_lo
	v_cndmask_b32_e32 v30, v44, v30, vcc_lo
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v8, 0x760076, v8
	v_permlanex16_b32 v13, v16, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v19, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v22, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 4, v6
	v_lshl_or_b32 v8, v8, 4, v8
	v_permlanex16_b32 v22, v25, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v28, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 0x5040504, v6
	v_and_b32_e32 v39, 0x7060706, v8
	v_permlanex16_b32 v40, v14, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v31, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v20, v7, v38
	v_perm_b32 v7, v20, v7, v39
	v_perm_b32 v8, v24, v9, v38
	v_perm_b32 v9, v24, v9, v39
	v_perm_b32 v10, v12, v11, v38
	v_perm_b32 v11, v12, v11, v39
	v_perm_b32 v12, v13, v15, v38
	v_perm_b32 v13, v13, v15, v39
	v_perm_b32 v14, v16, v17, v38
	v_perm_b32 v15, v16, v17, v39
	v_perm_b32 v16, v19, v21, v38
	v_perm_b32 v17, v19, v21, v39
	v_perm_b32 v20, v25, v26, v38
	v_perm_b32 v21, v25, v26, v39
	v_perm_b32 v24, v30, v32, v38
	v_perm_b32 v25, v30, v32, v39
	v_perm_b32 v26, v27, v33, v38
	v_perm_b32 v27, v27, v33, v39
	v_and_b32_e32 v32, 0x1e0, v159
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v33, v3, v1, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_permlanex16_b32 v31, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_add_nc_u32_e32 v32, 64, v33
	v_add_nc_u32_e32 v3, 32, v33
	v_perm_b32 v4, v0, v2, v38
	v_perm_b32 v5, v0, v2, v39
	v_perm_b32 v18, v22, v23, v38
	v_perm_b32 v19, v22, v23, v39
	v_perm_b32 v22, v28, v29, v38
	v_perm_b32 v23, v28, v29, v39
	v_perm_b32 v28, v31, v34, v38
	v_perm_b32 v29, v31, v34, v39
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	v_cndmask_b32_e32 v34, 0x80000000, v33, vcc_lo
	v_perm_b32 v30, v40, v35, v38
	v_perm_b32 v31, v40, v35, v39
	v_cndmask_b32_e32 v35, 0x80000000, v3, vcc_lo
	s_mov_b32 s2, s6
	s_clause 0x2
	buffer_store_b128 v[4:7], v34, s[0:3], 0 offen
	buffer_store_b128 v[8:11], v35, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v32, s[0:3], 0 offen
	v_add_nc_u32_e32 v4, 0x60, v33
	v_add_nc_u32_e32 v5, 0x80, v33
	v_add_nc_u32_e32 v6, 0xa0, v33
	v_add_nc_u32_e32 v7, 0xc0, v33
	v_add_nc_u32_e32 v8, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_perm_b32 v0, v41, v36, v38
	v_perm_b32 v1, v41, v36, v39
	v_perm_b32 v2, v42, v37, v38
	v_perm_b32 v3, v42, v37, v39
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v4, s[0:3], 0 offen
	buffer_store_b128 v[20:23], v5, s[0:3], 0 offen
	buffer_store_b128 v[24:27], v6, s[0:3], 0 offen
	buffer_store_b128 v[28:31], v7, s[0:3], 0 offen
	buffer_store_b128 v[0:3], v8, s[0:3], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 836
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 836
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35252
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 836
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 836
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 208
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
