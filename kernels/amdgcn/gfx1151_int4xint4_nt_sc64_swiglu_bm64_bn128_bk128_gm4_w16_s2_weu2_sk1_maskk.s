	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
	v_lshlrev_b32_e32 v9, 2, v0
	v_lshlrev_b32_e32 v14, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v25, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v50, 0xe0, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v2, 24, v14
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
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
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s19, s6, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s6, s6, s5
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s9, s19
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s7, s7, 4
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s17, s7
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 28, v9
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s7
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s17
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s6, s17
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s17, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s17, s4, 1
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s16
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[5:6], null, s17, v3, v[1:2]
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v6, s17, v4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s6, v1
	v_or_b32_e32 v8, s6, v2
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s18, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s7, s5, s7
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s26, s5, 7
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v6, v6, v2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s17, v7
	v_cmp_gt_i32_e64 s5, s17, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v7
	v_cmp_gt_i32_e64 s4, 32, v8
	.loc	1 120 28 is_stmt 1              ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s7
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[7:8], null, s26, s17, v[6:7]
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s19
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s21, 6
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 6
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_add_i32 s19, s26, s27
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s21, s33, s17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v10, s6, s21, v5
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_mad_u64_u32 v[5:6], null, s19, s17, v[6:7]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s19, s3, vcc_lo
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s19
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v17, v6, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[10:11], v7, s[28:31], 0 offen
	buffer_load_b64 v[12:13], v5, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v5, 24, v4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v6, 24, v25
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v5, v9, v5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v6, v14, v6
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v9, 15, v0
	s_mov_b32 s5, -1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v15, 0, v5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v16, 0, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v5, 5, v9
	v_lshlrev_b32_e32 v6, 4, v50
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v15, v17 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v16, v[10:11], v[12:13] offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v11, 24, v7
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_or_b32 v10, 0x218, v7, v5
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_or3_b32 v52, v6, v11, v5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v11, 8, v10
	v_xor_b32_e32 v12, 16, v10
	v_xor_b32_e32 v13, 24, v10
	s_mov_b32 s5, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v53, 8, v52
	v_xor_b32_e32 v54, 16, v52
	v_xor_b32_e32 v55, 24, v52
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
.LBB0_3:                                ; %Flow273
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v14, 16, v8
	v_bfe_u32 v51, v0, 4, 1
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v26, 0
	s_lshl_b32 s1, s27, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_lshl_b32 s5, s18, 7
	s_max_i32 s19, s0, 1
	s_lshl_b32 s20, s16, 8
	v_add3_u32 v17, s27, s5, v4
	v_or_b32_e32 v4, s5, v4
	s_lshl_b32 s5, s16, 7
	s_mov_b32 s16, 0
	v_and_or_b32 v10, 0x218, v7, v5
	s_lshl_b32 s34, s19, 5
	s_mov_b32 s19, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v8, 24, v7
	v_lshl_or_b32 v7, s18, 8, v50
	s_mov_b32 s18, s16
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v18, s33, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or3_b32 v52, v6, v8, v5
	v_add_nc_u32_e32 v6, s1, v7
	v_add3_u32 v5, s33, v14, v9
	v_subrev_nc_u32_e32 v60, s20, v7
	v_xor_b32_e32 v11, 8, v10
	v_xor_b32_e32 v12, 16, v10
	v_subrev_nc_u32_e32 v59, s20, v6
	v_subrev_nc_u32_e32 v6, s5, v17
	v_mul_lo_u32 v17, s7, v5
	s_mov_b32 s20, s16
	v_add_nc_u32_e32 v8, 32, v5
	v_subrev_nc_u32_e32 v5, s5, v4
	v_mad_u64_u32 v[3:4], null, s17, v6, s[6:7]
	v_xor_b32_e32 v13, 24, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v8, s7, v8
	v_mad_u64_u32 v[4:5], null, s17, v5, s[6:7]
	v_mad_u64_u32 v[5:6], null, s17, v18, s[6:7]
	v_xor_b32_e32 v53, 8, v52
	v_xor_b32_e32 v54, 16, v52
	v_xor_b32_e32 v55, 24, v52
	v_sub_nc_u32_e32 v56, s17, v1
	v_sub_nc_u32_e32 v57, s17, v2
	s_mov_b32 s17, s16
	v_lshlrev_b32_e32 v58, 1, v51
	v_dual_mov_b32 v26, 0 :: v_dual_lshlrev_b32 v61, 1, v8
	v_add3_u32 v63, v3, v2, 32
	v_add3_u32 v64, v4, v2, 32
	v_add3_u32 v65, v5, v1, 32
	v_dual_mov_b32 v1, s16 :: v_dual_lshlrev_b32 v62, 1, v17
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v66, 0, v10
	v_mov_b32_e32 v27, 0
	v_dual_mov_b32 v2, s17 :: v_dual_add_nc_u32 v67, 0, v11
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v68, 0, v12
	v_dual_mov_b32 v4, s19 :: v_dual_add_nc_u32 v69, 0, v13
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v70, 0, v52
	v_dual_mov_b32 v6, s21 :: v_dual_add_nc_u32 v71, 0, v53
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v72, 0, v54
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v73, 0, v55
	v_mov_b32_e32 v3, s18
	v_mov_b32_e32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v18, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s5, s27, 2
	s_add_i32 s6, s6, 32
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
	buffer_load_u16 v115, v62, s[44:47], 0 offen
	buffer_load_u16 v116, v61, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s12, s6, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v61, 2, v61
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v56
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v74, s16, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v57
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v74, v74, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[105:108], v66 offset0:16 offset1:18
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[109:112], v70 offset1:8
	.loc	1 198 26 is_stmt 1              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[109:110], v[105:106], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[109:110], v[107:108], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[91:98], v[111:112], v[105:106], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[111:112], v[107:108], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[107:110], v67 offset0:16 offset1:18
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[111:114], v71 offset1:8
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[111:112], v[107:108], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[111:112], v[109:110], v[83:90] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[91:98], v[113:114], v[107:108], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[113:114], v[109:110], v[99:106] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[107:110], v68 offset0:16 offset1:18
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[111:114], v72 offset1:8
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[111:112], v[107:108], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[111:112], v[109:110], v[83:90] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[91:98], v[113:114], v[107:108], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[113:114], v[109:110], v[99:106] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[107:110], v69 offset0:16 offset1:18
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[111:114], v73 offset1:8
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[111:112], v[107:108], v[75:82] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[91:98], v[113:114], v[107:108], v[91:98] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v107, v58, v60
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[83:90], v[111:112], v[109:110], v[83:90] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[99:106], v[113:114], v[109:110], v[99:106] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v108, v107, s[40:43], 0 offen
	buffer_load_u16 v109, v107, s[40:43], 0 offen offset:4
	buffer_load_u16 v110, v107, s[40:43], 0 offen offset:8
	buffer_load_u16 v111, v107, s[40:43], 0 offen offset:12
	buffer_load_u16 v112, v107, s[40:43], 0 offen offset:16
	buffer_load_u16 v113, v107, s[40:43], 0 offen offset:20
	buffer_load_u16 v114, v107, s[40:43], 0 offen offset:24
	buffer_load_u16 v107, v107, s[40:43], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v76, v76
	v_mul_f32_e32 v83, v116, v83
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v108, 16, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v49, v83, v108
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v83, 16, v115
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v75, v83, v75
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v99, v116, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v90, v116, v90 :: v_dual_fmac_f32 v47, v75, v108
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v75, v116, v84 :: v_dual_lshlrev_b32 v84, 16, v109
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v46, v75, v84
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v75, v83, v76 :: v_dual_lshlrev_b32 v76, 16, v110
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v101, v116, v101 :: v_dual_mul_f32 v94, v83, v94
	v_mul_f32_e32 v91, v83, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v44, v75, v84 :: v_dual_mul_f32 v75, v116, v85
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v95, v83, v95 :: v_dual_lshlrev_b32 v84, 16, v113
	v_dual_mul_f32 v103, v116, v103 :: v_dual_mul_f32 v96, v83, v96
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v41, v75, v76
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v75, v83, v77
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v77, 16, v112
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v105, v116, v105 :: v_dual_mul_f32 v82, v83, v82
	v_mul_f32_e32 v93, v83, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v75, v76
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v75, v116, v86 :: v_dual_lshlrev_b32 v76, 16, v111
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v86, 16, v114
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v92, v83, v92
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v42, v75, v76
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v75, v83, v78
	v_mul_f32_e32 v78, v83, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v38, v75, v76 :: v_dual_fmac_f32 v29, v78, v77
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v76, v116, v87 :: v_dual_add_nc_u32 v75, s16, v64
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v33, v76, v77 :: v_dual_add_nc_u32 v76, s16, v63
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s16, s16, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s34, s16
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e32 v78, 0x80000000, v76, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v76, v116, v88 :: v_dual_add_nc_u32 v77, v58, v59
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v34, v76, v84 :: v_dual_add_nc_u32 v59, s5, v59
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v83, v80
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x2
	buffer_load_u16 v79, v77, s[40:43], 0 offen
	buffer_load_u16 v85, v77, s[40:43], 0 offen offset:4
	buffer_load_u16 v87, v77, s[40:43], 0 offen offset:20
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v98, v83, v98
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v30, v76, v84
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v76, v116, v89 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v80, v77, s[40:43], 0 offen offset:8
	buffer_load_u16 v84, v77, s[40:43], 0 offen offset:12
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v89, v116, v100
	v_mul_f32_e32 v100, v116, v102
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v18, v76, v86
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v83, v81
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v102, v116, v104 :: v_dual_mul_f32 v83, v83, v97
	v_mul_f32_e32 v104, v116, v106
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v19, v76, v86
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x2
	buffer_load_u16 v81, v77, s[40:43], 0 offen offset:16
	buffer_load_u16 v86, v77, s[40:43], 0 offen offset:28
	buffer_load_u16 v88, v77, s[40:43], 0 offen offset:24
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[75:76], v75, s[28:31], 0 offen
	buffer_load_b64 v[77:78], v78, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v15, v74 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v16, v[75:76], v[77:78] offset1:8
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v84, 16, v84
	v_lshlrev_b32_e32 v85, 16, v85
	v_lshlrev_b32_e32 v80, 16, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v27, v95, v81 :: v_dual_add_nc_u32 v62, 2, v62
	v_dual_fmac_f32 v36, v94, v84 :: v_dual_lshlrev_b32 v97, 16, v107
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v45, v89, v85 :: v_dual_lshlrev_b32 v86, 16, v86
	v_fmac_f32_e32 v35, v93, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v20, v82, v97 :: v_dual_lshlrev_b32 v87, 16, v87
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v26, v91, v79
	v_dual_fmac_f32 v31, v103, v81 :: v_dual_lshlrev_b32 v88, 16, v88
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v17, v90, v97 :: v_dual_add_nc_u32 v60, s5, v60
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v43, v92, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v21, v83, v88 :: v_dual_fmac_f32 v22, v98, v86
	v_fmac_f32_e32 v28, v96, v87
	v_dual_fmac_f32 v48, v99, v79 :: v_dual_fmac_f32 v39, v101, v80
	v_fmac_f32_e32 v40, v100, v84
	v_dual_fmac_f32 v32, v102, v87 :: v_dual_fmac_f32 v23, v105, v88
	v_fmac_f32_e32 v24, v104, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v60, v14, v9
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s4, s33, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s0, 0
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v3, 0, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v61, 32, v60
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v60
	s_add_i32 s4, s4, s3
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v4, 0, v13
	v_mul_lo_u32 v2, s7, v61
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v56, 0, 1, s2
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v88, 0, v55
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s4, v1, 1
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v89, 0, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v56
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s4, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v90, 0, v53
	v_mov_b32_e32 v53, 0
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v91, 0, v52
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v71, 0
	s_clause 0x1
	buffer_load_u16 v62, v1, s[36:39], 0 offen
	buffer_load_u16 v63, v2, s[36:39], 0 offen
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v1, 0, v10
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v2, 0, v11
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v1 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[13:16], v2 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[5:8], v3 offset0:16 offset1:18
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v4 offset0:16 offset1:18
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v54, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[65:66], v91
	ds_load_b64 v[67:68], v90
	ds_load_b64 v[69:70], v89
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v82, s11 :: v_dual_mov_b32 v81, s10
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[71:72], v88
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v80, s9 :: v_dual_mov_b32 v79, s8
	v_dual_mov_b32 v78, s7 :: v_dual_mov_b32 v77, s6
	v_dual_mov_b32 v76, s5 :: v_dual_mov_b32 v75, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[65:66], v[9:10], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[65:66], v[11:12], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[67:68], v[13:14], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[67:68], v[15:16], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[69:70], v[5:6], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[69:70], v[7:8], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[71:72], v[1:2], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[71:72], v[3:4], v[75:82] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v66, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v68, v54
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v65, v56
	v_cvt_f32_i32_e32 v67, v57
	v_cvt_f32_i32_e32 v52, v58
	v_cvt_f32_i32_e32 v53, v59
	v_cvt_f32_i32_e32 v74, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v73, v77
	v_cvt_f32_i32_e32 v75, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v54, v81
	v_cvt_f32_i32_e32 v55, v82
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v59, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[56:57], v91 offset:4096
	ds_load_b64 v[58:59], v90 offset:4096
	ds_load_b64 v[77:78], v89 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[79:80], v88 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_dual_mov_b32 v93, s11 :: v_dual_mov_b32 v92, s10
	v_dual_mov_b32 v91, s9 :: v_dual_mov_b32 v90, s8
	v_dual_mov_b32 v89, s7 :: v_dual_mov_b32 v88, s6
	v_dual_mov_b32 v87, s5 :: v_dual_mov_b32 v86, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[56:57], v[9:10], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[56:57], v[11:12], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[58:59], v[13:14], v[94:101] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[58:59], v[15:16], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[77:78], v[5:6], v[94:101] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[77:78], v[7:8], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[79:80], v[1:2], v[94:101] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[79:80], v[3:4], v[86:93] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v64, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v80, v95
	v_cvt_f32_i32_e32 v79, v96
	v_cvt_f32_i32_e32 v81, v97
	v_cvt_f32_i32_e32 v77, v98
	v_cvt_f32_i32_e32 v78, v99
	v_cvt_f32_i32_e32 v56, v100
	v_cvt_f32_i32_e32 v57, v101
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v86, v89
	v_cvt_f32_i32_e32 v82, v90
	v_cvt_f32_i32_e32 v83, v91
	v_cvt_f32_i32_e32 v58, v92
	v_cvt_f32_i32_e32 v59, v93
