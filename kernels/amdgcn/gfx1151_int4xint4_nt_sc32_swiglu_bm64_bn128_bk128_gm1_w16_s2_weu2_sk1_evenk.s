	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v5, 7, v0
	v_lshlrev_b32_e32 v10, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 2, v0
	v_and_b32_e32 v41, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v42, 15, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v2, 12, v10
	v_and_b32_e32 v47, 8, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s26, 63
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
	s_lshr_b32 s11, s11, 26
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
	s_ashr_i32 s9, s9, 6
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
	s_abs_i32 s17, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v1, 1, v5
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
	s_xor_b32 s16, s2, s7
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s17, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s6
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s17, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s17, s4, 1
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s16
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, s17, v3, v[1:2]
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v7, s17, v4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s6, v1
	v_or_b32_e32 v9, s6, v2
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s18, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s7, s5, s7
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s26, s5, 7
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v7, v7, v2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s17, v8
	v_cmp_gt_i32_e64 s5, s17, v9
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 16, v8
	v_cmp_gt_i32_e64 s4, 16, v9
	.loc	1 120 28 is_stmt 1              ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s7
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[8:9], null, s26, s17, v[7:8]
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s19
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s21, 5
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 6
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_add_i32 s19, s26, s27
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s21, s33, s17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 31
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v11, s6, s21, v6
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_mad_u64_u32 v[6:7], null, s19, s17, v[7:8]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s19, s3, vcc_lo
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s19
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v11, v7, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b32 v12, v8, s[28:31], 0 offen
	buffer_load_b32 v6, v6, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v7, 1, v0
	v_bfe_i32 v8, v0, 6, 1
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_bfe_i32 v9, v0, 5, 1
	v_and_b32_e32 v10, 0x77c, v10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v7, 0x37e, v7
	v_and_b32_e32 v8, 0x88, v8
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v9, 0x88, v9
	s_mov_b32 s5, -1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v7, v8, v7
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v8, v9, v10
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v9, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v49, 0, v7
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v50, 0, v8
	v_and_b32_e32 v7, 0x108, v0
	v_lshlrev_b32_e32 v8, 3, v41
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v49, v11 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v50, v12, v6 offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v43, v42, 4, v7
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v6, 8, v0
	v_lshl_or_b32 v45, v5, 4, v8
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v46, 8, v43
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr45
.LBB0_3:                                ; %Flow251
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_and_b32_e32 v48, 16, v9
	v_mov_b32_e32 v9, 0
	v_bfe_u32 v44, v0, 4, 1
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v34, 0
	s_lshl_b32 s1, s27, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v6, v0, 3, 1
	v_lshl_or_b32 v45, v5, 4, v8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v9, s18, 8, v41
	s_lshl_b32 s5, s18, 7
	v_lshl_or_b32 v43, v42, 4, v7
	v_add3_u32 v11, s27, s5, v4
	v_and_or_b32 v7, 0x88, v6, v45
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v6, s1, v9
	v_add3_u32 v5, s33, v48, v42
	v_or_b32_e32 v4, s5, v4
	s_lshl_b32 s20, s16, 8
	s_lshl_b32 s5, s16, 7
	s_max_i32 s19, s0, 1
	s_mov_b32 s16, 0
	v_subrev_nc_u32_e32 v54, s20, v6
	v_subrev_nc_u32_e32 v6, s5, v11
	v_mul_lo_u32 v11, s7, v5
	v_subrev_nc_u32_e32 v55, s20, v9
	s_lshl_b32 s34, s19, 4
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v10, 32, v5
	v_subrev_nc_u32_e32 v5, s5, v4
	v_add_nc_u32_e32 v12, s33, v3
	v_mad_u64_u32 v[3:4], null, s17, v6, s[6:7]
	v_xor_b32_e32 v8, 8, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s17, v5, s[6:7]
	v_mad_u64_u32 v[5:6], null, s17, v12, s[6:7]
	v_sub_nc_u32_e32 v51, s17, v1
	v_sub_nc_u32_e32 v52, s17, v2
	v_add3_u32 v58, v3, v2, 16
	s_mov_b32 s17, s16
	v_add3_u32 v59, v4, v2, 16
	v_add_nc_u32_e32 v63, 0, v7
	v_add3_u32 v60, v5, v1, 16
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v64, 0, v8
	v_mov_b32_e32 v1, s16
	v_mul_lo_u32 v10, s7, v10
	v_xor_b32_e32 v46, 8, v43
	v_dual_mov_b32 v2, s17 :: v_dual_lshlrev_b32 v53, 1, v44
	v_dual_mov_b32 v4, s19 :: v_dual_lshlrev_b32 v57, 1, v11
	v_dual_mov_b32 v6, s21 :: v_dual_add_nc_u32 v61, 0, v43
	v_dual_mov_b32 v5, s20 :: v_dual_lshlrev_b32 v56, 1, v10
	v_dual_mov_b32 v7, s22 :: v_dual_add_nc_u32 v62, 0, v46
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v10, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s41, s15, 0xffff
	s_mov_b64 s[36:37], s[12:13]
	s_mov_b32 s40, s14
	s_lshl_b32 s5, s27, 2
	s_add_i32 s6, s6, 16
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
	buffer_load_u16 v106, v57, s[44:47], 0 offen
	buffer_load_u16 v107, v56, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s12, s6, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v57, 2, v57
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v51
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v65, s16, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v52
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v65, v65, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[96:99], v61 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[100:103], v63 offset1:4
	.loc	1 198 26 is_stmt 1              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[100:101], v[96:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[100:101], v[98:99], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[82:89], v[102:103], v[96:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[102:103], v[98:99], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[98:101], v62 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[102:105], v64 offset1:4
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[102:103], v[98:99], v[66:73] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[82:89], v[104:105], v[98:99], v[82:89] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v98, v53, v55
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[74:81], v[102:103], v[100:101], v[74:81] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[90:97], v[104:105], v[100:101], v[90:97] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
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
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v67, v67
	v_mul_f32_e32 v74, v107, v74
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
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
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v55, s5, v55
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v99, 16, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v40, v74, v99
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v74, 16, v106
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v66, v74, v66 :: v_dual_mul_f32 v79, v107, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v81, v107, v81 :: v_dual_fmac_f32 v38, v66, v99
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v66, v107, v75 :: v_dual_lshlrev_b32 v75, 16, v100
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v99, 16, v104
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v66, v75
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v66, v74, v67 :: v_dual_lshlrev_b32 v67, 16, v101
	v_mul_f32_e32 v69, v74, v69
	v_mul_f32_e32 v70, v74, v70
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v90, v107, v90 :: v_dual_mul_f32 v83, v74, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v35, v66, v75 :: v_dual_mul_f32 v66, v107, v76
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v75, 16, v102
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v107, v78
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v78, v107, v91 :: v_dual_mul_f32 v85, v74, v85
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v32, v66, v67 :: v_dual_mul_f32 v91, v107, v93
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v66, v74, v68
	v_dual_mul_f32 v68, v107, v77 :: v_dual_fmac_f32 v29, v69, v75
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v92, v107, v92 :: v_dual_lshlrev_b32 v77, 16, v103
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v71, v74, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v33, v68, v75
	v_fmac_f32_e32 v28, v66, v67
	.loc	1 218 26 is_stmt 1              ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v66, s16, v59
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v68, v53, v54
	s_clause 0x1
	buffer_load_u16 v69, v68, s[40:43], 0 offen
	buffer_load_u16 v75, v68, s[40:43], 0 offen offset:4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v24, v76, v77 :: v_dual_add_nc_u32 v67, s16, v58
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v93, v107, v95 :: v_dual_fmac_f32 v20, v70, v77
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x2
	buffer_load_u16 v70, v68, s[40:43], 0 offen offset:12
	buffer_load_u16 v77, v68, s[40:43], 0 offen offset:16
	buffer_load_u16 v76, v68, s[40:43], 0 offen offset:8
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v94, v107, v94 :: v_dual_mul_f32 v87, v74, v87
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v80, v107, v80 :: v_dual_mul_f32 v73, v74, v73
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v95, v107, v97 :: v_dual_mul_f32 v82, v74, v82
	v_dual_mul_f32 v96, v107, v96 :: v_dual_mul_f32 v89, v74, v89
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v97, v68, s[40:43], 0 offen offset:20
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v84, v74, v84
	v_mul_f32_e32 v86, v74, v86
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v72, v74, v72
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v74, v74, v88
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v88, v68, s[40:43], 0 offen offset:28
	buffer_load_u16 v68, v68, s[40:43], 0 offen offset:24
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	s_clause 0x1
	buffer_load_b32 v66, v66, s[28:31], 0 offen
	buffer_load_b32 v67, v67, s[28:31], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v100, 16, v105
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v25, v79, v99 :: v_dual_add_nc_u32 v54, s5, v54
	v_dual_fmac_f32 v21, v71, v99 :: v_dual_add_nc_u32 v56, 2, v56
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s16, s16, 16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s34, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_barrier
	ds_store_b16 v49, v65 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v50, v66, v67 offset1:8
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v75, 16, v75
	v_lshlrev_b32_e32 v69, 16, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v11, v72, v100 :: v_dual_lshlrev_b32 v70, 16, v70
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v98, 16, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v39, v90, v69 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_fmac_f32 v19, v82, v69 :: v_dual_lshlrev_b32 v76, 16, v76
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v9, v81, v98
	v_dual_fmac_f32 v12, v73, v98 :: v_dual_lshlrev_b32 v77, 16, v77
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v27, v85, v70 :: v_dual_lshlrev_b32 v88, 16, v88
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v10, v80, v100 :: v_dual_lshlrev_b32 v97, 16, v97
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v34, v83, v75 :: v_dual_fmac_f32 v13, v74, v68
	v_dual_fmac_f32 v26, v84, v76 :: v_dual_fmac_f32 v31, v91, v70
	v_fmac_f32_e32 v17, v86, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v18, v87, v97 :: v_dual_fmac_f32 v15, v96, v68
	v_fmac_f32_e32 v14, v89, v88
	v_dual_fmac_f32 v36, v78, v75 :: v_dual_fmac_f32 v23, v93, v97
	v_fmac_f32_e32 v30, v92, v76
	v_fmac_f32_e32 v22, v94, v77
	v_fmac_f32_e32 v16, v95, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v6, v47
.LBB0_7:                                ; %._crit_edge
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_or_b32_e32 v51, v48, v42
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s4, s33, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s0, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s4, s4, s3
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v52, 32, v51
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v51
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v61, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, s7, v52
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s4, v1, 1
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v55, 0
	v_add_lshl_u32 v2, s4, v2, 1
	s_mov_b32 s4, 0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x1
	buffer_load_u16 v53, v1, s[36:39], 0 offen
	buffer_load_u16 v54, v2, s[36:39], 0 offen
	.loc	1 218 26 is_stmt 1              ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v1, 0x88, 0, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v2, 0, v46
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v62, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_or_b32_e32 v42, v45, v1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v1, 0, v43
	ds_load_2addr_stride64_b64 v[5:8], v1 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v2 offset0:8 offset1:9
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v43, 0, 1, s2
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v45, 8, v42
	v_add_nc_u32_e32 v80, 0, v42
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v42, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v43
	v_add_nc_u32_e32 v79, 0, v45
	v_mov_b32_e32 v43, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[42:43], v80
	ds_load_b64 v[45:46], v79
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v73, s11 :: v_dual_mov_b32 v72, s10
	v_dual_mov_b32 v71, s9 :: v_dual_mov_b32 v70, s8
	v_dual_mov_b32 v69, s7 :: v_dual_mov_b32 v68, s6
	v_dual_mov_b32 v67, s5 :: v_dual_mov_b32 v66, s4
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[42:43], v[5:6], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[42:43], v[7:8], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[45:46], v[1:2], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[45:46], v[3:4], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v57, v81
	v_cvt_f32_i32_e32 v60, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v83
	v_cvt_f32_i32_e32 v61, v84
	v_cvt_f32_i32_e32 v56, v85
	v_cvt_f32_i32_e32 v58, v86
	v_cvt_f32_i32_e32 v42, v87
	v_cvt_f32_i32_e32 v43, v88
	v_cvt_f32_i32_e32 v65, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v64, v68
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v62, v70
	v_cvt_f32_i32_e32 v63, v71
	v_cvt_f32_i32_e32 v45, v72
	v_cvt_f32_i32_e32 v46, v73
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v50, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[47:48], v80 offset:2048
	ds_load_b64 v[49:50], v79 offset:2048
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v84, s11 :: v_dual_mov_b32 v83, s10
	v_dual_mov_b32 v82, s9 :: v_dual_mov_b32 v81, s8
	v_dual_mov_b32 v80, s7 :: v_dual_mov_b32 v79, s6
	v_dual_mov_b32 v78, s5 :: v_dual_mov_b32 v77, s4
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[47:48], v[5:6], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[47:48], v[7:8], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[49:50], v[1:2], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[49:50], v[3:4], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v55, v85
	v_cvt_f32_i32_e32 v71, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v70, v87
	v_cvt_f32_i32_e32 v72, v88
	v_cvt_f32_i32_e32 v68, v89
	v_cvt_f32_i32_e32 v69, v90
	v_cvt_f32_i32_e32 v47, v91
	v_cvt_f32_i32_e32 v48, v92
	v_cvt_f32_i32_e32 v76, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v75, v79
	v_cvt_f32_i32_e32 v77, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v49, v83
	v_cvt_f32_i32_e32 v50, v84
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v41
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s26, s3
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v1, v44, v1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s27
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s16, s14
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	s_mul_i32 s33, s33, s27
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v7, s0, v1, 1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v82, 12, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v8, s0, v2, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v5, 8, v1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v79, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v1, 14, v1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v44, s0, v4, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v4, s1, v4, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v81, v7, s[16:19], 0 offen
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	v_add_lshl_u32 v7, s0, v6, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v6, s1, v6, 1
	v_add_lshl_u32 v83, s1, v82, 1
	v_add_lshl_u32 v84, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v41, s0, v3, 1
	v_add_lshl_u32 v80, s0, v5, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_add_lshl_u32 v3, s1, v3, 1
	v_add_lshl_u32 v5, s1, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v86, 0x80000000, v6, s2
	v_cndmask_b32_e64 v6, 0x80000000, v83, s2
	v_cndmask_b32_e64 v83, 0x80000000, v84, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v85, 0x80000000, v7, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x6
	buffer_load_u16 v79, v79, s[16:19], 0 offen
	buffer_load_u16 v84, v2, s[16:19], 0 offen
	buffer_load_u16 v87, v4, s[16:19], 0 offen
	buffer_load_u16 v7, v6, s[16:19], 0 offen
	buffer_load_u16 v83, v83, s[16:19], 0 offen
	buffer_load_u16 v88, v5, s[16:19], 0 offen
	buffer_load_u16 v89, v3, s[16:19], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v82, s0, v82, 1
	v_add_lshl_u32 v1, s0, v1, 1
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v2, 0x80000000, v82, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x6
	buffer_load_u16 v44, v44, s[16:19], 0 offen
	buffer_load_u16 v41, v41, s[16:19], 0 offen
	buffer_load_u16 v82, v85, s[16:19], 0 offen
	buffer_load_u16 v5, v2, s[16:19], 0 offen
	buffer_load_u16 v6, v1, s[16:19], 0 offen
	buffer_load_u16 v80, v80, s[16:19], 0 offen
	buffer_load_u16 v85, v86, s[16:19], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v3.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v3.h, v54.l
	v_mov_b16_e32 v4.h, v53.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v53, 1, v0
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v2, s27, v51
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v4.l, v3.l
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v1, s27, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v52, v67, v3 :: v_dual_and_b32 v51, 0x78, v53
	v_dual_mul_f32 v53, v65, v3 :: v_dual_mul_f32 v60, v60, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v65, v76, v3 :: v_dual_mul_f32 v70, v70, v4
	v_dual_mul_f32 v54, v78, v3 :: v_dual_mul_f32 v57, v57, v4
	v_dual_mul_f32 v75, v75, v3 :: v_dual_mul_f32 v58, v58, v4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v66, v66, v3 :: v_dual_mul_f32 v71, v71, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v69, v69, v4 :: v_dual_mul_f32 v64, v64, v3
	v_mul_f32_e32 v55, v55, v4
	v_dual_mul_f32 v77, v77, v3 :: v_dual_mul_f32 v72, v72, v4
	v_dual_mul_f32 v74, v74, v3 :: v_dual_mul_f32 v59, v59, v4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v62, v62, v3 :: v_dual_mul_f32 v61, v61, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v73, v73, v3 :: v_dual_mul_f32 v68, v68, v4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v63, v63, v3 :: v_dual_mul_f32 v56, v56, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v76.h, v3.l
	v_mov_b16_e32 v86.h, v3.l
	v_mov_b16_e32 v78.h, v3.l
	v_mov_b16_e32 v67.h, v3.l
	v_mov_b16_e32 v90.h, v3.l
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add3_u32 v51, s33, s26, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v50, v50, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add_lshl_u32 v1, v51, v1, 1
	v_and_b32_e32 v0, 16, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v52, v52, v8, v37
	v_fma_f32 v8, v60, v8, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v52, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v8, v35, v8, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v79, 16, v79
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v65, v65, v79, v39
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v65, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v81, 16, v81
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v82, 16, v82
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v52, 0xbfb8aa3b, v39 :: v_dual_lshlrev_b32 v85, 16, v85
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v53, v81, v40
	v_fma_f32 v57, v57, v81, v38
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v81, 16, v89
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v69, v69, v85, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v53, s2
	v_cndmask_b32_e64 v38, v38, v57, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v60, v75, v81, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v18, v69, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v58, v58, v82, v21
	v_fma_f32 v63, v63, v82, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v60, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v58, s2
	v_cndmask_b32_e64 v25, v25, v63, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v53, v71, v84, v34
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v53, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v30
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v54, v54, v84, v36
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v52, 0xbfb8aa3b, v34
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v55, v55, v79, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v79, 16, v87
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v54, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v53
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v19, v55, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v64, v41, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v64, v77, v79, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, s3
	v_exp_f32_e32 v60, v60
	v_mul_f32_e32 v35, 0xbfb8aa3b, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v55, s2
	v_cndmask_b32_e64 v31, v31, v64, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v35
	v_mul_f32_e32 v54, 0xbfb8aa3b, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v41, v59, v41, v28
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v59, v70, v81, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v41, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v26, v26, v59, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v19 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, 0xbfb8aa3b, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v66, v44, v33
	v_fma_f32 v44, v61, v44, v29
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v61, v72, v79, v27
	v_fma_f32 v66, v74, v85, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v57, s2
	v_cndmask_b32_e64 v29, v29, v44, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v87, 16, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v61, s2
	v_cndmask_b32_e64 v23, v23, v66, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v39
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v65, v73, v87, v22
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_mul_f32_e32 v58, 0xbfb8aa3b, v23
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v68, v68, v87, v17
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v44, v44
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v65, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v41, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v58
	v_mul_f32_e32 v57, 0xbfb8aa3b, v22
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v56, v56, v80, v20
	v_fma_f32 v62, v62, v80, v24
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v17, v68, s2
	v_cndmask_b32_e64 v20, v20, v56, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v62, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v54
	v_cndmask_b32_e64 v41, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v56
	v_cndmask_b32_e64 v55, 0, 0x42800000, s5
	v_cndmask_b32_e64 v58, 0, 0x42800000, s6
	v_cndmask_b32_e64 v54, 0, 0x42800000, s0
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v30
	v_cndmask_b32_e64 v56, 0, 0x42800000, s4
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v59, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v57
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v36 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v23
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v44, v44, v61
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v57, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v59
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v56, v56
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v52, v52, v64
	v_cndmask_b32_e64 v59, 0, 0x42800000, s9
	v_exp_f32_e32 v35, v35
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v22 :: v_dual_add_f32 v52, 1.0, v52
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s8
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v53, v53, v66
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v61, null, v44, v44, v39
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s1
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v54, v54, v65
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v17
	v_ldexp_f32 v56, v56, v68
	v_ldexp_f32 v55, v55, v69
	v_ldexp_f32 v60, v60, v72
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v68, v61
	v_div_scale_f32 v69, null, v52, v52, v34
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s7
	v_ldexp_f32 v35, v35, v62
	v_ldexp_f32 v41, v41, v63
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v59, v59
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v74, null, v53, v53, v30
	v_rcp_f32_e32 v94, v69
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s9
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_add_f32 v56, 1.0, v56
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v58, v58, v70
	v_ldexp_f32 v57, v57, v71
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v96, v74
	v_fma_f32 v101, -v61, v68, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v59, v59, v73
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v63, null, v35, v35, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_fmac_f32 v68, v101, v68
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v65, null, v41, v41, v36
	v_fma_f32 v101, -v69, v94, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v71, v63
	v_div_scale_f32 v72, null, v54, v54, v31
	v_div_scale_f32 v80, null, v55, v55, v26
	v_div_scale_f32 v88, null, v60, v60, v18
	v_rcp_f32_e32 v93, v65
	v_fma_f32 v106, -v74, v96, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_fmac_f32 v94, v101, v94
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v85, null, v57, v57, v22
	v_rcp_f32_e32 v95, v72
	v_rcp_f32_e32 v98, v80
	v_rcp_f32_e32 v102, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v100, v85
	v_fmac_f32_e32 v96, v106, v96
	v_div_scale_f32 v91, null, v59, v59, v17
	v_div_scale_f32 v62, s0, v39, v44, v39
	v_fma_f32 v103, -v63, v71, 1.0
	v_rcp_f32_e32 v104, v91
	v_fma_f32 v105, -v65, v93, 1.0
	v_div_scale_f32 v66, vcc_lo, v36, v41, v36
	v_fma_f32 v108, -v80, v98, 1.0
	v_fmac_f32_e32 v71, v103, v71
	v_fma_f32 v103, -v72, v95, 1.0
	v_fma_f32 v110, -v85, v100, 1.0
	v_fma_f32 v111, -v88, v102, 1.0
	v_fmac_f32_e32 v93, v105, v93
	v_mul_f32_e32 v105, v62, v68
	v_div_scale_f32 v77, null, v56, v56, v27
	v_div_scale_f32 v89, s10, v18, v60, v18
	v_fma_f32 v112, -v91, v104, 1.0
	v_dual_fmac_f32 v95, v103, v95 :: v_dual_fmac_f32 v100, v110, v100
	v_dual_fmac_f32 v102, v111, v102 :: v_dual_mul_f32 v103, v66, v93
	v_fma_f32 v106, -v61, v105, v62
	v_rcp_f32_e32 v97, v77
	v_div_scale_f32 v64, s1, v19, v35, v19
	v_div_scale_f32 v70, s3, v34, v52, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v105, v106, v68 :: v_dual_mul_f32 v106, v89, v102
	v_fma_f32 v115, -v65, v103, v66
	v_div_scale_f32 v75, s5, v30, v53, v30
	v_fma_f32 v107, -v77, v97, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v98, v108, v98 :: v_dual_fmac_f32 v103, v115, v93
	v_dual_mul_f32 v101, v64, v71 :: v_dual_mul_f32 v110, v75, v96
	v_div_scale_f32 v82, null, v58, v58, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v65, -v65, v103, v66
	v_div_scale_f32 v81, s7, v26, v55, v26
	v_fmac_f32_e32 v97, v107, v97
	v_mul_f32_e32 v107, v70, v94
	v_fma_f32 v108, -v63, v101, v64
	v_div_fmas_f32 v65, v65, v93, v103
	v_rcp_f32_e32 v99, v82
	v_fma_f32 v61, -v61, v105, v62
	v_div_scale_f32 v73, s4, v31, v54, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v36, v65, v41, v36
	v_fmac_f32_e32 v101, v108, v71
	v_fma_f32 v108, -v69, v107, v70
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v79, s6, v27, v56, v27
	v_fma_f32 v109, -v82, v99, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v107, v108, v94
	v_div_scale_f32 v87, s9, v22, v57, v22
	v_div_fmas_f32 v61, v61, v68, v105
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v36, v37, v36
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v69, -v69, v107, v70
	v_fma_f32 v63, -v63, v101, v64
	v_dual_fmac_f32 v99, v109, v99 :: v_dual_mul_f32 v114, v87, v100
	v_fmac_f32_e32 v104, v112, v104
	v_mul_f32_e32 v112, v81, v98
	v_mul_f32_e32 v109, v73, v95
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v111, v79, v97
	v_div_fmas_f32 v68, v69, v94, v107
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v39, v61, v44, v39
	v_div_fmas_f32 v41, v63, v71, v101
	v_fma_f32 v62, -v72, v109, v73
	v_fma_f32 v108, -v74, v110, v75
	v_fma_f32 v64, -v77, v111, v79
	v_div_scale_f32 v84, s8, v23, v58, v23
	v_div_fixup_f32 v19, v41, v35, v19
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v35, v40, v39
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v109, v62, v95
	v_fma_f32 v62, -v80, v112, v81
	v_fmac_f32_e32 v110, v108, v96
	s_mov_b32 vcc_lo, s4
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v86.l, v35.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v111, v64, v97
	v_fma_f32 v72, -v72, v109, v73
	v_fmac_f32_e32 v112, v62, v98
	v_fma_f32 v73, -v74, v110, v75
	v_fma_f32 v62, -v88, v106, v89
	v_mul_f32_e32 v113, v84, v99
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v19, v38, v19 :: v_dual_and_b32 v38, 1, v86
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v74, -v77, v111, v79
	v_div_fmas_f32 v44, v72, v95, v109
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v92, s11, v17, v59, v17
	v_fma_f32 v75, -v80, v112, v81
	v_div_fixup_f32 v34, v68, v52, v34
	v_div_fmas_f32 v37, v73, v96, v110
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v106, v62, v102
	v_fma_f32 v108, -v82, v113, v84
	v_div_fmas_f32 v39, v74, v97, v111
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v64, -v85, v114, v87
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v8, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v34, v75, v98, v112
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v78.l, v36.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v115, v92, v104
	v_fmac_f32_e32 v113, v108, v99
	v_fmac_f32_e32 v114, v64, v100
	v_div_fixup_f32 v26, v34, v55, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v34, 1, v78
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v108, -v91, v115, v92
	v_fma_f32 v77, -v82, v113, v84
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v70.h, v3.l
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v79, -v85, v114, v87
	v_div_fixup_f32 v31, v44, v54, v31
	v_fmac_f32_e32 v115, v108, v104
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v88, v106, v89
	v_div_fixup_f32 v30, v37, v53, v30
	v_div_fmas_f32 v37, v77, v99, v113
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v91, v115, v92
	v_div_fixup_f32 v27, v39, v56, v27
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v31, v33, v31
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v33, v79, v100, v114
	s_mov_b32 vcc_lo, s10
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v30, v32, v30
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v32, v80, v102, v106
	s_mov_b32 vcc_lo, s11
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v27, v29, v27
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v29, v81, v104, v115
	v_div_fixup_f32 v22, v33, v57, v22
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v62.h, v3.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v26, v28, v26 :: v_dual_lshlrev_b32 v83, 16, v83
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v62.l, v31.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v17, v29, v59, v17
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v22, v24, v22
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v76.l, v19.h
	v_mov_b16_e32 v67.l, v8.h
	v_mov_b16_e32 v64.h, v3.l
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v50, v50, v83, v16
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v18, v32, v60, v18
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v32, 1, v76
	v_mov_b16_e32 v90.l, v27.h
	v_and_b32_e32 v29, 1, v62
	v_mov_b16_e32 v64.l, v26.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v20, v17
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v39, 1, v67
	v_cmp_o_f32_e64 s4, v19, v19
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v18, v21, v18
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v19, v19, v32, 0x7fff
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v44, v45, v3 :: v_dual_and_b32 v21, 1, v90
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v20, v31, v29, 0x7fff
	v_and_b32_e32 v29, 1, v64
	v_mov_b16_e32 v70.l, v17.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v16, v50, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v8, v8
	v_add3_u32 v8, v8, v39, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_cmp_o_f32_e64 s6, v27, v27
	v_cmp_o_f32_e64 s7, v26, v26
	v_cndmask_b16 v8.l, 0x7fff, v19.h, s4
	v_add3_u32 v19, v27, v21, 0x7fff
	v_add3_u32 v21, v26, v29, 0x7fff
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v27, v49, v3 :: v_dual_and_b32 v26, 1, v70
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v66.h, v3.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v24, v17, v26, 0x7fff
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v26, v27, v7, v15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v28, v36, v34, 0x7fff
	v_mov_b16_e32 v66.l, v18.h
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v15, v26, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v26, v47, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v35, v35
	v_add3_u32 v34, v35, v38, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v21, v37, v58, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v23, 1, v66
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v28.l, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v17, v17
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s0
	v_add3_u32 v23, v18, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v7, v26, v7, v13
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v18.l, 0x7fff, v24.h, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v24, v27
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v25, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v13, v7, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v18.h, 0x7fff, v23.h, s0
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v25, v48, v4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v17.h
	v_mov_b16_e32 v23.h, v3.l
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v24, v24, v27
	v_mul_f32_e32 v27, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v25, v25, v83, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v23, 1, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v108.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v14, v25, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v23, v17, v23, 0x7fff
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	v_exp_f32_e32 v13, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v21, 1.0, v24 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v7
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v108.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v29, null, v21, v21, v16
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v35, 1, v108
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v13, v13, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v30, v30, v35, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v26, v29
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v14
	v_ldexp_f32 v17, v27, v33
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, s0, v16, v21, v16
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v24, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v20.l, 0x7fff, v30.h, s5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v32, -v29, v26, 1.0
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v44, v44, v5, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v33, null, v17, v17, v7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_ldexp_f32 v24, v24, v31
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v39, v46, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.l, v22.h
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v30, null, v13, v13, v15
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v37, s1, v15, v13, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v30
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v32, null, v24, v24, v14
	v_mul_f32_e32 v35, v27, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.h, v3.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 0x5040504, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v36, v32
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v38, -v29, v35, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v30, v34, 1.0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v35, v38, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v34, v31, v34
	v_rcp_f32_e32 v31, v33
	v_fma_f32 v41, -v32, v36, 1.0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v25, v22, v25, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v27, -v29, v35, v27
	v_mul_f32_e32 v40, v37, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v41, v36
	v_div_scale_f32 v41, s3, v14, v24, v14
	v_fma_f32 v45, -v30, v40, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v33, v31, 1.0
	v_div_fmas_f32 v26, v27, v26, v35
	v_mul_f32_e32 v29, v41, v36
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v45, v34 :: v_dual_fmac_f32 v31, v38, v31
	v_div_scale_f32 v38, s4, v7, v17, v7
	v_fma_f32 v27, -v32, v29, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v30, v40, v37
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v37, v43, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v45, v38, v31
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v4, v42, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v29, v27, v36
	v_div_fmas_f32 v27, v30, v34, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v33, v45, v38
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v5, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v5, -v32, v29, v41
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v37, v6, v12
	v_fma_f32 v6, v39, v6, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v45, v35, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v11, v4, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v5, v5, v36, v29
	s_mov_b32 vcc_lo, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v12, v30, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v32, -v33, v45, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v9, v6, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v5, v24, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v10, v44, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v10, v27, v13, v15
	v_div_fmas_f32 v29, v32, v31, v45
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v11.h, v3.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v12, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v12.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v7, v29, v17, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v11.l, v5.h
	v_cndmask_b16 v23.l, 0x7fff, v25.h, vcc_lo
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v4, v7
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v7, v26, v21, v16
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v12.l, v4.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v6, v6, v7 :: v_dual_mul_f32 v7, v9, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v9, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 1, v12
	v_mov_b16_e32 v11.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v12.l, v7.h
	v_add3_u32 v3, v5, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v7, v7
	v_add3_u32 v5, v4, v10, 0x7fff
	v_and_b32_e32 v10, 1, v11
	v_and_b32_e32 v9, 1, v12
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v7, v9, 0x7fff
	v_add3_u32 v9, v6, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_cndmask_b16 v3.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b32_e64 v6, v18, v8, s0
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v9.h, s1
	v_cndmask_b32_e64 v7, 0x3276, v10, s0
	v_cndmask_b32_e64 v10, v28, v23, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v9, v23, v28, s0
	v_cndmask_b32_e64 v11, v5, v20, s0
	v_lshl_or_b32 v4, v7, 8, v7
	v_cndmask_b32_e64 v7, v8, v18, s0
	v_cndmask_b32_e64 v8, v3, v19, s0
	v_cndmask_b32_e64 v3, v19, v3, s0
	v_cndmask_b32_e64 v5, v20, v5, s0
	v_and_b32_e32 v4, 0x760076, v4
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v4, 4, v4
	v_perm_b32 v3, v7, v6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v5, v13, v8, v0
	v_and_b32_e32 v12, 0x7060706, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v4, v7, v6, v12
	v_perm_b32 v6, v13, v8, v12
	v_perm_b32 v7, v10, v9, v0
	v_perm_b32 v8, v10, v9, v12
	v_perm_b32 v9, v14, v11, v0
	v_add_lshl_u32 v0, v51, v2, 1
	v_perm_b32 v10, v14, v11, v12
	s_clause 0x1
	buffer_store_b128 v[3:6], v0, s[24:27], 0 offen
	buffer_store_b128 v[7:10], v1, s[24:27], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 116
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8016
; TotalNumSgprs: 50
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 50
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
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
