	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v62, 15, v0
	v_lshrrev_b32_e32 v59, 4, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v20, 2, v0
	v_lshlrev_b32_e32 v61, 2, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v60, 0x1e0, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v21, 4, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_or_b32_e32 v2, 32, v59
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v20, 56, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v68, 1, v60
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v169, 0, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v20, v61, v20
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
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v168, 0, v20
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v1, 2, v62
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s39, s11
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
	s_xor_b32 s20, s5, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s7, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s4, 0x7f
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s20, s17
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s18, v1
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s23, s33, s6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s19, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s23
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s24, s21, s4
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 64, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s48, s35, 1
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s49, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s50, s24, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s18, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s23, s5, vcc_lo
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s18, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s23
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v49, 4, v62
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s22, s48, s18
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s6, s19, v7
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_add_i32 s22, s49, s22
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v7
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[3:4], null, s48, v59, v[49:50]
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[4:5], null, s19, v59, v[1:2]
	s_mul_i32 s16, s34, s19
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_lshl_b32 s24, s35, 6
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s7, s19, v8
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s6, s4, s6
	.loc	1 220 34 is_stmt 1              ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v5, s22, v3
	v_add3_u32 v3, s22, s24, v3
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v4, s18, s16, v4
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s7, s4, s7
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v6, s35, v5
	v_add_nc_u32_e32 v7, s35, v3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s6
	s_and_b32 s6, s2, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e64 v8, 0x80000000, v3, s6
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v11, 0x80000000, v6, vcc_lo
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v15, 0x80000000, v7, s6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v19, v4, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x3
	buffer_load_b128 v[3:6], v5, s[36:39], 0 offen
	buffer_load_b128 v[7:10], v8, s[36:39], 0 offen
	buffer_load_b128 v[11:14], v11, s[36:39], 0 offen
	buffer_load_b128 v[15:18], v15, s[36:39], 0 offen
	v_or_b32_e32 v158, v68, v62
	s_mov_b32 s6, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0xff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(4)
	ds_store_b32 v168, v19 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v169, v[3:6]
	s_waitcnt vmcnt(2)
	ds_store_b128 v169, v[7:10] offset:8192
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v169, v[11:14] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v169, v[15:18] offset:24576
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v3, 56, v61
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v35, v68, v62
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v109, v62, 6, v3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v97, 0x100, v35
	v_or_b32_e32 v98, 0x200, v35
	v_or_b32_e32 v99, 0x300, v35
	v_or_b32_e32 v100, 0x400, v35
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v117, 8, v109
	v_xor_b32_e32 v119, 16, v109
	v_xor_b32_e32 v120, 24, v109
	v_xor_b32_e32 v115, 32, v109
	v_xor_b32_e32 v116, 40, v109
	v_xor_b32_e32 v118, 48, v109
	v_xor_b32_e32 v121, 56, v109
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v101, 0x500, v35
	v_or_b32_e32 v102, 0x600, v35
	v_or_b32_e32 v103, 0x700, v35
	v_or_b32_e32 v104, 0x800, v35
	v_or_b32_e32 v105, 0x900, v35
	v_or_b32_e32 v106, 0xa00, v35
	v_or_b32_e32 v107, 0xb00, v35
	v_or_b32_e32 v108, 0xc00, v35
	v_or_b32_e32 v110, 0xd00, v35
	v_or_b32_e32 v111, 0xe00, v35
	v_or_b32_e32 v112, 0xf00, v35
	v_or_b32_e32 v113, 0x1000, v35
	v_or_b32_e32 v114, 0x1100, v35
	v_or_b32_e32 v122, 0x1200, v35
	v_or_b32_e32 v123, 0x1300, v35
	v_or_b32_e32 v124, 0x1400, v35
	v_or_b32_e32 v125, 0x1500, v35
	v_or_b32_e32 v126, 0x1600, v35
	v_or_b32_e32 v127, 0x1700, v35
	v_or_b32_e32 v128, 0x1800, v35
	v_or_b32_e32 v129, 0x1900, v35
	v_or_b32_e32 v130, 0x1a00, v35
	v_or_b32_e32 v131, 0x1b00, v35
	v_or_b32_e32 v132, 0x1c00, v35
	v_or_b32_e32 v133, 0x1d00, v35
	v_or_b32_e32 v134, 0x1e00, v35
	v_or_b32_e32 v135, 0x1f00, v35
	v_or_b32_e32 v136, 0x2000, v35
	v_or_b32_e32 v137, 0x2100, v35
	v_or_b32_e32 v138, 0x2200, v35
	v_or_b32_e32 v139, 0x2300, v35
	v_or_b32_e32 v140, 0x2400, v35
	v_or_b32_e32 v141, 0x2500, v35
	v_or_b32_e32 v142, 0x2600, v35
	v_or_b32_e32 v143, 0x2700, v35
	v_or_b32_e32 v144, 0x2800, v35
	v_or_b32_e32 v145, 0x2900, v35
	v_or_b32_e32 v146, 0x2a00, v35
	v_or_b32_e32 v147, 0x2b00, v35
	v_or_b32_e32 v148, 0x2c00, v35
	v_or_b32_e32 v149, 0x2d00, v35
	v_or_b32_e32 v150, 0x2e00, v35
	v_or_b32_e32 v151, 0x2f00, v35
	v_or_b32_e32 v152, 0x3000, v35
	v_or_b32_e32 v153, 0x3100, v35
	v_or_b32_e32 v154, 0x3200, v35
	v_or_b32_e32 v155, 0x3300, v35
	v_or_b32_e32 v156, 0x3400, v35
	v_or_b32_e32 v157, 0x3500, v35
	v_or_b32_e32 v159, 0x3600, v35
	v_or_b32_e32 v160, 0x3700, v35
	v_or_b32_e32 v161, 0x3800, v35
	v_or_b32_e32 v162, 0x3900, v35
	v_or_b32_e32 v163, 0x3a00, v35
	v_or_b32_e32 v164, 0x3b00, v35
	v_or_b32_e32 v165, 0x3c00, v35
	v_or_b32_e32 v166, 0x3d00, v35
	v_or_b32_e32 v167, 0x3e00, v35
	v_or_b32_e32 v170, 0x3f00, v35
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
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
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr162
                                        ; implicit-def: $vgpr163
                                        ; implicit-def: $vgpr164
                                        ; implicit-def: $vgpr165
                                        ; implicit-def: $vgpr166
                                        ; implicit-def: $vgpr167
                                        ; implicit-def: $vgpr170
