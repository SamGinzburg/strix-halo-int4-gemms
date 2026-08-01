	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v34, 15, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v16, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v33, 4, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v36, 2, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v35, 0x1e0, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v2, 56, v16
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 64, v3
	v_or_b32_e32 v4, 0xc0, v3
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
	s_sub_i32 s19, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s19
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s7, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s19, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s6, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s16, s6
	s_xor_b32 s17, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s17, s17, 31
	v_rcp_iflag_f32_e32 v1, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v1, 2, v34
	s_mov_b32 s11, 0x31027000
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_mul_i32 s16, s16, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s16
	s_abs_i32 s16, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s16, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s18, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s16, s16, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s16, s6
	s_cmp_ge_u32 s16, s6
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s16, s20, s16
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s16, s6
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 0x7f
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s18, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s16, s4, 1
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 6
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s7, s33, s7
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, s16, v33, v[1:2]
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v11, s6, v1
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[7:8], null, s16, v3, v[2:3]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v12, s6, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s48, s33, 8
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s19
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[8:9], null, s16, v5, v[2:3]
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v11
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v11
	.loc	1 225 29 is_stmt 1              ; generate_amdgcn.py:225:29
	s_add_i32 s22, s48, s35
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 5
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[9:10], null, s16, v4, v[2:3]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s21, 7
.Ltmp21:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s16, v12
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v12
	.loc	1 218 34 is_stmt 1              ; generate_amdgcn.py:218:34
	s_mul_i32 s21, s48, s16
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_mul_i32 s19, s22, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s22, s34, s16
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_lshl_add_u32 v10, s16, 7, v7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_add_i32 s21, s21, s6
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v6, s6, s22, v6
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s23, s3, vcc_lo
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v11, s21, v7
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_add_i32 s19, s19, s6
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v12, s21, v8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s23
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v14, s21, v10
	v_add_nc_u32_e32 v13, s21, v9
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_add_nc_u32_e32 v7, s19, v7
	v_add_nc_u32_e32 v8, s19, v8
	v_add_nc_u32_e32 v9, s19, v9
	v_add_nc_u32_e32 v10, s19, v10
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_dual_cndmask_b32 v15, 0x80000000, v7 :: v_dual_cndmask_b32 v18, 0x80000000, v9
	v_cndmask_b32_e32 v21, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e32 v17, 0x80000000, v8, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v25, v6, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x7
	buffer_load_b64 v[6:7], v11, s[28:31], 0 offen
	buffer_load_b64 v[8:9], v12, s[28:31], 0 offen
	buffer_load_b64 v[10:11], v14, s[28:31], 0 offen
	buffer_load_b64 v[12:13], v13, s[28:31], 0 offen
	buffer_load_b64 v[14:15], v15, s[28:31], 0 offen
	buffer_load_b64 v[19:20], v17, s[28:31], 0 offen
	buffer_load_b64 v[21:22], v21, s[28:31], 0 offen
	buffer_load_b64 v[23:24], v18, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v17, 2, v0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v18, 1, v0
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0xff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v17, 56, v17
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v18, 56, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v17, v36, v17
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v16, v16, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v17, 0, v17
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v18, 0, v16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(8)
	ds_store_b32 v17, v25 offset:32768
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(6)
	ds_store_2addr_stride64_b64 v18, v[6:7], v[8:9] offset1:8
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v18, v[14:15], v[19:20] offset0:32 offset1:40
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_store_2addr_stride64_b64 v18, v[10:11], v[12:13] offset0:16 offset1:24
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v18, v[21:22], v[23:24] offset0:48 offset1:56
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v6, 56, v36
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s5, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v9, v34, 6, v6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshl_or_b32 v72, v35, 5, v9
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v10, 8, v9
	v_xor_b32_e32 v11, 16, v9
	v_xor_b32_e32 v12, 24, v9
	v_xor_b32_e32 v13, 32, v9
	v_xor_b32_e32 v14, 40, v9
	v_xor_b32_e32 v15, 48, v9
	v_xor_b32_e32 v16, 56, v9
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v73, 8, v72
	v_xor_b32_e32 v74, 16, v72
	v_xor_b32_e32 v75, 24, v72
	v_xor_b32_e32 v76, 32, v72
	v_xor_b32_e32 v77, 40, v72
	v_xor_b32_e32 v78, 48, v72
	v_xor_b32_e32 v79, 56, v72
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr16
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
.LBB0_3:                                ; %Flow311
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_bfe_u32 v71, v0, 4, 1
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	s_lshl_b32 s1, s35, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v36, 2, v0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v23, s18, 9, v35
	s_lshl_b32 s18, s18, 8
	s_lshl_b32 s21, s17, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v6, 56, v36
	s_add_i32 s20, s35, s18
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v7, s20, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v34, 6, v6
	v_add_nc_u32_e32 v6, s34, v34
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v24, s20, v5
	v_subrev_nc_u32_e32 v28, s21, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v8, 16, v6
	v_mul_lo_u32 v26, s7, v6
	v_or_b32_e32 v3, s18, v3
	v_mad_u64_u32 v[6:7], null, s16, v28, s[6:7]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v25, s7, v8
	v_subrev_nc_u32_e32 v8, s21, v24
	v_or_b32_e32 v29, s18, v4
	v_lshl_or_b32 v72, v35, 5, v9
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v22, s1, v23
	v_mad_u64_u32 v[7:8], null, s16, v8, s[6:7]
	v_add_nc_u32_e32 v8, s20, v4
	v_dual_mov_b32 v45, 0 :: v_dual_lshlrev_b32 v24, 1, v25
	v_lshlrev_b32_e32 v25, 1, v26
	v_add3_u32 v26, v6, v2, 64
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v6, 0x80, v28
	v_add3_u32 v27, v7, v2, 64
	v_subrev_nc_u32_e32 v7, s21, v8
	v_or_b32_e32 v8, s18, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[5:6], null, s16, v6, s[6:7]
	v_subrev_nc_u32_e32 v28, s21, v3
	v_mad_u64_u32 v[6:7], null, s16, v7, s[6:7]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v7, s21, v8
	v_mov_b32_e32 v57, 0
	v_mad_u64_u32 v[3:4], null, s16, v28, s[6:7]
	v_or_b32_e32 v4, 0x80, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[7:8], null, s16, v7, s[6:7]
	v_subrev_nc_u32_e32 v8, s21, v29
	v_add_nc_u32_e32 v28, s34, v33
	v_mad_u64_u32 v[37:38], null, s16, v4, s[6:7]
	v_xor_b32_e32 v76, 32, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[38:39], null, s16, v8, s[6:7]
	v_mad_u64_u32 v[39:40], null, s16, v28, s[6:7]
	v_xor_b32_e32 v10, 8, v9
	v_xor_b32_e32 v11, 16, v9
	v_xor_b32_e32 v12, 24, v9
	v_xor_b32_e32 v13, 32, v9
	v_xor_b32_e32 v14, 40, v9
	v_xor_b32_e32 v15, 48, v9
	v_xor_b32_e32 v16, 56, v9
	v_xor_b32_e32 v73, 8, v72
	v_xor_b32_e32 v74, 16, v72
	v_xor_b32_e32 v75, 24, v72
	v_xor_b32_e32 v77, 40, v72
	v_xor_b32_e32 v78, 48, v72
	v_xor_b32_e32 v79, 56, v72
	s_max_i32 s19, s0, 1
	v_sub_nc_u32_e32 v19, s16, v1
	v_sub_nc_u32_e32 v20, s16, v2
	s_lshl_b32 s17, s17, 9
	s_mov_b32 s16, 0
	v_subrev_nc_u32_e32 v23, s17, v23
	v_add3_u32 v32, v37, v2, 64
	s_lshl_b32 s49, s19, 6
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_mov_b32_e32 v37, 0
	v_subrev_nc_u32_e32 v22, s17, v22
	s_mov_b32 s17, s16
	v_add3_u32 v28, v5, v2, 64
	v_add3_u32 v29, v6, v2, 64
	v_add3_u32 v30, v3, v2, 64
	v_add3_u32 v31, v7, v2, 64
	v_add3_u32 v69, v38, v2, 64
	v_add3_u32 v70, v39, v1, 64
	v_dual_mov_b32 v1, s16 :: v_dual_add_nc_u32 v92, 0, v76
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v21, 1, v71
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v80, 0, v9
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v81, 0, v10
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v82, 0, v11
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v83, 0, v12
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v84, 0, v13
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v85, 0, v14
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v86, 0, v15
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v87, 0, v16
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v88, 0, v72
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v89, 0, v73
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v90, 0, v74
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v91, 0, v75
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v93, 0, v77
	v_dual_mov_b32 v3, s18 :: v_dual_add_nc_u32 v94, 0, v78
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v95, 0, v79
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v2, s17
	v_mov_b32_e32 v4, s19
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s5, s35, 2
	s_add_i32 s6, s6, 64
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s12, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 198 27 is_stmt 1              ; generate_amdgcn.py:198:27
	s_add_i32 s13, s6, s12
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v96, s12, v70
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s13, v19
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v104, s23 :: v_dual_mov_b32 v101, s20
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v146, v24, s[44:47], 0 offen
	buffer_load_u16 v147, v25, s[44:47], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v103, s22
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v102, s21 :: v_dual_mov_b32 v99, s18
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v100, s19 :: v_dual_mov_b32 v97, s16
	v_mov_b32_e32 v98, s17
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s13, v20
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v96, v96, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[113:116], v80 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[142:145], v88 offset1:32
	.loc	1 198 26 is_stmt 1              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v24, 2, v24
	v_add_nc_u32_e32 v25, 2, v25
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[142:143], v[115:116], v[97:104] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[144:145], v[113:114], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[144:145], v[115:116], v[97:104] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[97:100], v81 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[101:104], v89 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[134:141], v[142:143], v[113:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[101:102], v[97:98], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[101:102], v[99:100], v[105:112] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[103:104], v[97:98], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[103:104], v[99:100], v[126:133] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[97:100], v82 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[101:104], v90 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[101:102], v[97:98], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[101:102], v[99:100], v[105:112] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[103:104], v[97:98], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[103:104], v[99:100], v[126:133] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[97:100], v83 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[101:104], v91 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[101:102], v[97:98], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[101:102], v[99:100], v[105:112] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[103:104], v[97:98], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[103:104], v[99:100], v[126:133] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[97:100], v84 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[101:104], v92 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[101:102], v[97:98], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[101:102], v[99:100], v[105:112] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[103:104], v[97:98], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[103:104], v[99:100], v[126:133] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[97:100], v85 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[101:104], v93 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[101:102], v[97:98], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[101:102], v[99:100], v[105:112] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[103:104], v[97:98], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[103:104], v[99:100], v[126:133] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[97:100], v86 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[101:104], v94 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[101:102], v[97:98], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[101:102], v[99:100], v[105:112] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[103:104], v[97:98], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[103:104], v[99:100], v[126:133] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[97:100], v87 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[101:104], v95 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[101:102], v[99:100], v[105:112] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[103:104], v[97:98], v[118:125] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[134:141], v[101:102], v[97:98], v[134:141] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[126:133], v[103:104], v[99:100], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v116, v111
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v111, v119
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v119, v21, v23
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v97, v120
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v142, v105
	v_cvt_f32_i32_e32 v144, v107
	v_cvt_f32_i32_e32 v148, v109
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v120, v119, s[40:43], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v149, v110
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v109, v127
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v127, v135
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v100, v123
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v114, v112
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v112, v126
	v_cvt_f32_i32_e32 v103, v128
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v126, v134
	v_cvt_f32_i32_e32 v128, v136
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v98, v121
	v_cvt_f32_i32_e32 v99, v122
	v_cvt_f32_i32_e32 v101, v124
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v145, v108
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v102, v125
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v143, v106
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v104, v129
	v_cvt_f32_i32_e32 v105, v130
	v_cvt_f32_i32_e32 v106, v131
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v129, v137
	v_cvt_f32_i32_e32 v130, v138
	v_cvt_f32_i32_e32 v131, v139
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v108, v133
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v117, v140
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v107, v132
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v115, v141
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v23, s5, v23
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v123, 16, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v121, v123, v127 :: v_dual_lshlrev_b32 v110, 16, v146
	v_mul_f32_e32 v118, v110, v142
	v_mul_f32_e32 v122, v110, v144
	v_dual_mul_f32 v124, v123, v128 :: v_dual_mul_f32 v125, v110, v145
	v_mul_f32_e32 v127, v110, v148
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v113, v123, v113
	v_mul_f32_e32 v109, v110, v109
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v116, v110, v116 :: v_dual_mul_f32 v99, v123, v99
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v106, v110, v106 :: v_dual_mul_f32 v111, v123, v111
	v_mul_f32_e32 v105, v110, v105
	v_mul_f32_e32 v108, v110, v108
	v_mul_f32_e32 v102, v123, v102
	v_mul_f32_e32 v101, v123, v101
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v107, v110, v107 :: v_dual_lshlrev_b32 v120, 16, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v68, v118, v120
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v118, v123, v126
	v_mul_f32_e32 v126, v123, v129
	v_mul_f32_e32 v129, v110, v149
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v66, v118, v120
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v118, v119, s[40:43], 0 offen offset:4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v120, v110, v143
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v118, 16, v118
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v50, v121, v118
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v121, v119, s[40:43], 0 offen offset:8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v64, v120, v118
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v120, v21, v22
	s_clause 0x2
	buffer_load_u16 v134, v120, s[40:43], 0 offen offset:20
	buffer_load_u16 v135, v120, s[40:43], 0 offen offset:24
	buffer_load_u16 v136, v120, s[40:43], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v112, v110, v112
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v128, v123, v130
	v_mul_f32_e32 v130, v123, v131
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v131, v120, s[40:43], 0 offen offset:4
	buffer_load_u16 v133, v120, s[40:43], 0 offen offset:16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v22, s5, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v121, 16, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v49, v124, v121
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v124, v119, s[40:43], 0 offen offset:12
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v125, v124 :: v_dual_add_nc_u32 v125, s12, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v125, 0x80000000, v125 :: v_dual_fmac_f32 v48, v126, v124
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v126, v119, s[40:43], 0 offen offset:16
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_add_nc_u32_e32 v124, s12, v26
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v126, 16, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v40, v128, v126
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v128, v119, s[40:43], 0 offen offset:20
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v39, v130, v128 :: v_dual_add_nc_u32 v118, s12, v30
	v_fmac_f32_e32 v60, v129, v128
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v128, v119, s[40:43], 0 offen offset:24
	buffer_load_u16 v119, v119, s[40:43], 0 offen offset:28
	buffer_load_u16 v130, v120, s[40:43], 0 offen
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_add_nc_u32_e32 v129, s12, v29
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v63, v122, v121
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v121, s12, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 218 26 is_stmt 0              ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v118, 0x80000000, v118 :: v_dual_cndmask_b32 v129, 0x80000000, v129
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_lshlrev_b32 v128, 16, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v59, v116, v128 :: v_dual_add_nc_u32 v122, s12, v31
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v116, v123, v117
	.loc	1 218 26 is_stmt 1              ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v38, v116, v128
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v128, v120, s[40:43], 0 offen offset:8
	buffer_load_u16 v132, v120, s[40:43], 0 offen offset:12
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v114, v110, v114
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v116, 16, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v54, v114, v116 :: v_dual_lshlrev_b32 v119, 16, v131
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v114, v123, v115 :: v_dual_lshlrev_b32 v115, 16, v130
	.loc	1 236 17 is_stmt 1              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v47, v111, v119
	v_fmac_f32_e32 v58, v109, v119
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v109, v110, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v114, v116
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v65, v113, v115
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v61, v127, v126
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_add_nc_u32_e32 v127, s12, v27
	v_add_nc_u32_e32 v126, s12, v28
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[113:114], v118, s[28:31], 0 offen
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v67, v112, v115
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[111:112], v125, s[28:31], 0 offen
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_cndmask_b32 v126, 0x80000000, v126
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x3
	buffer_load_b64 v[115:116], v122, s[28:31], 0 offen
	buffer_load_b64 v[117:118], v121, s[28:31], 0 offen
	buffer_load_b64 v[119:120], v124, s[28:31], 0 offen
	buffer_load_b64 v[121:122], v127, s[28:31], 0 offen
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v124, v110, v104
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	buffer_load_b64 v[103:104], v126, s[28:31], 0 offen
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v110, v123, v97
	v_mul_f32_e32 v125, v123, v98
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	buffer_load_b64 v[97:98], v129, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v127, 16, v133
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v100, v123, v100 :: v_dual_lshlrev_b32 v129, 16, v135
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b32 v17, v96 offset:32768
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v41, v99, v127 :: v_dual_lshlrev_b32 v96, 16, v136
	v_fmac_f32_e32 v55, v105, v127
	v_fmac_f32_e32 v43, v101, v129
	v_fmac_f32_e32 v52, v107, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v102, v96
	v_fmac_f32_e32 v51, v108, v96
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s12, s12, 64
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(5)
	ds_store_2addr_stride64_b64 v18, v[113:114], v[115:116] offset1:8
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b64 v18, v[117:118], v[111:112] offset0:16 offset1:24
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v18, v[119:120], v[121:122] offset0:32 offset1:40
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v18, v[103:104], v[97:98] offset0:48 offset1:56
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v123, 16, v128
	v_lshlrev_b32_e32 v126, 16, v132
	v_lshlrev_b32_e32 v128, 16, v134
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s49, s12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v46, v110, v123
	v_fmac_f32_e32 v57, v109, v123
	v_fmac_f32_e32 v45, v125, v126
	v_fmac_f32_e32 v56, v124, v126
	v_fmac_f32_e32 v44, v100, v128
	v_fmac_f32_e32 v53, v106, v128
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow312
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v34
	s_mul_i32 s4, s34, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s0, 0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_lshl_b32 s0, s7, 4
	v_add_nc_u32_e32 v112, 0, v73
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v3, 0, v11
	v_add_nc_u32_e32 v5, 0, v12
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v11, 0, v15
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_add3_u32 v1, s4, s3, v1
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v12, 0, v16
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v98, 0, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, v1, s0, 1
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v99, 0, v78
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v100, 0, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x1
	buffer_load_u16 v88, v2, s[36:39], 0 offen
	buffer_load_u16 v89, v1, s[36:39], 0 offen
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v1, 0, v9
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v2, 0, v10
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v9, 0, v13
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v10, 0, v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[21:24], v9 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[25:28], v10 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[13:16], v11 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[9:12], v12 offset0:64 offset1:66
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v111, 0, v74
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v113, 0, v72
	v_mov_b32_e32 v72, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[29:32], v1 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[17:20], v2 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[1:4], v3 offset0:64 offset1:66
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v109, 0, v76
	v_mov_b32_e32 v76, 0
	ds_load_2addr_stride64_b64 v[5:8], v5 offset0:64 offset1:66
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v81, 0, 1, s2
	v_and_b32_e32 v70, 0x1f0, v0
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v69, 16, v0
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v110, 0, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v81
	v_mov_b32_e32 v75, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[72:73], v113
	ds_load_b64 v[74:75], v112
	ds_load_b64 v[76:77], v111
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v97, s11 :: v_dual_mov_b32 v96, s10
	v_dual_mov_b32 v95, s9 :: v_dual_mov_b32 v94, s8
	v_dual_mov_b32 v93, s7 :: v_dual_mov_b32 v92, s6
	v_dual_mov_b32 v91, s5 :: v_dual_mov_b32 v90, s4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[78:79], v110
	ds_load_b64 v[81:82], v109
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[72:73], v[29:30], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[72:73], v[31:32], v[90:97] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[72:73], v100
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[74:75], v[17:18], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[74:75], v[19:20], v[90:97] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[74:75], v99
	ds_load_b64 v[83:84], v98
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[76:77], v[1:2], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[76:77], v[3:4], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[78:79], v[5:6], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[78:79], v[7:8], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[81:82], v[21:22], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[81:82], v[23:24], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[72:73], v[25:26], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[72:73], v[27:28], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[74:75], v[13:14], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[74:75], v[15:16], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[83:84], v[9:10], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[83:84], v[11:12], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v76, v101
	v_cvt_f32_i32_e32 v77, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v78, v103
	v_cvt_f32_i32_e32 v79, v104
	v_cvt_f32_i32_e32 v75, v105
	v_cvt_f32_i32_e32 v74, v106
	v_cvt_f32_i32_e32 v73, v107
	v_cvt_f32_i32_e32 v72, v108
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_mov_b32_e32 v107, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[80:81], v113 offset:16384
	ds_load_b64 v[82:83], v112 offset:16384
	ds_load_b64 v[84:85], v111 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v108, s11 :: v_dual_mov_b32 v107, s10
	v_dual_mov_b32 v106, s9 :: v_dual_mov_b32 v105, s8
	v_dual_mov_b32 v104, s7 :: v_dual_mov_b32 v103, s6
	v_dual_mov_b32 v102, s5 :: v_dual_mov_b32 v101, s4
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[86:87], v110 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[80:81], v[29:30], v[101:108] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[29:30], v109 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[101:108], v[80:81], v[31:32], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[82:83], v[17:18], v[110:117] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[17:18], v100 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[101:108], v[82:83], v[19:20], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[84:85], v[1:2], v[110:117] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[1:2], v99 offset:16384
	ds_load_b64 v[19:20], v98 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[101:108], v[84:85], v[3:4], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[86:87], v[5:6], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[86:87], v[7:8], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[29:30], v[21:22], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[29:30], v[23:24], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[17:18], v[25:26], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[17:18], v[27:28], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[1:2], v[13:14], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[1:2], v[15:16], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[19:20], v[9:10], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[19:20], v[11:12], v[101:108] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v84, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v85, v111
	v_cvt_f32_i32_e32 v86, v112
	v_cvt_f32_i32_e32 v87, v113
	v_cvt_f32_i32_e32 v80, v114
	v_cvt_f32_i32_e32 v81, v115
	v_cvt_f32_i32_e32 v82, v116
	v_cvt_f32_i32_e32 v83, v117
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
.LBB0_10:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b32_e32 v1, 1, v35
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s48, s3
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v1, v71, v1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s16, s14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v12, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v8, s0, v1, 1
	v_add_lshl_u32 v9, s0, v2, 1
	v_add_lshl_u32 v10, s0, v3, 1
	v_add_lshl_u32 v11, s0, v4, 1
	v_add_lshl_u32 v13, s0, v5, 1
	v_add_lshl_u32 v14, s0, v6, 1
	v_add_lshl_u32 v15, s0, v7, 1
	v_add_lshl_u32 v16, s0, v12, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
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
	v_add_lshl_u32 v7, s1, v12, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x6
	buffer_load_u16 v12, v1, s[16:19], 0 offen
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
	v_mov_b16_e32 v1.h, v89.l
	v_mov_b16_e32 v2.h, v88.l
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v90, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v29, v103, v1
	v_mul_f32_e32 v31, v105, v1
	v_mul_f32_e32 v71, v107, v1
	v_mul_f32_e32 v88, v108, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v76, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v82, v82, v2 :: v_dual_mul_f32 v27, v101, v1
	v_mul_f32_e32 v80, v80, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v20, v91, v1 :: v_dual_mul_f32 v77, v77, v2
	v_dual_mul_f32 v21, v92, v1 :: v_dual_mul_f32 v78, v78, v2
	v_dual_mul_f32 v22, v93, v1 :: v_dual_mul_f32 v79, v79, v2
	v_dual_mul_f32 v23, v94, v1 :: v_dual_mul_f32 v84, v84, v2
	v_dual_mul_f32 v24, v95, v1 :: v_dual_mul_f32 v85, v85, v2
	v_dual_mul_f32 v25, v96, v1 :: v_dual_mul_f32 v86, v86, v2
	v_dual_mul_f32 v26, v97, v1 :: v_dual_mul_f32 v87, v87, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v28, v102, v1 :: v_dual_mul_f32 v75, v75, v2
	v_dual_mul_f32 v30, v104, v1 :: v_dual_mul_f32 v81, v81, v2
	v_dual_mul_f32 v32, v106, v1 :: v_dual_mul_f32 v83, v83, v2
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v19, v8, v68
	v_fma_f32 v8, v76, v8, v66
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v23, v13, v61
	v_fma_f32 v24, v24, v14, v60
	v_fma_f32 v25, v25, v15, v59
	v_fma_f32 v26, v26, v16, v54
	v_fma_f32 v22, v22, v11, v62
	v_fma_f32 v21, v21, v10, v63
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v27, v27, v17, v67
	v_fma_f32 v31, v31, v4, v55
	v_fma_f32 v4, v80, v4, v41
	v_fma_f32 v71, v71, v6, v52
	v_fma_f32 v76, v88, v7, v51
	v_fma_f32 v6, v82, v6, v43
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v79, v11, v48
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v4, s2
	v_cndmask_b32_e64 v66, v66, v8, s2
	v_cndmask_b32_e64 v51, v51, v76, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v6, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v32, v32, v5, v53
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v51
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v20, v9, v64
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v29, v29, v18, v57
	v_fma_f32 v28, v28, v12, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v67, v27, s2
	v_cndmask_b32_e64 v11, v48, v11, s2
	v_cndmask_b32_e64 v8, v64, v20, s2
	v_cndmask_b32_e64 v20, v63, v21, s2
	v_cndmask_b32_e64 v21, v62, v22, s2
	v_cndmask_b32_e64 v22, v61, v23, s2
	v_cndmask_b32_e64 v23, v60, v24, s2
	v_cndmask_b32_e64 v24, v59, v25, s2
	v_cndmask_b32_e64 v25, v54, v26, s2
	v_cndmask_b32_e64 v26, v58, v28, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v57, v29, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v5, v81, v5, v44
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v77, v9, v50
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v26
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v30, v30, v3, v56
	v_fma_f32 v3, v87, v3, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v44, v5, s2
	v_cndmask_b32_e64 v9, v50, v9, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v78, v10, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v56, v30, s2
	v_cndmask_b32_e64 v30, v55, v31, s2
	v_cndmask_b32_e64 v31, v53, v32, s2
	v_cndmask_b32_e64 v32, v52, v71, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v27
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v84, v17, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v3, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v43
	v_mul_f32_e32 v5, 0xbfb8aa3b, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v12, v85, v12, v47
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v65, v17, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v45
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v7, v83, v7, v42
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v5
	v_mul_f32_e32 v3, 0xbfb8aa3b, v17
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v18, v86, v18, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v47, v12, s2
	v_cndmask_b32_e64 v42, v42, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_mul_f32_e32 v7, 0xbfb8aa3b, v30
	v_mul_f32_e32 v47, 0xbfb8aa3b, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v49, v10, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, s0
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v5, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v46, v18, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v7
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v6
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, s7
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v17
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v46
	v_cndmask_b32_e64 v7, 0, 0x42800000, s4
	v_cndmask_b32_e64 v6, 0, 0x42800000, s5
	v_dual_mul_f32 v56, 0xbfb8aa3b, v44 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v27
	v_dual_mul_f32 v57, 0xbfb8aa3b, v41 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v26
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v51
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v5, v5
	v_cndmask_b32_e64 v46, 0, 0x42800000, s3
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v28
	v_dual_fmac_f32 v7, 0xbfb8aa3b, v30 :: v_dual_fmac_f32 v6, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v57
	v_exp_f32_e32 v49, v49
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s6
	v_dual_mul_f32 v53, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v42
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v29
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v6, v6
	v_mul_f32_e32 v52, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v50, 0, 0x42800000, s10
	v_cndmask_b32_e64 v57, 0, 0x42800000, s11
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v56
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v55
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v3, v3, v59
	v_ldexp_f32 v5, v5, v65
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v53
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v52
	v_cndmask_b32_e64 v56, 0, 0x42800000, s12
	v_cndmask_b32_e64 v55, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v54
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v45 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v43
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v41 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v44
	v_ldexp_f32 v49, v49, v58
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v58, 1.0, v3 :: v_dual_add_f32 v5, 1.0, v5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, s8
	v_ldexp_f32 v47, v47, v61
	v_ldexp_f32 v6, v6, v64
	v_cndmask_b32_e64 v52, 0, 0x42800000, s9
	v_cndmask_b32_e64 v54, 0, 0x42800000, s0
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v7, v7, v63
	v_ldexp_f32 v4, v4, v67
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v80, null, v5, v5, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v12 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v18
	v_exp_f32_e32 v46, v46
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_add_f32 v47, 1.0, v47
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s11
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v42 :: v_dual_add_f32 v49, 1.0, v49
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v4, 1.0, v4 :: v_dual_add_f32 v7, 1.0, v7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v97, v80
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s3
	v_exp_f32_e32 v53, v53
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v65, null, v47, v47, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v50, v50, v76
	v_ldexp_f32 v3, v57, v77
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v57, null, v49, v49, v27
	v_div_scale_f32 v76, null, v7, v7, v30
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v68, v19, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s8
	v_ldexp_f32 v46, v46, v62
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v93, v65
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v95, v76
	v_fma_f32 v108, -v80, v97, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v62, 1.0, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v3, v57
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v53, v53, v68
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v56, v56
	v_ldexp_f32 v48, v48, v60
	v_ldexp_f32 v52, v52, v71
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v68, null, v46, v46, v29
	v_fma_f32 v104, -v65, v93, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v99, -v57, v3, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v106, -v76, v95, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v60, null, v58, v58, v17
	v_rcp_f32_e32 v94, v68
	v_fmac_f32_e32 v93, v104, v93
	v_div_scale_f32 v89, null, v50, v50, v45
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v56, v56, v78
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v78, null, v6, v6, v31
	v_fmac_f32_e32 v3, v99, v3
	v_div_scale_f32 v63, null, v48, v48, v26
	v_fmac_f32_e32 v95, v106, v95
	v_div_scale_f32 v87, null, v52, v52, v18
	v_div_scale_f32 v82, null, v4, v4, v51
	v_rcp_f32_e32 v84, v60
	v_div_scale_f32 v85, null, v53, v53, v12
	v_rcp_f32_e32 v102, v89
	v_rcp_f32_e32 v92, v63
	v_rcp_f32_e32 v96, v78
	v_rcp_f32_e32 v101, v87
	v_div_scale_f32 v67, s4, v28, v47, v28
	v_rcp_f32_e32 v98, v82
	v_rcp_f32_e32 v100, v85
	v_fma_f32 v105, -v68, v94, 1.0
	v_fma_f32 v103, -v60, v84, 1.0
	v_fma_f32 v111, -v89, v102, 1.0
	v_div_scale_f32 v59, vcc_lo, v27, v49, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v105, v94 :: v_dual_mul_f32 v105, v67, v93
	v_div_scale_f32 v77, s6, v30, v7, v30
	v_fma_f32 v99, -v63, v92, 1.0
	v_fma_f32 v107, -v78, v96, 1.0
	v_fma_f32 v110, -v87, v101, 1.0
	v_div_scale_f32 v81, s8, v32, v5, v32
	v_div_scale_f32 v90, s12, v45, v50, v45
	v_fma_f32 v109, -v82, v98, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v84, v103, v84 :: v_dual_fmac_f32 v101, v110, v101
	v_fma_f32 v103, -v85, v100, 1.0
	v_fmac_f32_e32 v97, v108, v97
	v_fma_f32 v116, -v65, v105, v67
	v_fmac_f32_e32 v102, v111, v102
	v_div_scale_f32 v61, s1, v17, v58, v17
	v_div_scale_f32 v64, s3, v26, v48, v26
	v_mul_f32_e32 v112, v59, v3
	v_fmac_f32_e32 v92, v99, v92
	v_dual_fmac_f32 v96, v107, v96 :: v_dual_mul_f32 v107, v77, v95
	v_div_scale_f32 v71, s5, v29, v46, v29
	v_div_scale_f32 v86, s10, v12, v53, v12
	v_dual_fmac_f32 v105, v116, v93 :: v_dual_fmac_f32 v100, v103, v100
	v_mul_f32_e32 v115, v90, v102
	v_fmac_f32_e32 v98, v109, v98
	v_mul_f32_e32 v109, v81, v97
	v_mul_f32_e32 v99, v61, v84
	v_fma_f32 v103, -v57, v112, v59
	v_fma_f32 v118, -v76, v107, v77
	v_mul_f32_e32 v104, v64, v92
	v_fma_f32 v120, -v80, v109, v81
	v_mul_f32_e32 v106, v71, v94
	v_fmac_f32_e32 v112, v103, v3
	v_fmac_f32_e32 v107, v118, v95
	v_fma_f32 v103, -v63, v104, v64
	v_div_scale_f32 v88, s11, v18, v52, v18
	v_fma_f32 v111, -v60, v99, v61
	v_mul_f32_e32 v113, v86, v100
	v_fmac_f32_e32 v109, v120, v97
	v_fma_f32 v117, -v68, v106, v71
	v_fma_f32 v57, -v57, v112, v59
	v_fmac_f32_e32 v104, v103, v92
	v_dual_mul_f32 v114, v88, v101 :: v_dual_fmac_f32 v99, v111, v84
	v_fma_f32 v111, -v85, v113, v86
	v_fmac_f32_e32 v106, v117, v94
	v_div_fmas_f32 v3, v57, v3, v112
	v_fma_f32 v57, -v63, v104, v64
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v55, v55
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v59, -v60, v99, v61
	v_fma_f32 v60, -v65, v105, v67
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v113, v111, v100
	v_fma_f32 v61, -v68, v106, v71
	v_div_fixup_f32 v27, v3, v49, v27
	v_div_fmas_f32 v3, v57, v92, v104
	s_mov_b32 vcc_lo, s4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v63, -v76, v107, v77
	v_div_fmas_f32 v49, v60, v93, v105
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v3, v3, v48, v26
	v_div_fmas_f32 v57, v61, v94, v106
	s_mov_b32 vcc_lo, s6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v55, v55, v79
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, s7, v31, v6, v31
	v_div_fmas_f32 v26, v63, v95, v107
	v_div_scale_f32 v83, s9, v51, v4, v51
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v8, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v28, v49, v47, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v3, v26, v7, v30
	v_mul_f32_e32 v108, v79, v96
	v_mul_f32_e32 v110, v83, v98
	v_fma_f32 v122, -v87, v114, v88
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v20, v28
	v_mul_f32_e32 v3, v22, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v119, -v78, v108, v79
	v_fma_f32 v121, -v82, v110, v83
	v_fma_f32 v123, -v89, v115, v90
	v_fma_f32 v65, -v80, v109, v81
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v108, v119, v96
	v_fmac_f32_e32 v110, v121, v98
	v_dual_fmac_f32 v114, v122, v101 :: v_dual_fmac_f32 v115, v123, v102
	v_div_fixup_f32 v29, v57, v46, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v78, v108, v79
	v_fma_f32 v67, -v82, v110, v83
	v_fma_f32 v68, -v85, v113, v86
	v_fma_f32 v71, -v87, v114, v88
	v_fma_f32 v76, -v89, v115, v90
	v_div_fmas_f32 v47, v64, v96, v108
	s_mov_b32 vcc_lo, s8
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v54, v54
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v46, v65, v97, v109
	s_mov_b32 vcc_lo, s9
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v75, v13, v40
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v26, v67, v98, v110
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v5, v46, v5, v32
	v_div_fmas_f32 v20, v59, v84, v99
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v6, v47, v6, v31
	v_div_fmas_f32 v22, v68, v100, v113
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v20, v58, v17
	v_div_fmas_f32 v28, v71, v101, v114
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v26, v26, v4, v51
	v_div_fmas_f32 v30, v76, v102, v115
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v40, v13, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v18, v28, v52, v18
	v_div_scale_f32 v91, null, v62, v62, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v20, v30, v50, v45
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v23, v6
	v_mul_f32_e32 v18, v10, v18
	v_mul_f32_e32 v6, v24, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v12, v22, v53, v12
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v20, v11, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v22, v91
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v23, 1.0, v55
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v25, v26
	v_mul_f32_e32 v17, v66, v17
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v11, v54, v11
	s_mov_b32 s7, 0x76543210
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, null, v23, v23, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v30, -v91, v22, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v25
	v_div_scale_f32 v32, null, v11, v11, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v30, v22
	v_div_scale_f32 v30, vcc_lo, v41, v62, v41
	v_rcp_f32_e32 v46, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v47, v30, v22
	v_fma_f32 v48, -v32, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s3, v42, v11, v42
	v_dual_mul_f32 v51, v48, v46 :: v_dual_add_f32 v10, 1.0, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v24, null, v10, v10, v44
	v_rcp_f32_e32 v28, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v24, v28, 1.0
	v_fmac_f32_e32 v28, v45, v28
	v_div_scale_f32 v45, s0, v44, v10, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v45, v28
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v26, v73, v2
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v26, v15, v38
	.loc	1 238 26 is_stmt 1              ; generate_amdgcn.py:238:26
	v_fma_f32 v26, -v91, v47, v30
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v12, v9, v12 :: v_dual_mul_f32 v9, v74, v2
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v72, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v38, v15, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v47, v26, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v14, v39
	v_fma_f32 v2, v2, v16, v37
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v16, -v25, v31, 1.0
	v_fma_f32 v14, -v24, v49, v45
	v_fma_f32 v30, -v91, v47, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v39, v9, s2
	v_cndmask_b32_e64 v2, v37, v2, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v31, v16, v31
	v_div_scale_f32 v16, s1, v43, v23, v43
	v_fmac_f32_e32 v49, v14, v28
	v_fma_f32 v14, -v32, v51, v48
	v_div_fmas_f32 v22, v30, v22, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v16, v31
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v24, -v24, v49, v45
	v_fmac_f32_e32 v51, v14, v46
	v_fma_f32 v26, -v25, v50, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v26, v31
	v_fma_f32 v14, -v25, v50, v16
	v_div_fmas_f32 v16, v24, v28, v49
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v24, -v32, v51, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v31, v50
	v_div_fixup_f32 v10, v16, v10, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v16, v22, v62, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v14, v23, v43
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v23, v9, v10
	v_mul_f32_e32 v9, v21, v29
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v24, v24, v46, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v13, v16 :: v_dual_mul_f32 v14, v15, v14
	v_mul_f32_e32 v15, v19, v27
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v19, |v9|, |v3|, |v4|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v11, v24, v11, v42
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v10, |v20|, |v13|, |v23|
	v_max_f32_e64 v21, |v6|, |v5|
	v_max3_f32 v16, |v15|, |v8|, |v7|
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v24, 7, v34
.Ltmp32:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v22, v2, v11
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v17|, |v12|, |v18|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e64 v11, |v14|, |v22|
	v_max3_f32 v10, v2, v10, v11
	v_max3_f32 v11, v16, v19, v21
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v21, 2, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v16, v10, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v11, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v19, v19, v19
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v34
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v16 :: v_dual_max_f32 v11, v11, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v25, v2, v21
	v_lshl_or_b32 v16, v35, 2, v2
	v_add3_u32 v19, 0, v24, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_xad_u32 v16, v16, v21, 0
	ds_store_b64 v19, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v19, v11
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v19
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v10 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v16, v16, v16 :: v_dual_mov_b32 v19, v11
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v16 :: v_dual_max_f32 v19, v19, v19
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v16, v10 :: v_dual_max_f32 v11, v11, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v11 :: v_dual_max_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v16 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v16, v10 :: v_dual_max_f32 v11, v11, v19
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v19, 0, v2
.Ltmp49:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, s33, 7, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v10, v10, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v10
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v10, v10, v16
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v16, 0, v21
	ds_store_b64 v16, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v19
.Ltmp54:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, 0x2b8cbccc, v10 :: v_dual_max_f32 v11, 0x2b8cbccc, v11
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v11
	v_div_scale_f32 v27, vcc_lo, v10, 0x40e00000, v10
	v_rcp_f32_e32 v21, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v24, v19
	v_fma_f32 v25, -v16, v21, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v19, v24, 1.0
	v_fmac_f32_e32 v21, v25, v21
	v_div_scale_f32 v25, s0, v11, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v26, v24
	v_mul_f32_e32 v26, v27, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v28, v25, v24
	v_fma_f32 v29, -v16, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v19, v28, v25
	v_fmac_f32_e32 v26, v29, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v30, v24
	v_fma_f32 v16, -v16, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v28, v25
	v_div_fmas_f32 v16, v16, v21, v26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v24, v28
	v_div_fixup_f32 v10, v16, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v19, 0x40e00000, v11
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v11, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v19, v16, 16, 1
	v_add3_u32 v11, v10, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v16, v19, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v19, 0xffff0000, v10
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v29, null, v16, v16, v20
	v_div_scale_f32 v30, s2, v20, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v43, null, v19, v19, v15
	v_rcp_f32_e32 v49, v29
	v_div_scale_f32 v44, null, v19, v19, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v54, v43
	v_div_scale_f32 v45, null, v19, v19, v7
	v_rcp_f32_e32 v55, v44
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v59, -v29, v49, 1.0
	v_fma_f32 v64, -v43, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v59, v49 :: v_dual_fmac_f32 v54, v64, v54
	v_mul_f32_e32 v59, v30, v49
	v_div_scale_f32 v21, null, v16, v16, v17
	v_div_scale_f32 v41, null, v16, v16, v22
	v_div_scale_f32 v25, null, v16, v16, v12
	v_div_scale_f32 v27, null, v16, v16, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v21
	v_rcp_f32_e32 v53, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v47, v25
	v_rcp_f32_e32 v48, v27
	v_div_scale_f32 v24, vcc_lo, v17, v16, v17
	v_div_scale_f32 v42, s6, v22, v16, v22
	v_div_scale_f32 v26, s0, v12, v16, v12
	v_fma_f32 v56, -v21, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v63, -v41, v53, 1.0
	v_fma_f32 v57, -v25, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v27, v48, 1.0
	v_div_scale_f32 v28, s1, v18, v16, v18
	v_dual_fmac_f32 v53, v63, v53 :: v_dual_fmac_f32 v46, v56, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v57, v47 :: v_dual_fmac_f32 v48, v58, v48
	v_div_scale_f32 v31, null, v16, v16, v13
	v_dual_mul_f32 v63, v42, v53 :: v_dual_mul_f32 v56, v24, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v26, v47 :: v_dual_mul_f32 v58, v28, v48
	v_rcp_f32_e32 v50, v31
	v_fma_f32 v67, -v29, v59, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v21, v56, v24
	v_fma_f32 v65, -v25, v57, v26
	v_fma_f32 v66, -v27, v58, v28
	v_div_scale_f32 v37, null, v16, v16, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v56, v64, v46 :: v_dual_fmac_f32 v57, v65, v47
	v_dual_fmac_f32 v58, v66, v48 :: v_dual_fmac_f32 v59, v67, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v31, v50, 1.0
	v_fma_f32 v21, -v21, v56, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v25, v57, v26
	v_fma_f32 v25, -v27, v58, v28
	v_fma_f32 v26, -v29, v59, v30
	v_div_scale_f32 v32, s3, v13, v16, v13
	v_div_fmas_f32 v21, v21, v46, v56
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v51, v37
	v_div_fmas_f32 v24, v24, v47, v57
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v21, v16, v17
	v_div_fmas_f32 v25, v25, v48, v58
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v39, null, v16, v16, v14
	v_div_fmas_f32 v21, v26, v49, v59
	v_fma_f32 v26, -v41, v63, v42
	v_fmac_f32_e32 v50, v60, v50
	v_fma_f32 v61, -v37, v51, 1.0
	v_div_scale_f32 v38, s4, v23, v16, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v63, v26, v53 :: v_dual_mul_f32 v60, v32, v50
	v_fmac_f32_e32 v51, v61, v51
	v_rcp_f32_e32 v52, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v24, v16, v12
	v_fma_f32 v68, -v31, v60, v32
	v_mul_f32_e32 v61, v38, v51
	v_div_scale_f32 v40, s5, v14, v16, v14
	v_div_fixup_f32 v20, v21, v16, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v68, v50
	v_fma_f32 v71, -v37, v61, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v39, v52, 1.0
	v_div_scale_f32 v21, s0, v15, v19, v15
	v_fma_f32 v27, -v31, v60, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v61, v71, v51
	v_div_fixup_f32 v18, v25, v16, v18
	v_fma_f32 v31, -v41, v63, v42
	v_div_scale_f32 v32, null, v19, v19, v9
	v_div_fmas_f32 v24, v27, v50, v60
	v_rcp_f32_e32 v27, v45
	v_fma_f32 v28, -v37, v61, v38
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v32
	v_div_fixup_f32 v13, v24, v16, v13
	v_fma_f32 v24, -v44, v55, 1.0
	v_div_fmas_f32 v25, v28, v51, v61
	s_mov_b32 vcc_lo, s5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v55, v24, v55
	v_div_scale_f32 v24, s1, v8, v19, v8
	v_fmac_f32_e32 v52, v62, v52
	v_fma_f32 v30, -v45, v27, 1.0
	v_div_fixup_f32 v23, v25, v16, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v29, v24, v55
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v62, v40, v52 :: v_dual_fmac_f32 v27, v30, v27
	v_mul_f32_e32 v28, v21, v54
	v_div_scale_f32 v30, s2, v7, v19, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v39, v62, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v26, -v43, v28, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v62, v72, v52
	v_fmac_f32_e32 v28, v26, v54
	v_fma_f32 v26, -v44, v29, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v39, v62, v40
	v_fma_f32 v21, -v43, v28, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v26, v55
	v_mul_f32_e32 v26, v30, v27
	v_div_fmas_f32 v25, v25, v52, v62
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v31, v31, v53, v63
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v24, -v44, v29, v24
	v_div_fmas_f32 v21, v21, v54, v28
	v_fma_f32 v28, -v45, v26, v30
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v25, v16, v14
	v_div_fmas_f32 v24, v24, v55, v29
	v_div_fixup_f32 v15, v21, v19, v15
	v_fmac_f32_e32 v26, v28, v27
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v16, v31, v16, v22
	v_div_fixup_f32 v8, v24, v19, v8
	v_fma_f32 v24, -v32, v37, 1.0
	v_fma_f32 v21, -v45, v26, v30
	v_div_scale_f32 v22, null, v19, v19, v3
	v_div_scale_f32 v31, null, v19, v19, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v27, v26
	v_fmac_f32_e32 v37, v24, v37
	v_div_scale_f32 v27, vcc_lo, v9, v19, v9
	v_rcp_f32_e32 v25, v22
	v_div_scale_f32 v24, null, v19, v19, v4
	v_mul_f32_e32 v30, v27, v37
	v_div_scale_f32 v26, null, v19, v19, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v24
	v_div_fixup_f32 v7, v21, v19, v7
	v_fma_f32 v40, -v32, v30, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v29, v26
	v_fma_f32 v21, -v22, v25, 1.0
	v_rcp_f32_e32 v39, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v30, v40, v37
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v25, v21, v25
	v_div_scale_f32 v21, s0, v3, v19, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v32, v30, v27
	v_fma_f32 v38, -v24, v28, 1.0
	v_fma_f32 v41, -v26, v29, 1.0
	v_mul_f32_e32 v42, v21, v25
	v_fma_f32 v43, -v31, v39, 1.0
	v_div_fmas_f32 v27, v27, v37, v30
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v29, v41, v29
	v_div_scale_f32 v41, s2, v6, v19, v6
	v_div_fixup_f32 v9, v27, v19, v9
	v_fma_f32 v40, -v22, v42, v21
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, s3, v5, v19, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v45, v41, v29
	v_dual_fmac_f32 v42, v40, v25 :: v_dual_lshlrev_b32 v27, 7, v0
	v_mul_f32_e32 v46, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v26, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v21, -v22, v42, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v31, v46, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v38, v28
	v_div_scale_f32 v38, s1, v4, v19, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v40, v29 :: v_dual_fmac_f32 v46, v22, v39
	v_div_fmas_f32 v21, v21, v25, v42
	v_mul_f32_e32 v44, v38, v28
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v22, -v26, v45, v41
	v_fma_f32 v25, -v31, v46, v43
	v_div_fixup_f32 v3, v21, v19, v3
	v_fma_f32 v32, -v24, v44, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v44, v32, v28
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v24, -v24, v44, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v7, v7
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v24, v24, v28, v44
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v22, v22, v29, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v24, v19, v4
	v_div_fmas_f32 v25, v25, v39, v46
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v22, v19, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v25, v19, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v20
	v_rndne_f32_e32 v20, v23
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v4
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v24, v6
	v_and_b32_e32 v4, 15, v12
	v_cvt_i32_f32_e32 v25, v5
	v_and_b32_e32 v6, 15, v19
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 0x600, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v5, 15, v18
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v18, 15, v7
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v7, 11, v0
	v_lshl_or_b32 v20, v34, 4, v19
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v9
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v3
	v_and_b32_e32 v3, 15, v17
	v_and_b32_e32 v17, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 0x60, v0
	v_and_b32_e32 v7, 0x3000, v7
	v_and_b32_e32 v9, 0x60, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v26, 7, v69
	v_xor_b32_e32 v8, v20, v8
	v_add_nc_u32_e32 v7, 0, v7
	v_and_or_b32 v9, 0x3600, v27, v9
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v21, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v7, v7, v26, v8
	v_xad_u32 v8, v9, v70, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v7, v[3:6]
	ds_store_b128 v7, v[16:19] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v8
	ds_load_b128 v[16:19], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v14, v14
	v_and_b32_e32 v20, 15, v22
	v_and_b32_e32 v21, 15, v23
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v14, 15, v14
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[12:15]
	ds_store_b128 v7, v[20:23] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v8
	ds_load_b128 v[20:23], v8 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v8.l, v10.h
	v_mov_b16_e32 v7.l, v11.h
	v_mov_b16_e32 v7.h, v1.l
	v_mov_b16_e32 v8.h, v1.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v16, 4, v3
	v_lshl_or_b32 v10, v17, 4, v4
	v_lshl_or_b32 v3, v18, 4, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v4, s34, v33
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v1, v19, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v4, s0, v[2:3]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v8, v7, v8, vcc_lo
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 31, s34
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v5, v20, 4, v12
	v_lshl_or_b32 v6, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
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
.Ltmp55:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 150
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 150
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11360
; TotalNumSgprs: 52
; NumVgprs: 150
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 150
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     150
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
