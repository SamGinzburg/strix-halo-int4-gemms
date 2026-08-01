	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v24, 2, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v23, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v25, 0x1e0, v0
	v_or_b32_e32 v184, 0x3f0, v0
	v_or_b32_e32 v185, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_or_b32_e32 v6, 32, v23
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
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
	s_sub_i32 s16, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s16, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s7
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v1, 28, v24
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s39, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[2:3], null, s34, v5, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s18, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s38, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s7
	s_cmp_ge_u32 s18, s7
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s7
	s_cselect_b32 s5, s19, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s18, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s19, s5, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s7, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s4, 0x7f
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s19, s17
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s18, v5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s24, s33, s6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s20, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s24
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s18, v23
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s25, s21, s4
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s20, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 64, v7
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s49, s35, 1
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s50, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s51, s25, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s48, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s22, s34, s18
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s6, s20, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s5, vcc_lo
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v2, s22, s48, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v117, 15, v0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s6, s4, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s18, v6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v49, 4, v117
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s23, s49, s18
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s7, s20, v9
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_add_i32 s22, s50, s23
	s_lshl_b32 s23, s35, 6
	v_mad_u64_u32 v[3:4], null, s49, v23, v[49:50]
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s7, s4, s7
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 s6, s2, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0xff
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v4, s22, v3
	v_add3_u32 v3, s22, s23, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v7, s35, v4
	v_add_nc_u32_e32 v8, s35, v3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v15, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e64 v19, 0x80000000, v8, s6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v2, v2, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x3
	buffer_load_b128 v[7:10], v4, s[36:39], 0 offen
	buffer_load_b128 v[11:14], v3, s[36:39], 0 offen
	buffer_load_b128 v[15:18], v15, s[36:39], 0 offen
	buffer_load_b128 v[19:22], v19, s[36:39], 0 offen
	v_lshlrev_b32_e32 v3, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 1, v25
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v187, 0, v24
	s_mov_b32 s6, -1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v188, 0, v3
	v_or_b32_e32 v186, v4, v117
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	scratch_store_b32 off, v4, off          ; 4-byte Folded Spill
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(4)
	ds_store_b32 v187, v2 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v188, v[7:10]
	s_waitcnt vmcnt(2)
	ds_store_b128 v188, v[11:14] offset:8192
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v188, v[15:18] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v188, v[19:22] offset:24576
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v2, v4, v117
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_or_b32_e32 v4, 0x3f0, v0
	v_or_b32_e32 v3, 0x7f0, v0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v120, 0x100, v2
	v_or_b32_e32 v121, 0x200, v2
	v_or_b32_e32 v122, 0x300, v2
	v_or_b32_e32 v123, 0x400, v2
	v_or_b32_e32 v124, 0x500, v2
	v_or_b32_e32 v125, 0x600, v2
	v_or_b32_e32 v126, 0x700, v2
	v_or_b32_e32 v127, 0x800, v2
	v_or_b32_e32 v128, 0x900, v2
	v_or_b32_e32 v129, 0xa00, v2
	v_or_b32_e32 v130, 0xb00, v2
	v_or_b32_e32 v131, 0xc00, v2
	v_or_b32_e32 v132, 0xd00, v2
	v_or_b32_e32 v133, 0xe00, v2
	v_or_b32_e32 v134, 0xf00, v2
	v_or_b32_e32 v135, 0x1000, v2
	v_or_b32_e32 v136, 0x1100, v2
	v_or_b32_e32 v137, 0x1200, v2
	v_or_b32_e32 v138, 0x1300, v2
	v_or_b32_e32 v139, 0x1400, v2
	v_or_b32_e32 v140, 0x1500, v2
	v_or_b32_e32 v141, 0x1600, v2
	v_or_b32_e32 v142, 0x1700, v2
	v_or_b32_e32 v143, 0x1800, v2
	v_or_b32_e32 v144, 0x1900, v2
	v_or_b32_e32 v145, 0x1a00, v2
	v_or_b32_e32 v146, 0x1b00, v2
	v_or_b32_e32 v147, 0x1c00, v2
	v_or_b32_e32 v148, 0x1d00, v2
	v_or_b32_e32 v149, 0x1e00, v2
	v_or_b32_e32 v150, 0x1f00, v2
	v_or_b32_e32 v151, 0x2000, v2
	v_or_b32_e32 v152, 0x2100, v2
	v_or_b32_e32 v153, 0x2200, v2
	v_or_b32_e32 v154, 0x2300, v2
	v_or_b32_e32 v155, 0x2400, v2
	v_or_b32_e32 v156, 0x2500, v2
	v_or_b32_e32 v157, 0x2600, v2
	v_or_b32_e32 v158, 0x2700, v2
	v_or_b32_e32 v159, 0x2800, v2
	v_or_b32_e32 v160, 0x2900, v2
	v_or_b32_e32 v161, 0x2a00, v2
	v_or_b32_e32 v162, 0x2b00, v2
	v_or_b32_e32 v163, 0x2c00, v2
	v_or_b32_e32 v164, 0x2d00, v2
	v_or_b32_e32 v165, 0x2e00, v2
	v_or_b32_e32 v166, 0x2f00, v2
	v_or_b32_e32 v167, 0x3000, v2
	v_or_b32_e32 v168, 0x3100, v2
	v_or_b32_e32 v169, 0x3200, v2
	v_or_b32_e32 v170, 0x3300, v2
	v_or_b32_e32 v171, 0x3400, v2
	v_or_b32_e32 v172, 0x3500, v2
	v_or_b32_e32 v173, 0x3600, v2
	v_or_b32_e32 v174, 0x3700, v2
	v_or_b32_e32 v175, 0x3800, v2
	v_or_b32_e32 v176, 0x3900, v2
	v_or_b32_e32 v177, 0x3a00, v2
	v_or_b32_e32 v178, 0x3b00, v2
	v_or_b32_e32 v179, 0x3c00, v2
	v_or_b32_e32 v180, 0x3d00, v2
	v_or_b32_e32 v181, 0x3e00, v2
	v_or_b32_e32 v182, 0x3f00, v2
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr146
                                        ; implicit-def: $vgpr147
                                        ; implicit-def: $vgpr148
                                        ; implicit-def: $vgpr149
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr152
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr154
                                        ; implicit-def: $vgpr155
                                        ; implicit-def: $vgpr156
                                        ; implicit-def: $vgpr157
                                        ; implicit-def: $vgpr158
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr162
                                        ; implicit-def: $vgpr163
                                        ; implicit-def: $vgpr164
                                        ; implicit-def: $vgpr165
                                        ; implicit-def: $vgpr166
                                        ; implicit-def: $vgpr167
                                        ; implicit-def: $vgpr168
                                        ; implicit-def: $vgpr169
                                        ; implicit-def: $vgpr170
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr172
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr174
                                        ; implicit-def: $vgpr175
                                        ; implicit-def: $vgpr176
                                        ; implicit-def: $vgpr177
                                        ; implicit-def: $vgpr178
                                        ; implicit-def: $vgpr179
                                        ; implicit-def: $vgpr180
                                        ; implicit-def: $vgpr181
                                        ; implicit-def: $vgpr182