.LBB0_3:                                ; %Flow416
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_bfe_u32 v96, v0, 4, 1
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v67, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s6, s50, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v61, 2, v0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v171, s19, v2
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v2, s34, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v3, 56, v61
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v6, 1, v59
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v4, 16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v109, v62, 6, v3
	v_lshl_or_b32 v3, s20, 9, v60
	v_lshl_or_b32 v6, s3, 7, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v4, s50, v4
	s_lshl_b32 s0, s17, 9
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v5, s48, v3
	v_subrev_nc_u32_e32 v177, s0, v3
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v3, 0x81, v6
	v_mul_lo_u32 v7, s50, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v176, s0, v5
	s_lshl_b32 s0, s20, 8
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v178, 1, v4
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v4, 0xc1, v6
	v_mad_u64_u32 v[2:3], null, s35, v3, s[0:1]
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v5, 0xc0, v6
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v6, 0x80, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[3:4], null, s35, v4, s[0:1]
	v_mad_u64_u32 v[4:5], null, s35, v5, s[0:1]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[5:6], null, s35, v6, s[0:1]
	s_lshl_b32 s0, s17, 8
	v_mov_b32_e32 v75, 0
	v_subrev_nc_u32_e32 v180, s0, v2
	v_add_nc_u32_e32 v2, s34, v59
	v_xor_b32_e32 v117, 8, v109
	v_xor_b32_e32 v119, 16, v109
	v_xor_b32_e32 v120, 24, v109
	v_xor_b32_e32 v115, 32, v109
	v_mad_u64_u32 v[50:51], null, s19, v2, v[1:2]
	v_xor_b32_e32 v116, 40, v109
	v_xor_b32_e32 v118, 48, v109
	v_xor_b32_e32 v121, 56, v109
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v172, 0, v158
	v_or_b32_e32 v97, 0x100, v158
	v_or_b32_e32 v98, 0x200, v158
	v_or_b32_e32 v99, 0x300, v158
	v_or_b32_e32 v100, 0x400, v158
	v_or_b32_e32 v101, 0x500, v158
	v_or_b32_e32 v102, 0x600, v158
	v_or_b32_e32 v103, 0x700, v158
	v_or_b32_e32 v104, 0x800, v158
	v_or_b32_e32 v105, 0x900, v158
	v_or_b32_e32 v106, 0xa00, v158
	v_or_b32_e32 v107, 0xb00, v158
	v_or_b32_e32 v108, 0xc00, v158
	v_or_b32_e32 v110, 0xd00, v158
	v_or_b32_e32 v111, 0xe00, v158
	v_or_b32_e32 v112, 0xf00, v158
	v_or_b32_e32 v113, 0x1000, v158
	v_or_b32_e32 v114, 0x1100, v158
	v_or_b32_e32 v122, 0x1200, v158
	v_or_b32_e32 v123, 0x1300, v158
	v_or_b32_e32 v124, 0x1400, v158
	v_or_b32_e32 v125, 0x1500, v158
	v_or_b32_e32 v126, 0x1600, v158
	v_or_b32_e32 v127, 0x1700, v158
	v_or_b32_e32 v128, 0x1800, v158
	v_or_b32_e32 v129, 0x1900, v158
	v_or_b32_e32 v130, 0x1a00, v158
	v_or_b32_e32 v131, 0x1b00, v158
	v_or_b32_e32 v132, 0x1c00, v158
	v_or_b32_e32 v133, 0x1d00, v158
	v_or_b32_e32 v134, 0x1e00, v158
	v_or_b32_e32 v135, 0x1f00, v158
	v_or_b32_e32 v136, 0x2000, v158
	v_or_b32_e32 v137, 0x2100, v158
	v_or_b32_e32 v138, 0x2200, v158
	v_or_b32_e32 v139, 0x2300, v158
	v_or_b32_e32 v140, 0x2400, v158
	v_or_b32_e32 v141, 0x2500, v158
	v_or_b32_e32 v142, 0x2600, v158
	v_or_b32_e32 v143, 0x2700, v158
	v_or_b32_e32 v144, 0x2800, v158
	v_or_b32_e32 v145, 0x2900, v158
	v_or_b32_e32 v146, 0x2a00, v158
	v_or_b32_e32 v147, 0x2b00, v158
	v_or_b32_e32 v148, 0x2c00, v158
	v_or_b32_e32 v149, 0x2d00, v158
	v_or_b32_e32 v150, 0x2e00, v158
	v_or_b32_e32 v151, 0x2f00, v158
	v_or_b32_e32 v152, 0x3000, v158
	v_or_b32_e32 v153, 0x3100, v158
	v_or_b32_e32 v154, 0x3200, v158
	v_or_b32_e32 v155, 0x3300, v158
	v_or_b32_e32 v156, 0x3400, v158
	v_or_b32_e32 v157, 0x3500, v158
	v_or_b32_e32 v159, 0x3600, v158
	v_or_b32_e32 v160, 0x3700, v158
	v_or_b32_e32 v161, 0x3800, v158
	v_or_b32_e32 v162, 0x3900, v158
	v_or_b32_e32 v163, 0x3a00, v158
	v_or_b32_e32 v164, 0x3b00, v158
	v_or_b32_e32 v165, 0x3c00, v158
	v_or_b32_e32 v166, 0x3d00, v158
	v_or_b32_e32 v167, 0x3e00, v158
	v_or_b32_e32 v170, 0x3f00, v158
	v_sub_nc_u32_e32 v173, s19, v1
	v_sub_nc_u32_e32 v174, s19, v59
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v175, 1, v96
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v179, 1, v7
	v_subrev_nc_u32_e32 v181, s0, v3
	v_subrev_nc_u32_e32 v182, s0, v4
	v_subrev_nc_u32_e32 v183, s0, v5
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v81, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s16, 0
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s7, s6, 1
	s_lshl_b32 s3, s35, 2
	s_lshl_b32 s51, s35, 7
	s_add_i32 s52, s18, 64
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
	buffer_load_u16 v184, v179, s[44:47], 0 offen
	buffer_load_u16 v185, v178, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s1, s52, v173
	v_cmp_lt_i32_e32 vcc_lo, s52, v171
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v40, s23 :: v_dual_add_nc_u32 v1, s52, v50
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s52, v174
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s1, s1, s5
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v39, s22 :: v_dual_add_nc_u32 v2, 0, v109
	v_dual_mov_b32 v33, s16 :: v_dual_add_nc_u32 v8, v49, v182
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v10, v49, v181
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v212, 0x80000000, v8 :: v_dual_add_nc_u32 v7, v49, v183
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_dual_cndmask_b32 v214, 0x80000000, v10 :: v_dual_add_nc_u32 v9, v49, v180
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v38, s21 :: v_dual_add_nc_u32 v3, 0, v117
	v_dual_mov_b32 v37, s20 :: v_dual_add_nc_u32 v4, 0, v119
	v_dual_mov_b32 v36, s19 :: v_dual_add_nc_u32 v5, 0, v120
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, s4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v35, s18 :: v_dual_add_nc_u32 v6, 0, v115
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v211, 0x80000000, v7, s0
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v213, 0x80000000, v9, s0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v186, v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[41:44], v2 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[45:48], v3 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[52:55], v4 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[203:206], v5 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[207:210], v6 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v1, v172 offset:1280
	ds_load_u8 v2, v172 offset:1792
	ds_load_u8 v3, v172 offset:1536
	ds_load_u8 v4, v172 offset:1024
	ds_load_u8 v5, v172 offset:256
	ds_load_u8 v6, v172 offset:768
	ds_load_u8 v7, v172 offset:512
	ds_load_u8 v8, v172
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v9, v172 offset:17664
	ds_load_u8 v10, v172 offset:18176
	ds_load_u8 v11, v172 offset:17920
	ds_load_u8 v12, v172 offset:17408
	ds_load_u8 v13, v172 offset:16640
	ds_load_u8 v14, v172 offset:17152
	ds_load_u8 v15, v172 offset:16896
	ds_load_u8 v16, v172 offset:16384
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v187, v172 offset:3328
	ds_load_u8 v188, v172 offset:3840
	ds_load_u8 v189, v172 offset:3584
	ds_load_u8 v190, v172 offset:3072
	ds_load_u8 v191, v172 offset:2304
	ds_load_u8 v192, v172 offset:2816
	ds_load_u8 v193, v172 offset:2560
	ds_load_u8 v194, v172 offset:2048
	ds_load_u8 v195, v172 offset:5376
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v196, v172 offset:19712
	ds_load_u8 v197, v172 offset:20224
	ds_load_u8 v198, v172 offset:19968
	ds_load_u8 v199, v172 offset:19456
	ds_load_u8 v200, v172 offset:18688
	ds_load_u8 v201, v172 offset:19200
	ds_load_u8 v215, v172 offset:18944
	ds_load_u8 v216, v172 offset:18432
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v3, v8, v5, 0xc0c0004
	v_perm_b32 v4, v7, v6, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v5, v12, v9, 0xc0c0004
	v_perm_b32 v6, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v7, v16, v13, 0xc0c0004
	v_perm_b32 v8, v15, v14, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v34, s17 :: v_dual_add_nc_u32 v51, 0, v116
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v4, 16, v3
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v57, v6, 16, v5
	v_lshl_or_b32 v56, v8, 16, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v58, v175, v177
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v202, v175, v176
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[41:42], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[1:2], v[43:44], v[33:40] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[56:57], v[41:42], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[56:57], v[43:44], v[33:40] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v33, v190, v187, 0xc0c0004
	v_perm_b32 v34, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v35, v194, v191, 0xc0c0004
	v_perm_b32 v36, v193, v192, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v216, v200, 0xc0c0004
	v_perm_b32 v188, v215, v201, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v37, v172 offset:5888
	ds_load_u8 v38, v172 offset:5632
	ds_load_u8 v39, v172 offset:5120
	ds_load_u8 v40, v172 offset:4352
	ds_load_u8 v41, v172 offset:4864
	ds_load_u8 v42, v172 offset:4608
	v_lshl_or_b32 v33, v36, 16, v35
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v35, v199, v196, 0xc0c0004
	v_perm_b32 v36, v198, v197, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v43, v172 offset:4096
	ds_load_u8 v44, v172 offset:7424
	ds_load_u8 v56, v172 offset:7936
	ds_load_u8 v196, v172 offset:6656
	ds_load_u8 v197, v172 offset:6144
	ds_load_u8 v215, v172 offset:8448
	ds_load_u8 v57, v172 offset:7680
	ds_load_u8 v194, v172 offset:6912
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v188, 16, v187
	ds_load_u8 v189, v172 offset:21760
	ds_load_u8 v198, v172 offset:24064
	ds_load_u8 v200, v172 offset:23552
	ds_load_u8 v201, v172 offset:22784
	ds_load_u8 v187, v172 offset:22272
	ds_load_u8 v188, v172 offset:22016
	ds_load_u8 v191, v172 offset:21504
	ds_load_u8 v193, v172 offset:20736
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[47:48], v[25:32] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[47:48], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v35, v172 offset:21248
	ds_load_u8 v36, v172 offset:20992
	ds_load_u8 v45, v172 offset:20480
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v46, v172 offset:9472
	ds_load_u8 v47, v172 offset:9984
	ds_load_u8 v48, v172 offset:9728
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v33, v39, v195, 0xc0c0004
	v_perm_b32 v34, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v37, v43, v40, 0xc0c0004
	v_perm_b32 v38, v42, v41, 0xc0c0004
	ds_load_u8 v190, v172 offset:7168
	ds_load_u8 v192, v172 offset:6400
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v40, v172 offset:24320
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v216, v172 offset:22528
	ds_load_u8 v217, v172 offset:25856
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v33, v38, 16, v37
	ds_load_u8 v42, v172 offset:8192
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v37, v172 offset:23808
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v39, v172 offset:9216
	ds_load_u8 v41, v172 offset:8704
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v195, v58, s[40:43], 0 offen offset:20
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v191, v189, 0xc0c0004
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v45, v45, v193, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[54:55], v[25:32] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v36, v187, 16, v38
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v34, v57, v56, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v35, v35, 16, v45
	ds_load_u8 v38, v172 offset:23296
	ds_load_u8 v45, v172 offset:23040
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v190, v44, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v57, v172 offset:24576
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v187, v58, s[40:43], 0 offen
	buffer_load_u16 v188, v58, s[40:43], 0 offen offset:4
	buffer_load_u16 v189, v58, s[40:43], 0 offen offset:8
	buffer_load_u16 v191, v58, s[40:43], 0 offen offset:12
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[52:53], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[54:55], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v35, v197, v192, 0xc0c0004
	v_perm_b32 v36, v196, v194, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v52, v172 offset:26368
	ds_load_u8 v53, v172 offset:26112
	ds_load_u8 v44, v172 offset:25600
	ds_load_u8 v54, v172 offset:24832
	ds_load_u8 v55, v172 offset:25344
	ds_load_u8 v56, v172 offset:25088
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v33, v36, 16, v35
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v35, v200, v37, 0xc0c0004
	v_perm_b32 v36, v198, v40, 0xc0c0004
	v_perm_b32 v37, v216, v201, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v42, v42, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[203:204], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[205:206], v[25:32] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v36, v36, 16, v35
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v45, v38, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v193, v58, s[40:43], 0 offen offset:16
	buffer_load_u16 v190, v202, s[40:43], 0 offen
	buffer_load_u16 v196, v202, s[40:43], 0 offen offset:12
	buffer_load_u16 v198, v202, s[40:43], 0 offen offset:16
	buffer_load_u16 v200, v202, s[40:43], 0 offen offset:20
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v35, v38, 16, v37
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v197, v58, s[40:43], 0 offen offset:24
	buffer_load_u16 v199, v58, s[40:43], 0 offen offset:28
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v58, v172 offset:11520
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, -1
	s_add_i32 s52, s52, 64
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[203:204], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[205:206], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[33:36], v211, s[36:39], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v204, v172 offset:11776
	ds_load_u8 v211, v172 offset:11008
	ds_load_u8 v43, v172 offset:8960
	v_perm_b32 v45, v39, v46, 0xc0c0004
	v_perm_b32 v46, v48, v47, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[37:40], v212, s[36:39], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v203, v172 offset:12032
	ds_load_u8 v205, v172 offset:11264
	ds_load_u8 v206, v172 offset:10496
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s7, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v46, v46, 16, v45
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v41, v41, v43, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v43, v57, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v45, v41, 16, v42
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v41, v44, v217, 0xc0c0004
	v_perm_b32 v42, v53, v52, 0xc0c0004
	v_perm_b32 v44, v56, v55, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v53, v172 offset:10240
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[207:208], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[209:210], v[25:32] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v48, v42, 16, v41
	v_lshl_or_b32 v47, v44, 16, v43
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[41:44], v213, s[36:39], 0 offen
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v212, v172 offset:30976
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[207:208], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[209:210], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v57, v172 offset:27904
	ds_load_u8 v207, v172 offset:28416
	ds_load_u8 v208, v172 offset:28160
	ds_load_u8 v209, v172 offset:27648
	ds_load_u8 v210, v172 offset:26880
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[45:48], v214, s[36:39], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v53, v53, v206, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v206, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v57, v209, v57, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v209, v172 offset:13312
	ds_load_u8 v52, v172 offset:10752
	v_perm_b32 v54, v205, v58, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v58, v172 offset:27136
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v205, v172 offset:13568
	ds_load_u8 v207, v172 offset:14080
	ds_load_u8 v208, v172 offset:13824
	v_perm_b32 v55, v204, v203, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v204, v172 offset:27392
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v56, v55, 16, v54
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v52, v52, v211, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v211, v172 offset:32512
	ds_load_u8 v203, v172 offset:26624
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v55, v52, 16, v53
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[51:54], v51 offset0:64 offset1:66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v204, v58, v204, 0xc0c0004
	v_lshl_or_b32 v58, v206, 16, v57
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v203, v203, v210, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[51:52], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v57, v204, 16, v203
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v203, v172 offset:12544
	ds_load_u8 v204, v172 offset:12800
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[53:54], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v55, v172 offset:12288
	ds_load_u8 v56, v172 offset:13056
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[53:54], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v51, v172 offset:15616
	ds_load_u8 v52, v172 offset:16128
	ds_load_u8 v57, v172 offset:15872
	ds_load_u8 v58, v172 offset:15360
	ds_load_u8 v206, v172 offset:14592
	ds_load_u8 v210, v172 offset:14848
	v_perm_b32 v53, v209, v205, 0xc0c0004
	ds_load_u8 v205, v172 offset:14336
	v_perm_b32 v54, v208, v207, 0xc0c0004
	ds_load_u8 v207, v172 offset:15104
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v208, v172 offset:29440
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v54, v54, 16, v53
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v55, v203, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v56, v204, v56, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v204, v172 offset:30208
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v58, v51, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v58, v172 offset:28928
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v52, v57, v52, 0xc0c0004
	v_lshl_or_b32 v53, v56, 16, v55
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v205, v206, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v55, v172 offset:29696
	ds_load_u8 v56, v172 offset:30464
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v206, v210, v207, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v210, v172 offset:31744
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v52, v52, 16, v51
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v203, v172 offset:29952
	ds_load_u8 v207, v172 offset:28672
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v51, v206, 16, v57
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v206, v172 offset:32000
	ds_load_u8 v209, v172 offset:32256
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v56, v204, v56, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v207, v58, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v204, v210, v206, 0xc0c0004
	ds_load_u8 v206, v172 offset:30720
	ds_load_u8 v205, v172 offset:29184
	ds_load_u8 v58, v172 offset:31488
	ds_load_u8 v207, v172 offset:31232
	v_perm_b32 v55, v55, v203, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v206, v206, v212, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v203, v205, v208, 0xc0c0004
	v_perm_b32 v205, v209, v211, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v208, 0, v118
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v209, v207, v58, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v207, 0, v121
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v58, v56, 16, v55
	v_lshl_or_b32 v57, v203, 16, v57
	v_lshl_or_b32 v56, v205, 16, v204
	v_lshl_or_b32 v55, v209, 16, v206
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[203:206], v208 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[207:210], v207 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[203:204], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[205:206], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[205:206], v[25:32] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[203:204], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[207:208], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[209:210], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[209:210], v[25:32] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[207:208], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v52, 16, v184
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v51, 16, v185
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v12, v52, v12 :: v_dual_mul_f32 v19, v51, v19
	v_mul_f32_e32 v9, v52, v9
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x3
	buffer_load_u16 v192, v202, s[40:43], 0 offen offset:4
	buffer_load_u16 v194, v202, s[40:43], 0 offen offset:8
	buffer_load_u16 v201, v202, s[40:43], 0 offen offset:24
	buffer_load_u16 v202, v202, s[40:43], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v16, v16
	v_dual_mul_f32 v25, v51, v25 :: v_dual_add_nc_u32 v178, 2, v178
	v_dual_mul_f32 v28, v51, v28 :: v_dual_add_nc_u32 v179, 2, v179
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v16, v52, v16
	v_dual_mul_f32 v13, v52, v13 :: v_dual_add_nc_u32 v176, s3, v176
	v_mul_f32_e32 v27, v51, v27
	v_dual_mul_f32 v30, v51, v30 :: v_dual_add_nc_u32 v177, s3, v177
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v23, v51, v23 :: v_dual_add_nc_u32 v180, s51, v180
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v26, v51, v26 :: v_dual_add_nc_u32 v181, s51, v181
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v21, v51, v21 :: v_dual_add_nc_u32 v182, s51, v182
	v_dual_mul_f32 v24, v51, v24 :: v_dual_add_nc_u32 v183, s51, v183
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v32, v51, v32
	v_mul_f32_e32 v31, v51, v31
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v29, v51, v29 :: v_dual_lshlrev_b32 v58, 16, v187
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v22, v51, v22 :: v_dual_mul_f32 v3, v52, v3
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v20, v51, v20 :: v_dual_lshlrev_b32 v55, 16, v191
	v_dual_mul_f32 v1, v52, v1 :: v_dual_mul_f32 v18, v51, v18
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v15, v52, v15
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v17, v51, v17 :: v_dual_mul_f32 v10, v52, v10
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v11, v52, v11
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v4, v52, v4
	v_dual_mul_f32 v2, v52, v2 :: v_dual_lshlrev_b32 v53, 16, v195
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v14, v52, v14 :: v_dual_lshlrev_b32 v57, 16, v188
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v8, v52, v8
	v_mul_f32_e32 v7, v52, v7
	v_mul_f32_e32 v6, v52, v6
	v_mul_f32_e32 v5, v52, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v95, v25, v58 :: v_dual_lshlrev_b32 v54, 16, v193
	v_dual_fmac_f32 v89, v28, v55 :: v_dual_lshlrev_b32 v56, 16, v189
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v187, 16, v200
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v52, 16, v197
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v51, 16, v199
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v91, v26, v57 :: v_dual_lshlrev_b32 v188, 16, v198
	v_dual_fmac_f32 v88, v29, v54 :: v_dual_lshlrev_b32 v189, 16, v196
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v81, v32, v51 :: v_dual_lshlrev_b32 v190, 16, v190
	v_dual_fmac_f32 v86, v31, v52 :: v_dual_fmac_f32 v77, v10, v57
	v_dual_fmac_f32 v94, v9, v58 :: v_dual_fmac_f32 v75, v12, v55
	v_dual_fmac_f32 v76, v11, v56 :: v_dual_fmac_f32 v65, v14, v53
	v_dual_fmac_f32 v66, v13, v54 :: v_dual_fmac_f32 v63, v16, v51
	v_dual_fmac_f32 v64, v15, v52 :: v_dual_fmac_f32 v71, v6, v187
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v83, v20, v189 :: v_dual_fmac_f32 v82, v21, v188
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v168, v186 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(7)
	ds_store_b128 v169, v[33:36]
	s_waitcnt vmcnt(6)
	ds_store_b128 v169, v[37:40] offset:8192
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(5)
	ds_store_b128 v169, v[41:44] offset:16384
	s_waitcnt vmcnt(4)
	ds_store_b128 v169, v[45:48] offset:24576
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v87, v30, v53 :: v_dual_fmac_f32 v90, v27, v56
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v93, v17, v190 :: v_dual_lshlrev_b32 v192, 16, v192
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v185, 16, v201
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v184, 16, v202
	v_lshlrev_b32_e32 v191, 16, v194
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v92, v1, v190
	v_fmac_f32_e32 v74, v2, v192
	v_dual_fmac_f32 v72, v4, v189 :: v_dual_fmac_f32 v67, v5, v188
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v73, v3, v191
	v_dual_fmac_f32 v70, v7, v185 :: v_dual_fmac_f32 v69, v8, v184
	v_dual_fmac_f32 v85, v18, v192 :: v_dual_fmac_f32 v84, v19, v191
	v_dual_fmac_f32 v80, v22, v187 :: v_dual_fmac_f32 v79, v23, v185
	v_fmac_f32_e32 v78, v24, v184
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v35, v158
.LBB0_7:                                ; %Flow417
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s50, v62
	s_mul_i32 s0, s34, s50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s6, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v36, 0, 1, s2
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v3, 0, v119
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v4, 0, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_add3_u32 v1, s0, s1, v1
	s_lshl_b32 s0, s50, 4
	v_add_nc_u32_e32 v52, 0, v161
	v_add_nc_u32_e32 v161, 0, v35
	v_add_nc_u32_e32 v48, 0, v163
	v_dual_mov_b32 v37, 0 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, v1, s0, 1
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v36
	v_add_nc_u32_e32 v51, 0, v162
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_nc_u32_e32 v162, 0, v101
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v163, 0, v100
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v34, 0x1f0, v0
	s_clause 0x1
	buffer_load_u16 v40, v2, s[28:31], 0 offen
	buffer_load_u16 v41, v1, s[28:31], 0 offen
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v1, 0, v109
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v2, 0, v117
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[29:32], v1 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[25:28], v2 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[21:24], v3 offset0:64 offset1:66
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v1, 0, v115
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v2, 0, v116
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v3, 0, v118
	ds_load_2addr_stride64_b64 v[9:12], v4 offset0:64 offset1:66
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v4, 0, v121
	ds_load_2addr_stride64_b64 v[17:20], v1 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[13:16], v2 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[5:8], v3 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v4 offset0:64 offset1:66
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v33, 16, v0
	v_add_nc_u32_e32 v50, 0, v170
	v_add_nc_u32_e32 v46, 0, v167
	v_add_nc_u32_e32 v53, 0, v166
	v_add_nc_u32_e32 v54, 0, v165
	v_add_nc_u32_e32 v47, 0, v164
	v_add_nc_u32_e32 v58, 0, v160
	v_add_nc_u32_e32 v55, 0, v159
	v_add_nc_u32_e32 v116, 0, v157
	v_add_nc_u32_e32 v117, 0, v156
	v_add_nc_u32_e32 v56, 0, v155
	v_add_nc_u32_e32 v57, 0, v154
	v_add_nc_u32_e32 v109, 0, v153
	v_add_nc_u32_e32 v115, 0, v152
	v_add_nc_u32_e32 v151, 0, v151
	v_add_nc_u32_e32 v119, 0, v150
	v_add_nc_u32_e32 v149, 0, v149
	v_add_nc_u32_e32 v148, 0, v148
	v_add_nc_u32_e32 v120, 0, v147
	v_add_nc_u32_e32 v121, 0, v146
	v_add_nc_u32_e32 v118, 0, v145
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
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v150, 0, v112
	v_add_nc_u32_e32 v145, 0, v111
	v_add_nc_u32_e32 v154, 0, v110
	v_add_nc_u32_e32 v155, 0, v108
	v_add_nc_u32_e32 v146, 0, v107
	v_add_nc_u32_e32 v147, 0, v106
	v_add_nc_u32_e32 v152, 0, v105
	v_add_nc_u32_e32 v153, 0, v104
	v_add_nc_u32_e32 v160, 0, v103
	v_add_nc_u32_e32 v156, 0, v102
	v_add_nc_u32_e32 v158, 0, v99
	v_add_nc_u32_e32 v159, 0, v98
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v157, 0, v97
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_mov_b32_e32 v107, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v35, v162
	ds_load_u8 v36, v163
	ds_load_u8 v37, v160
	ds_load_u8 v39, v161
	ds_load_u8 v42, v158
	ds_load_u8 v43, v159
	ds_load_u8 v44, v156
	ds_load_u8 v45, v157
	ds_load_u8 v97, v154
	ds_load_u8 v98, v155
	ds_load_u8 v99, v150
	ds_load_u8 v108, v152
	ds_load_u8 v110, v153
	ds_load_u8 v111, v146
	ds_load_u8 v112, v147
	ds_load_u8 v164, v145
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v107, s11 :: v_dual_mov_b32 v106, s10
	v_dual_mov_b32 v105, s9 :: v_dual_mov_b32 v104, s8
	v_dual_mov_b32 v103, s7 :: v_dual_mov_b32 v102, s6
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_dual_mov_b32 v101, s5 :: v_dual_mov_b32 v100, s4
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v36, v44, v37, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v39, v45, 0xc0c0004
	v_perm_b32 v39, v43, v42, 0xc0c0004
	ds_load_u8 v44, v125
	ds_load_u8 v45, v124
	ds_load_u8 v172, v127
	ds_load_u8 v173, v114
	ds_load_u8 v174, v113
	ds_load_u8 v175, v123
	ds_load_u8 v176, v122
	ds_load_u8 v177, v126
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v110, v108, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v39, 16, v37
	v_perm_b32 v37, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v164, v99, 0xc0c0004
	v_perm_b32 v97, v112, v111, 0xc0c0004
	ds_load_u8 v111, v129
	v_wmma_i32_16x16x16_iu4 v[164:171], v[35:36], v[29:30], v[100:107] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v39, 16, v37
	v_lshl_or_b32 v42, v97, 16, v42
	ds_load_u8 v37, v133
	ds_load_u8 v39, v132
	ds_load_u8 v97, v135
	ds_load_u8 v99, v128
	ds_load_u8 v108, v131
	ds_load_u8 v110, v130
	ds_load_u8 v98, v134
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[100:107], v[35:36], v[31:32], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[42:43], v[25:26], v[164:171] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v112, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v45, v177, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[100:107], v[42:43], v[27:28], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v45, v45, 16, v44
	v_perm_b32 v44, v174, v173, 0xc0c0004
	ds_load_u8 v172, v141
	ds_load_u8 v173, v140
	ds_load_u8 v174, v143
	ds_load_u8 v175, v137
	ds_load_u8 v176, v136
	ds_load_u8 v177, v139
	ds_load_u8 v178, v138
	ds_load_u8 v179, v142
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	v_lshl_or_b32 v44, v112, 16, v44
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[44:45], v[21:22], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[44:45], v[23:24], v[100:107] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v39, 16, v37
	v_perm_b32 v37, v99, v111, 0xc0c0004
	v_perm_b32 v39, v110, v108, 0xc0c0004
	ds_load_u8 v99, v149
	ds_load_u8 v108, v148
	ds_load_u8 v112, v151
	ds_load_u8 v180, v144
	ds_load_u8 v181, v120
	ds_load_u8 v182, v121
	ds_load_u8 v183, v119
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v176, v175, 0xc0c0004
	v_lshl_or_b32 v97, v39, 16, v37
	v_perm_b32 v37, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v39, v179, v174, 0xc0c0004
	v_perm_b32 v172, v178, v177, 0xc0c0004
	ds_load_u8 v173, v118
	v_wmma_i32_16x16x16_iu4 v[164:171], v[97:98], v[9:10], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[97:98], v[11:12], v[100:107] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v39, 16, v37
	v_lshl_or_b32 v110, v172, 16, v110
	ds_load_u8 v37, v116
	ds_load_u8 v39, v117
	ds_load_u8 v172, v58
	ds_load_u8 v174, v109
	ds_load_u8 v175, v115
	ds_load_u8 v176, v56
	ds_load_u8 v177, v57
	ds_load_u8 v178, v55
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v99, v108, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[110:111], v[17:18], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[19:20], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v35, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v108, v183, v112, 0xc0c0004
	ds_load_u8 v112, v53
	ds_load_u8 v179, v54
	ds_load_u8 v183, v50
	ds_load_u8 v184, v51
	ds_load_u8 v185, v52
	ds_load_u8 v186, v47
	ds_load_u8 v187, v48
	ds_load_u8 v188, v46
	v_lshl_or_b32 v36, v108, 16, v99
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	v_perm_b32 v173, v180, v173, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v44, v177, v176, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v173
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v178, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v42, v44, 16, v42
	v_wmma_i32_16x16x16_iu4 v[164:171], v[35:36], v[13:14], v[164:171] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v43, v39, 16, v37
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v179, v112, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v188, v183, 0xc0c0004
	v_perm_b32 v44, v185, v184, 0xc0c0004
	v_perm_b32 v45, v187, v186, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[100:107], v[35:36], v[15:16], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[42:43], v[5:6], v[164:171] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v39, 16, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[100:107], v[42:43], v[7:8], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[36:37], v[1:2], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[36:37], v[3:4], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v42, v164
	v_cvt_f32_i32_e32 v43, v165
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v166
	v_cvt_f32_i32_e32 v45, v167
	v_cvt_f32_i32_e32 v39, v168
	v_cvt_f32_i32_e32 v37, v169
	v_cvt_f32_i32_e32 v36, v170
	v_cvt_f32_i32_e32 v35, v171
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	v_mov_b32_e32 v170, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v38, v162 offset:16384
	ds_load_u8 v97, v163 offset:16384
	ds_load_u8 v98, v160 offset:16384
	ds_load_u8 v99, v161 offset:16384
	ds_load_u8 v108, v158 offset:16384
	ds_load_u8 v110, v159 offset:16384
	ds_load_u8 v111, v156 offset:16384
	ds_load_u8 v112, v157 offset:16384
	ds_load_u8 v160, v154 offset:16384
	ds_load_u8 v161, v155 offset:16384
	ds_load_u8 v150, v150 offset:16384
	ds_load_u8 v162, v152 offset:16384
	ds_load_u8 v163, v153 offset:16384
	ds_load_u8 v146, v146 offset:16384
	ds_load_u8 v147, v147 offset:16384
	ds_load_u8 v145, v145 offset:16384
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v38, v97, v38, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v159, s11 :: v_dual_mov_b32 v158, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v97, v111, v98, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v99, v99, v112, 0xc0c0004
	v_perm_b32 v108, v110, v108, 0xc0c0004
	v_dual_mov_b32 v157, s9 :: v_dual_mov_b32 v156, s8
	v_lshl_or_b32 v98, v97, 16, v38
	ds_load_u8 v38, v125 offset:16384
	ds_load_u8 v110, v124 offset:16384
	ds_load_u8 v111, v127 offset:16384
	ds_load_u8 v112, v114 offset:16384
	ds_load_u8 v113, v113 offset:16384
	ds_load_u8 v114, v123 offset:16384
	ds_load_u8 v122, v122 offset:16384
	ds_load_u8 v123, v126 offset:16384
	v_lshl_or_b32 v97, v108, 16, v99
	v_dual_mov_b32 v155, s7 :: v_dual_mov_b32 v154, s6
	v_dual_mov_b32 v153, s5 :: v_dual_mov_b32 v152, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v99, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v145, v150, 0xc0c0004
	v_perm_b32 v124, v163, v162, 0xc0c0004
	v_perm_b32 v125, v147, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[160:167], v[97:98], v[29:30], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v30, v108, 16, v99
	v_wmma_i32_16x16x16_iu4 v[152:159], v[97:98], v[31:32], v[152:159] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v125, 16, v124
	ds_load_u8 v99, v133 offset:16384
	ds_load_u8 v108, v132 offset:16384
	ds_load_u8 v124, v135 offset:16384
	ds_load_u8 v125, v128 offset:16384
	ds_load_u8 v126, v131 offset:16384
	ds_load_u8 v127, v130 offset:16384
	ds_load_u8 v128, v134 offset:16384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v38, v110, v38, 0xc0c0004
	ds_load_u8 v53, v53 offset:16384
	ds_load_u8 v54, v54 offset:16384
	ds_load_u8 v50, v50 offset:16384
	ds_load_u8 v51, v51 offset:16384
	ds_load_u8 v52, v52 offset:16384
	ds_load_u8 v47, v47 offset:16384
	ds_load_u8 v48, v48 offset:16384
	ds_load_u8 v46, v46 offset:16384
	v_wmma_i32_16x16x16_iu4 v[160:167], v[29:30], v[25:26], v[160:167] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v110, v123, v111, 0xc0c0004
	ds_load_u8 v111, v129 offset:16384
	v_perm_b32 v25, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[152:159], v[29:30], v[27:28], v[152:159] neg_lo:[1,1,0]
	v_lshl_or_b32 v26, v110, 16, v38
	v_perm_b32 v38, v122, v114, 0xc0c0004
	ds_load_u8 v110, v141 offset:16384
	ds_load_u8 v112, v140 offset:16384
	ds_load_u8 v113, v143 offset:16384
	ds_load_u8 v114, v137 offset:16384
	ds_load_u8 v122, v136 offset:16384
	ds_load_u8 v123, v139 offset:16384
	ds_load_u8 v129, v138 offset:16384
	ds_load_u8 v130, v142 offset:16384
	v_lshl_or_b32 v25, v38, 16, v25
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v38, v108, v99, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v99, v128, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[160:167], v[25:26], v[21:22], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[25:26], v[23:24], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v22, v99, 16, v38
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v125, v111, 0xc0c0004
	v_perm_b32 v38, v127, v126, 0xc0c0004
	ds_load_u8 v99, v149 offset:16384
	ds_load_u8 v108, v148 offset:16384
	ds_load_u8 v111, v151 offset:16384
	ds_load_u8 v124, v144 offset:16384
	ds_load_u8 v120, v120 offset:16384
	ds_load_u8 v121, v121 offset:16384
	ds_load_u8 v119, v119 offset:16384
	v_lshl_or_b32 v21, v38, 16, v21
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v38, v112, v110, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v110, v130, v113, 0xc0c0004
	v_perm_b32 v112, v122, v114, 0xc0c0004
	v_perm_b32 v113, v129, v123, 0xc0c0004
	ds_load_u8 v114, v118 offset:16384
	v_wmma_i32_16x16x16_iu4 v[160:167], v[21:22], v[9:10], v[160:167] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v110, 16, v38
	v_wmma_i32_16x16x16_iu4 v[152:159], v[21:22], v[11:12], v[152:159] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v113, 16, v112
	ds_load_u8 v38, v116 offset:16384
	ds_load_u8 v110, v117 offset:16384
	ds_load_u8 v58, v58 offset:16384
	ds_load_u8 v109, v109 offset:16384
	ds_load_u8 v112, v115 offset:16384
	ds_load_u8 v56, v56 offset:16384
	ds_load_u8 v57, v57 offset:16384
	ds_load_u8 v55, v55 offset:16384
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v99, v108, v99, 0xc0c0004
	v_perm_b32 v11, v54, v53, 0xc0c0004
	v_perm_b32 v21, v52, v51, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[160:167], v[9:10], v[17:18], v[160:167] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v108, v119, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[152:159], v[9:10], v[19:20], v[152:159] neg_lo:[1,1,0]
	v_perm_b32 v9, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v18, v108, 16, v99
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v27, v110, v38, 0xc0c0004
	v_perm_b32 v111, v124, v114, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v29, v112, v109, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v23, v57, v56, 0xc0c0004
	v_lshl_or_b32 v17, v31, 16, v111
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v55, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v12, v23, 16, v29
	v_wmma_i32_16x16x16_iu4 v[160:167], v[17:18], v[13:14], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v13, v28, 16, v27
	v_perm_b32 v14, v46, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[152:159], v[17:18], v[15:16], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[12:13], v[5:6], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v14, 16, v11
	v_lshl_or_b32 v5, v9, 16, v21
	v_wmma_i32_16x16x16_iu4 v[152:159], v[12:13], v[7:8], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[5:6], v[1:2], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[5:6], v[3:4], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v108, v160
	v_cvt_f32_i32_e32 v110, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v111, v162
	v_cvt_f32_i32_e32 v112, v163
	v_cvt_f32_i32_e32 v38, v164
	v_cvt_f32_i32_e32 v97, v165
	v_cvt_f32_i32_e32 v98, v166
	v_cvt_f32_i32_e32 v99, v167
	v_cvt_f32_i32_e32 v164, v152
	v_cvt_f32_i32_e32 v165, v153
	v_cvt_f32_i32_e32 v166, v154
	v_cvt_f32_i32_e32 v167, v155
	v_cvt_f32_i32_e32 v168, v156
	v_cvt_f32_i32_e32 v169, v157
	v_cvt_f32_i32_e32 v170, v158
	v_cvt_f32_i32_e32 v171, v159
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v96, v68
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s48
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s49, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v8, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v9, s0, v1, 1
	v_add_lshl_u32 v10, s0, v2, 1
	v_add_lshl_u32 v11, s0, v3, 1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v12, s0, v4, 1
	v_add_lshl_u32 v13, s0, v5, 1
	v_add_lshl_u32 v14, s0, v6, 1
	v_add_lshl_u32 v15, s0, v7, 1
	v_add_lshl_u32 v16, s0, v8, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	buffer_load_u16 v12, v12, s[16:19], 0 offen
	buffer_load_u16 v13, v13, s[16:19], 0 offen
	buffer_load_u16 v14, v14, s[16:19], 0 offen
	buffer_load_u16 v15, v15, s[16:19], 0 offen
	buffer_load_u16 v16, v16, s[16:19], 0 offen
	buffer_load_u16 v17, v1, s[16:19], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_add_lshl_u32 v3, s1, v4, 1
	v_add_lshl_u32 v4, s1, v5, 1
	v_add_lshl_u32 v5, s1, v6, 1
	v_add_lshl_u32 v6, s1, v7, 1
	v_add_lshl_u32 v7, s1, v8, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x6
	buffer_load_u16 v8, v1, s[16:19], 0 offen
	buffer_load_u16 v18, v2, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, 0
