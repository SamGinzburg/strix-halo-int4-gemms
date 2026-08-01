	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v9, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v10, 15, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v12, 0x17f, v0
	v_and_b32_e32 v17, 8, v0
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
	s_sub_i32 s7, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s18, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s7, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s6, s18
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s16, s6
	s_abs_i32 s17, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 8, v9
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s18
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s17, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s6
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s17, s17, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s19, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s19, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s17, s5, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s19
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s17, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s50, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s33, s18
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v6, s50, v3
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 4
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v5, s6, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 5
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v4, s6, v10
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s18, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s50, v5
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 16, v5
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	v_or_b32_e32 v11, s34, v2
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v5, v6, v1, s6
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s48, s33, 8
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s50, v4
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 16, v4
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s18, 5
.Ltmp21:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, v11, s50, v[4:5]
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_add_i32 s2, s48, s35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 31
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[7:8], null, s48, s50, v[5:6]
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_mad_u64_u32 v[4:5], null, s2, s50, v[5:6]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	s_and_b32 s18, s3, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v8, v5, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v6, s[28:31], 0 offen
	buffer_load_b64 v[13:14], v4, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_bfe_i32 v4, v0, 7, 1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_i32 v5, v0, 4, 1
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v9, 0xf78, v9
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v4, 0x88, v4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v5, 0x88, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v4, v4, v12
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v15, v5, v9
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v9, 0x1e0, v0
	v_and_b32_e32 v12, 16, v0
	v_lshlrev_b32_e32 v5, 4, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v49, 0, v4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v50, 0, v15
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_store_b8 v49, v8 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v50, v[6:7], v[13:14] offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v47, 0x70, v5
	v_and_b32_e32 v4, 8, v0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshl_or_b32 v48, v9, 3, v47
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr48
.LBB0_3:                                ; %Flow233
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v12
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	s_lshl_b32 s49, s35, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 3, 1
	v_and_b32_e32 v47, 0x70, v5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v8, s17, 9, v9
	v_add_nc_u32_e32 v5, s34, v10
	s_lshl_b32 s19, s16, 9
	v_and_b32_e32 v4, 0x88, v4
	v_lshl_or_b32 v48, v9, 3, v47
	s_lshl_b32 s17, s17, 8
	s_lshl_b32 s16, s16, 8
	v_add3_u32 v15, s35, s17, v3
	v_or_b32_e32 v6, v4, v47
	v_or_b32_e32 v7, v48, v4
	v_add_nc_u32_e32 v4, s49, v8
	v_or_b32_e32 v3, s17, v3
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v18, s34, v2
	v_xor_b32_e32 v13, 8, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v53, s19, v4
	v_add_nc_u32_e32 v4, 16, v5
	s_max_i32 s18, s1, 1
	v_xor_b32_e32 v14, 8, v7
	v_subrev_nc_u32_e32 v54, s19, v8
	s_lshl_b32 s51, s18, 4
	v_mul_lo_u32 v16, s7, v4
	v_subrev_nc_u32_e32 v4, s16, v15
	v_mul_lo_u32 v15, s7, v5
	v_subrev_nc_u32_e32 v5, s16, v3
	s_mov_b32 s16, 0
	v_sub_nc_u32_e32 v51, s50, v1
	v_mad_u64_u32 v[2:3], null, s50, v4, s[6:7]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[3:4], null, s50, v5, s[6:7]
	v_mad_u64_u32 v[4:5], null, s50, v18, s[6:7]
	v_dual_mov_b32 v19, 0 :: v_dual_lshlrev_b32 v56, 1, v15
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v15, 0, v6
	v_add_nc_u32_e32 v13, 0, v13
	s_add_i32 s6, s6, 16
	v_lshlrev_b32_e32 v52, 1, v46
	v_add3_u32 v57, v2, v1, 16
	v_add3_u32 v58, v3, v1, 16
	v_add3_u32 v59, v4, v10, 16
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v61, 0, v7
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v4, s19 :: v_dual_lshlrev_b32 v55, 1, v16
	v_add_nc_u32_e32 v60, s6, v10
	v_mov_b32_e32 v18, 0
	v_add_nc_u32_e32 v62, 0, v14
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v63, 0x2000, v15
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v64, 0x2000, v13
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v43, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v32, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b64 s[36:37], s[12:13]
	s_lshl_b32 s5, s35, 2
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v106, v56, s[44:47], 0 offen
	buffer_load_u16 v107, v55, s[44:47], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v66, s16, v59
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	s_add_i32 s12, s6, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v56, 2, v56
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_add_nc_u32_e32 v65, s16, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_i32_e32 vcc_lo, s50, v65
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v65, 0x80000000, v66, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v51
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v65, v65, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[96:99], v63 offset1:32
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[100:103], v61 offset1:8
	.loc	1 198 26 is_stmt 1              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[100:101], v[96:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[100:101], v[98:99], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[82:89], v[102:103], v[96:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[102:103], v[98:99], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_b64 v[98:101], v64 offset1:32
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[102:105], v62 offset1:8
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[74:81], v[102:103], v[100:101], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[102:103], v[98:99], v[66:73] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[82:89], v[104:105], v[98:99], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[104:105], v[100:101], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v67, v67
	v_mul_f32_e32 v74, v107, v74
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v98, v52, v54
	s_clause 0x7
	buffer_load_u16 v99, v98, s[40:43], 0 offen
	buffer_load_u16 v100, v98, s[40:43], 0 offen offset:4
	buffer_load_u16 v101, v98, s[40:43], 0 offen offset:8
	buffer_load_u16 v102, v98, s[40:43], 0 offen offset:12
	buffer_load_u16 v103, v98, s[40:43], 0 offen offset:16
	buffer_load_u16 v104, v98, s[40:43], 0 offen offset:20
	buffer_load_u16 v105, v98, s[40:43], 0 offen offset:24
	buffer_load_u16 v98, v98, s[40:43], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v54, s5, v54
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v99, 16, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v45, v74, v99 :: v_dual_lshlrev_b32 v74, 16, v106
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v66, v74, v66 :: v_dual_mul_f32 v93, v107, v93
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v43, v66, v99
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v66, v107, v75 :: v_dual_lshlrev_b32 v75, 16, v100
	v_dual_mul_f32 v81, v107, v81 :: v_dual_mul_f32 v84, v74, v84
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v95, v107, v95
	v_dual_mul_f32 v94, v107, v94 :: v_dual_mul_f32 v85, v74, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v41, v66, v75
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v66, v74, v67 :: v_dual_lshlrev_b32 v67, 16, v101
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v92, v107, v92 :: v_dual_mul_f32 v73, v74, v73
	v_dual_mul_f32 v90, v107, v90 :: v_dual_mul_f32 v71, v74, v71
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v27, v66, v75 :: v_dual_mul_f32 v66, v107, v76
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v75, 16, v102
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v89, v74, v89
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v87, v74, v87 :: v_dual_lshlrev_b32 v100, 16, v104
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v40, v66, v67
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v66, v74, v68
	v_mul_f32_e32 v68, v107, v77
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v101, 16, v105
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v83, v74, v83
	v_mul_f32_e32 v82, v74, v82
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v26, v66, v67 :: v_dual_add_nc_u32 v67, s16, v57
	v_dual_fmac_f32 v39, v68, v75 :: v_dual_add_nc_u32 v66, s16, v58
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v72, v74, v72
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v88, v74, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_dual_cndmask_b32 v76, 0x80000000, v67 :: v_dual_mul_f32 v67, v74, v69
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v68, v52, v53
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_lshlrev_b32 v69, 16, v103
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s16, s16, 16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v25, v67, v75
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v67, v107, v78
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x2
	buffer_load_u16 v75, v68, s[40:43], 0 offen offset:8
	buffer_load_u16 v77, v68, s[40:43], 0 offen offset:12
	buffer_load_u16 v78, v68, s[40:43], 0 offen offset:16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s51, s16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v15, v71, v100
	v_dual_fmac_f32 v38, v67, v69 :: v_dual_mul_f32 v67, v74, v70
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v70, v68, s[40:43], 0 offen offset:20
	buffer_load_u16 v99, v68, s[40:43], 0 offen offset:24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v74, v74, v86
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v16, v67, v69
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v69, v107, v80
	v_mul_f32_e32 v67, v107, v79
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v79, v107, v97
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v86, v68, s[40:43], 0 offen offset:4
	buffer_load_u16 v97, v68, s[40:43], 0 offen
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v80, v107, v96
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v96, v68, s[40:43], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v91, v107, v91 :: v_dual_fmac_f32 v36, v69, v101
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v67, v100
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[66:67], v66, s[28:31], 0 offen
	buffer_load_b64 v[68:69], v76, s[28:31], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v76, 16, v98
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v49, v65 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v50, v[66:67], v[68:69] offset1:8
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v98, 16, v99
	v_lshlrev_b32_e32 v97, 16, v97
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v13, v73, v76 :: v_dual_lshlrev_b32 v70, 16, v70
	v_fmac_f32_e32 v32, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v20, v88, v98 :: v_dual_lshlrev_b32 v75, 16, v75
	v_fmac_f32_e32 v42, v82, v97
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v96, 16, v96
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v14, v72, v101 :: v_dual_add_nc_u32 v55, 2, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v23, v84, v75 :: v_dual_lshlrev_b32 v78, 16, v78
	v_fmac_f32_e32 v19, v89, v96
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v21, v87, v70 :: v_dual_fmac_f32 v34, v92, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v94, v78
	v_fmac_f32_e32 v18, v74, v78
	v_dual_fmac_f32 v33, v93, v77 :: v_dual_lshlrev_b32 v86, 16, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v53, s5, v53
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v22, v85, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v44, v90, v97 :: v_dual_fmac_f32 v35, v91, v86
	v_fmac_f32_e32 v24, v83, v86
	v_fmac_f32_e32 v30, v95, v70
	v_dual_fmac_f32 v29, v80, v98 :: v_dual_fmac_f32 v28, v79, v96
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v4, v17
.LBB0_7:                                ; %Flow234
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v10
	s_mul_i32 s4, s34, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s1, 0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_lshl_b32 s1, s7, 4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v17, 0x1f0, v0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v66, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_add3_u32 v1, s4, s3, v1
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, v1, s1, 1
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v69, 0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v71, 0
	s_clause 0x1
	buffer_load_u16 v63, v2, s[36:39], 0 offen
	buffer_load_u16 v64, v1, s[36:39], 0 offen
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v1, 0x88, 0, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_or_b32_e32 v2, v1, v47
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_or_b32_e32 v47, v48, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v48, 0, 1, s2
	v_mov_b32_e32 v56, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v3, 0, v2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v2, v2, 8, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v49, 8, v47
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s1, 1, v48
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v1, 0x2000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_add_nc_u32_e32 v2, 0x2000, v2
	v_add_nc_u32_e32 v81, 0, v49
	v_mov_b32_e32 v49, 0
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_b64 v[5:8], v1 offset1:32
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_b64 v[1:4], v2 offset1:32
	v_add_nc_u32_e32 v82, 0, v47
	v_mov_b32_e32 v47, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[47:48], v82
	ds_load_b64 v[51:52], v81
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v72, s11 :: v_dual_mov_b32 v71, s10
	v_dual_mov_b32 v70, s9 :: v_dual_mov_b32 v69, s8
	v_dual_mov_b32 v68, s7 :: v_dual_mov_b32 v67, s6
	v_dual_mov_b32 v66, s5 :: v_dual_mov_b32 v65, s4
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[47:48], v[5:6], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[47:48], v[7:8], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[51:52], v[1:2], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[51:52], v[3:4], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v51, v59
	v_cvt_f32_i32_e32 v49, v60
	v_cvt_f32_i32_e32 v48, v61
	v_cvt_f32_i32_e32 v47, v62
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v80, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[52:53], v82 offset:4096
	ds_load_b64 v[59:60], v81 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v80, s11 :: v_dual_mov_b32 v79, s10
	v_dual_mov_b32 v78, s9 :: v_dual_mov_b32 v77, s8
	v_dual_mov_b32 v76, s7 :: v_dual_mov_b32 v75, s6
	v_dual_mov_b32 v74, s5 :: v_dual_mov_b32 v73, s4
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[52:53], v[5:6], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[52:53], v[7:8], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[59:60], v[1:2], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[59:60], v[3:4], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v59, v81
	v_cvt_f32_i32_e32 v60, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v61, v83
	v_cvt_f32_i32_e32 v62, v84
	v_cvt_f32_i32_e32 v50, v85
	v_cvt_f32_i32_e32 v52, v86
	v_cvt_f32_i32_e32 v53, v87
	v_cvt_f32_i32_e32 v54, v88
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v9
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s49
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s1, s48, s3
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v1, v46, v1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s3, s1, s35
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s16, s14
.Ltmp22:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v12, 7, v12
.Ltmp23:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v83, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v8, s1, v1, 1
	v_add_lshl_u32 v46, s1, v2, 1
	v_add_lshl_u32 v81, s1, v3, 1
	v_add_lshl_u32 v82, s1, v4, 1
	v_add_lshl_u32 v84, s1, v5, 1
	v_add_lshl_u32 v85, s1, v6, 1
	v_add_lshl_u32 v86, s1, v7, 1
	v_add_lshl_u32 v87, s1, v83, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s3, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	buffer_load_u16 v46, v46, s[16:19], 0 offen
	buffer_load_u16 v81, v81, s[16:19], 0 offen
	buffer_load_u16 v82, v82, s[16:19], 0 offen
	buffer_load_u16 v84, v84, s[16:19], 0 offen
	buffer_load_u16 v85, v85, s[16:19], 0 offen
	buffer_load_u16 v86, v86, s[16:19], 0 offen
	buffer_load_u16 v87, v87, s[16:19], 0 offen
	buffer_load_u16 v88, v1, s[16:19], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s3, v2, 1
	v_add_lshl_u32 v3, s3, v3, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_add_lshl_u32 v3, s3, v4, 1
	v_add_lshl_u32 v4, s3, v5, 1
	v_add_lshl_u32 v5, s3, v6, 1
	v_add_lshl_u32 v6, s3, v7, 1
	v_add_lshl_u32 v7, s3, v83, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x6
	buffer_load_u16 v83, v1, s[16:19], 0 offen
	buffer_load_u16 v89, v2, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
.Ltmp24:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, 0
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v1.h, v64.l
	v_mov_b16_e32 v2.h, v63.l
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v63, v65, v1
	v_mul_f32_e32 v64, v66, v1
	v_mul_f32_e32 v65, v67, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v66, v68, v1 :: v_dual_mul_f32 v57, v57, v2
	v_dual_mul_f32 v67, v69, v1 :: v_dual_mul_f32 v60, v60, v2
	v_dual_mul_f32 v68, v70, v1 :: v_dual_mul_f32 v59, v59, v2
	v_dual_mul_f32 v69, v71, v1 :: v_dual_mul_f32 v62, v62, v2
	v_dual_mul_f32 v70, v72, v1 :: v_dual_mul_f32 v61, v61, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v71, v73, v1 :: v_dual_mul_f32 v50, v50, v2
	v_dual_mul_f32 v72, v74, v1 :: v_dual_mul_f32 v51, v51, v2
	v_dual_mul_f32 v73, v75, v1 :: v_dual_mul_f32 v52, v52, v2
	v_dual_mul_f32 v74, v76, v1 :: v_dual_mul_f32 v53, v53, v2
	v_dual_mul_f32 v75, v77, v1 :: v_dual_mul_f32 v54, v54, v2
	v_mul_f32_e32 v76, v78, v1
	v_mul_f32_e32 v77, v79, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v55, v55, v2
	v_mul_f32_e32 v56, v56, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v78, v80, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v58, v58, v2
.Ltmp28:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp29:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v63, v63, v8, v45
	v_fma_f32 v8, v55, v8, v43
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v79, 16, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v63, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v43, v43, v8, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v71, v71, v79, v44
	v_fma_f32 v55, v59, v79, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v44, v71, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v55, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v80, 16, v81
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v3, 16, v3
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v64, v64, v46, v41
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v74, v74, v3, v33
	v_fma_f32 v75, v75, v4, v31
	v_fma_f32 v76, v76, v5, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v41, v64, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v44
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v46, v56, v46, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v74, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v77, v77, v6, v29
	v_fma_f32 v6, v53, v6, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v76, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v46, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v33
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v3, v62, v3, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v81, 16, v82
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v75, s2
	v_cndmask_b32_e64 v29, v29, v77, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v82, 16, v84
	v_lshlrev_b32_e32 v84, 16, v85
	v_lshlrev_b32_e32 v85, 16, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v3, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v86, 16, v87
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v87, 16, v89
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v6, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v30
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v60, v60, v83, v24
	v_fma_f32 v72, v72, v83, v35
	v_fma_f32 v73, v73, v87, v34
	v_fma_f32 v5, v52, v5, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v60, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v58, v58, v81, v25
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v73, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v4, v50, v4, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v72, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v24
	v_mul_f32_e32 v3, 0xbfb8aa3b, v42
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v5, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v50, 0xbfb8aa3b, v34 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v56, v61, v87, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v58, s2
	v_cndmask_b32_e64 v18, v18, v4, s2
	v_cndmask_b32_e64 v23, v23, v56, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v5, 0xbfb8aa3b, v29 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v35
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_mul_f32_e32 v53, 0xbfb8aa3b, v22
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v59, v70, v86, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	v_mul_f32_e32 v58, 0xbfb8aa3b, v21
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v70, v78, v7, v28
	v_fma_f32 v7, v54, v7, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v55, 0, 0x42800000, s9
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v33
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v57, v80, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v59, s2
	v_cndmask_b32_e64 v28, v28, v70, s2
	v_cndmask_b32_e64 v19, v19, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v54, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v3, 0, 0x42800000, s1
	v_mul_f32_e32 v59, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v5
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v24
	v_exp_f32_e32 v46, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v57, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v69, v85, v36
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v56, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, s6
	v_cndmask_b32_e64 v5, 0, 0x42800000, s7
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v54
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v59
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s4
	v_exp_f32_e32 v55, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v69, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, s10
	v_cndmask_b32_e64 v59, 0, 0x42800000, s12
	v_exp_f32_e32 v41, v41
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v35
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v30 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v29
	v_exp_f32_e32 v3, v3
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s9
	v_ldexp_f32 v46, v46, v64
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v67, v82, v38
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v56
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v18
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v55, v55, v69
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v67, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v4
	v_cndmask_b32_e64 v56, 0, 0x42800000, s1
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s7
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v41, v41, v60
	v_ldexp_f32 v3, v3, v61
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v69, null, v46, v46, v33
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v7, 0, 0x42800000, s5
	v_cndmask_b32_e64 v4, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v53
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v34 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s12
	v_dual_fmac_f32 v56, 0xbfb8aa3b, v19 :: v_dual_add_f32 v41, 1.0, v41
	v_ldexp_f32 v5, v5, v67
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v60, 1.0, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v93, v69
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, s11
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v28
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v52, v52, v62
	v_ldexp_f32 v3, v59, v72
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v59, null, v41, v41, v44
	v_div_scale_f32 v62, null, v60, v60, v42
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v68, v84, v37
	v_fma_f32 v65, v65, v80, v40
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v58
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v22
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v4, v4
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v79, v62
	v_fma_f32 v104, -v69, v93, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v64, 1.0, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v3, v59
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v66, v66, v81, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v65, s2
	v_cndmask_b32_e64 v37, v37, v68, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v57
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s8
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v50, v50, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v66, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, s14
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s10
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v21
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v7, v7, v65
	v_ldexp_f32 v4, v4, v68
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v98, -v59, v3, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v102, -v62, v79, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s11
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v20
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v6, v6, v66
	v_ldexp_f32 v54, v54, v70
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v4, 1.0, v4 :: v_dual_add_f32 v7, 1.0, v7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v3, v98, v3
	v_div_scale_f32 v67, null, v50, v50, v34
	v_fmac_f32_e32 v79, v102, v79
	v_div_scale_f32 v65, null, v52, v52, v35
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s13
	v_ldexp_f32 v53, v53, v71
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v61, vcc_lo, v44, v41, v44
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v71, null, v7, v7, v31
	v_div_scale_f32 v80, null, v55, v55, v24
	v_rcp_f32_e32 v91, v65
	v_rcp_f32_e32 v92, v67
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v58, v58, v73
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v73, null, v6, v6, v30
	v_div_scale_f32 v75, null, v5, v5, v29
	v_div_scale_f32 v77, null, v4, v4, v28
	v_rcp_f32_e32 v94, v71
	v_rcp_f32_e32 v99, v80
	v_mul_f32_e32 v111, v61, v3
	v_div_scale_f32 v83, null, v54, v54, v23
	v_rcp_f32_e32 v95, v73
	v_rcp_f32_e32 v96, v75
	v_rcp_f32_e32 v97, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v100, v83
	v_fma_f32 v98, -v65, v91, 1.0
	v_fma_f32 v103, -v67, v92, 1.0
	v_div_scale_f32 v66, s4, v35, v52, v35
	v_div_scale_f32 v68, s5, v34, v50, v34
	v_div_scale_f32 v88, null, v53, v53, v22
	v_fma_f32 v105, -v71, v94, 1.0
	v_fma_f32 v102, -v80, v99, 1.0
	v_dual_fmac_f32 v91, v98, v91 :: v_dual_fmac_f32 v92, v103, v92
	v_div_scale_f32 v70, s6, v33, v46, v33
	v_div_scale_f32 v72, s7, v31, v7, v31
	v_rcp_f32_e32 v101, v88
	v_fma_f32 v106, -v73, v95, 1.0
	v_fma_f32 v107, -v75, v96, 1.0
	v_fma_f32 v108, -v77, v97, 1.0
	v_fma_f32 v109, -v83, v100, 1.0
	v_dual_fmac_f32 v93, v104, v93 :: v_dual_fmac_f32 v94, v105, v94
	v_fmac_f32_e32 v95, v106, v95
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v99, v102, v99 :: v_dual_fmac_f32 v100, v109, v100
	v_fma_f32 v102, -v59, v111, v61
	v_dual_mul_f32 v103, v66, v91 :: v_dual_mul_f32 v104, v68, v92
	v_div_scale_f32 v78, s10, v28, v4, v28
	v_div_scale_f32 v81, s11, v24, v55, v24
	v_dual_fmac_f32 v96, v107, v96 :: v_dual_fmac_f32 v97, v108, v97
	v_dual_mul_f32 v105, v70, v93 :: v_dual_mul_f32 v106, v72, v94
	v_fma_f32 v115, -v67, v104, v68
	v_fmac_f32_e32 v111, v102, v3
	v_fma_f32 v102, -v65, v103, v66
	v_div_scale_f32 v63, s3, v42, v60, v42
	v_fma_f32 v110, -v88, v101, 1.0
	v_dual_mul_f32 v109, v78, v97 :: v_dual_mul_f32 v112, v81, v99
	v_fmac_f32_e32 v104, v115, v92
	v_fma_f32 v59, -v59, v111, v61
	v_fma_f32 v61, -v71, v106, v72
	v_fmac_f32_e32 v103, v102, v91
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v57, v57
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v87, s12, v23, v54, v23
	v_div_scale_f32 v89, s13, v22, v53, v22
	v_dual_mul_f32 v98, v63, v79 :: v_dual_fmac_f32 v101, v110, v101
	v_fmac_f32_e32 v106, v61, v94
	v_fma_f32 v61, -v80, v112, v81
	v_div_fmas_f32 v3, v59, v3, v111
	v_fma_f32 v59, -v65, v103, v66
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_mul_f32 v113, v87, v100 :: v_dual_mul_f32 v114, v89, v101
	v_fmac_f32_e32 v112, v61, v99
	v_fma_f32 v61, -v67, v104, v68
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v41, v3, v41, v44
	v_div_fmas_f32 v3, v59, v91, v103
	s_mov_b32 vcc_lo, s5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v57, v57, v74
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v74, s8, v30, v6, v30
	v_div_scale_f32 v76, s9, v29, v5, v29
	v_fma_f32 v110, -v62, v98, v63
	v_div_fmas_f32 v44, v61, v92, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v107, v74, v95 :: v_dual_mul_f32 v108, v76, v96
	v_fma_f32 v65, -v71, v106, v72
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v34, v44, v50, v34
	v_fmac_f32_e32 v98, v110, v79
	v_fma_f32 v110, -v69, v105, v70
	v_fma_f32 v102, -v73, v107, v74
	v_fma_f32 v115, -v75, v108, v76
	v_div_fixup_f32 v3, v3, v52, v35
	v_fma_f32 v62, -v62, v98, v63
	v_fmac_f32_e32 v105, v110, v93
	v_fma_f32 v110, -v77, v109, v78
	v_fmac_f32_e32 v108, v115, v96
	v_fma_f32 v115, -v88, v114, v89
	v_fmac_f32_e32 v107, v102, v95
	v_fma_f32 v63, -v69, v105, v70
	v_dual_fmac_f32 v109, v110, v97 :: v_dual_mul_f32 v8, v8, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v114, v115, v101
	v_fma_f32 v66, -v73, v107, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v59, v63, v93, v105
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v67, -v75, v108, v76
	v_fma_f32 v102, -v83, v113, v87
	v_div_fmas_f32 v35, v65, v94, v106
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v68, -v77, v109, v78
	v_div_fmas_f32 v44, v66, v95, v107
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v33, v59, v46, v33
	v_div_fmas_f32 v46, v67, v96, v108
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v113, v102, v100
	v_fma_f32 v69, -v80, v112, v81
	v_div_fixup_f32 v3, v35, v7, v31
	v_div_fmas_f32 v31, v68, v97, v109
	s_mov_b32 vcc_lo, s3
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v40, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v44, v6, v30
	v_div_fmas_f32 v30, v62, v79, v98
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v5, v46, v5, v29
	v_div_fmas_f32 v29, v69, v99, v112
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v56, v56
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v70, -v83, v113, v87
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v71, -v88, v114, v89
	v_div_fixup_f32 v24, v29, v55, v24
	v_div_fixup_f32 v28, v31, v4, v28
	v_div_fmas_f32 v31, v70, v100, v113
	s_mov_b32 vcc_lo, s13
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v3, v38, v3 :: v_dual_mul_f32 v4, v37, v6
	v_mul_f32_e32 v24, v27, v24
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v34, v71, v101, v114
	v_div_fixup_f32 v23, v31, v54, v23
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v36, v5
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v29, 1.0, v57
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v27, v56, v27
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v22, v34, v53, v22
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v23, v26, v23 :: v_dual_add_f32 v26, 1.0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v34, v48, v2 :: v_dual_add_f32 v27, 1.0, v27
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v90, null, v64, v64, v18
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v5, v32, v28 :: v_dual_mul_f32 v22, v25, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v31, null, v26, v26, v21
	v_div_scale_f32 v32, null, v29, v29, v20
	v_div_scale_f32 v38, null, v27, v27, v19
	v_div_fixup_f32 v30, v30, v60, v42
	v_rcp_f32_e32 v28, v90
	v_rcp_f32_e32 v35, v31
	v_rcp_f32_e32 v37, v32
	v_rcp_f32_e32 v42, v38
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v25, v49, v2
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v34, v34, v85, v14
	v_fma_f32 v51, v51, v82, v16
	s_mov_b32 s8, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fma_f32 v25, v25, v84, v15
	.loc	1 238 26 is_stmt 1              ; generate_amdgcn.py:238:26
	v_fma_f32 v36, -v90, v28, 1.0
	v_fma_f32 v40, -v31, v35, 1.0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v47, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v44, -v32, v37, 1.0
	v_fma_f32 v47, -v38, v42, 1.0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v14, v34, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v35, v40, v35
	v_div_scale_f32 v40, s1, v21, v26, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v44, v37 :: v_dual_fmac_f32 v42, v47, v42
	v_div_scale_f32 v47, s4, v19, v27, v19
	v_fmac_f32_e32 v28, v36, v28
	v_div_scale_f32 v36, vcc_lo, v18, v64, v18
	v_mul_f32_e32 v53, v47, v42
	v_div_scale_f32 v44, s3, v20, v29, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v36, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v86, v13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v49, v40, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v15, v25, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v50, v44, v37
	v_fma_f32 v48, -v90, v46, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v13, v2, s2
	v_cndmask_b32_e64 v16, v16, v51, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v52, -v32, v50, v44
	v_fmac_f32_e32 v46, v48, v28
	v_fma_f32 v48, -v31, v49, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v37
	v_fma_f32 v36, -v90, v46, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v48, v35
	v_fma_f32 v48, -v38, v53, v47
	v_fma_f32 v32, -v32, v50, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v36, v28, v46
	v_fma_f32 v31, -v31, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v48, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v18, v28, v64, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v31, v31, v35, v49
	v_fma_f32 v35, -v38, v53, v47
	s_mov_b32 vcc_lo, s3
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v28, |v6|, |v5|
.Ltmp31:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v32, v32, v37, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v16, v16, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v35, v35, v42, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v32, v29, v20
.Ltmp32:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v29, 7, v10
.Ltmp33:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v13, v35, v27, v19
	v_div_fixup_f32 v19, v31, v26, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v21, v43, v30 :: v_dual_mul_f32 v18, v14, v20
	v_mul_f32_e32 v20, v45, v41
	v_mul_f32_e32 v25, v2, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v19, v15, v19
	v_mul_f32_e32 v13, v39, v33
.Ltmp34:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v21|, |v24|, |v23|
	v_max3_f32 v26, |v20|, |v8|, |v7|
	v_max_f32_e64 v15, |v18|, |v25|
	v_max3_f32 v14, |v22|, |v16|, |v19|
	v_max3_f32 v27, |v13|, |v3|, |v4|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v14, v2, v14, v15
	v_max3_f32 v15, v26, v27, v28
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v28, 2, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v26, v14, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v15, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v10
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v14, v14, v26 :: v_dual_max_f32 v15, v15, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v30, v2, v28
	v_lshl_or_b32 v26, v9, 2, v2
	v_add3_u32 v27, 0, v29, v30
	s_delay_alu instid0(VALU_DEP_2)
	v_xad_u32 v26, v26, v28, 0
	ds_store_b64 v27, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[14:15], v26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v26, v14 :: v_dual_mov_b32 v27, v15
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v26, v26 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v27, v27 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v15, v15, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v14, v14, v26 :: v_dual_mov_b32 v27, v15
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v26, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v27, v27 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v15, v15, v27 :: v_dual_max_f32 v14, v14, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v27, v15 :: v_dual_mov_b32 v26, v14
	v_mov_b32_dpp v27, v27 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v15, v15, v27 :: v_dual_max_f32 v14, v14, v26
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v27, v15 :: v_dual_mov_b32 v26, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v27, v27 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v15, v15, v27 :: v_dual_max_f32 v14, v14, v26
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v26, 0, v28
	v_add_nc_u32_e32 v27, 0, v2
.Ltmp50:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, s33, 7, v2
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v26, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[14:15], v27
.Ltmp52:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v15, 0x2b8cbccc, v15
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v27
	v_fma_f32 v31, -v27, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v14, 0x2b8cbccc, v14 :: v_dual_fmac_f32 v29, v31, v29
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v14
	v_div_scale_f32 v32, vcc_lo, v14, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v26
	v_fma_f32 v30, -v26, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v30, v28
	v_div_scale_f32 v30, s1, v15, 0x40e00000, v15
	v_mul_f32_e32 v31, v32, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v30, v29
	v_fma_f32 v34, -v26, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v27, v33, v30
	v_fmac_f32_e32 v31, v34, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v35, v29
	v_fma_f32 v26, -v26, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v33, v30
	v_div_fmas_f32 v26, v26, v28, v31
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v29, v33
	v_div_fixup_f32 v14, v26, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v27, 0x40e00000, v15
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v15, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v27, v26, 16, 1
	v_add3_u32 v15, v14, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v26, v27, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v26, 0xffff0000, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v38, null, v26, v26, v19
	v_div_scale_f32 v30, null, v26, v26, v24
	v_div_scale_f32 v28, null, v26, v26, v21
	v_rcp_f32_e32 v52, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v30
	v_div_scale_f32 v32, null, v26, v26, v23
	v_rcp_f32_e32 v47, v28
	v_div_scale_f32 v42, null, v26, v26, v25
	v_div_scale_f32 v34, null, v26, v26, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v49, v32
	v_fma_f32 v62, -v38, v52, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v27, 0xffff0000, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v58, -v30, v48, 1.0
	v_rcp_f32_e32 v54, v42
	v_div_scale_f32 v36, null, v26, v26, v16
	v_fmac_f32_e32 v52, v62, v52
	v_div_scale_f32 v44, null, v27, v27, v20
	v_rcp_f32_e32 v50, v34
	v_div_scale_f32 v31, s1, v24, v26, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v55, v44
	v_fma_f32 v57, -v28, v47, 1.0
	v_fmac_f32_e32 v48, v58, v48
	v_rcp_f32_e32 v51, v36
	v_div_scale_f32 v39, s5, v19, v26, v19
	v_fma_f32 v59, -v32, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v47, v57, v47 :: v_dual_mul_f32 v58, v31, v48
	v_div_scale_f32 v29, vcc_lo, v21, v26, v21
	v_fma_f32 v65, -v44, v55, 1.0
	v_fma_f32 v64, -v42, v54, 1.0
	v_div_scale_f32 v40, null, v26, v26, v18
	v_fma_f32 v60, -v34, v50, 1.0
	v_div_scale_f32 v33, s2, v23, v26, v23
	v_dual_fmac_f32 v55, v65, v55 :: v_dual_mul_f32 v62, v39, v52
	v_fma_f32 v66, -v30, v58, v31
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v43, s7, v25, v26, v25
	v_dual_fmac_f32 v54, v64, v54 :: v_dual_mul_f32 v57, v29, v47
	v_div_scale_f32 v35, s3, v22, v26, v22
	v_rcp_f32_e32 v53, v40
	v_fma_f32 v61, -v36, v51, 1.0
	v_fmac_f32_e32 v50, v60, v50
	v_fma_f32 v70, -v38, v62, v39
	v_dual_fmac_f32 v58, v66, v48 :: v_dual_mul_f32 v59, v33, v49
	v_mul_f32_e32 v64, v43, v54
	v_fma_f32 v65, -v28, v57, v29
	v_dual_fmac_f32 v51, v61, v51 :: v_dual_mul_f32 v60, v35, v50
	v_div_scale_f32 v45, null, v27, v27, v8
	v_fmac_f32_e32 v62, v70, v52
	v_fma_f32 v67, -v32, v59, v33
	v_fmac_f32_e32 v57, v65, v47
	v_fma_f32 v63, -v40, v53, 1.0
	v_fma_f32 v68, -v34, v60, v35
	v_rcp_f32_e32 v56, v45
	v_fmac_f32_e32 v59, v67, v49
	v_fma_f32 v28, -v28, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v63, v53 :: v_dual_fmac_f32 v60, v68, v50
	v_fma_f32 v29, -v30, v58, v31
	v_fma_f32 v30, -v32, v59, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v47, v57
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v37, s4, v16, v26, v16
	v_fma_f32 v31, -v34, v60, v35
	v_div_fmas_f32 v29, v29, v48, v58
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v21, v28, v26, v21
	v_div_fmas_f32 v30, v30, v49, v59
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, null, v27, v27, v7
	v_div_fmas_f32 v28, v31, v50, v60
	v_fma_f32 v31, -v42, v64, v43
	v_mul_f32_e32 v61, v37, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v24, v29, v26, v24
	v_div_scale_f32 v41, s6, v18, v26, v18
	v_fmac_f32_e32 v64, v31, v54
	v_fma_f32 v69, -v36, v61, v37
	v_fma_f32 v33, -v38, v62, v39
	v_div_fixup_f32 v22, v28, v26, v22
	v_div_scale_f32 v28, s1, v20, v27, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v61, v69, v51
	v_div_fixup_f32 v23, v30, v26, v23
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v32, -v36, v61, v37
	v_div_scale_f32 v37, null, v27, v27, v13
	v_fma_f32 v36, -v42, v64, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v29, v32, v51, v61
	v_rcp_f32_e32 v32, v46
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v38, v37
	v_div_fmas_f32 v30, v33, v52, v62
	v_div_fixup_f32 v16, v29, v26, v16
	v_fma_f32 v29, -v45, v56, 1.0
	v_mul_f32_e32 v33, v28, v55
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v19, v30, v26, v19
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v46, v32, 1.0
	v_mul_f32_e32 v63, v41, v53
	v_fmac_f32_e32 v56, v29, v56
	v_div_scale_f32 v29, s2, v8, v27, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v35, v32
	v_fma_f32 v71, -v40, v63, v41
	v_fma_f32 v31, -v44, v33, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v29, v56
	v_div_scale_f32 v35, s3, v7, v27, v7
	v_fmac_f32_e32 v63, v71, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v31, v55
	v_fma_f32 v31, -v45, v34, v29
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v30, -v40, v63, v41
	v_fma_f32 v28, -v44, v33, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v31, v56
	v_mul_f32_e32 v31, v35, v32
	v_div_fmas_f32 v30, v30, v53, v63
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v29, -v45, v34, v29
	v_div_fmas_f32 v36, v36, v54, v64
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v18, v30, v26, v18
	v_div_fmas_f32 v28, v28, v55, v33
	v_fma_f32 v33, -v46, v31, v35
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v25, v36, v26, v25
	v_div_fmas_f32 v29, v29, v56, v34
	v_div_fixup_f32 v20, v28, v27, v20
	v_fmac_f32_e32 v31, v33, v32
	v_div_scale_f32 v28, null, v27, v27, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v8, v29, v27, v8
	v_fma_f32 v29, -v37, v38, 1.0
	v_fma_f32 v26, -v46, v31, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v28
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v36, null, v27, v27, v5
	v_div_fmas_f32 v26, v26, v32, v31
	v_div_scale_f32 v31, null, v27, v27, v6
	v_fmac_f32_e32 v38, v29, v38
	v_div_scale_f32 v32, vcc_lo, v13, v27, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v7, v26, v27, v7
	v_fma_f32 v26, -v28, v30, 1.0
	v_rcp_f32_e32 v34, v31
	v_rcp_f32_e32 v40, v36
	v_mul_f32_e32 v35, v32, v38
	v_div_scale_f32 v29, null, v27, v27, v4
	v_fmac_f32_e32 v30, v26, v30
	v_div_scale_f32 v26, s1, v3, v27, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v37, v35, v32
	v_rcp_f32_e32 v33, v29
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v42, -v31, v34, 1.0
	v_fma_f32 v44, -v36, v40, 1.0
	v_mul_f32_e32 v43, v26, v30
	v_fmac_f32_e32 v35, v41, v38
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, s3, v6, v27, v6
	v_fmac_f32_e32 v40, v44, v40
	v_fma_f32 v41, -v28, v43, v26
	v_fma_f32 v32, -v37, v35, v32
	v_fma_f32 v39, -v29, v33, 1.0
	v_mul_f32_e32 v46, v42, v34
	v_div_scale_f32 v44, s4, v5, v27, v5
	v_fmac_f32_e32 v43, v41, v30
	v_div_fmas_f32 v32, v32, v38, v35
	s_mov_b32 vcc_lo, s1
	s_mov_b32 s1, 0xc1000000
	v_fma_f32 v41, -v31, v46, v42
	v_fmac_f32_e32 v33, v39, v33
	v_div_scale_f32 v39, s2, v4, v27, v4
	v_fma_f32 v26, -v28, v43, v26
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s1, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v46, v41, v34 :: v_dual_mul_f32 v45, v39, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s1, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v26, v26, v30, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s1, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v26, v27, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v18
	v_and_b32_e32 v18, 15, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v16, 2, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v37, -v29, v45, v39
	v_mul_f32_e32 v47, v44, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s1, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v45, v37, v33 :: v_dual_and_b32 v16, 0x600, v16
	v_fma_f32 v28, -v36, v47, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v13, v32, v27, v13
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v29, -v29, v45, v39
	v_fmac_f32_e32 v47, v28, v40
	v_fma_f32 v28, -v31, v46, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v29, v29, v33, v45
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v28, v28, v34, v46
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v29, v27, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s1, 0x40e00000
	v_med3_f32 v23, v23, s1, 0x40e00000
	v_med3_f32 v25, v25, s1, 0x40e00000
	v_med3_f32 v8, v8, s1, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s1, 0x40e00000
	v_med3_f32 v3, v3, s1, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v23, v23
	v_med3_f32 v4, v4, s1, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v28, v27, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v29, v4
	v_and_b32_e32 v4, 15, v24
	v_and_b32_e32 v24, 15, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v30, -v36, v47, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v28, v3
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v7, 11, v0
	v_lshl_or_b32 v10, v10, 4, v16
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v30, v30, v40, v47
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v3, 15, v21
	v_and_b32_e32 v21, 15, v25
	v_and_b32_e32 v25, 15, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v30, v27, v5
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v13, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s1, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 0x3000, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v13, 0x60, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s1, 0x40e00000
	v_med3_f32 v6, v6, s1, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_med3_f32 v5, v5, s1, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v27, v20
	v_cvt_i32_f32_e32 v30, v6
	v_and_b32_e32 v6, 15, v22
	v_cvt_i32_f32_e32 v31, v5
	v_and_b32_e32 v5, 15, v23
	v_and_b32_e32 v23, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 0x60, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s1, 0x40e00000
	v_and_b32_e32 v22, 15, v27
	v_and_b32_e32 v20, 15, v26
	v_and_b32_e32 v26, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xor_b32_e32 v8, v10, v8
	v_lshlrev_b32_e32 v10, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v19, v19
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v28, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v7, v7, v12, v8
	v_and_or_b32 v10, 0x3600, v10, v13
	ds_store_b128 v7, v[3:6]
	ds_store_b128 v7, v[22:25] offset:256
	v_xad_u32 v8, v10, v17, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v8
	ds_load_b128 v[22:25], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v19
	v_and_b32_e32 v29, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[18:21]
	ds_store_b128 v7, v[26:29] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v8
	ds_load_b128 v[26:29], v8 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.h, v1.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s35, s1
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v8.h, v1.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 1
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, v15.h
	v_mov_b16_e32 v8.l, v14.h
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v10, v22, 4, v3
	v_lshl_or_b32 v3, v24, 4, v5
	v_lshl_or_b32 v1, v25, 4, v6
	v_lshl_or_b32 v12, v23, 4, v4
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e64 v8, v7, v8, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v11, s1, v[2:3]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s35, 31
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s1, 24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v13, v28, 4, v18
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s35, s1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v14, v29, 4, v19
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v10.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v10, v2, s1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v26, 4, v16
	v_lshl_or_b32 v6, v27, 4, v17
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v12.l
	v_lshlrev_b16 v0.h, 8, v14.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v8, v8, 0, 16
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v13.l
	v_lshlrev_b16 v2.l, 8, v6.l
	v_and_b16 v2.h, 0xff, v5.l
	v_or_b16 v4.l, v0.l, v1.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v8, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v10, s33, 1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e64 v1, v6, v7, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[16:19], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s27, 0xffff
	s_mov_b32 s16, s26
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp53:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 116
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 116
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9928
; TotalNumSgprs: 54
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 116
; Occupancy: 12
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