.LBB0_3:                                ; %Flow485
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_bfe_u32 v8, v0, 4, 1
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v183, 0, v117
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v90, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s6, s51, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v2, s48, v117
	v_dual_mov_b32 v90, 0 :: v_dual_lshlrev_b32 v7, 1, v23
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v3, s19, 9, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v4, 16, v2
	v_lshl_or_b32 v7, s3, 7, v7
	v_sub_nc_u32_e32 v189, s20, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v6, s49, v3
	v_mul_lo_u32 v4, s51, v4
	s_lshl_b32 s0, s17, 9
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v193, 1, v8
	v_subrev_nc_u32_e32 v195, s0, v3
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v3, 0x81, v7
	v_subrev_nc_u32_e32 v194, s0, v6
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v196, 1, v4
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v4, 0xc1, v7
	s_lshl_b32 s0, s19, 8
	v_mul_lo_u32 v8, s51, v2
	v_mad_u64_u32 v[2:3], null, s35, v3, s[0:1]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[3:4], null, s35, v4, s[0:1]
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v4, 0xc0, v7
	s_add_i32 s53, s18, 64
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v6, 0x80, v7
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v7, s53, v5
	v_sub_nc_u32_e32 v191, s20, v5
	v_mad_u64_u32 v[4:5], null, s35, v4, s[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[5:6], null, s35, v6, s[0:1]
	v_mul_lo_u32 v6, s34, v7
	s_lshl_b32 s0, s17, 8
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v190, 0, v186
	v_or_b32_e32 v120, 0x100, v186
	v_or_b32_e32 v121, 0x200, v186
	v_or_b32_e32 v122, 0x300, v186
	v_or_b32_e32 v123, 0x400, v186
	v_or_b32_e32 v124, 0x500, v186
	v_or_b32_e32 v125, 0x600, v186
	v_or_b32_e32 v126, 0x700, v186
	v_or_b32_e32 v127, 0x800, v186
	v_or_b32_e32 v128, 0x900, v186
	v_or_b32_e32 v129, 0xa00, v186
	v_or_b32_e32 v130, 0xb00, v186
	v_or_b32_e32 v131, 0xc00, v186
	v_or_b32_e32 v132, 0xd00, v186
	v_or_b32_e32 v133, 0xe00, v186
	v_or_b32_e32 v134, 0xf00, v186
	v_or_b32_e32 v135, 0x1000, v186
	v_or_b32_e32 v136, 0x1100, v186
	v_or_b32_e32 v137, 0x1200, v186
	v_or_b32_e32 v138, 0x1300, v186
	v_or_b32_e32 v139, 0x1400, v186
	v_or_b32_e32 v140, 0x1500, v186
	v_or_b32_e32 v141, 0x1600, v186
	v_or_b32_e32 v142, 0x1700, v186
	v_or_b32_e32 v143, 0x1800, v186
	v_or_b32_e32 v144, 0x1900, v186
	v_or_b32_e32 v145, 0x1a00, v186
	v_or_b32_e32 v146, 0x1b00, v186
	v_or_b32_e32 v147, 0x1c00, v186
	v_or_b32_e32 v148, 0x1d00, v186
	v_or_b32_e32 v149, 0x1e00, v186
	v_or_b32_e32 v150, 0x1f00, v186
	v_or_b32_e32 v151, 0x2000, v186
	v_or_b32_e32 v152, 0x2100, v186
	v_or_b32_e32 v153, 0x2200, v186
	v_or_b32_e32 v154, 0x2300, v186
	v_or_b32_e32 v155, 0x2400, v186
	v_or_b32_e32 v156, 0x2500, v186
	v_or_b32_e32 v157, 0x2600, v186
	v_or_b32_e32 v158, 0x2700, v186
	v_or_b32_e32 v159, 0x2800, v186
	v_or_b32_e32 v160, 0x2900, v186
	v_or_b32_e32 v161, 0x2a00, v186
	v_or_b32_e32 v162, 0x2b00, v186
	v_or_b32_e32 v163, 0x2c00, v186
	v_or_b32_e32 v164, 0x2d00, v186
	v_or_b32_e32 v165, 0x2e00, v186
	v_or_b32_e32 v166, 0x2f00, v186
	v_or_b32_e32 v167, 0x3000, v186
	v_or_b32_e32 v168, 0x3100, v186
	v_or_b32_e32 v169, 0x3200, v186
	v_or_b32_e32 v170, 0x3300, v186
	v_or_b32_e32 v171, 0x3400, v186
	v_or_b32_e32 v172, 0x3500, v186
	v_or_b32_e32 v173, 0x3600, v186
	v_or_b32_e32 v174, 0x3700, v186
	v_or_b32_e32 v175, 0x3800, v186
	v_or_b32_e32 v176, 0x3900, v186
	v_or_b32_e32 v177, 0x3a00, v186
	v_or_b32_e32 v178, 0x3b00, v186
	v_or_b32_e32 v179, 0x3c00, v186
	v_or_b32_e32 v180, 0x3d00, v186
	v_or_b32_e32 v181, 0x3e00, v186
	v_or_b32_e32 v182, 0x3f00, v186
	v_sub_nc_u32_e32 v192, s20, v23
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v197, 1, v8
	v_subrev_nc_u32_e32 v198, s0, v2
	v_subrev_nc_u32_e32 v199, s0, v3
	v_subrev_nc_u32_e32 v200, s0, v4
	v_subrev_nc_u32_e32 v201, s0, v5
	v_add3_u32 v202, v6, s48, v1
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v102, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s16, 0
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s7, s6, 1
	s_lshl_b32 s52, s35, 2
	s_lshl_b32 s54, s35, 7
	s_lshl_b32 s34, s34, 6
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v1, v197, s[44:47], 0 offen
	buffer_load_u16 v2, v196, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s53, v191
	v_cmp_lt_i32_e64 s1, s53, v189
	v_cmp_lt_i32_e64 s0, s53, v192
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v73, 0, v184
	v_add_nc_u32_e32 v81, 0, v185
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, vcc_lo, s5
	s_and_b32 vcc_lo, s1, s4
	s_and_b32 s0, s0, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v197, 2, v197
	s_add_i32 s7, s7, -1
	s_add_i32 s53, s53, 64
	s_cmp_lg_u32 s7, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v24, s23 :: v_dual_mov_b32 v23, s22
	v_dual_mov_b32 v22, s21 :: v_dual_mov_b32 v21, s20
	v_dual_mov_b32 v20, s19 :: v_dual_mov_b32 v19, s18
	v_dual_mov_b32 v17, s16 :: v_dual_mov_b32 v18, s17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v196, 2, v196
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v205, 16, v2
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v2, v49, v200
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v204, 16, v1
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v1, 0x80000000, v202, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v200, s54, v200
	v_add_nc_u32_e32 v202, s34, v202
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v203, v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v11, v183 offset:33184
	ds_load_u8 v12, v183 offset:33152
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v1, v49, v201
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v201, s54, v201
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_load_b128 v[33:36], v1, s[36:39], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	buffer_load_b128 v[37:40], v1, s[36:39], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v1, v183 offset:32928
	ds_load_u8 v2, v183 offset:32896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:33248
	ds_load_u8 v13, v183 offset:33216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v183 offset:32992
	ds_load_u8 v3, v183 offset:32960
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v12, 16, v11
	ds_load_u8 v11, v183 offset:33056
	ds_load_u8 v12, v183 offset:33024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v51, v2, 16, v1
	ds_load_u8 v1, v183 offset:32864
	ds_load_u8 v2, v183 offset:32832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:33120
	ds_load_u8 v13, v183 offset:33088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v183 offset:32768
	ds_load_u8 v9, v183 offset:32784
	ds_load_u8 v3, v183 offset:32800
	ds_load_u8 v10, v183 offset:32816
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v12, 16, v11
	ds_load_u8 v11, v190 offset:3328
	ds_load_u8 v12, v190 offset:3072
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v50, v1, 16, v2
	ds_load_u8 v1, v190 offset:1280
	ds_load_u8 v2, v190 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:3840
	ds_load_u8 v13, v190 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v190 offset:1792
	ds_load_u8 v3, v190 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v12, 16, v11
	ds_load_u8 v11, v190 offset:2304
	ds_load_u8 v12, v190 offset:2048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v190 offset:256
	ds_load_u8 v2, v190
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:2816
	ds_load_u8 v13, v190 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v190 offset:768
	ds_load_u8 v3, v190 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v11
	ds_load_u8 v11, v183 offset:33440
	ds_load_u8 v12, v183 offset:33408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v25, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:33504
	ds_load_u8 v13, v183 offset:33472
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[50:51], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[52:53], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_lshl_or_b32 v55, v12, 16, v11
	ds_load_u8 v11, v183 offset:33312
	ds_load_u8 v12, v183 offset:33280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:33376
	ds_load_u8 v13, v183 offset:33344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v12, 16, v11
	ds_load_u8 v11, v190 offset:5376
	ds_load_u8 v12, v190 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:5888
	ds_load_u8 v13, v190 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v12, 16, v11
	ds_load_u8 v11, v190 offset:4352
	ds_load_u8 v12, v190 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:4864
	ds_load_u8 v13, v190 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v12, 16, v11
	ds_load_u8 v11, v183 offset:33696
	ds_load_u8 v12, v183 offset:33664
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[54:55], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:33760
	ds_load_u8 v13, v183 offset:33728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v12, 16, v11
	ds_load_u8 v11, v183 offset:33568
	ds_load_u8 v12, v183 offset:33536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:33632
	ds_load_u8 v13, v183 offset:33600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v12, 16, v11
	ds_load_u8 v11, v190 offset:7424
	ds_load_u8 v12, v190 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:7936
	ds_load_u8 v13, v190 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v12, 16, v11
	ds_load_u8 v11, v190 offset:6400
	ds_load_u8 v12, v190 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:6912
	ds_load_u8 v13, v190 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v11, v183 offset:33952
	ds_load_u8 v12, v183 offset:33920
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[56:57], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:34016
	ds_load_u8 v13, v183 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v12, 16, v11
	ds_load_u8 v11, v183 offset:33824
	ds_load_u8 v12, v183 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:33888
	ds_load_u8 v13, v183 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v12, 16, v11
	ds_load_u8 v11, v190 offset:9472
	ds_load_u8 v12, v190 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:9984
	ds_load_u8 v13, v190 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v12, 16, v11
	ds_load_u8 v11, v190 offset:8448
	ds_load_u8 v12, v190 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:8960
	ds_load_u8 v13, v190 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v12, 16, v11
	ds_load_u8 v11, v183 offset:34208
	ds_load_u8 v12, v183 offset:34176
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[58:59], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:34272
	ds_load_u8 v13, v183 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v12, 16, v11
	ds_load_u8 v11, v183 offset:34080
	ds_load_u8 v12, v183 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:34144
	ds_load_u8 v13, v183 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v12, 16, v11
	ds_load_u8 v11, v190 offset:11520
	ds_load_u8 v12, v190 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:12032
	ds_load_u8 v13, v190 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v12, 16, v11
	ds_load_u8 v11, v190 offset:10496
	ds_load_u8 v12, v190 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:11008
	ds_load_u8 v13, v190 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v12, 16, v11
	ds_load_u8 v11, v183 offset:34464
	ds_load_u8 v12, v183 offset:34432
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:34528
	ds_load_u8 v13, v183 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v12, 16, v11
	ds_load_u8 v11, v183 offset:34336
	ds_load_u8 v12, v183 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:34400
	ds_load_u8 v13, v183 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v12, 16, v11
	ds_load_u8 v11, v190 offset:13568
	ds_load_u8 v12, v190 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:14080
	ds_load_u8 v13, v190 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v12, 16, v11
	ds_load_u8 v11, v190 offset:12544
	ds_load_u8 v12, v190 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:13056
	ds_load_u8 v13, v190 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v12, 16, v11
	ds_load_u8 v11, v183 offset:34720
	ds_load_u8 v12, v183 offset:34688
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:34784
	ds_load_u8 v13, v183 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v12, 16, v11
	ds_load_u8 v11, v183 offset:34592
	ds_load_u8 v12, v183 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:34656
	ds_load_u8 v13, v183 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v12, 16, v11
	ds_load_u8 v11, v190 offset:15616
	ds_load_u8 v12, v190 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:16128
	ds_load_u8 v13, v190 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v12, 16, v11
	ds_load_u8 v11, v190 offset:14592
	ds_load_u8 v12, v190 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v190 offset:15104
	ds_load_u8 v13, v190 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v12, 16, v11
	ds_load_u8 v11, v183 offset:32944
	ds_load_u8 v12, v183 offset:32912
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[64:65], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v4
	v_mul_f32_e32 v2, v204, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v4, v204, v4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v183 offset:33008
	ds_load_u8 v13, v183 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v12, 16, v11
	ds_load_u8 v11, v183 offset:32880
	ds_load_u8 v12, v183 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v66, v11, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[66:67], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v183 offset:33200
	ds_load_u8 v26, v183 offset:33168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:33264
	ds_load_u8 v68, v183 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v68, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v26, 16, v25
	ds_load_u8 v25, v183 offset:33072
	ds_load_u8 v26, v183 offset:33040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:33136
	ds_load_u8 v68, v183 offset:33104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v68, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v26, 16, v25
	ds_load_u8 v25, v183 offset:33456
	ds_load_u8 v26, v183 offset:33424
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[68:69], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:33520
	ds_load_u8 v27, v183 offset:33488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v26, 16, v25
	ds_load_u8 v25, v183 offset:33328
	ds_load_u8 v26, v183 offset:33296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:33392
	ds_load_u8 v27, v183 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v26, 16, v25
	ds_load_u8 v25, v183 offset:33584
	ds_load_u8 v26, v183 offset:33552
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[70:71], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:33648
	ds_load_u8 v27, v183 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v26, 16, v25
	ds_load_u8 v25, v183 offset:33712
	ds_load_u8 v26, v183 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v73 offset:32768
	ds_load_u8 v27, v183 offset:33744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v26, 16, v25
	ds_load_u8 v25, v183 offset:33968
	ds_load_u8 v26, v183 offset:33936
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[72:73], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:34032
	ds_load_u8 v27, v183 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v26, 16, v25
	ds_load_u8 v25, v183 offset:33840
	ds_load_u8 v26, v183 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:33904
	ds_load_u8 v27, v183 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v26, 16, v25
	ds_load_u8 v25, v183 offset:34224
	ds_load_u8 v26, v183 offset:34192
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[74:75], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:34288
	ds_load_u8 v27, v183 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v26, 16, v25
	ds_load_u8 v25, v183 offset:34096
	ds_load_u8 v26, v183 offset:34064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:34160
	ds_load_u8 v27, v183 offset:34128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v26, 16, v25
	ds_load_u8 v25, v183 offset:34480
	ds_load_u8 v26, v183 offset:34448
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[76:77], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:34544
	ds_load_u8 v27, v183 offset:34512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v26, 16, v25
	ds_load_u8 v25, v183 offset:34352
	ds_load_u8 v26, v183 offset:34320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:34416
	ds_load_u8 v27, v183 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v26, 16, v25
	ds_load_u8 v25, v183 offset:34608
	ds_load_u8 v26, v183 offset:34576
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[78:79], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v183 offset:34672
	ds_load_u8 v27, v183 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v26, 16, v25
	ds_load_u8 v25, v183 offset:34736
	ds_load_u8 v26, v183 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v81 offset:32768
	ds_load_u8 v27, v183 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v81, v26, 16, v25
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v26, v49, v199
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v199, s54, v199
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[80:81], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_mul_f32_e32 v11, v205, v11
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v25, v49, v198
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v15, v205, v15
	v_cvt_f32_i32_e32 v16, v16
	v_mul_f32_e32 v9, v205, v9
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v12, v205, v12
	v_mul_f32_e32 v16, v205, v16
	v_mul_f32_e32 v10, v205, v10
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[41:44], v25, s[36:39], 0 offen
	v_cndmask_b32_e32 v25, 0x80000000, v26, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v13, v205, v13 :: v_dual_add_nc_u32 v198, s54, v198
	v_mul_f32_e32 v14, v205, v14
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[45:48], v25, s[36:39], 0 offen
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v25, v190 offset:17664
	ds_load_u8 v26, v190 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v190 offset:18176
	ds_load_u8 v27, v190 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v26, 16, v25
	ds_load_u8 v25, v190 offset:16640
	ds_load_u8 v26, v190 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v190 offset:17152
	ds_load_u8 v27, v190 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[50:51], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v50, v190 offset:19712
	ds_load_u8 v51, v190 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:20224
	ds_load_u8 v84, v190 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v84, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v51, 16, v50
	ds_load_u8 v50, v190 offset:18688
	ds_load_u8 v51, v190 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:19200
	ds_load_u8 v84, v190 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v84, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v51, 16, v50
	ds_load_u8 v50, v190 offset:21760
	ds_load_u8 v51, v190 offset:21504
	v_wmma_i32_16x16x16_iu4 v[25:32], v[84:85], v[52:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:22272
	ds_load_u8 v52, v190 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v51, 16, v50
	ds_load_u8 v50, v190 offset:20736
	ds_load_u8 v51, v190 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:21248
	ds_load_u8 v52, v190 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v51, 16, v50
	ds_load_u8 v50, v190 offset:23808
	ds_load_u8 v51, v190 offset:23552
	v_wmma_i32_16x16x16_iu4 v[25:32], v[206:207], v[54:55], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:24320
	ds_load_u8 v52, v190 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v209, v51, 16, v50
	ds_load_u8 v50, v190 offset:22784
	ds_load_u8 v51, v190 offset:22528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:23296
	ds_load_u8 v52, v190 offset:23040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v208, v51, 16, v50
	ds_load_u8 v50, v190 offset:25856
	ds_load_u8 v51, v190 offset:25600
	v_wmma_i32_16x16x16_iu4 v[25:32], v[208:209], v[56:57], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:26368
	ds_load_u8 v52, v190 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v211, v51, 16, v50
	ds_load_u8 v50, v190 offset:24832
	ds_load_u8 v51, v190 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:25344
	ds_load_u8 v52, v190 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v210, v51, 16, v50
	ds_load_u8 v50, v190 offset:27904
	ds_load_u8 v51, v190 offset:27648
	v_wmma_i32_16x16x16_iu4 v[25:32], v[210:211], v[58:59], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:28416
	ds_load_u8 v52, v190 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v51, 16, v50
	ds_load_u8 v50, v190 offset:26880
	ds_load_u8 v51, v190 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:27392
	ds_load_u8 v52, v190 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v51, 16, v50
	ds_load_u8 v50, v190 offset:29952
	ds_load_u8 v51, v190 offset:29696
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[60:61], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:30464
	ds_load_u8 v52, v190 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v51, 16, v50
	ds_load_u8 v50, v190 offset:28928
	ds_load_u8 v51, v190 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:29440
	ds_load_u8 v52, v190 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v51, 16, v50
	ds_load_u8 v50, v190 offset:32000
	ds_load_u8 v51, v190 offset:31744
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[62:63], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:32512
	ds_load_u8 v52, v190 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v51, 16, v50
	ds_load_u8 v50, v190 offset:30976
	ds_load_u8 v51, v190 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v190 offset:31488
	ds_load_u8 v52, v190 offset:31232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v51, 16, v50
	v_wmma_i32_16x16x16_iu4 v[50:57], v[82:83], v[66:67], v[17:24] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v17, v193, v195
	s_clause 0x7
	buffer_load_u16 v18, v17, s[40:43], 0 offen
	buffer_load_u16 v19, v17, s[40:43], 0 offen offset:4
	buffer_load_u16 v20, v17, s[40:43], 0 offen offset:8
	buffer_load_u16 v21, v17, s[40:43], 0 offen offset:12
	buffer_load_u16 v22, v17, s[40:43], 0 offen offset:16
	buffer_load_u16 v23, v17, s[40:43], 0 offen offset:20
	buffer_load_u16 v24, v17, s[40:43], 0 offen offset:24
	buffer_load_u16 v17, v17, s[40:43], 0 offen offset:28
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[50:57], v[84:85], v[68:69], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[64:65], v[25:32] neg_lo:[1,1,0]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v195, s52, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[50:57], v[206:207], v[70:71], v[50:57] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[50:57], v[208:209], v[72:73], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[210:211], v[74:75], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[58:59], v[76:77], v[50:57] neg_lo:[1,1,0]
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v58, v193, v194
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v194, s52, v194
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[50:57], v[60:61], v[78:79], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[62:63], v[80:81], v[50:57] neg_lo:[1,1,0]
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v59, v58, s[40:43], 0 offen
	buffer_load_u16 v60, v58, s[40:43], 0 offen offset:4
	buffer_load_u16 v61, v58, s[40:43], 0 offen offset:8
	buffer_load_u16 v62, v58, s[40:43], 0 offen offset:12
	buffer_load_u16 v63, v58, s[40:43], 0 offen offset:16
	buffer_load_u16 v64, v58, s[40:43], 0 offen offset:20
	buffer_load_u16 v65, v58, s[40:43], 0 offen offset:24
	buffer_load_u16 v58, v58, s[40:43], 0 offen offset:28
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(20)
	ds_store_b32 v187, v203 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(19)
	ds_store_b128 v188, v[33:36]
	s_waitcnt vmcnt(18)
	ds_store_b128 v188, v[37:40] offset:8192
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(17)
	ds_store_b128 v188, v[41:44] offset:16384
	s_waitcnt vmcnt(16)
	ds_store_b128 v188, v[45:48] offset:24576
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	v_mul_f32_e32 v51, v205, v51
	v_cvt_f32_i32_e32 v54, v54
	v_mul_f32_e32 v53, v205, v53
	v_mul_f32_e32 v55, v205, v55
	v_mul_f32_e32 v57, v205, v57
	v_mul_f32_e32 v50, v205, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v56, v56
	v_mul_f32_e32 v54, v205, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v205, v52
	v_mul_f32_e32 v56, v205, v56
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v1, v204, v1 :: v_dual_lshlrev_b32 v20, 16, v20
	v_mul_f32_e32 v3, v204, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v28, v204, v28 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v99, v2, v19 :: v_dual_fmac_f32 v116, v1, v18
	v_fmac_f32_e32 v98, v3, v20
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v6, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v118, v9, v18 :: v_dual_fmac_f32 v113, v10, v19
	v_fmac_f32_e32 v111, v12, v21
	v_fmac_f32_e32 v102, v16, v17
	v_fmac_f32_e32 v108, v15, v24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v7, v31
	v_mul_f32_e32 v5, v204, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v110, v13, v22 :: v_dual_lshlrev_b32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v109, v14, v23
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v59
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v6, v204, v6 :: v_dual_lshlrev_b32 v15, 16, v60
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v62
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v12, 16, v63
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v3, v204, v3 :: v_dual_lshlrev_b32 v10, 16, v65
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v112, v11, v20
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v11, 16, v64
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v7, v204, v7 :: v_dual_fmac_f32 v104, v54, v12
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v90, v5, v12
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v26, v204, v26 :: v_dual_fmac_f32 v87, v3, v24
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v97, v4, v21
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v8, v32
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v115, v50, v16 :: v_dual_mul_f32 v2, v204, v2
	v_fmac_f32_e32 v93, v6, v11
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v25, v204, v25
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v58
	v_lshlrev_b32_e32 v14, 16, v61
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v1, v204, v1 :: v_dual_fmac_f32 v92, v7, v10
	v_mul_f32_e32 v4, v204, v4
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v88, v2, v23
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v27, v204, v27 :: v_dual_fmac_f32 v114, v25, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v8, v204, v8 :: v_dual_fmac_f32 v89, v1, v22
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v86, v4, v17 :: v_dual_fmac_f32 v107, v51, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v96, v26, v15 :: v_dual_fmac_f32 v95, v27, v14
	v_dual_fmac_f32 v94, v28, v13 :: v_dual_fmac_f32 v103, v55, v11
	v_fmac_f32_e32 v91, v8, v9
	v_dual_fmac_f32 v106, v52, v14 :: v_dual_fmac_f32 v105, v53, v13
	v_dual_fmac_f32 v101, v56, v10 :: v_dual_fmac_f32 v100, v57, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v4, v184 :: v_dual_mov_b32 v3, v185
	v_mov_b32_e32 v2, v186
.LBB0_7:                                ; %._crit_edge
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s51, v117
	s_mul_i32 s0, s48, s51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s6, 0
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v3, 0, v3
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v182, 0, v182
	v_add_nc_u32_e32 v181, 0, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_add3_u32 v1, s0, s1, v1
	s_lshl_b32 s0, s51, 4
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v180, 0, v180
	v_add_nc_u32_e32 v179, 0, v179
	v_dual_mov_b32 v188, 0 :: v_dual_lshlrev_b32 v5, 1, v1
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, v1, s0, 1
	v_add_nc_u32_e32 v178, 0, v178
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v177, 0, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v176, 0, v176
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v175, 0, v175
	s_clause 0x1
	buffer_load_u16 v5, v5, s[28:31], 0 offen
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v174, 0, v174
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v173, 0, v173
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v172, 0, v172
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v171, 0, v171
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v170, 0, v170
	v_add_nc_u32_e32 v169, 0, v169
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v168, 0, v168
	v_add_nc_u32_e32 v167, 0, v167
	v_add_nc_u32_e32 v166, 0, v166
	v_add_nc_u32_e32 v165, 0, v165
	v_add_nc_u32_e32 v164, 0, v164
	v_add_nc_u32_e32 v163, 0, v163
	v_add_nc_u32_e32 v162, 0, v162
	v_add_nc_u32_e32 v161, 0, v161
	v_add_nc_u32_e32 v160, 0, v160
	v_add_nc_u32_e32 v159, 0, v159
	v_add_nc_u32_e32 v158, 0, v158
	v_add_nc_u32_e32 v157, 0, v157
	v_add_nc_u32_e32 v156, 0, v156
	v_add_nc_u32_e32 v155, 0, v155
	v_add_nc_u32_e32 v154, 0, v154
	v_add_nc_u32_e32 v153, 0, v153
	v_add_nc_u32_e32 v152, 0, v152
	v_add_nc_u32_e32 v151, 0, v151
	v_add_nc_u32_e32 v150, 0, v150
	v_add_nc_u32_e32 v149, 0, v149
	v_add_nc_u32_e32 v148, 0, v148
	v_add_nc_u32_e32 v147, 0, v147
	v_add_nc_u32_e32 v146, 0, v146
	v_add_nc_u32_e32 v145, 0, v145
	v_add_nc_u32_e32 v144, 0, v144
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v142, 0, v142
	v_add_nc_u32_e32 v141, 0, v141
	v_add_nc_u32_e32 v140, 0, v140
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v82, 0, v126
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v85, 0, v124
	v_add_nc_u32_e32 v84, 0, v123
	v_add_nc_u32_e32 v83, 0, v122
	v_add_nc_u32_e32 v117, 0, v121
	v_add_nc_u32_e32 v126, 0, v120
	v_add_nc_u32_e32 v124, 0, v2
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	v_mov_b32_e32 v12, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v5, off offset:4 ; 4-byte Folded Spill
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v248, v183 offset:32864
	ds_load_u8_d16 v249, v183 offset:32896
	ds_load_u8_d16 v250, v183 offset:32928
	ds_load_u8_d16 v251, v183 offset:32960
	ds_load_u8_d16 v70, v183 offset:32976
	ds_load_u8_d16 v76, v183 offset:32944
	ds_load_u8_d16 v78, v183 offset:32912
	ds_load_u8_d16 v60, v183 offset:32880
	ds_load_u8_d16 v253, v183 offset:32992
	ds_load_u8_d16 v232, v183 offset:33024
	ds_load_u8_d16 v233, v183 offset:33056
	ds_load_u8_d16 v234, v183 offset:33088
	ds_load_u8_d16 v39, v183 offset:33104
	ds_load_u8_d16 v45, v183 offset:33072
	ds_load_u8_d16 v46, v183 offset:33040
	ds_load_u8_d16 v186, v183 offset:33008
	ds_load_u8_d16 v236, v183 offset:33120
	ds_load_u8_d16 v240, v183 offset:33152
	ds_load_u8_d16 v241, v183 offset:33184
	ds_load_u8_d16 v242, v183 offset:33216
	ds_load_u8_d16 v71, v183 offset:33232
	ds_load_u8_d16 v77, v183 offset:33200
	ds_load_u8_d16 v79, v183 offset:33168
	ds_load_u8_d16 v61, v183 offset:33136
	ds_load_u8_d16 v244, v183 offset:33248
	ds_load_u8_d16 v237, v183 offset:33280
	ds_load_u8_d16 v238, v183 offset:33312
	ds_load_u8_d16 v239, v183 offset:33344
	ds_load_u8_d16 v1, v183 offset:33360
	ds_load_u8_d16 v38, v183 offset:34608
	ds_load_u8_d16 v43, v183 offset:34576
	ds_load_u8_d16 v185, v183 offset:34544
	ds_load_u8_d16 v194, v183 offset:34688
	ds_load_u8_d16 v195, v183 offset:34720
	ds_load_u8_d16 v196, v183 offset:34752
	ds_load_u8_d16 v197, v183 offset:34784
	ds_load_u8_d16 v59, v183 offset:34768
	ds_load_u8_d16 v69, v183 offset:34736
	ds_load_u8_d16 v75, v183 offset:34704
	ds_load_u8_d16 v53, v183 offset:34672
	ds_load_u8_d16 v35, v183 offset:33552
	ds_load_u8_d16 v80, v183 offset:33520
	ds_load_u8_d16 v228, v183 offset:33632
	ds_load_u8_d16 v229, v183 offset:33664
	ds_load_u8_d16 v230, v183 offset:33696
	ds_load_u8_d16 v231, v183 offset:33728
	ds_load_u8_d16 v55, v183 offset:33744
	ds_load_u8_d16 v63, v183 offset:33712
	ds_load_u8_d16 v65, v183 offset:33680
	ds_load_u8_d16 v48, v183 offset:33648
	s_waitcnt lgkmcnt(21)
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v183 offset:33328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v183 offset:33296
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	ds_load_u8_d16 v187, v183 offset:33264
	ds_load_u8_d16 v243, v183 offset:33376
	ds_load_u8_d16 v245, v183 offset:33408
	ds_load_u8_d16 v246, v183 offset:33440
	ds_load_u8_d16 v247, v183 offset:33472
	ds_load_u8_d16 v54, v183 offset:33488
	ds_load_u8_d16 v62, v183 offset:33456
	ds_load_u8_d16 v64, v183 offset:33424
	ds_load_u8_d16 v47, v183 offset:33392
	ds_load_u8_d16 v252, v183 offset:33504
	ds_load_u8_d16 v225, v183 offset:33536
	ds_load_u8_d16 v226, v183 offset:33568
	ds_load_u8_d16 v227, v183 offset:33600
	ds_load_u8_d16 v1, v183 offset:33616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v183 offset:33584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	ds_load_u8_d16 v235, v183 offset:33760
	ds_load_u8_d16 v217, v183 offset:33792
	ds_load_u8_d16 v218, v183 offset:33824
	ds_load_u8_d16 v219, v183 offset:33856
	ds_load_u8_d16 v220, v183 offset:33888
	ds_load_u8_d16 v4, v183 offset:33872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	ds_load_u8_d16 v40, v183 offset:33840
	ds_load_u8_d16 v44, v183 offset:33808
	ds_load_u8_d16 v221, v183 offset:33920
	ds_load_u8_d16 v222, v183 offset:33952
	ds_load_u8_d16 v223, v183 offset:33984
	ds_load_u8_d16 v224, v183 offset:34016
	ds_load_u8_d16 v56, v183 offset:34000
	ds_load_u8_d16 v66, v183 offset:33968
	ds_load_u8_d16 v72, v183 offset:33936
	ds_load_u8_d16 v50, v183 offset:33904
	ds_load_u8_d16 v198, v183 offset:34048
	ds_load_u8_d16 v200, v183 offset:34080
	ds_load_u8_d16 v201, v183 offset:34112
	ds_load_u8_d16 v203, v183 offset:34144
	ds_load_u8_d16 v4, v183 offset:34128
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:20 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v183 offset:34096
	ds_load_u8_d16 v41, v183 offset:34064
	ds_load_u8_d16 v81, v183 offset:34032
	ds_load_u8_d16 v209, v183 offset:34176
	ds_load_u8_d16 v210, v183 offset:34208
	ds_load_u8_d16 v211, v183 offset:34240
	ds_load_u8_d16 v212, v183 offset:34272
	ds_load_u8_d16 v57, v183 offset:34256
	ds_load_u8_d16 v67, v183 offset:34224
	ds_load_u8_d16 v73, v183 offset:34192
	ds_load_u8_d16 v51, v183 offset:34160
	ds_load_u8_d16 v205, v183 offset:34304
	ds_load_u8_d16 v206, v183 offset:34336
	ds_load_u8_d16 v207, v183 offset:34368
	ds_load_u8_d16 v208, v183 offset:34400
	ds_load_u8_d16 v4, v183 offset:34384
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	ds_load_u8_d16 v37, v183 offset:34352
	ds_load_u8_d16 v42, v183 offset:34320
	ds_load_u8_d16 v184, v183 offset:34288
	ds_load_u8_d16 v213, v183 offset:34432
	ds_load_u8_d16 v214, v183 offset:34464
	ds_load_u8_d16 v215, v183 offset:34496
	ds_load_u8_d16 v216, v183 offset:34528
	ds_load_u8_d16 v58, v183 offset:34512
	ds_load_u8_d16 v68, v183 offset:34480
	ds_load_u8_d16 v74, v183 offset:34448
	ds_load_u8_d16 v52, v183 offset:34416
	ds_load_u8_d16 v189, v183 offset:34560
	ds_load_u8_d16 v190, v183 offset:34592
	ds_load_u8_d16 v191, v183 offset:34624
	ds_load_u8_d16 v192, v183 offset:34656
	ds_load_u8_d16 v4, v183 offset:34640
	ds_load_u8_d16 v254, v183 offset:32768
	ds_load_u8_d16 v199, v183 offset:32784
	ds_load_u8_d16 v255, v183 offset:32800
	ds_load_u8_d16 v204, v183 offset:32816
	ds_load_u8_d16 v119, v183 offset:32832
	ds_load_u8_d16 v202, v183 offset:32848
	ds_load_u8_d16 v193, v1 offset:32768
	ds_load_u8_d16 v183, v3 offset:32768
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v4, off offset:28 ; 4-byte Folded Spill
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v4, 0, 1, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v4
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	v_perm_b32 v1, v249, v250, 0xc0c0004
	v_perm_b32 v2, v251, v253, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v22, v2, 16, v1
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v254, v255, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v119, v248, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v2, 16, v1
	v_perm_b32 v1, v240, v241, 0xc0c0004
	v_perm_b32 v2, v242, v244, 0xc0c0004
	v_lshl_or_b32 v24, v2, 16, v1
	v_perm_b32 v1, v232, v233, 0xc0c0004
	v_perm_b32 v2, v234, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v2, 16, v1
	ds_load_u8 v1, v85
	ds_load_u8 v2, v84
	ds_load_u8 v3, v83
	ds_load_u8 v4, v117
	ds_load_u8 v5, v125
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v82
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	ds_load_u8 v5, v124
	ds_load_u8 v6, v126
	v_lshl_or_b32 v18, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v3, 16, v5
	ds_load_u8 v1, v132
	ds_load_u8 v2, v131
	ds_load_u8 v3, v127
	ds_load_u8 v4, v130
	ds_load_u8 v5, v129
	ds_load_u8 v6, v133
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v134
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v6, v2, 0xc0c0004
	ds_load_u8 v6, v128
	v_lshl_or_b32 v20, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v4, 16, v3
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v21, v245, v246, 0xc0c0004
	v_perm_b32 v22, v247, v252, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v22, 16, v21
	v_perm_b32 v21, v237, v238, 0xc0c0004
	v_perm_b32 v22, v239, v243, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v22, 16, v21
	ds_load_u8 v21, v140
	ds_load_u8 v22, v139
	ds_load_u8 v25, v135
	ds_load_u8 v26, v138
	ds_load_u8 v27, v137
	ds_load_u8 v28, v141
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v142
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v28, v22, 0xc0c0004
	ds_load_u8 v28, v136
	v_lshl_or_b32 v22, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v26, 16, v25
	v_perm_b32 v25, v227, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v23, v229, v230, 0xc0c0004
	v_perm_b32 v24, v231, v235, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v23
	v_perm_b32 v23, v225, v226, 0xc0c0004
	v_lshl_or_b32 v23, v25, 16, v23
	ds_load_u8 v25, v148
	ds_load_u8 v26, v147
	ds_load_u8 v27, v143
	ds_load_u8 v28, v146
	ds_load_u8 v29, v145
	ds_load_u8 v30, v149
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v150
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v30, v26, 0xc0c0004
	ds_load_u8 v30, v144
	v_lshl_or_b32 v26, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v25, v28, 16, v27
	v_perm_b32 v27, v219, v220, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v23, v221, v222, 0xc0c0004
	v_perm_b32 v24, v223, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v23
	v_perm_b32 v23, v217, v218, 0xc0c0004
	v_lshl_or_b32 v23, v27, 16, v23
	ds_load_u8 v27, v156
	ds_load_u8 v28, v155
	ds_load_u8 v29, v154
	ds_load_u8 v30, v153
	ds_load_u8 v31, v157
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v158
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v31, v28, 0xc0c0004
	ds_load_u8 v31, v151
	ds_load_u8 v32, v152
	v_lshl_or_b32 v28, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v31, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v27, v29, 16, v31
	v_perm_b32 v29, v201, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v23, v209, v210, 0xc0c0004
	v_perm_b32 v24, v211, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v23
	v_perm_b32 v23, v198, v200, 0xc0c0004
	v_lshl_or_b32 v23, v29, 16, v23
	ds_load_u8 v29, v164
	ds_load_u8 v30, v163
	ds_load_u8 v31, v159
	ds_load_u8 v32, v162
	ds_load_u8 v33, v161
	ds_load_u8 v34, v165
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v166
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v34, v30, 0xc0c0004
	ds_load_u8 v34, v160
	v_lshl_or_b32 v30, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v31, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v29, v32, 16, v31
	v_perm_b32 v31, v207, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v23, v213, v214, 0xc0c0004
	v_perm_b32 v24, v215, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v23
	v_perm_b32 v23, v205, v206, 0xc0c0004
	v_lshl_or_b32 v23, v31, 16, v23
	ds_load_u8 v31, v172
	ds_load_u8 v32, v171
	ds_load_u8 v33, v167
	ds_load_u8 v34, v170
	ds_load_u8 v120, v169
	ds_load_u8 v121, v173
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v174
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v120, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v121, v32, 0xc0c0004
	ds_load_u8 v121, v168
	v_lshl_or_b32 v32, v32, 16, v31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v31, v34, 16, v33
	v_perm_b32 v33, v191, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v23, v194, v195, 0xc0c0004
	v_perm_b32 v24, v196, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v23
	v_perm_b32 v23, v189, v190, 0xc0c0004
	v_lshl_or_b32 v23, v33, 16, v23
	ds_load_u8 v33, v180
	ds_load_u8 v34, v179
	ds_load_u8 v120, v175
	ds_load_u8 v121, v178
	ds_load_u8 v122, v177
	ds_load_u8 v123, v181
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v182
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v123, v34, 0xc0c0004
	ds_load_u8 v123, v176
	v_lshl_or_b32 v34, v34, 16, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v120, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v122, v11
	v_cvt_f32_i32_e32 v123, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v11, v14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v13, v78, v76, 0xc0c0004
	v_perm_b32 v14, v70, v186, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v121, v10
	v_cvt_f32_i32_e32 v10, v15
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v15, v202, v60, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v9
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v13, v199, v204, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v13, v15, 16, v13
	v_perm_b32 v15, v39, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v13, v79, v77, 0xc0c0004
	v_perm_b32 v14, v71, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v13, v46, v45, 0xc0c0004
	v_lshl_or_b32 v13, v15, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v13, v64, v62, 0xc0c0004
	v_perm_b32 v14, v54, v80, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:36
	scratch_load_b32 v15, off, off offset:44
	s_waitcnt vmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	scratch_load_b32 v15, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v15, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v15, 16, v13
	scratch_load_b32 v15, off, off offset:16 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v13, v65, v63, 0xc0c0004
	v_perm_b32 v14, v55, v193, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	scratch_load_b32 v13, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v15, v15, v48, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v13, v35, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v15, 16, v13
	scratch_load_b32 v15, off, off offset:32 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v13, v72, v66, 0xc0c0004
	v_perm_b32 v14, v56, v81, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v13, v44, v40, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v15, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v15, 16, v13
	scratch_load_b32 v15, off, off offset:20 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v13, v73, v67, 0xc0c0004
	v_perm_b32 v14, v57, v184, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v13, v41, v36, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v15, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v15, 16, v13
	scratch_load_b32 v15, off, off offset:24 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v13, v74, v68, 0xc0c0004
	v_perm_b32 v14, v58, v185, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v13, v42, v37, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v15, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v15, 16, v13
	scratch_load_b32 v15, off, off offset:28 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v13, v75, v69, 0xc0c0004
	v_perm_b32 v14, v59, v183, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v13, v43, v38, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v15, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v15, 16, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[13:14], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v13, v1
	v_cvt_f32_i32_e32 v14, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v15, v3
	v_cvt_f32_i32_e32 v16, v4
	v_cvt_f32_i32_e32 v17, v5
	v_cvt_f32_i32_e32 v18, v6
	v_cvt_f32_i32_e32 v19, v7
	v_cvt_f32_i32_e32 v20, v8
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v7, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v1, v85 offset:16384
	ds_load_u8 v2, v84 offset:16384
	ds_load_u8 v3, v82 offset:16384
	ds_load_u8 v4, v83 offset:16384
	ds_load_u8 v5, v117 offset:16384
	ds_load_u8 v6, v126 offset:16384
	ds_load_u8 v7, v125 offset:16384
	ds_load_u8 v8, v124 offset:16384
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v24, v119, v248, 0xc0c0004
	ds_load_u8 v25, v132 offset:16384
	ds_load_u8 v26, v131 offset:16384
	ds_load_u8 v27, v134 offset:16384
	ds_load_u8 v28, v128 offset:16384
	ds_load_u8 v29, v127 offset:16384
	ds_load_u8 v30, v130 offset:16384
	ds_load_u8 v31, v129 offset:16384
	ds_load_u8 v32, v133 offset:16384
	ds_load_u8 v33, v140 offset:16384
	ds_load_u8 v34, v139 offset:16384
	ds_load_u8 v82, v142 offset:16384
	ds_load_u8 v83, v136 offset:16384
	ds_load_u8 v84, v135 offset:16384
	ds_load_u8 v85, v138 offset:16384
	ds_load_u8 v117, v137 offset:16384
	ds_load_u8 v119, v141 offset:16384
	v_perm_b32 v21, v249, v250, 0xc0c0004
	v_perm_b32 v22, v251, v253, 0xc0c0004
	v_perm_b32 v23, v254, v255, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_lshl_or_b32 v22, v22, 16, v21
	v_lshl_or_b32 v21, v24, 16, v23
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	v_perm_b32 v132, v240, v241, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v7, v3, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v8, v6, 0xc0c0004
	v_perm_b32 v133, v242, v244, 0xc0c0004
	v_perm_b32 v134, v232, v233, 0xc0c0004
	v_perm_b32 v135, v234, v236, 0xc0c0004
	v_lshl_or_b32 v24, v2, 16, v1
	v_lshl_or_b32 v23, v4, 16, v3
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v26, v32, v27, 0xc0c0004
	v_perm_b32 v27, v29, v28, 0xc0c0004
	v_perm_b32 v28, v31, v30, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[124:131], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v133, 16, v132
	v_lshl_or_b32 v21, v135, 16, v134
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v119, v82, 0xc0c0004
	ds_load_u8 v33, v148 offset:16384
	ds_load_u8 v34, v147 offset:16384
	ds_load_u8 v82, v150 offset:16384
	ds_load_u8 v119, v144 offset:16384
	ds_load_u8 v132, v143 offset:16384
	ds_load_u8 v133, v146 offset:16384
	ds_load_u8 v134, v145 offset:16384
	ds_load_u8 v135, v149 offset:16384
	v_lshl_or_b32 v26, v26, 16, v25
	v_lshl_or_b32 v25, v28, 16, v27
	v_perm_b32 v27, v245, v246, 0xc0c0004
	v_perm_b32 v28, v247, v252, 0xc0c0004
	v_perm_b32 v29, v237, v238, 0xc0c0004
	v_perm_b32 v30, v239, v243, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v84, v117, v85, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[124:131], v[25:26], v[21:22], v[124:131] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v28, 16, v27
	v_lshl_or_b32 v21, v30, 16, v29
	v_lshl_or_b32 v28, v32, 16, v31
	v_lshl_or_b32 v27, v84, 16, v83
	v_perm_b32 v31, v225, v226, 0xc0c0004
	v_perm_b32 v32, v227, v228, 0xc0c0004
	ds_load_u8 v83, v156 offset:16384
	ds_load_u8 v84, v155 offset:16384
	ds_load_u8 v85, v158 offset:16384
	ds_load_u8 v117, v154 offset:16384
	ds_load_u8 v136, v153 offset:16384
	ds_load_u8 v137, v152 offset:16384
	ds_load_u8 v138, v157 offset:16384
	v_perm_b32 v29, v229, v230, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[124:131], v[27:28], v[21:22], v[124:131] neg_lo:[1,1,0]
	v_perm_b32 v30, v231, v235, 0xc0c0004
	v_lshl_or_b32 v21, v32, 16, v31
	ds_load_u8 v31, v151 offset:16384
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v135, v82, 0xc0c0004
	v_perm_b32 v82, v132, v119, 0xc0c0004
	v_perm_b32 v119, v134, v133, 0xc0c0004
	v_lshl_or_b32 v22, v30, 16, v29
	v_perm_b32 v32, v217, v218, 0xc0c0004
	v_lshl_or_b32 v30, v34, 16, v33
	v_perm_b32 v33, v219, v220, 0xc0c0004
	v_lshl_or_b32 v29, v119, 16, v82
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v34, v84, v83, 0xc0c0004
	v_perm_b32 v142, v198, v200, 0xc0c0004
	v_perm_b32 v143, v201, v203, 0xc0c0004
	v_perm_b32 v76, v78, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[124:131], v[29:30], v[21:22], v[124:131] neg_lo:[1,1,0]
	v_perm_b32 v21, v221, v222, 0xc0c0004
	v_perm_b32 v22, v223, v224, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v82, v138, v85, 0xc0c0004
	ds_load_u8 v83, v164 offset:16384
	ds_load_u8 v84, v163 offset:16384
	ds_load_u8 v85, v166 offset:16384
	ds_load_u8 v119, v160 offset:16384
	ds_load_u8 v132, v159 offset:16384
	ds_load_u8 v133, v162 offset:16384
	ds_load_u8 v134, v161 offset:16384
	ds_load_u8 v135, v165 offset:16384
	v_perm_b32 v70, v70, v186, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v31, v31, v137, 0xc0c0004
	v_lshl_or_b32 v22, v22, 16, v21
	v_lshl_or_b32 v21, v33, 16, v32
	v_lshl_or_b32 v32, v82, 16, v34
	v_perm_b32 v33, v136, v117, 0xc0c0004
	ds_load_u8 v82, v172 offset:16384
	ds_load_u8 v117, v171 offset:16384
	ds_load_u8 v136, v174 offset:16384
	ds_load_u8 v137, v168 offset:16384
	ds_load_u8 v138, v167 offset:16384
	ds_load_u8 v139, v170 offset:16384
	ds_load_u8 v140, v169 offset:16384
	ds_load_u8 v141, v173 offset:16384
	v_perm_b32 v34, v211, v212, 0xc0c0004
	v_perm_b32 v78, v199, v204, 0xc0c0004
	v_perm_b32 v60, v202, v60, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v209, v210, 0xc0c0004
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v39, v39, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[124:131], v[31:32], v[21:22], v[124:131] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v34, 16, v33
	v_lshl_or_b32 v21, v143, 16, v142
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v84, v135, v85, 0xc0c0004
	v_perm_b32 v85, v132, v119, 0xc0c0004
	v_perm_b32 v119, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v117, v82, 0xc0c0004
	v_lshl_or_b32 v34, v84, 16, v83
	v_perm_b32 v83, v213, v214, 0xc0c0004
	v_lshl_or_b32 v33, v119, 16, v85
	v_perm_b32 v84, v215, v216, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v141, v136, 0xc0c0004
	v_perm_b32 v85, v205, v206, 0xc0c0004
	v_perm_b32 v119, v207, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[124:131], v[33:34], v[21:22], v[124:131] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v84, 16, v83
	v_lshl_or_b32 v83, v117, 16, v82
	v_perm_b32 v82, v138, v137, 0xc0c0004
	v_perm_b32 v84, v140, v139, 0xc0c0004
	v_lshl_or_b32 v21, v119, 16, v85
	v_lshl_or_b32 v85, v70, 16, v76
	v_perm_b32 v70, v71, v187, 0xc0c0004
	v_perm_b32 v117, v194, v195, 0xc0c0004
	v_lshl_or_b32 v82, v84, 16, v82
	v_lshl_or_b32 v84, v60, 16, v78
	v_perm_b32 v60, v79, v77, 0xc0c0004
	ds_load_u8 v46, v180 offset:16384
	ds_load_u8 v61, v179 offset:16384
	ds_load_u8 v71, v182 offset:16384
	ds_load_u8 v76, v176 offset:16384
	ds_load_u8 v77, v175 offset:16384
	ds_load_u8 v78, v178 offset:16384
	ds_load_u8 v79, v177 offset:16384
	ds_load_u8 v132, v181 offset:16384
	v_perm_b32 v119, v196, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[124:131], v[82:83], v[21:22], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[84:85], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v70, 16, v60
	v_lshl_or_b32 v23, v39, 16, v45
	v_perm_b32 v45, v54, v80, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:36
	scratch_load_b32 v60, off, off offset:44
	v_perm_b32 v39, v64, v62, 0xc0c0004
	v_perm_b32 v21, v65, v63, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[23:24], v[1:8] neg_lo:[1,1,0]
	scratch_load_b32 v26, off, off offset:40 ; 4-byte Folded Reload
	v_perm_b32 v25, v55, v193, 0xc0c0004
	v_lshl_or_b32 v24, v45, 16, v39
	v_perm_b32 v39, v189, v190, 0xc0c0004
	v_perm_b32 v45, v191, v192, 0xc0c0004
	v_lshl_or_b32 v22, v119, 16, v117
	s_waitcnt vmcnt(1)
	v_perm_b32 v54, v60, v54, 0xc0c0004
	scratch_load_b32 v60, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v26, v35, v26, 0xc0c0004
	scratch_load_b32 v35, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v47, v60, v47, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v47, 16, v54
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v25, 16, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v23, v35, 16, v26
	v_perm_b32 v21, v72, v66, 0xc0c0004
	v_perm_b32 v25, v56, v81, 0xc0c0004
	scratch_load_b32 v27, off, off offset:32 ; 4-byte Folded Reload
	v_perm_b32 v26, v44, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v29, v41, v36, 0xc0c0004
	v_lshl_or_b32 v24, v25, 16, v21
	scratch_load_b32 v21, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v61, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v132, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v35, 16, v28
	v_perm_b32 v28, v42, v37, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v27, v27, v50, 0xc0c0004
	v_lshl_or_b32 v23, v27, 16, v26
	v_perm_b32 v26, v73, v67, 0xc0c0004
	v_perm_b32 v27, v57, v184, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v21, v51, 0xc0c0004
	v_lshl_or_b32 v21, v45, 16, v39
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v31, v79, v78, 0xc0c0004
	v_lshl_or_b32 v24, v27, 16, v26
	v_lshl_or_b32 v23, v30, 16, v29
	scratch_load_b32 v29, off, off offset:24 ; 4-byte Folded Reload
	v_perm_b32 v26, v74, v68, 0xc0c0004
	v_perm_b32 v27, v58, v185, 0xc0c0004
	v_perm_b32 v30, v77, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[23:24], v[1:8] neg_lo:[1,1,0]
	scratch_load_b32 v24, off, off offset:28 ; 4-byte Folded Reload
	v_perm_b32 v23, v75, v69, 0xc0c0004
	v_lshl_or_b32 v27, v27, 16, v26
	s_waitcnt vmcnt(1)
	v_perm_b32 v29, v29, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v29, 16, v28
	v_perm_b32 v28, v59, v183, 0xc0c0004
	v_perm_b32 v29, v43, v38, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v32, v24, v53, 0xc0c0004
	v_lshl_or_b32 v24, v31, 16, v30
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[26:27], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v27, v28, 16, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v26, v32, 16, v29
	v_wmma_i32_16x16x16_iu4 v[124:131], v[24:25], v[21:22], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[24:25], v[26:27], v[1:8] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v24, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v125
	v_cvt_f32_i32_e32 v26, v126
	v_cvt_f32_i32_e32 v27, v127
	v_cvt_f32_i32_e32 v188, v128
	v_cvt_f32_i32_e32 v21, v129
	v_cvt_f32_i32_e32 v22, v130
	v_cvt_f32_i32_e32 v23, v131
	v_cvt_f32_i32_e32 v28, v1
	v_cvt_f32_i32_e32 v29, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	v_bfe_u32 v2, v0, 4, 1
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s49
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s50, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 235 35 is_stmt 1              ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s16, s14
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v30, 4, v1
	v_or_b32_e32 v31, 6, v1
	v_or_b32_e32 v32, 8, v1
	v_or_b32_e32 v33, 10, v1
	v_or_b32_e32 v34, 12, v1
	v_or_b32_e32 v35, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v36, s0, v1, 1
	v_add_lshl_u32 v37, s0, v2, 1
	v_add_lshl_u32 v38, s0, v30, 1
	v_add_lshl_u32 v39, s0, v31, 1
	v_add_lshl_u32 v40, s0, v32, 1
	v_add_lshl_u32 v41, s0, v33, 1
	v_add_lshl_u32 v42, s0, v34, 1
	v_add_lshl_u32 v43, s0, v35, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v30, s1, v30, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v36, v36, s[16:19], 0 offen
	buffer_load_u16 v37, v37, s[16:19], 0 offen
	buffer_load_u16 v38, v38, s[16:19], 0 offen
	buffer_load_u16 v39, v39, s[16:19], 0 offen
	buffer_load_u16 v40, v40, s[16:19], 0 offen
	buffer_load_u16 v41, v41, s[16:19], 0 offen
	buffer_load_u16 v42, v42, s[16:19], 0 offen
	buffer_load_u16 v43, v43, s[16:19], 0 offen
	buffer_load_u16 v44, v1, s[16:19], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v30, s2
	v_add_lshl_u32 v30, s1, v31, 1
	v_add_lshl_u32 v31, s1, v32, 1
	v_add_lshl_u32 v32, s1, v33, 1
	v_add_lshl_u32 v33, s1, v34, 1
	v_add_lshl_u32 v34, s1, v35, 1
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	s_clause 0x6
	buffer_load_u16 v35, v1, s[16:19], 0 offen
	buffer_load_u16 v45, v2, s[16:19], 0 offen
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	buffer_load_u16 v31, v31, s[16:19], 0 offen
	buffer_load_u16 v32, v32, s[16:19], 0 offen
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	buffer_load_u16 v34, v34, s[16:19], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	scratch_load_b32 v2, off, off offset:8  ; 4-byte Folded Reload
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, 0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp23:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v1.h, v2.l
	scratch_load_b32 v2, off, off offset:4  ; 4-byte Folded Reload
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v7, v7, v1
	v_mul_f32_e32 v4, v4, v1
	v_mul_f32_e32 v8, v8, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fma_f32 v7, v7, v33, v101
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v2.h, v2.l
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v3, v3, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v13, v13, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v29, v29, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v16, v16, v1 :: v_dual_mul_f32 v25, v25, v2
	v_mul_f32_e32 v12, v12, v2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v3, v3, v45, v106
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v46, v120, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v26, v26, v2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v13, v36, v118
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v17, v17, v1 :: v_dual_mul_f32 v50, v123, v2
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v106, v3, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v36, v46, v36, v116
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v5, v5, v1 :: v_dual_mul_f32 v22, v22, v2
	v_dual_mul_f32 v6, v6, v1 :: v_dual_mul_f32 v51, v188, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v3
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v26, v26, v45, v95
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v16, v16, v39, v111
	v_fma_f32 v39, v50, v39, v97
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v14, v14, v1 :: v_dual_mul_f32 v47, v121, v2
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v95, v26, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v19, v19, v1 :: v_dual_mul_f32 v24, v24, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v28, v28, v1 :: v_dual_mul_f32 v23, v23, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v26
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v5, v5, v31, v104
	v_fma_f32 v31, v51, v31, v90
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v14, v37, v113
	v_fma_f32 v37, v47, v37, v99
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v22, v22, v33, v92
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v104, v5, s2
	v_cndmask_b32_e64 v31, v90, v31, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v18, v18, v1 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v27, v27, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v31
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v8, v8, v34, v100
	v_fma_f32 v23, v23, v34, v91
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v99, v37, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v20, v20, v1 :: v_dual_mul_f32 v21, v21, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v100, v8, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v15, v15, v1 :: v_dual_lshlrev_b32 v44, 16, v44
	v_mul_f32_e32 v48, v122, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v92, v22, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v28, v28, v44, v115
	v_fma_f32 v24, v24, v44, v114
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v5
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v29, v29, v35, v107
	v_fma_f32 v25, v25, v35, v96
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v115, v28, s2
	v_cndmask_b32_e64 v24, v114, v24, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v107, v29, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v96, v25, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v8, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v29
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v4, v4, v30, v105
	v_fma_f32 v27, v27, v30, v94
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v25
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v6, v6, v32, v103
	v_fma_f32 v21, v21, v32, v93
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v105, v4, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v101, v7, s2
	v_cndmask_b32_e64 v27, v94, v27, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v28
	v_mul_f32_e32 v45, 0xbfb8aa3b, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v15, v38, v112
	v_fma_f32 v38, v48, v38, v98
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v103, v6, s2
	v_cndmask_b32_e64 v23, v91, v23, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v40, 16, v40
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v116, v36, s2
	v_cndmask_b32_e64 v35, v98, v38, s2
	v_cndmask_b32_e64 v36, v97, v39, s2
	v_cndmask_b32_e64 v21, v93, v21, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v38, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v6
	v_dual_mul_f32 v52, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	v_cndmask_b32_e64 v45, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v44
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v48
	v_dual_mul_f32 v54, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v28
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v44, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v39
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v38
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v37
	v_cndmask_b32_e64 v48, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v53
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v29
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v3 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v39, 0, 0x42800000, s7
	v_cndmask_b32_e64 v38, 0, 0x42800000, s8
	v_cndmask_b32_e64 v37, 0, 0x42800000, s9
	v_cndmask_b32_e64 v53, 0, 0x42800000, s15
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v6
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v27
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v45, v45
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v51
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v55
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v33
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v22
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v51, 0, 0x42800000, s10
	v_cndmask_b32_e64 v50, 0, 0x42800000, s11
	v_cndmask_b32_e64 v55, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v54
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s12
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v7, v7, v56
	v_ldexp_f32 v8, v8, v57
	v_ldexp_f32 v45, v45, v60
	v_cndmask_b32_e64 v54, 0, 0x42800000, s14
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s9
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v31 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v21
	v_ldexp_f32 v47, v47, v58
	v_ldexp_f32 v46, v46, v59
	v_ldexp_f32 v44, v44, v61
	v_ldexp_f32 v48, v48, v67
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_add_f32 v56, 1.0, v8
	v_add_f32_e32 v8, 1.0, v45
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v37, v37, v64
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v44, 1.0, v44 :: v_dual_add_f32 v45, 1.0, v46
	v_dual_add_f32 v46, 1.0, v47 :: v_dual_add_f32 v47, 1.0, v48
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v64, null, v8, v8, v4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v85, v64
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v51, v51, v65
	v_ldexp_f32 v50, v50, v66
	v_ldexp_f32 v55, v55, v68
	v_exp_f32_e32 v38, v38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s8
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v48, 1.0, v50
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v52
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v101, -v64, v85, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v50, 1.0, v51
	v_add_f32_e32 v51, 1.0, v55
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v55, null, v7, v7, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v39, v39, v62
	v_ldexp_f32 v38, v38, v63
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v58, null, v56, v56, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v55
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, s0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_add_f32 v39, 1.0, v39
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v62, null, v45, v45, v3
	v_fmac_f32_e32 v85, v101, v85
	v_div_scale_f32 v75, null, v50, v50, v25
	v_div_scale_f32 v79, null, v47, v47, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v97, -v55, v81, 1.0
	v_rcp_f32_e32 v82, v58
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v23 :: v_dual_add_f32 v37, 1.0, v37
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v66, null, v44, v44, v5
	v_fmac_f32_e32 v81, v97, v81
	v_div_scale_f32 v60, null, v46, v46, v29
	v_div_scale_f32 v68, null, v39, v39, v6
	v_rcp_f32_e32 v84, v62
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v83, v60
	v_rcp_f32_e32 v94, v75
	v_rcp_f32_e32 v96, v79
	v_div_scale_f32 v71, null, v38, v38, v32
	v_div_scale_f32 v73, null, v37, v37, v33
	v_rcp_f32_e32 v90, v66
	v_rcp_f32_e32 v91, v68
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v19, v42, v108
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v98, -v58, v82, 1.0
	v_fma_f32 v99, -v60, v83, 1.0
	v_div_scale_f32 v77, null, v48, v48, v26
	v_rcp_f32_e32 v92, v71
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v20, v43, v102
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v54, v54
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v57, vcc_lo, v28, v7, v28
	v_rcp_f32_e32 v93, v73
	v_fma_f32 v100, -v62, v84, 1.0
	v_fma_f32 v106, -v75, v94, 1.0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v108, v19, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v59, s1, v24, v56, v24
	v_div_scale_f32 v61, s3, v29, v46, v29
	v_fma_f32 v108, -v79, v96, 1.0
	v_dual_fmac_f32 v82, v98, v82 :: v_dual_fmac_f32 v83, v99, v83
	v_rcp_f32_e32 v95, v77
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v18, v41, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v102, v20, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s14
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v63, s4, v3, v45, v3
	v_fma_f32 v102, -v66, v90, 1.0
	v_fma_f32 v103, -v68, v91, 1.0
	v_fmac_f32_e32 v84, v100, v84
	v_dual_fmac_f32 v94, v106, v94 :: v_dual_mul_f32 v97, v57, v81
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v17, v40, v110
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v65, s5, v4, v8, v4
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_mul_f32 v99, v61, v83
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v98, v59, v82 :: v_dual_mul_f32 v101, v65, v85
	v_fma_f32 v104, -v71, v92, 1.0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v109, v18, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v54, v54, v69
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v67, s6, v5, v44, v5
	v_div_scale_f32 v69, s7, v6, v39, v6
	v_div_scale_f32 v76, s10, v25, v50, v25
	v_fma_f32 v105, -v73, v93, 1.0
	v_dual_fmac_f32 v90, v102, v90 :: v_dual_fmac_f32 v91, v103, v91
	v_mul_f32_e32 v100, v63, v84
	v_fma_f32 v109, -v55, v97, v57
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v111, v16, s2
	v_cndmask_b32_e64 v17, v110, v17, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v80, s12, v27, v47, v27
	v_fma_f32 v110, -v58, v98, v59
	v_fma_f32 v111, -v60, v99, v61
	v_div_scale_f32 v72, s8, v32, v38, v32
	v_fma_f32 v107, -v77, v95, 1.0
	v_fmac_f32_e32 v92, v104, v92
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v112, v15, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v74, s9, v33, v37, v33
	v_dual_fmac_f32 v93, v105, v93 :: v_dual_mul_f32 v102, v67, v90
	v_dual_mul_f32 v103, v69, v91 :: v_dual_mul_f32 v106, v76, v94
	v_fmac_f32_e32 v97, v109, v81
	v_fma_f32 v112, -v62, v100, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v113, v14, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_mul_f32 v108, v80, v96 :: v_dual_fmac_f32 v99, v111, v83
	v_fma_f32 v113, -v64, v101, v65
	v_fmac_f32_e32 v98, v110, v82
	v_div_scale_f32 v78, s11, v26, v48, v26
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_mul_f32 v104, v72, v92
	v_mul_f32_e32 v105, v74, v93
	v_fma_f32 v114, -v66, v102, v67
	v_fma_f32 v115, -v68, v103, v69
	v_fmac_f32_e32 v100, v112, v84
	v_fma_f32 v55, -v55, v97, v57
	v_fmac_f32_e32 v101, v113, v85
	v_fma_f32 v57, -v58, v98, v59
	v_fma_f32 v58, -v60, v99, v61
	v_mul_f32_e32 v107, v78, v95
	v_fma_f32 v116, -v71, v104, v72
	v_fma_f32 v117, -v73, v105, v74
	v_dual_fmac_f32 v102, v114, v90 :: v_dual_fmac_f32 v103, v115, v91
	v_fma_f32 v59, -v62, v100, v63
	v_div_fmas_f32 v55, v55, v81, v97
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v60, -v64, v101, v65
	v_div_fmas_f32 v58, v58, v83, v99
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v119, -v77, v107, v78
	v_fmac_f32_e32 v104, v116, v92
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v118, v13, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v118, -v75, v106, v76
	v_fmac_f32_e32 v105, v117, v93
	v_fma_f32 v61, -v66, v102, v67
	v_div_fixup_f32 v28, v55, v7, v28
	v_div_fmas_f32 v7, v59, v84, v100
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v62, -v68, v103, v69
	v_div_fmas_f32 v55, v60, v85, v101
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v107, v119, v95
	v_fma_f32 v63, -v71, v104, v72
	v_div_fixup_f32 v29, v58, v46, v29
	v_div_fmas_f32 v46, v61, v90, v102
	v_div_fixup_f32 v3, v7, v45, v3
	v_fmac_f32_e32 v106, v118, v94
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v64, -v73, v105, v74
	v_div_fmas_f32 v45, v62, v91, v103
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v55, v55, v8, v4
	v_div_fmas_f32 v4, v63, v92, v104
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v120, -v79, v108, v80
	v_div_fixup_f32 v5, v46, v44, v5
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v15, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v65, -v75, v106, v76
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v14, v29
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v14, v64, v93, v105
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v66, -v77, v107, v78
	v_div_fmas_f32 v15, v57, v82, v98
	s_mov_b32 vcc_lo, s10
	v_dual_fmac_f32 v108, v120, v96 :: v_dual_mul_f32 v3, v17, v5
	v_div_fmas_f32 v5, v65, v94, v106
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v6, v45, v39, v6
	v_div_fixup_f32 v29, v4, v38, v32
	v_div_fmas_f32 v17, v66, v95, v107
	v_fma_f32 v67, -v79, v108, v80
	v_div_fixup_f32 v14, v14, v37, v33
	s_mov_b32 vcc_lo, s12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v53, v53
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v17, v17, v48, v26
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v18, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v18, v5, v50, v25
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v6, v19, v29 :: v_dual_add_f32 v25, 1.0, v54
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v32, v67, v96, v108
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v19, v52
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v20, v14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v51, v51, v31
	v_div_scale_f32 v29, null, v25, v25, v21
	v_div_fixup_f32 v15, v15, v56, v24
	v_div_fixup_f32 v24, v32, v47, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v32, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v27, v20
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v35, v17
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v19, v19, v26
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v34, v18
	v_dual_mul_f32 v18, v36, v24 :: v_dual_mul_f32 v11, v11, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v24, v53, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v35, -v29, v32, 1.0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v15, v30, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v33, -v20, v27, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v41, v88
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, s0, v21, v25, v21
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v10, v10, v2
	v_mul_f32_e32 v2, v9, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v9, null, v19, v19, v23
	v_fmac_f32_e32 v27, v33, v27
	v_div_scale_f32 v26, null, v24, v24, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v9
	v_div_scale_f32 v33, vcc_lo, v31, v51, v31
	v_rcp_f32_e32 v34, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v88, v11, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v12, v40, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v38, v33, v27
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v13, v13, v28
	s_mov_b32 s7, 0x76543210
	v_and_b32_e32 v68, 0x1e0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v39, -v9, v36, 1.0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v89, v12, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v37, -v26, v34, 1.0
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, s3, v23, v19, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v37, v34
	v_div_scale_f32 v37, s1, v22, v24, v22
	v_mul_f32_e32 v45, v39, v36
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v43, v86
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v43, v35, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v10, v42, v87
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v42, -v20, v38, v33
	v_mul_f32_e32 v44, v37, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v86, v2, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v41, -v29, v43, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v87, v10, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v38, v42, v27
	v_fma_f32 v42, -v26, v44, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v41, v32
	v_fma_f32 v20, -v20, v38, v33
	v_fma_f32 v33, -v9, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v42, v34
	v_div_fmas_f32 v20, v20, v27, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v33, v36
	v_fma_f32 v27, -v29, v43, v35
	v_fma_f32 v26, -v26, v44, v37
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v20, v51, v31
	v_fma_f32 v9, -v9, v45, v39
	v_div_fmas_f32 v27, v27, v32, v43
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v26, v26, v34, v44
	s_mov_b32 vcc_lo, s3
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v12, v12, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v9, v9, v36, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v9, v9, v19, v23
	v_div_fixup_f32 v19, v27, v25, v21
	v_div_fixup_f32 v21, v26, v24, v22
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v23, |v6|, |v5|
	v_and_b32_e32 v24, 15, v0
.Ltmp27:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v22, v2, v9 :: v_dual_mul_f32 v19, v11, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v20, v10, v21 :: v_dual_mul_f32 v9, v16, v55
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v15|, |v14|, |v17|
	v_max3_f32 v16, |v13|, |v8|, |v7|
	v_max3_f32 v10, |v18|, |v12|, |v19|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e64 v11, |v20|, |v22|
	v_max3_f32 v21, |v9|, |v3|, |v4|
	v_max3_f32 v10, v2, v10, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_max3_f32 v11, v16, v21, v23
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v24
	v_lshrrev_b32_e32 v23, 2, v68
	v_lshlrev_b32_e32 v24, 7, v24
	v_permlanex16_b32 v16, v10, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v11, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v25, v2, v23
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v10, v10, v16
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v16, v68, 2, v2
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v21
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v21, 0, v24, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_xad_u32 v16, v16, v23, 0
	ds_store_b64 v21, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v21, v11
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v21
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v21
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v21, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v10 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v16, v16, v16 :: v_dual_mov_b32 v21, v11
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v16 :: v_dual_max_f32 v21, v21, v21
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v16, v10 :: v_dual_max_f32 v11, v11, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v21, 0, v2
.Ltmp44:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, s33, 7, v2
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v16
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v16
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v16
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v16, 0, v23
	ds_store_b64 v16, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v21
.Ltmp51:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, 0x2b8cbccc, v10 :: v_dual_max_f32 v11, 0x2b8cbccc, v11
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v11
	v_div_scale_f32 v27, vcc_lo, v10, 0x40e00000, v10
	v_rcp_f32_e32 v23, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v24, v21
	v_fma_f32 v25, -v16, v23, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v21, v24, 1.0
	v_fmac_f32_e32 v23, v25, v23
	v_div_scale_f32 v25, s0, v11, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v26, v24
	v_mul_f32_e32 v26, v27, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v28, v25, v24
	v_fma_f32 v29, -v16, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v21, v28, v25
	v_fmac_f32_e32 v26, v29, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v30, v24
	v_fma_f32 v16, -v16, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v28, v25
	v_div_fmas_f32 v16, v16, v23, v26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v24, v28
	v_div_fixup_f32 v10, v16, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v21, 0x40e00000, v11
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v16, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v21, v11, 16, 1
	v_add3_u32 v23, v10, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v11, v21, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v11, 0xffff0000, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v16, 0xffff0000, v10
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v33, null, v11, v11, v19
	v_div_scale_f32 v37, null, v11, v11, v22
	v_div_scale_f32 v25, null, v11, v11, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v33
	v_rcp_f32_e32 v48, v37
	v_div_scale_f32 v21, null, v11, v11, v15
	v_div_scale_f32 v34, s4, v19, v11, v19
	v_rcp_f32_e32 v42, v25
	v_div_scale_f32 v27, null, v11, v11, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v21
	v_fma_f32 v57, -v33, v46, 1.0
	v_div_scale_f32 v29, null, v11, v11, v18
	v_fma_f32 v59, -v37, v48, 1.0
	v_rcp_f32_e32 v43, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v57, v46
	v_div_scale_f32 v38, s6, v22, v11, v22
	v_rcp_f32_e32 v44, v29
	v_fma_f32 v53, -v25, v42, 1.0
	v_mul_f32_e32 v57, v34, v46
	v_fma_f32 v52, -v21, v41, 1.0
	v_div_scale_f32 v26, s0, v14, v11, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v27, v43, 1.0
	v_fma_f32 v66, -v33, v57, v34
	v_fmac_f32_e32 v48, v59, v48
	v_div_scale_f32 v24, vcc_lo, v15, v11, v15
	v_fmac_f32_e32 v41, v52, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v66, v46
	v_dual_mul_f32 v59, v38, v48 :: v_dual_fmac_f32 v42, v53, v42
	v_fma_f32 v55, -v29, v44, 1.0
	v_div_scale_f32 v28, s1, v17, v11, v17
	v_fmac_f32_e32 v43, v54, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v53, v26, v42 :: v_dual_mul_f32 v52, v24, v41
	v_div_scale_f32 v30, s2, v18, v11, v18
	v_div_scale_f32 v31, null, v11, v11, v12
	v_fma_f32 v62, -v25, v53, v26
	v_fmac_f32_e32 v44, v55, v44
	v_mul_f32_e32 v54, v28, v43
	v_fma_f32 v61, -v21, v52, v24
	v_rcp_f32_e32 v45, v31
	v_fmac_f32_e32 v53, v62, v42
	v_mul_f32_e32 v55, v30, v44
	v_fma_f32 v63, -v27, v54, v28
	v_fmac_f32_e32 v52, v61, v41
	v_div_scale_f32 v40, null, v16, v16, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v29, v55, v30
	v_fmac_f32_e32 v54, v63, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v21, v52, v24
	v_rcp_f32_e32 v51, v40
	v_fma_f32 v56, -v31, v45, 1.0
	v_fmac_f32_e32 v55, v64, v44
	v_fma_f32 v24, -v25, v53, v26
	v_fma_f32 v25, -v27, v54, v28
	v_div_fmas_f32 v21, v21, v41, v52
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v32, s3, v12, v11, v12
	v_fmac_f32_e32 v45, v56, v45
	v_fma_f32 v26, -v29, v55, v30
	v_div_fmas_f32 v24, v24, v42, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v15, v21, v11, v15
	v_div_fmas_f32 v25, v25, v43, v54
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v56, v32, v45
	v_div_fmas_f32 v21, v26, v44, v55
	v_fma_f32 v26, -v40, v51, 1.0
	v_div_scale_f32 v35, null, v11, v11, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v31, v56, v32
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v51, v26, v51
	v_div_scale_f32 v39, null, v16, v16, v13
	v_rcp_f32_e32 v47, v35
	v_fmac_f32_e32 v56, v65, v45
	v_fma_f32 v28, -v33, v57, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v50, v39
	v_div_fixup_f32 v14, v24, v11, v14
	v_div_fixup_f32 v18, v21, v11, v18
	v_fma_f32 v27, -v31, v56, v32
	v_div_scale_f32 v21, null, v16, v16, v7
	v_div_scale_f32 v36, s5, v20, v11, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v35, v47, 1.0
	v_div_fmas_f32 v24, v27, v45, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v60, -v39, v50, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v17, v25, v11, v17
	v_fmac_f32_e32 v47, v58, v47
	v_div_fmas_f32 v25, v28, v46, v57
	v_div_fixup_f32 v12, v24, v11, v12
	v_fmac_f32_e32 v50, v60, v50
	v_div_scale_f32 v24, s0, v13, v16, v13
	v_rcp_f32_e32 v28, v21
	v_mul_f32_e32 v58, v36, v47
	v_fma_f32 v27, -v37, v59, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v29, v24, v50
	v_div_scale_f32 v26, s1, v8, v16, v8
	v_fma_f32 v67, -v35, v58, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v27, v48
	v_fma_f32 v27, -v39, v29, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v30, v26, v51
	v_fma_f32 v31, -v21, v28, 1.0
	v_fmac_f32_e32 v58, v67, v47
	v_div_fixup_f32 v19, v25, v11, v19
	v_fmac_f32_e32 v29, v27, v50
	v_fma_f32 v27, -v40, v30, v26
	v_fmac_f32_e32 v28, v31, v28
	v_div_scale_f32 v31, s2, v7, v16, v7
	v_fma_f32 v25, -v35, v58, v36
	v_div_scale_f32 v33, null, v16, v16, v9
	v_fma_f32 v32, -v37, v59, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v24, -v39, v29, v24
	v_fmac_f32_e32 v30, v27, v51
	v_mul_f32_e32 v27, v31, v28
	v_div_fmas_f32 v25, v25, v47, v58
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v34, v33
	v_div_fmas_f32 v32, v32, v48, v59
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v40, v30, v26
	v_div_fmas_f32 v24, v24, v50, v29
	v_fma_f32 v29, -v21, v27, v31
	v_div_fixup_f32 v20, v25, v11, v20
	v_div_fixup_f32 v11, v32, v11, v22
	v_div_scale_f32 v22, null, v16, v16, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v27, v29, v28
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v24, v16, v13
	v_fma_f32 v24, -v33, v34, 1.0
	v_div_fmas_f32 v26, v26, v51, v30
	v_fma_f32 v21, -v21, v27, v31
	v_rcp_f32_e32 v25, v22
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v34, v24, v34
	v_div_scale_f32 v24, null, v16, v16, v4
	v_div_fixup_f32 v8, v26, v16, v8
	v_div_scale_f32 v26, null, v16, v16, v6
	v_div_fmas_f32 v21, v21, v28, v27
	v_div_scale_f32 v31, null, v16, v16, v5
	v_rcp_f32_e32 v28, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v29, v26
	v_div_scale_f32 v27, vcc_lo, v9, v16, v9
	v_div_fixup_f32 v7, v21, v16, v7
	v_fma_f32 v21, -v22, v25, 1.0
	v_rcp_f32_e32 v35, v31
	v_mul_f32_e32 v30, v27, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v25, v21, v25
	v_div_scale_f32 v21, s0, v3, v16, v3
	v_fma_f32 v32, -v24, v28, 1.0
	v_fma_f32 v37, -v26, v29, 1.0
	v_fma_f32 v36, -v33, v30, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v21, v25
	v_fma_f32 v39, -v31, v35, 1.0
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, s1, v4, v16, v4
	v_fmac_f32_e32 v29, v37, v29
	v_div_scale_f32 v37, s2, v6, v16, v6
	v_fmac_f32_e32 v30, v36, v34
	v_fma_f32 v36, -v22, v38, v21
	v_fmac_f32_e32 v35, v39, v35
	v_div_scale_f32 v39, s3, v5, v16, v5
	v_dual_mul_f32 v40, v32, v28 :: v_dual_mul_f32 v41, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v36, v25
	v_mul_f32_e32 v42, v39, v35
	v_fma_f32 v27, -v33, v30, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v24, v40, v32
	v_fma_f32 v36, -v26, v41, v37
	v_fma_f32 v21, -v22, v38, v21
	v_fma_f32 v22, -v31, v42, v39
	v_div_fmas_f32 v27, v27, v34, v30
	v_dual_fmac_f32 v40, v33, v28 :: v_dual_fmac_f32 v41, v36, v29
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v22, v35
	v_div_fmas_f32 v21, v21, v25, v38
	v_fma_f32 v24, -v24, v40, v32
	v_fma_f32 v22, -v26, v41, v37
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v25, -v31, v42, v39
	v_div_fixup_f32 v9, v27, v16, v9
	v_div_fmas_f32 v24, v24, v28, v40
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v3, v21, v16, v3
	v_div_fmas_f32 v22, v22, v29, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v24, v16, v4
	v_div_fmas_f32 v25, v25, v35, v42
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v6, v22, v16, v6
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v25, v16, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v19
	v_rndne_f32_e32 v19, v20
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v11
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v9, v9
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v12, 15, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v18, 2, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v21, v13
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v25, v6
	v_and_b32_e32 v6, 15, v17
	v_and_b32_e32 v13, 15, v19
	v_and_b32_e32 v17, 15, v7
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v7, 11, v0
	v_and_or_b32 v19, 0x600, v18, v49
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v9
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v24, v4
	v_cvt_i32_f32_e32 v26, v5
	v_and_b32_e32 v5, 15, v16
	v_and_b32_e32 v16, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 0x60, v0
	v_and_b32_e32 v7, 0x3000, v7
	v_and_b32_e32 v29, 16, v0
	v_lshlrev_b32_e32 v28, 7, v0
	v_and_b32_e32 v9, 0x60, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v27, 7, v29
	v_xor_b32_e32 v8, v19, v8
	v_add_nc_u32_e32 v7, 0, v7
	v_and_or_b32 v9, 0x3600, v28, v9
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v29
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 15, v14
	v_and_b32_e32 v14, 15, v20
	v_and_b32_e32 v20, 15, v24
	v_and_b32_e32 v24, 0x1f0, v0
	v_cvt_i32_f32_e32 v22, v3
	v_and_b32_e32 v3, 15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v7, v7, v27, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v8, v9, v24, 0
	ds_store_b128 v7, v[3:6]
	ds_store_b128 v7, v[15:18] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v8
	ds_load_b128 v[15:18], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v22
	v_and_b32_e32 v21, 15, v25
	v_and_b32_e32 v22, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[11:14]
	ds_store_b128 v7, v[19:22] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v8
	ds_load_b128 v[19:22], v8 offset:2048
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v8.l, v10.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, v23.h
	v_mov_b16_e32 v7.h, v1.l
	v_mov_b16_e32 v8.h, v1.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v10, v16, 4, v4
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v15, 4, v3
	v_lshl_or_b32 v3, v17, 4, v5
	v_lshl_or_b32 v1, v18, 4, v6
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v8, v7, v8, vcc_lo
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v4, s48, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v5, v19, 4, v11
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v4, s0, v[2:3]
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 31, s48
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v20, 4, v12
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v21, 4, v13
	v_lshl_or_b32 v12, v22, 4, v14
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v8, v8, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v9.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v9, v2, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v10.l
	v_lshlrev_b16 v0.h, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	v_lshlrev_b16 v2.l, 8, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v8, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v9, s33, 1
	v_cndmask_b32_e32 v1, v6, v7, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v68
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[16:19], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s27, 0xffff
	s_mov_b32 s16, s26
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp52:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 52
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
		.amdhsa_next_free_sgpr 55
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 52
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22348
; TotalNumSgprs: 57
; NumVgprs: 256
; ScratchSize: 52
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 57
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
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 52
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 12
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