.Ltmp23:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v1.h, v41.l
	v_mov_b16_e32 v2.h, v40.l
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v31, v168, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v24, v105, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v28, v165, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v32, v169, v1 :: v_dual_mul_f32 v53, v99, v2
	v_mul_f32_e32 v40, v170, v1
	v_mul_f32_e32 v41, v171, v1
	v_mul_f32_e32 v47, v110, v2
	v_mul_f32_e32 v52, v98, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v25, v106, v1 :: v_dual_mul_f32 v46, v108, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v27, v164, v1 :: v_dual_mul_f32 v38, v38, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v39, v39, v2
	v_dual_mul_f32 v23, v104, v1 :: v_dual_mul_f32 v48, v111, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v29, v166, v1 :: v_dual_mul_f32 v50, v112, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v20, v101, v1 :: v_dual_mul_f32 v43, v43, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v30, v167, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v26, v107, v1 :: v_dual_mul_f32 v51, v97, v2
	v_dual_mul_f32 v19, v100, v1 :: v_dual_mul_f32 v42, v42, v2
	v_dual_mul_f32 v22, v103, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v21, v102, v1 :: v_dual_mul_f32 v44, v44, v2
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v20, v10, v91
	v_fma_f32 v10, v43, v10, v77
	v_fma_f32 v21, v21, v11, v90
	v_fma_f32 v11, v44, v11, v76
	v_fma_f32 v25, v25, v15, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v91, v20, s2
	v_cndmask_b32_e64 v10, v77, v10, s2
	v_cndmask_b32_e64 v21, v90, v21, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v76, v11, s2
	v_cndmask_b32_e64 v25, v86, v25, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v28, v28, v8, v85
	v_fma_f32 v31, v31, v4, v82
	v_fma_f32 v32, v32, v5, v80
	v_fma_f32 v40, v40, v6, v79
	v_fma_f32 v41, v41, v7, v78
	v_fma_f32 v8, v47, v8, v74
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v82, v31, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v7, v53, v7, v69
	v_fma_f32 v4, v38, v4, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v80, v32, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v79, v40, s2
	v_cndmask_b32_e64 v40, v78, v41, s2
	v_cndmask_b32_e64 v41, v74, v8, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v31
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v27, v27, v17, v93
	v_fma_f32 v17, v46, v17, v92
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v69, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v29, v29, v18, v84
	v_fma_f32 v18, v48, v18, v73
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v92, v17, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v67, v4, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v73, v18, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v17
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v30, v30, v3, v83
	v_fma_f32 v3, v50, v3, v72
	v_fma_f32 v6, v52, v6, v70
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v93, v27, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v85, v28, s2
	v_cndmask_b32_e64 v29, v84, v29, s2
	v_cndmask_b32_e64 v30, v83, v30, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v18
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v5, v51, v5, v71
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v22, v22, v12, v89
	v_fma_f32 v12, v45, v12, v75
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v70, v6, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v38
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v19, v9, v95
	v_fma_f32 v9, v42, v9, v94
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v72, v3, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v27
	v_dual_mul_f32 v50, 0xbfb8aa3b, v28 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v47, 0xbfb8aa3b, v30 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v71, v5, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v5, 0xbfb8aa3b, v40 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v29
	v_mul_f32_e32 v51, 0xbfb8aa3b, v42
	v_dual_mul_f32 v53, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v46
	v_mul_f32_e32 v57, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v8
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v6
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v5
	v_mul_f32_e32 v55, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v56, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v53
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v51
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v57
	v_cndmask_b32_e64 v4, 0, 0x42800000, s1
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	v_cndmask_b32_e64 v47, 0, 0x42800000, s5
	v_cndmask_b32_e64 v8, 0, 0x42800000, s6
	v_cndmask_b32_e64 v7, 0, 0x42800000, s7
	v_cndmask_b32_e64 v6, 0, 0x42800000, s8
	v_cndmask_b32_e64 v5, 0, 0x42800000, s9
	v_cndmask_b32_e64 v53, 0, 0x42800000, s10
	v_cndmask_b32_e64 v52, 0, 0x42800000, s11
	v_cndmask_b32_e64 v51, 0, 0x42800000, s12
	v_cndmask_b32_e64 v57, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v55
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v56
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v30
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v41
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v29 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v32
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v31 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v40
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v38 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v43
	v_cndmask_b32_e64 v56, 0, 0x42800000, s14
	v_cndmask_b32_e64 v55, 0, 0x42800000, s15
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v18
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v42
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v5, v5
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v54
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v56, 0xbfb8aa3b, v44 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v45
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v57, v57
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v75, v12, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, s0
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s13
	v_ldexp_f32 v3, v3, v58
	v_ldexp_f32 v4, v4, v67
	v_ldexp_f32 v50, v50, v68
	v_ldexp_f32 v48, v48, v69
	v_ldexp_f32 v47, v47, v70
	v_ldexp_f32 v8, v8, v71
	v_ldexp_f32 v7, v7, v72
	v_ldexp_f32 v6, v6, v73
	v_ldexp_f32 v5, v5, v74
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v46 :: v_dual_add_f32 v3, 1.0, v3
	v_ldexp_f32 v53, v53, v75
	v_ldexp_f32 v52, v52, v76
	v_ldexp_f32 v51, v51, v77
	v_ldexp_f32 v57, v57, v78
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v58, 1.0, v4
	v_dual_add_f32 v4, 1.0, v5 :: v_dual_add_f32 v5, 1.0, v6
	v_dual_add_f32 v6, 1.0, v7 :: v_dual_add_f32 v7, 1.0, v8
	v_dual_add_f32 v8, 1.0, v47 :: v_dual_add_f32 v47, 1.0, v48
	v_add_f32_e32 v48, 1.0, v50
	v_dual_add_f32 v50, 1.0, v51 :: v_dual_add_f32 v51, 1.0, v52
	v_add_f32_e32 v52, 1.0, v53
	v_add_f32_e32 v53, 1.0, v57
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v57, null, v3, v3, v27
	v_div_scale_f32 v70, null, v48, v48, v28
	v_div_scale_f32 v68, null, v58, v58, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v57
	v_rcp_f32_e32 v93, v70
	v_div_scale_f32 v72, null, v47, v47, v29
	v_div_scale_f32 v74, null, v8, v8, v30
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v89, v22, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v92, v68
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v26, v16, v81
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v76, null, v7, v7, v31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v103, -v57, v91, 1.0
	v_fma_f32 v105, -v70, v93, 1.0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v94, v9, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v78, null, v6, v6, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v103, v91
	v_div_scale_f32 v85, null, v52, v52, v41
	v_fmac_f32_e32 v93, v105, v93
	v_div_scale_f32 v89, null, v50, v50, v42
	v_rcp_f32_e32 v94, v72
	v_rcp_f32_e32 v100, v85
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v95, v19, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v95, v74
	v_rcp_f32_e32 v102, v89
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v24, v14, v87
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v81, v26, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v81, null, v5, v5, v38
	v_div_scale_f32 v83, null, v4, v4, v40
	v_rcp_f32_e32 v96, v76
	v_rcp_f32_e32 v97, v78
	v_fma_f32 v104, -v68, v92, 1.0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v87, v24, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v87, null, v51, v51, v18
	v_rcp_f32_e32 v98, v81
	v_rcp_f32_e32 v99, v83
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v56, v56
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v67, vcc_lo, v27, v3, v27
	v_fma_f32 v106, -v72, v94, 1.0
	v_fma_f32 v112, -v85, v100, 1.0
	v_fma_f32 v107, -v74, v95, 1.0
	v_div_scale_f32 v69, s1, v17, v58, v17
	v_div_scale_f32 v71, s3, v28, v48, v28
	v_fma_f32 v114, -v89, v102, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v92, v104, v92 :: v_dual_fmac_f32 v95, v107, v95
	v_rcp_f32_e32 v101, v87
	v_fma_f32 v108, -v76, v96, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v73, s4, v29, v47, v29
	v_fma_f32 v109, -v78, v97, 1.0
	v_fmac_f32_e32 v94, v106, v94
	v_dual_fmac_f32 v100, v112, v100 :: v_dual_mul_f32 v103, v67, v91
	v_div_scale_f32 v75, s5, v30, v8, v30
	v_dual_fmac_f32 v102, v114, v102 :: v_dual_mul_f32 v105, v71, v93
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v104, v69, v92 :: v_dual_mul_f32 v107, v75, v95
	v_div_scale_f32 v77, s6, v31, v7, v31
	v_fma_f32 v110, -v81, v98, 1.0
	v_fma_f32 v111, -v83, v99, 1.0
	v_fmac_f32_e32 v96, v108, v96
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v56, v56, v79
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, s7, v32, v6, v32
	v_div_scale_f32 v86, s10, v41, v52, v41
	v_fmac_f32_e32 v97, v109, v97
	v_mul_f32_e32 v106, v73, v94
	v_fma_f32 v115, -v57, v103, v67
	v_div_scale_f32 v90, s12, v42, v50, v42
	v_fma_f32 v116, -v68, v104, v69
	v_fma_f32 v117, -v70, v105, v71
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v23, v13, v88
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v82, s8, v38, v5, v38
	v_div_scale_f32 v84, s9, v40, v4, v40
	v_fma_f32 v113, -v87, v101, 1.0
	v_dual_fmac_f32 v98, v110, v98 :: v_dual_fmac_f32 v99, v111, v99
	v_dual_mul_f32 v108, v77, v96 :: v_dual_mul_f32 v109, v79, v97
	v_dual_mul_f32 v112, v86, v100 :: v_dual_fmac_f32 v103, v115, v91
	v_fma_f32 v118, -v72, v106, v73
	v_fma_f32 v119, -v74, v107, v75
	v_dual_mul_f32 v114, v90, v102 :: v_dual_fmac_f32 v105, v117, v93
	v_fmac_f32_e32 v104, v116, v92
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v88, v23, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v88, s11, v18, v51, v18
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v110, v82, v98
	v_mul_f32_e32 v111, v84, v99
	v_fma_f32 v120, -v76, v108, v77
	v_fma_f32 v121, -v78, v109, v79
	v_fmac_f32_e32 v106, v118, v94
	v_fma_f32 v57, -v57, v103, v67
	v_fmac_f32_e32 v107, v119, v95
	v_fma_f32 v67, -v68, v104, v69
	v_fma_f32 v68, -v70, v105, v71
	v_mul_f32_e32 v113, v88, v101
	v_fma_f32 v122, -v81, v110, v82
	v_fma_f32 v123, -v83, v111, v84
	v_dual_fmac_f32 v108, v120, v96 :: v_dual_fmac_f32 v109, v121, v97
	v_fma_f32 v69, -v72, v106, v73
	v_div_fmas_f32 v57, v57, v91, v103
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v70, -v74, v107, v75
	v_div_fmas_f32 v68, v68, v93, v105
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v125, -v87, v113, v88
	v_dual_fmac_f32 v110, v122, v98 :: v_dual_fmac_f32 v111, v123, v99
	v_fma_f32 v71, -v76, v108, v77
	v_fma_f32 v124, -v85, v112, v86
	v_div_fixup_f32 v27, v57, v3, v27
	v_div_fmas_f32 v3, v69, v94, v106
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v72, -v78, v109, v79
	v_div_fmas_f32 v57, v70, v95, v107
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v126, -v89, v114, v90
	v_fmac_f32_e32 v113, v125, v101
	v_fma_f32 v73, -v81, v110, v82
	v_div_fixup_f32 v28, v68, v48, v28
	v_div_fmas_f32 v48, v71, v96, v108
	v_div_fixup_f32 v3, v3, v47, v29
	v_fmac_f32_e32 v112, v124, v100
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v74, -v83, v111, v84
	v_div_fmas_f32 v29, v72, v97, v109
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v30, v57, v8, v30
	v_div_fmas_f32 v47, v73, v98, v110
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v20, v28
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v20, v48, v7, v31
	v_fmac_f32_e32 v114, v126, v102
	s_mov_b32 vcc_lo, s9
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v21, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v75, -v85, v112, v86
	v_div_fmas_f32 v28, v74, v99, v111
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v76, -v87, v113, v88
	v_div_fmas_f32 v21, v67, v92, v104
	s_mov_b32 vcc_lo, s10
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v3, v23, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v77, -v89, v114, v90
	v_div_fmas_f32 v20, v75, v100, v112
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v23, v28, v4, v40
	v_div_fmas_f32 v28, v76, v101, v113
	s_mov_b32 vcc_lo, s12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v55, v55
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v29, v6, v32
	v_div_fmas_f32 v29, v77, v102, v114
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v17, v21, v58, v17
	v_div_fixup_f32 v18, v28, v51, v18
	v_div_fixup_f32 v5, v47, v5, v38
	v_div_fixup_f32 v21, v29, v50, v42
	v_div_fixup_f32 v20, v20, v52, v41
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v9, v17
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v29, v36, v2
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v39, v13, v66
	.loc	1 238 19 is_stmt 1              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v12, v12, v21
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_ldexp_f32 v21, v55, v80
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v24, v6
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v24, 1.0, v56
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v6, v25, v5 :: v_dual_mul_f32 v5, v26, v23
	v_dual_mul_f32 v20, v10, v20 :: v_dual_mul_f32 v23, v37, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v28, null, v24, v24, v44
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v29, v15, v64
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v10, v54
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s0
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v31, v28
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v64, v15, s2
	v_cndmask_b32_e64 v13, v66, v13, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v23, v14, v65
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v22, v30
	s_mov_b32 s7, 0x76543210
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_ldexp_f32 v10, v10, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, null, v21, v21, v45
	v_fma_f32 v37, -v28, v31, 1.0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v18, v11, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, null, v53, v53, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v25
	v_fmac_f32_e32 v31, v37, v31
	v_div_scale_f32 v37, s0, v44, v24, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v26, v11
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v65, v14, s2
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v22, |v9|, |v3|, |v4|
.Ltmp29:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v42, v37, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v23, -v28, v42, v37
	v_fma_f32 v32, -v11, v26, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v23, v31
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, vcc_lo, v43, v53, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v32, v26
	v_fma_f32 v29, -v11, v40, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v29, v26
	v_fma_f32 v11, -v11, v40, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v11, v11, v26, v40
	v_fma_f32 v26, -v28, v42, v37
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v11, v11, v53, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v2, v35, v2 :: v_dual_mul_f32 v13, v13, v11
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v16, v63
	.loc	1 238 26 is_stmt 1              ; generate_amdgcn.py:238:26
	v_fma_f32 v16, -v25, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v63, v2, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v36, v16, v36
	v_div_scale_f32 v16, s1, v45, v21, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_mul_f32 v47, v16, v36
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v35, null, v10, v10, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v25, v47, v16
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v29, v36
	v_fma_f32 v16, -v25, v47, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v35, v38, 1.0
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s3, v46, v10, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v41, v38
	v_fma_f32 v23, -v35, v48, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v23, v38
	v_div_fmas_f32 v23, v26, v31, v42
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v16, v16, v36, v47
	v_fma_f32 v25, -v35, v48, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v23, v23, v24, v44