.LBB0_10:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v50
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s26, s3
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v1, v51, v1
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s16, s14
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s27
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	s_mul_i32 s33, s33, s27
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v7, s0, v1, 1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v3, 4, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v8, s0, v2, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 8, v1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v11, s1, v1, 1
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_add_lshl_u32 v10, s0, v4, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v4, s1, v4, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v9, s0, v3, 1
	s_clause 0x1
	buffer_load_u16 v13, v7, s[16:19], 0 offen
	buffer_load_u16 v14, v8, s[16:19], 0 offen
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v8, 12, v1
	v_or_b32_e32 v1, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v7, s0, v6, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v6, s1, v6, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v12, s0, v5, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v15, s1, v8, 1
	v_add_lshl_u32 v16, s1, v1, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v3, s1, v3, 1
	v_add_lshl_u32 v5, s1, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v50, 0x80000000, v6, s2
	v_cndmask_b32_e64 v6, 0x80000000, v15, s2
	v_cndmask_b32_e64 v15, 0x80000000, v16, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v16, s0, v8, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x6
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	buffer_load_u16 v51, v2, s[16:19], 0 offen
	buffer_load_u16 v88, v4, s[16:19], 0 offen
	buffer_load_u16 v8, v6, s[16:19], 0 offen
	buffer_load_u16 v15, v15, s[16:19], 0 offen
	buffer_load_u16 v89, v5, s[16:19], 0 offen
	buffer_load_u16 v90, v3, s[16:19], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v1, s0, v1, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v2, 0x80000000, v16, s2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x6
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v16, v7, s[16:19], 0 offen
	buffer_load_u16 v6, v2, s[16:19], 0 offen
	buffer_load_u16 v7, v1, s[16:19], 0 offen
	buffer_load_u16 v12, v12, s[16:19], 0 offen
	buffer_load_u16 v50, v50, s[16:19], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v4.h, v63.l
	v_mov_b16_e32 v5.h, v62.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v2, 0x78, v25
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v1, s27, v61
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v5.l, v4.l
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v62, v85, v4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v25, v76, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v61, v87, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v75, v75, v4 :: v_dual_mul_f32 v80, v80, v5
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v78, v78, v5
	v_mul_f32_e32 v79, v79, v5
	v_mul_f32_e32 v77, v77, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v73, v73, v4 :: v_dual_mul_f32 v64, v64, v5
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v3, s27, v60
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v60, v74, v4 :: v_dual_mul_f32 v69, v69, v5
	v_mul_f32_e32 v66, v66, v5
	v_dual_mul_f32 v72, v72, v4 :: v_dual_mul_f32 v65, v65, v5
	v_dual_mul_f32 v71, v71, v4 :: v_dual_mul_f32 v70, v70, v5
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v83, v83, v4 :: v_dual_mul_f32 v68, v68, v5
	v_mul_f32_e32 v82, v82, v4
	v_dual_mul_f32 v86, v86, v4 :: v_dual_mul_f32 v81, v81, v5
	v_dual_mul_f32 v84, v84, v4 :: v_dual_mul_f32 v67, v67, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v85.h, v4.l
	v_mov_b16_e32 v74.h, v4.l
	v_mov_b16_e32 v87.h, v4.l
	v_mov_b16_e32 v76.h, v4.l
	v_mov_b16_e32 v63.h, v4.l
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add3_u32 v2, s33, s26, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v59, v59, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add_lshl_u32 v1, v2, v1, 1
	v_and_b32_e32 v0, 16, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v60, v60, v13, v49
	v_fma_f32 v25, v25, v14, v46
	v_fma_f32 v14, v69, v14, v44
	v_fma_f32 v13, v66, v13, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v49, v60, s2
	v_cndmask_b32_e64 v25, v46, v25, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v14, v44, v14, s2
	v_cndmask_b32_e64 v13, v47, v13, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v62, v62, v11, v48
	v_fma_f32 v11, v64, v11, v26
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v66, 16, v90
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v59, v59, v15, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v62, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v26, v11, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v60, v84, v66, v39
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v48
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v61, v61, v51, v45
	v_fma_f32 v51, v80, v51, v43
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v11
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v73, v9, v41
	v_fma_f32 v9, v68, v9, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v61, s2
	v_cndmask_b32_e64 v43, v43, v51, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v64, 16, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v37, v9, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v43
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v71, v12, v33
	v_fma_f32 v12, v65, v12, v29
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v62, v86, v64, v40
	v_fma_f32 v64, v81, v64, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v60, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v29, v12, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v45
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v47, v75, v10, v42
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v64, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v41, v26, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v29
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v47, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v36
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v71, v83, v50, v32
	v_fma_f32 v50, v78, v50, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v29, 0, 0x42800000, s1
	v_dual_mul_f32 v41, 0xbfb8aa3b, v39 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v66, v79, v66, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v62, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v45
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v72, v16, v34
	v_fma_f32 v16, v67, v16, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v71, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v88, 16, v89
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v66, s2
	v_cndmask_b32_e64 v16, v30, v16, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v50, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v65, v77, v88, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v41
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v29, v29
	v_dual_mul_f32 v46, 0xbfb8aa3b, v35 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v70, v10, v38
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v70, v82, v88, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v65, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s3
	v_mul_f32_e32 v44, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v47
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v51
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v38, v10, s2
	v_cndmask_b32_e64 v31, v31, v70, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v47, 0, 0x42800000, s4
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v29, v29, v65
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v48
	v_cndmask_b32_e64 v51, 0, 0x42800000, s6
	v_cndmask_b32_e64 v61, 0, 0x42800000, s8
	v_dual_mul_f32 v50, 0xbfb8aa3b, v31 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v36
	v_cndmask_b32_e64 v44, 0, 0x42800000, s0
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v30, v30
	v_dual_mul_f32 v60, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v32
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v11 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v28
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v37, v37, v66
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v50
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v61, v61
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v69, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s4
	v_ldexp_f32 v30, v30, v62
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v44, v44
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v68, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s5
	v_cndmask_b32_e64 v50, 0, 0x42800000, s7
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	v_ldexp_f32 v47, v47, v69
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v38, v38, v64
	v_ldexp_f32 v41, v41, v68
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v35
	v_ldexp_f32 v51, v51, v71
	v_ldexp_f32 v61, v61, v73
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v31
	v_ldexp_f32 v44, v44, v67
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v62, null, v30, v30, v48
	v_div_scale_f32 v67, null, v29, v29, v45
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_add_f32 v51, 1.0, v51
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v46, v46
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v50, v50
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v69, v62
	v_rcp_f32_e32 v93, v67
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v65, null, v38, v38, v11
	v_div_scale_f32 v83, null, v51, v51, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s9
	v_ldexp_f32 v46, v46, v70
	v_ldexp_f32 v50, v50, v72
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v70, null, v37, v37, v43
	v_rcp_f32_e32 v72, v65
	v_rcp_f32_e32 v99, v83
	v_fma_f32 v101, -v62, v69, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v27
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v105, -v67, v93, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, null, v47, v47, v36
	v_rcp_f32_e32 v94, v70
	v_fmac_f32_e32 v69, v101, v69
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v60, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v93, v105, v93
	v_div_scale_f32 v73, null, v44, v44, v40
	v_rcp_f32_e32 v97, v79
	v_fma_f32 v103, -v65, v72, 1.0
	v_fma_f32 v109, -v83, v99, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v95, v73
	v_div_scale_f32 v66, s1, v11, v38, v11
	v_div_scale_f32 v77, null, v41, v41, v39
	v_fma_f32 v101, -v70, v94, 1.0
	v_dual_fmac_f32 v72, v103, v72 :: v_dual_fmac_f32 v99, v109, v99
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v60, v60, v75
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v96, v77
	v_fma_f32 v107, -v79, v97, 1.0
	v_dual_fmac_f32 v94, v101, v94 :: v_dual_mul_f32 v101, v66, v72
	v_div_scale_f32 v86, null, v50, v50, v31
	v_div_scale_f32 v64, s0, v48, v30, v48
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v103, -v73, v95, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v100, v86
	v_mul_f32_e32 v105, v64, v69
	v_div_scale_f32 v81, null, v46, v46, v35
	v_fmac_f32_e32 v95, v103, v95
	v_div_scale_f32 v91, null, v60, v60, v27
	v_div_scale_f32 v68, vcc_lo, v45, v29, v45
	v_fma_f32 v106, -v77, v96, 1.0
	v_div_scale_f32 v89, null, v61, v61, v28
	v_rcp_f32_e32 v98, v81
	v_rcp_f32_e32 v104, v91
	v_fma_f32 v110, -v86, v100, 1.0
	v_dual_fmac_f32 v96, v106, v96 :: v_dual_mul_f32 v103, v68, v93
	v_rcp_f32_e32 v102, v89
	v_div_scale_f32 v71, s3, v43, v37, v43
	v_div_scale_f32 v88, s9, v31, v50, v31
	v_fmac_f32_e32 v100, v110, v100
	v_fma_f32 v115, -v67, v103, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v108, -v81, v98, 1.0
	v_fma_f32 v112, -v91, v104, 1.0
	v_fma_f32 v106, -v62, v105, v64
	v_fmac_f32_e32 v97, v107, v97
	v_dual_mul_f32 v107, v71, v94 :: v_dual_mul_f32 v114, v88, v100
	v_fmac_f32_e32 v103, v115, v93
	v_div_scale_f32 v75, s4, v40, v44, v40
	v_div_scale_f32 v80, s6, v36, v47, v36
	v_div_scale_f32 v82, s7, v35, v46, v35
	v_fma_f32 v111, -v89, v102, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v98, v108, v98 :: v_dual_mul_f32 v109, v75, v95
	v_dual_fmac_f32 v104, v112, v104 :: v_dual_fmac_f32 v105, v106, v69
	v_fma_f32 v108, -v65, v101, v66
	v_fma_f32 v67, -v67, v103, v68
	v_dual_fmac_f32 v102, v111, v102 :: v_dual_mul_f32 v111, v80, v97
	v_dual_mul_f32 v112, v82, v98 :: v_dual_fmac_f32 v101, v108, v72
	v_fma_f32 v62, -v62, v105, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v67, v67, v93, v103
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v78, s5, v39, v41, v39
	v_fma_f32 v108, -v70, v107, v71
	v_fma_f32 v64, -v73, v109, v75
	v_fma_f32 v65, -v65, v101, v66
	v_fma_f32 v66, -v79, v111, v80
	v_div_fmas_f32 v62, v62, v69, v105
	v_div_scale_f32 v84, s8, v32, v51, v32
	v_mul_f32_e32 v110, v78, v96
	v_div_scale_f32 v90, s10, v28, v61, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v30, v62, v30, v48
	v_fmac_f32_e32 v109, v64, v95
	v_fma_f32 v64, -v81, v112, v82
	v_fmac_f32_e32 v111, v66, v97
	v_fma_f32 v66, -v86, v114, v88
	v_fmac_f32_e32 v107, v108, v94
	v_mul_f32_e32 v113, v84, v99
	v_fma_f32 v108, -v77, v110, v78
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v114, v66, v100
	v_fma_f32 v70, -v70, v107, v71
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v30, v49, v30
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v110, v108, v96
	v_fma_f32 v73, -v73, v109, v75
	v_div_fixup_f32 v29, v67, v29, v45
	v_div_fmas_f32 v69, v70, v94, v107
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, s11, v27, v60, v27
	v_div_fmas_f32 v45, v65, v72, v101
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v106, v90, v102 :: v_dual_mul_f32 v115, v92, v104
	v_fma_f32 v108, -v83, v113, v84
	v_fmac_f32_e32 v112, v64, v98
	v_fma_f32 v75, -v77, v110, v78
	v_div_fmas_f32 v48, v73, v95, v109
	v_fma_f32 v77, -v79, v111, v80
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v64, -v89, v106, v90
	v_fma_f32 v78, -v81, v112, v82
	v_div_fixup_f32 v37, v69, v37, v43
	v_fmac_f32_e32 v113, v108, v99
	v_div_fixup_f32 v40, v48, v44, v40
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v25, v25, v29
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v29, v75, v96, v110
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v11, v45, v38, v11
	v_div_fmas_f32 v38, v77, v97, v111
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v106, v64, v102
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v14, v37
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v79, -v83, v113, v84
	v_div_fmas_f32 v37, v78, v98, v112
	v_fma_f32 v80, -v86, v114, v88
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v108, -v91, v115, v92
	v_fma_f32 v81, -v89, v106, v90
	v_div_fixup_f32 v29, v29, v41, v39
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v85.l, v30.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v13, v11
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v13, v79, v99, v113
	v_div_fixup_f32 v36, v38, v47, v36
	v_div_fixup_f32 v35, v37, v46, v35
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v115, v108, v104 :: v_dual_mul_f32 v26, v26, v29
	v_div_fmas_f32 v39, v80, v100, v114
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v13, v13, v51, v32
	v_div_fmas_f32 v29, v81, v102, v106
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v32, 1, v85
	v_mov_b16_e32 v74.l, v11.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v10, v10, v36 :: v_dual_mul_f32 v9, v9, v35
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v66.h, v4.l
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v82, -v91, v115, v92
	v_div_fixup_f32 v28, v29, v61, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v29, 1, v74
	v_mov_b16_e32 v87.l, v10.h
	v_mov_b16_e32 v66.l, v9.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s11
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v38, v42, v40
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s4, v11, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v36, v82, v104, v115
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v16, v16, v28
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v11, v11, v29, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v34, v13 :: v_dual_and_b32 v28, 1, v87
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v29, 1, v66
	v_mov_b16_e32 v64.h, v4.l
	v_mov_b16_e32 v76.l, v25.h
	v_mov_b16_e32 v64.l, v38.h
	v_cmp_o_f32_e64 s6, v10, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v27, v36, v60, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s7, v9, v9
	v_add3_u32 v10, v10, v28, 0x7fff
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v28, v58, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v9, v9, v29, 0x7fff
	v_mov_b16_e32 v63.l, v14.h
	v_cmp_o_f32_e64 s1, v30, v30
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v12, v12, v27 :: v_dual_and_b32 v37, 1, v76
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v30, v30, v32, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v9, v39, v50, v31
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v32, 1, v64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v59, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v40, 1, v63
	v_mov_b16_e32 v108.h, v4.l
	v_mov_b16_e32 v71.h, v4.l
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_mov_b16_e32 v108.l, v26.h
	v_mov_b16_e32 v71.l, v12.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v33, v9
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v27, v38, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v14, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v14, v14, v40, 0x7fff
	v_and_b32_e32 v35, 1, v108
	v_cndmask_b16 v14.l, 0x7fff, v11.h, s4
	v_cndmask_b16 v11.h, 0x7fff, v27.h, vcc_lo
	v_and_b32_e32 v27, 1, v71
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v28, v28, v8, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v25, v25
	v_add3_u32 v25, v25, v37, 0x7fff
	v_mov_b16_e32 v68.h, v4.l
	v_cmp_o_f32_e64 s5, v26, v26
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s1
	v_mov_b16_e32 v68.l, v16.h
	v_add3_u32 v27, v12, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v23, v28, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v28, v57, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v26, v26, v35, 0x7fff
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s0
	v_cmp_o_f32_e64 s0, v16, v16
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v15, v28, v15, v22
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v11.l, 0x7fff, v26.h, s5
	v_and_b32_e32 v26, 1, v68
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v22, v15, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v22.l, v9.h
	v_add3_u32 v26, v16, v26, 0x7fff
	v_mov_b16_e32 v26.l, v13.h
	v_mov_b16_e32 v22.h, v4.l
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v16.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v16.h, 0x7fff, v26.h, s0
	v_mov_b16_e32 v26.h, v4.l
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_fmac_f32 v29, 0xbfb8aa3b, v24 :: v_dual_and_b32 v22, 1, v22
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v26, 1, v26
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v27, v29
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v29, v56, v5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v40, v55, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v8, v29, v8, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v26, v13, v26, 0x7fff
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v43, v54, v4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v27, v27, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v21, v8, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v21, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v43, v43, v6, v18
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v23, 1.0, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v30, null, v23, v23, v24
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_ldexp_f32 v21, v21, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v28, v30
	v_fma_f32 v33, -v30, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v28, v33, v28 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v15
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v31, null, v21, v21, v12
	v_div_scale_f32 v38, s1, v12, v21, v12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v35, v31
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v32, -v31, v35, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v33, null, v27, v27, v15
	v_rcp_f32_e32 v37, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v33, v37, 1.0
	v_fmac_f32_e32 v37, v42, v37
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v42, s3, v15, v27, v15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v41, v38, v35
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v44, -v31, v41, v38
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v41, v44, v35
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v31, -v31, v41, v38
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v38, v53, v5
	v_mul_f32_e32 v5, v52, v5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v6, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v19, v5, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v13, v29, v34
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v29, s0, v24, v23, v24
	s_mov_b32 vcc_lo, s0
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_mul_f32 v36, v29, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v34, null, v13, v13, v8
	v_fma_f32 v39, -v30, v36, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v32, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v39, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v29, -v30, v36, v29
	v_mul_f32_e32 v30, v42, v37
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v39, -v34, v32, 1.0
	v_div_fmas_f32 v28, v29, v28, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v33, v30, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v32, v39, v32
	v_div_scale_f32 v39, s4, v8, v13, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v29, v37
	v_div_fmas_f32 v29, v31, v35, v41
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v44, v39, v32
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v33, v30, v42
	v_div_fixup_f32 v12, v29, v21, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v34, v44, v39
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v6, v6, v37, v30
	s_mov_b32 vcc_lo, s4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v0, 0x5040504, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v44, v36, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v38, v7, v20
	v_fma_f32 v7, v40, v7, v17
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v6, v27, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v15.h, v4.l
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v33, -v34, v44, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v31, s2
	v_cndmask_b32_e64 v7, v17, v7, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v30, v33, v32, v44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v20, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v18, v43, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v8, v30, v13, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.h, v4.l
	v_mov_b16_e32 v13.l, v6.h
	v_cndmask_b16 v26.l, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v5, v8
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v8, v28, v23, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v15.l, v5.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v7, v8
	v_dual_mul_f32 v8, v9, v12 :: v_dual_and_b32 v9, 1, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v12, 1, v15
	v_mov_b16_e32 v13.l, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v15.l, v8.h
	v_add3_u32 v4, v6, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v8, v8
	v_add3_u32 v6, v5, v12, 0x7fff
	v_and_b32_e32 v12, 1, v13
	v_and_b32_e32 v9, 1, v15
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v5, v8, v9, 0x7fff
	v_add3_u32 v9, v7, v12, 0x7fff
	v_mov_b32_e32 v12, 0x7632
	v_cmp_o_f32_e64 s1, v7, v7
	v_cndmask_b16 v4.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.l, 0x7fff, v5.h, s2
	v_cndmask_b32_e64 v7, v16, v14, s0
	v_cndmask_b32_e64 v8, 0x3276, v12, s0
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s1
	v_cndmask_b32_e64 v9, v4, v10, s0
	v_cndmask_b32_e64 v4, v10, v4, s0
	v_cndmask_b32_e64 v12, v25, v26, s0
	v_lshl_or_b32 v5, v8, 8, v8
	v_cndmask_b32_e64 v8, v14, v16, s0
	v_cndmask_b32_e64 v13, v6, v11, s0
	v_cndmask_b32_e64 v6, v11, v6, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v10, v26, v25, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_permlanex16_b32 v15, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v8, v7, v0
	v_perm_b32 v6, v14, v9, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 0x7060706, v5
	v_perm_b32 v5, v8, v7, v11
	v_perm_b32 v7, v14, v9, v11
	v_perm_b32 v8, v12, v10, v0
	v_perm_b32 v9, v12, v10, v11
	v_perm_b32 v10, v15, v13, v0
	v_add_lshl_u32 v0, v2, v3, 1
	v_perm_b32 v11, v15, v13, v11
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 117
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 117
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8292
; TotalNumSgprs: 50
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 117
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