.Ltmp30:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v24, 7, v62
.Ltmp31:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v16, v16, v21, v45
	v_div_fmas_f32 v25, v25, v38, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v14, v23
.Ltmp32:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v23, |v6|, |v5|
.Ltmp33:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v10, v25, v10, v46
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v16, v19, v27 :: v_dual_mul_f32 v21, v2, v10
.Ltmp34:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v17|, |v20|, |v18|
	v_max3_f32 v10, |v12|, |v13|, |v14|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v19, |v16|, |v8|, |v7|
	v_max_f32_e64 v11, |v15|, |v21|
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v10, v2, v10, v11
	v_max3_f32 v11, v19, v22, v23
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v62
	v_lshrrev_b32_e32 v23, 2, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v19, v10, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v11, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v25, v2, v23
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v10, v10, v19
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v19, v60, 2, v2
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v22
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v22, 0, v24, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_xad_u32 v19, v19, v23, 0
	ds_store_b64 v22, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v19, v10
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v11
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v19
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v19
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v19
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v19
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v19, 0, v23
	v_mov_b32_dpp v22, v22 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v22
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v22
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v22
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v22, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v22
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v22, 0, v2
.Ltmp60:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, s33, 7, v2
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v19, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v22
.Ltmp62:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, 0x2b8cbccc, v10 :: v_dual_max_f32 v11, 0x2b8cbccc, v11
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v11
	v_div_scale_f32 v27, vcc_lo, v10, 0x40e00000, v10
	v_rcp_f32_e32 v23, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v24, v22
	v_fma_f32 v25, -v19, v23, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v24, 1.0
	v_dual_fmac_f32 v23, v25, v23 :: v_dual_fmac_f32 v24, v26, v24
	v_div_scale_f32 v25, s0, v11, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v27, v23
	v_fma_f32 v29, -v19, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v29, v23
	v_fma_f32 v19, -v19, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v19, v19, v23, v26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v10, v19, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v19, v10, 16, 1
	v_add3_u32 v19, v10, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v10, 0xffff0000, v19
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v19.l, v19.h
	v_mov_b16_e32 v19.h, v1.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v37, null, v10, v10, v15
	v_div_scale_f32 v29, null, v10, v10, v12
	v_div_scale_f32 v38, s5, v15, v10, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v37
	v_rcp_f32_e32 v46, v29
	v_div_scale_f32 v23, null, v10, v10, v17
	v_div_scale_f32 v27, null, v10, v10, v18
	v_div_scale_f32 v31, null, v10, v10, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v23
	v_rcp_f32_e32 v45, v27
	v_fma_f32 v63, -v37, v50, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v29, v46, 1.0
	v_rcp_f32_e32 v47, v31
	v_div_scale_f32 v26, s0, v20, v10, v20
	v_fmac_f32_e32 v50, v63, v50
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v28, v25, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v46, v57, v46
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v54, -v23, v43, 1.0
	v_fma_f32 v56, -v27, v45, 1.0
	v_mul_f32_e32 v63, v38, v50
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v30, -v22, v28, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v58, -v31, v47, 1.0
	v_fmac_f32_e32 v43, v54, v43
	v_fmac_f32_e32 v45, v56, v45
	v_div_scale_f32 v32, s3, v13, v10, v13
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v30, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v30, s2, v12, v10, v12
	v_fmac_f32_e32 v47, v58, v47
	v_div_scale_f32 v39, null, v10, v10, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v22, v28, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v25, null, v10, v10, v20
	v_dual_mul_f32 v57, v30, v46 :: v_dual_mul_f32 v58, v32, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v39
	v_rcp_f32_e32 v44, v25
	v_div_scale_f32 v40, s6, v21, v10, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v69, -v29, v57, v30
	v_fma_f32 v70, -v31, v58, v32
	v_fma_f32 v72, -v37, v63, v38
	v_fmac_f32_e32 v57, v69, v46
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v22, v22, v24, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v55, -v25, v44, 1.0
	v_div_scale_f32 v24, vcc_lo, v17, v10, v17
	v_div_scale_f32 v28, s1, v18, v10, v18
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v11, v22, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v44, v55, v44
	v_mul_f32_e32 v54, v24, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v56, v28, v45
	v_fmac_f32_e32 v58, v70, v47
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v22, v11, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v55, v26, v44
	v_fma_f32 v66, -v23, v54, v24
	v_fma_f32 v68, -v27, v56, v28
	v_fma_f32 v64, -v39, v51, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v22, v11, v22, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v67, -v25, v55, v26
	v_fmac_f32_e32 v54, v66, v43
	v_fmac_f32_e32 v56, v68, v45
	v_fmac_f32_e32 v51, v64, v51
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v11, 0xffff0000, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v55, v67, v44
	v_fma_f32 v23, -v23, v54, v24
	v_fmac_f32_e32 v63, v72, v50
	v_mul_f32_e32 v64, v40, v51
	v_div_scale_f32 v41, null, v11, v11, v16
	v_fma_f32 v24, -v25, v55, v26
	v_fma_f32 v25, -v27, v56, v28
	v_div_fmas_f32 v23, v23, v43, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v52, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v29, v57, v30
	v_div_fmas_f32 v24, v24, v44, v55
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v27, -v31, v58, v32
	v_div_fmas_f32 v25, v25, v45, v56
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v17, v23, v10, v17
	v_div_fmas_f32 v23, v26, v46, v57
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v65, -v41, v52, 1.0
	v_div_fixup_f32 v20, v24, v10, v20
	v_div_fmas_f32 v24, v27, v47, v58
	v_fma_f32 v27, -v39, v64, v40
	v_div_scale_f32 v42, null, v11, v11, v8
	v_fmac_f32_e32 v52, v65, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v24, v10, v13
	v_div_scale_f32 v24, s0, v16, v11, v16
	v_fmac_f32_e32 v64, v27, v51
	v_rcp_f32_e32 v53, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v29, v24, v52
	v_fma_f32 v32, -v39, v64, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v41, v29, v24
	v_fma_f32 v26, -v42, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v27, v52
	v_div_scale_f32 v35, null, v10, v10, v14
	v_div_scale_f32 v36, s4, v14, v10, v14
	v_div_fixup_f32 v12, v23, v10, v12
	v_rcp_f32_e32 v48, v35
	v_div_scale_f32 v23, null, v11, v11, v7
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v25, v10, v18
	v_fmac_f32_e32 v53, v26, v53
	v_div_scale_f32 v26, s1, v8, v11, v8
	v_fma_f32 v24, -v41, v29, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v62, -v35, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v30, v26, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v48, v62, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v42, v30, v26
	v_mul_f32_e32 v62, v36, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v27, v53
	v_fma_f32 v71, -v35, v62, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v42, v30, v26
	v_fmac_f32_e32 v62, v71, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v35, v62, v36
	v_div_scale_f32 v35, null, v11, v11, v9
	v_div_fmas_f32 v25, v28, v48, v62
	v_rcp_f32_e32 v28, v23
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_div_fixup_f32 v14, v25, v10, v14
	v_fma_f32 v25, -v37, v63, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v31, -v23, v28, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v50, v63
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v32, v32, v51, v64
	v_fmac_f32_e32 v28, v31, v28
	v_div_scale_f32 v31, s2, v7, v11, v7
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v15, v25, v10, v15
	v_div_fmas_f32 v24, v24, v52, v29
	v_mul_f32_e32 v27, v31, v28
	v_div_fixup_f32 v10, v32, v10, v21
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v16, v24, v11, v16
	v_fma_f32 v29, -v23, v27, v31
	v_fma_f32 v24, -v35, v36, 1.0
	v_div_fmas_f32 v26, v26, v53, v30
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v27, v29, v28
	v_fmac_f32_e32 v36, v24, v36
	v_div_scale_f32 v24, null, v11, v11, v4
	v_div_fixup_f32 v8, v26, v11, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v23, v27, v31
	v_div_scale_f32 v23, null, v11, v11, v3
	v_div_scale_f32 v26, null, v11, v11, v6
	v_div_fmas_f32 v21, v21, v28, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v25, v23
	v_div_scale_f32 v31, null, v11, v11, v5
	v_rcp_f32_e32 v28, v24
	v_rcp_f32_e32 v29, v26
	v_div_scale_f32 v27, vcc_lo, v9, v11, v9
	v_div_fixup_f32 v7, v21, v11, v7
	v_rcp_f32_e32 v37, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v23, v25, 1.0
	v_mul_f32_e32 v30, v27, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v32, -v24, v28, 1.0
	v_fma_f32 v39, -v26, v29, 1.0
	v_fmac_f32_e32 v25, v21, v25
	v_div_scale_f32 v21, s0, v3, v11, v3
	v_fma_f32 v38, -v35, v30, v27
	v_fma_f32 v41, -v31, v37, 1.0
	v_fmac_f32_e32 v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v21, v25
	v_div_scale_f32 v32, s1, v4, v11, v4
	v_fmac_f32_e32 v29, v39, v29
	v_div_scale_f32 v39, s2, v6, v11, v6
	v_fmac_f32_e32 v30, v38, v36
	v_fma_f32 v38, -v23, v40, v21
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s3, v5, v11, v5
	v_dual_mul_f32 v42, v32, v28 :: v_dual_mul_f32 v43, v39, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v38, v25
	v_mul_f32_e32 v44, v41, v37
	v_fma_f32 v27, -v35, v30, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v24, v42, v32
	v_fma_f32 v38, -v26, v43, v39
	v_fma_f32 v21, -v23, v40, v21
	v_fma_f32 v23, -v31, v44, v41
	v_div_fmas_f32 v27, v27, v36, v30
	v_dual_fmac_f32 v42, v35, v28 :: v_dual_fmac_f32 v43, v38, v29
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v23, v37
	v_div_fmas_f32 v21, v21, v25, v40
	v_fma_f32 v24, -v24, v42, v32
	v_fma_f32 v23, -v26, v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v25, -v31, v44, v41
	v_div_fixup_f32 v9, v27, v11, v9
	v_div_fmas_f32 v24, v24, v28, v42
	s_mov_b32 vcc_lo, s2
	s_mov_b32 s0, 0xc1000000
	v_div_fmas_f32 v23, v23, v29, v43
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v3, v21, v11, v3
	v_div_fmas_f32 v25, v25, v37, v44
	v_div_fixup_f32 v4, v24, v11, v4
	v_div_fixup_f32 v6, v23, v11, v6
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v25, v11, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v17
	v_rndne_f32_e32 v17, v20
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v23, v9
	v_cvt_i32_f32_e32 v27, v5
	v_and_b32_e32 v5, 15, v18
	v_and_b32_e32 v9, 15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v15, 11, v0
	v_lshlrev_b32_e32 v18, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v20, v8
	v_cvt_i32_f32_e32 v21, v7
	v_cvt_i32_f32_e32 v24, v3
	v_cvt_i32_f32_e32 v25, v4
	v_and_b32_e32 v3, 15, v11
	v_and_b32_e32 v4, 15, v17
	v_and_b32_e32 v8, 15, v14
	v_and_b32_e32 v11, 15, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 0x60, v0
	v_and_or_b32 v17, 0x600, v61, v49
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 0x3000, v15
	v_lshlrev_b32_e32 v23, 7, v0
	v_and_b32_e32 v18, 0x60, v18
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v6
	v_and_b32_e32 v6, 15, v12
	v_and_b32_e32 v7, 15, v13
	v_and_b32_e32 v12, 15, v20
	v_and_b32_e32 v13, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v20, 7, v33
	v_xor_b32_e32 v21, v17, v16
	v_add_nc_u32_e32 v28, 0, v15
	v_and_or_b32 v23, 0x3600, v23, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_and_b32_e32 v15, 15, v24
	v_and_b32_e32 v16, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v20, v28, v20, v21
	v_xad_u32 v21, v23, v34, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v10, v10
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v20, v[3:6]
	ds_store_b128 v20, v[11:14] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v21
	ds_load_b128 v[11:14], v21 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v10, 15, v10
	v_and_b32_e32 v17, 15, v26
	v_and_b32_e32 v18, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[7:10]
	ds_store_b128 v20, v[15:18] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v21
	ds_load_b128 v[15:18], v21 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v20.l, v22.h
	v_mov_b16_e32 v20.h, v1.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v11, 4, v3
	v_lshl_or_b32 v12, v12, 4, v4
	v_lshl_or_b32 v3, v13, 4, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v4, s34, v59
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v1, v14, 4, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v4, s0, v[2:3]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v5, v15, 4, v7
	v_lshl_or_b32 v7, v17, 4, v9
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v9, v19, v20, vcc_lo
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v16, 4, v8
	v_lshl_or_b32 v8, v18, 4, v10
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v9, v9, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v8.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v8, v2, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v12.l
	v_and_b16 v0.l, 0xff, v11.l
	v_and_b16 v1.h, 0xff, v7.l
	v_lshlrev_b16 v2.l, 8, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v9, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v8, s33, 1
	v_cndmask_b32_e32 v1, v6, v19, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v60
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
.Ltmp63:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp64:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 218
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 218
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16288
; TotalNumSgprs: 55
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 218
; Occupancy: 6
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
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
