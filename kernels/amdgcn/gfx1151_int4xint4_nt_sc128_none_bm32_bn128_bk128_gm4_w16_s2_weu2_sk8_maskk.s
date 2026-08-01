	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s10, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v13, 15, v0
	v_lshrrev_b32_e32 v11, 4, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v14, 7, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v12, 3, v0
	v_and_b32_e32 v40, 0xe0, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v9, 2, v13
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v16, 1, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v10, 3, v14
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v39, 64, v12
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v23, 2, v0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshlrev_b32_e32 v15, 3, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v17, 2, v40
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v18, 56, v16
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v16, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v46, v0, 4, 1
	v_lshrrev_b32_e32 v19, 1, v40
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v17, v23, v17
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s6, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s12, s12, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s5, s5, 2
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v18, v15, v18
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s5
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v43, 4, v16
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v37, 0, v17
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v38, 0, v18
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v17, v46, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s11, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s16, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s17, s16, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s16, s16, s5
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s6, s17
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s16
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s2
	s_abs_i32 s18, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s19, s18
	v_rcp_iflag_f32_e32 v1, s19
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s19, v1
	s_mul_f32 s19, s19, 0x4f7ffffe
	s_cvt_u32_f32 s10, s19
	s_sub_i32 s19, 0, s18
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s10
	s_mul_hi_u32 s5, s10, s19
	s_xor_b32 s19, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s29, s19, 31
	s_mul_hi_u32 s5, s16, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s22, s5, s18
	s_add_i32 s19, s5, 1
	s_sub_i32 s16, s16, s22
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s22, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s23, s16, s18
	s_cmp_ge_u32 s16, s18
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s16, s23, s16
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s16, s18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s23, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s19, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s33, s5, s29
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s34, s4, 0x7f
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s33, s29
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s6
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mul_lo_u32 v3, s31, v11
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s30, s3, 6
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s34, 31
.Ltmp15:
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v1, s30, v9
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s28, s2, 5
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v2, s30, v10
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s16, s28, s31
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v4, s31, v12
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s6, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s34, s3
.Ltmp19:
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v5, s31, v39
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v3, v3, v9, s16
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v1
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s34, 0x7f
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s31, v2
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v2
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	s_cmpk_lt_i32 s34, 0x80
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_mul_i32 s16, s6, s31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s18, -1, 0
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_add_i32 s16, s16, s30
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add_nc_u32_e32 v6, s30, v3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s17, s3, vcc_lo
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v1, v4, v10, s16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v2, v5, v10, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s17
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s21, s21, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v1 :: v_dual_cndmask_b32 v6, 0x80000000, v2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v8, v4, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[4:5], v5, s[20:23], 0 offen
	buffer_load_b64 v[6:7], v6, s[20:23], 0 offen
	s_mov_b32 s5, 0
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s34, 0xff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v37, v8 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[4:5], v[6:7] offset1:8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b64 s[14:15], s[10:11]
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr24_sgpr25
.LBB0_3:                                ; %Flow50
	v_or_b32_e32 v36, v43, v13
	v_or_b32_e32 v25, 2, v17
	v_or_b32_e32 v24, 4, v17
	v_or_b32_e32 v20, 6, v17
	v_or_b32_e32 v18, 8, v17
	v_or_b32_e32 v22, 10, v17
	v_or_b32_e32 v21, 12, v17
	v_or_b32_e32 v19, 14, v17
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v30, 6, v13
	v_dual_mov_b32 v31, 0 :: v_dual_lshlrev_b32 v32, 5, v40
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_ashr_i32 s19, s19, 7
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v4, s28, v36
	.loc	1 197 22 is_stmt 1              ; generate_amdgcn.py:197:22
	s_add_i32 s5, s30, 64
	s_and_b32 s13, s13, 0xffff
	v_or_b32_e32 v8, s5, v9
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add_nc_u32_e32 v3, s5, v3
	v_mul_lo_u32 v4, v4, s19
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	v_or_b32_e32 v5, s6, v17
	v_or_b32_e32 v6, s6, v25
	v_or_b32_e32 v7, s6, v24
	v_or_b32_e32 v26, s6, v20
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v4
	v_or_b32_e32 v27, s6, v18
	v_or_b32_e32 v28, s6, v22
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v31, v4, s[12:15], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v85, v3, s[8:11], 0 offen
	v_or_b32_e32 v29, s6, v21
	v_or_b32_e32 v8, s6, v19
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v2, 64, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 1, v5
	v_lshlrev_b32_e32 v5, 1, v7
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s24, s16
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	v_lshlrev_b32_e32 v7, 1, v27
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v27, 1, v29
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v1, 64, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v4, 1, v6
	v_lshlrev_b32_e32 v6, 1, v26
	v_lshlrev_b32_e32 v26, 1, v28
	s_clause 0x7
	buffer_load_u16 v35, v3, s[24:27], 0 offen
	buffer_load_u16 v86, v4, s[24:27], 0 offen
	buffer_load_u16 v87, v5, s[24:27], 0 offen
	buffer_load_u16 v88, v6, s[24:27], 0 offen
	buffer_load_u16 v89, v7, s[24:27], 0 offen
	buffer_load_u16 v90, v26, s[24:27], 0 offen
	buffer_load_u16 v91, v27, s[24:27], 0 offen
	buffer_load_u16 v92, v8, s[24:27], 0 offen
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v3, s5, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_lt_u32 s34, 0x180
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_clause 0x1
	buffer_load_b64 v[67:68], v1, s[20:23], 0 offen
	buffer_load_b64 v[69:70], v2, s[20:23], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v2, 2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v27, 56, v2
	v_and_or_b32 v26, 0x438, v2, v30
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_or3_b32 v50, v32, v27, v30
	v_xor_b32_e32 v28, 8, v26
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v41, 0, v26
	v_xor_b32_e32 v33, 16, v26
	v_xor_b32_e32 v49, 24, v26
	v_add_nc_u32_e32 v42, 0, v50
	v_xor_b32_e32 v29, 8, v50
	v_xor_b32_e32 v51, 32, v26
	v_xor_b32_e32 v52, 40, v26
	v_xor_b32_e32 v55, 48, v26
	v_xor_b32_e32 v81, 56, v26
	v_xor_b32_e32 v34, 16, v50
	v_add_nc_u32_e32 v44, 0, v28
	ds_load_b64 v[26:27], v41 offset:8192
	v_add_nc_u32_e32 v45, 0, v29
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[28:29], v42
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v47, 0, v33
	v_add_nc_u32_e32 v48, 0, v34
	ds_load_b64 v[33:34], v44 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[57:58], v45
	v_xor_b32_e32 v53, 24, v50
	v_xor_b32_e32 v54, 32, v50
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v49, 0, v49
	ds_load_b64 v[71:72], v47 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[73:74], v48
	v_xor_b32_e32 v56, 40, v50
	v_xor_b32_e32 v82, 48, v50
	v_xor_b32_e32 v83, 56, v50
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v50, 0, v53
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v51, 0, v51
	v_add_nc_u32_e32 v53, 0, v54
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[75:76], v49 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[77:78], v50
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v54, 0, v56
	ds_load_b64 v[79:80], v51 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[28:29], v[26:27], v[1:8] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[26:27], v53
	v_add_nc_u32_e32 v56, 0, v82
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v55, 0, v55
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[57:58], v[33:34], v[59:66] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[33:34], v54
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v57, 0, v81
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[81:82], v56
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[28:29], v52 offset:8192
	v_add_nc_u32_e32 v58, 0, v83
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[73:74], v[71:72], v[59:66] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[71:72], v55 offset:8192
	ds_load_b64 v[73:74], v57 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[83:84], v58
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[77:78], v[75:76], v[59:66] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(10)
	ds_store_b32 v37, v85 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[67:68], v[69:70] offset1:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[26:27], v[79:80], v[59:66] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[33:34], v[28:29], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[59:66], v[81:82], v[71:72], v[59:66] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v71, 16, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[83:84], v[73:74], v[59:66] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v26, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v27, v60
	v_cvt_f32_i32_e32 v28, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v62
	v_cvt_f32_i32_e32 v33, v63
	v_cvt_f32_i32_e32 v34, v64
	v_cvt_f32_i32_e32 v59, v65
	v_cvt_f32_i32_e32 v60, v66
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v61, 16, v86
	v_lshlrev_b32_e32 v62, 16, v87
	v_lshlrev_b32_e32 v63, 16, v88
	v_lshlrev_b32_e32 v64, 16, v89
	v_lshlrev_b32_e32 v65, 16, v90
	v_lshlrev_b32_e32 v66, 16, v91
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v26, v31, v26
	v_mul_f32_e32 v27, v31, v27
	v_mul_f32_e32 v28, v31, v28
	v_mul_f32_e32 v29, v31, v29
	v_mul_f32_e32 v33, v31, v33
	v_mul_f32_e32 v34, v31, v34
	v_mul_f32_e32 v59, v31, v59
	v_mul_f32_e32 v60, v31, v60
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v26, v35, 0
	v_fma_f32 v27, v27, v61, 0
	v_fma_f32 v28, v28, v62, 0
	v_fma_f32 v29, v29, v63, 0
	v_fma_f32 v31, v33, v64, 0
	v_fma_f32 v33, v34, v65, 0
	v_fma_f32 v34, v59, v66, 0
	v_fma_f32 v35, v60, v71, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.peel.next
	s_lshl_b32 s5, s33, 8
	s_lshl_b32 s34, s7, 1
	v_add3_u32 v13, s28, v43, v13
	v_add3_u32 v40, s34, s5, v40
	s_lshl_b32 s5, s33, 7
	s_lshl_b32 s24, s29, 8
	v_or_b32_e32 v12, s5, v12
	v_or_b32_e32 v43, s5, v39
	s_lshl_b32 s5, s29, 7
	v_subrev_nc_u32_e32 v39, s24, v40
	v_mul_lo_u32 v40, s19, v13
	v_subrev_nc_u32_e32 v12, s5, v12
	v_subrev_nc_u32_e32 v13, s5, v43
	v_add_nc_u32_e32 v43, s28, v11
	v_sub_nc_u32_e32 v59, s31, v9
	v_sub_nc_u32_e32 v60, s31, v10
	v_mad_u64_u32 v[11:12], null, s31, v12, v[10:11]
	v_lshlrev_b32_e32 v46, 1, v46
	s_add_i32 s29, s30, 0x80
	s_add_i32 s30, s19, -2
	s_mov_b32 s24, s16
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	s_delay_alu instid0(VALU_DEP_2)
	v_mad_u64_u32 v[12:13], null, s31, v13, v[10:11]
	v_mad_u64_u32 v[9:10], null, s31, v43, v[9:10]
	v_lshl_add_u32 v10, v40, 1, 2
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v13, v10, s[12:15], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s29, v59
	v_cmp_lt_i32_e64 s5, s29, v60
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s30, s30, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v40, s29, v9
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v43, s29, v11
	.loc	1 218 26 is_stmt 0              ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v61, s29, v12
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s29, s29, 64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, s5, s4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_add_nc_u32 v62, v46, v39
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v40, v40, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v105, v62, s[24:27], 0 offen
	buffer_load_u16 v106, v62, s[24:27], 0 offen offset:4
	buffer_load_u16 v107, v62, s[24:27], 0 offen offset:8
	buffer_load_u16 v108, v62, s[24:27], 0 offen offset:12
	buffer_load_u16 v109, v62, s[24:27], 0 offen offset:16
	buffer_load_u16 v110, v62, s[24:27], 0 offen offset:20
	buffer_load_u16 v111, v62, s[24:27], 0 offen offset:24
	buffer_load_u16 v112, v62, s[24:27], 0 offen offset:28
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[69:70], v43, s[20:23], 0 offen
	buffer_load_b64 v[71:72], v61, s[20:23], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[73:74], v41 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[75:76], v42
	ds_load_b64 v[77:78], v45
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[79:80], v44 offset:8192
	ds_load_b64 v[81:82], v47 offset:8192
	ds_load_b64 v[83:84], v49 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[85:86], v48
	ds_load_b64 v[87:88], v50
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[89:90], v51 offset:8192
	ds_load_b64 v[91:92], v52 offset:8192
	ds_load_b64 v[93:94], v55 offset:8192
	ds_load_b64 v[95:96], v57 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[97:98], v53
	ds_load_b64 v[99:100], v54
	ds_load_b64 v[101:102], v56
	ds_load_b64 v[103:104], v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s30, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(10)
	ds_store_b32 v37, v40 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[69:70], v[71:72] offset1:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[61:68], v[75:76], v[73:74], v[1:8] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v74, 16, v108
	v_lshlrev_b32_e32 v75, 16, v109
	v_lshlrev_b32_e32 v76, 16, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[61:68], v[77:78], v[79:80], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[85:86], v[81:82], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[87:88], v[83:84], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[97:98], v[89:90], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[99:100], v[91:92], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[101:102], v[93:94], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[103:104], v[95:96], v[61:68] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v43, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v64, v65
	v_cvt_f32_i32_e32 v65, v66
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v67, v68
	v_dual_mul_f32 v64, v13, v64 :: v_dual_add_nc_u32 v39, s34, v39
	v_dual_mul_f32 v61, v13, v61 :: v_dual_add_nc_u32 v10, 2, v10
	v_mul_f32_e32 v43, v13, v43
	v_mul_f32_e32 v62, v13, v62
	v_dual_mul_f32 v63, v13, v63 :: v_dual_lshlrev_b32 v68, 16, v106
	v_mul_f32_e32 v65, v13, v65
	v_mul_f32_e32 v66, v13, v66
	v_mul_f32_e32 v13, v13, v67
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v67, 16, v105
	v_lshlrev_b32_e32 v77, 16, v111
	v_lshlrev_b32_e32 v73, 16, v107
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v29, v63, v74 :: v_dual_lshlrev_b32 v78, 16, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v26, v43, v67 :: v_dual_fmac_f32 v27, v61, v68
	v_fmac_f32_e32 v31, v64, v75
	v_dual_fmac_f32 v33, v65, v76 :: v_dual_fmac_f32 v34, v66, v77
	v_dual_fmac_f32 v28, v62, v73 :: v_dual_fmac_f32 v35, v13, v78
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %Flow48
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b64 s[24:25], s[12:13]
.LBB0_8:                                ; %._crit_edge
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s19, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s3, s19, -1
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s4, s28, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s3, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_mov_b32 s26, s14
	.loc	1 195 26 is_stmt 0              ; generate_amdgcn.py:195:26
	s_add_i32 s4, s4, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_mov_b32 s27, s15
	s_load_b64 s[0:1], s[0:1], 0x20
	v_add_lshl_u32 v1, s4, v1, 1
	s_mov_b32 s4, -1
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s18
                                        ; implicit-def: $vgpr4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	buffer_load_u16 v3, v1, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ; %._crit_edge._crit_edge
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v4, 2, v0
	s_mov_b32 s4, 0
.LBB0_10:                               ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v1, 16, v0
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v2, 14, v0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v36, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshlrev_b32_e32 v4, 2, v2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_or_b32 v52, 0x438, v23, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v41, v36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_or3_b32 v30, v32, v4, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v6, 0, v52
	v_xad_u32 v8, v52, 24, 0
	v_xad_u32 v10, v52, 16, 0
	v_xad_u32 v12, v52, 8, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v39, v36 :: v_dual_add_nc_u32 v4, 0, v30
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v38, v30, 8, 0
	v_xad_u32 v32, v30, 24, 0
	ds_load_b64 v[4:5], v4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[6:7], v6 offset:8192
	ds_load_b64 v[8:9], v8 offset:8192
	ds_load_b64 v[10:11], v10 offset:8192
	ds_load_b64 v[12:13], v12 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v37, v30, 16, 0
	ds_load_b64 v[44:45], v38
	ds_load_b64 v[46:47], v32
	ds_load_b64 v[48:49], v37
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v32, v52, 32, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v38, v36
	v_mov_b32_e32 v40, v36
	v_mov_b32_e32 v42, v36
	v_mov_b32_e32 v43, v36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v53, v30, 32, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v54, v52, 40, 0
	ds_load_b64 v[50:51], v32 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v55, v30, 40, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[4:5], v[6:7], v[36:43] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[4:5], v53
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[6:7], v54 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v32, v30, 48, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v53, v52, 48, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[12:13], v[36:43] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[12:13], v55
	ds_load_b64 v[44:45], v32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v32, v52, 56, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v30, v30, 56, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[48:49], v[10:11], v[36:43] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[10:11], v53 offset:8192
	ds_load_b64 v[48:49], v32 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[52:53], v30
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[36:43], v[46:47], v[8:9], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[4:5], v[50:51], v[36:43] neg_lo:[1,1,0]
	v_mov_b32_e32 v4, v23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[12:13], v[6:7], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[10:11], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[52:53], v[48:49], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v5, v36
	v_cvt_f32_i32_e32 v8, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v11, v38
	v_cvt_f32_i32_e32 v12, v39
	v_cvt_f32_i32_e32 v10, v40
	v_cvt_f32_i32_e32 v6, v41
	v_cvt_f32_i32_e32 v7, v42
	v_cvt_f32_i32_e32 v9, v43
.LBB0_12:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s7
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s17, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s3, s6, s3
	s_mov_b32 s19, 0x31027000
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v13, s3, v17, 1
	v_add_lshl_u32 v17, s3, v25, 1
	v_add_lshl_u32 v23, s3, v24, 1
	v_add_lshl_u32 v20, s3, v20, 1
	v_add_lshl_u32 v18, s3, v18, 1
	v_add_lshl_u32 v22, s3, v22, 1
	v_add_lshl_u32 v21, s3, v21, 1
	v_add_lshl_u32 v19, s3, v19, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_clause 0x7
	buffer_load_u16 v13, v13, s[16:19], 0 offen
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v32, 1, v0
	v_mov_b16_e32 v24.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v24.h, v3.l
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v3, 0x180, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_bfe_i32 v36, v0, 3, 1
	v_lshlrev_b32_e32 v2, 1, v2
	v_and_b32_e32 v32, 0x60, v32
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v25, 0x7f, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v30, 7, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v11, v11, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshrrev_b32_e32 v3, 5, v3
	v_and_or_b32 v2, 0xf00, v15, v2
	v_and_b32_e32 v15, 0x2040, v36
	v_and_or_b32 v4, 0x31c, v4, v32
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v5, v5, v24 :: v_dual_lshlrev_b32 v14, 10, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshrrev_b32_e32 v16, 1, v16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v8, v8, v24 :: v_dual_lshlrev_b32 v1, 2, v1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_b32_e32 v0, 32, v0
	v_xor_b32_e32 v2, v2, v3
	v_xor_b32_e32 v4, v4, v15
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v12, v12, v24
	v_mul_f32_e32 v10, v10, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_waitcnt lgkmcnt(0)
	v_or3_b32 v0, v0, v1, v2
	v_or3_b32 v1, v14, v16, v4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v3, v6, v24
	v_mul_f32_e32 v6, v7, v24
	v_mul_f32_e32 v7, v9, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v4, 0x1010, v0, 0
	v_xad_u32 v14, 0x2040, v0, 0
	v_xad_u32 v15, 0x3050, v0, 0
	v_add_nc_u32_e32 v0, 0, v1
	v_xad_u32 v16, v1, 4, 0
	v_xad_u32 v24, v1, 8, 0
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v9, s7, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_xad_u32 v30, v1, 12, 0
	v_xad_u32 v32, v1, 16, 0
	v_xad_u32 v36, v1, 20, 0
	v_xad_u32 v37, v1, 24, 0
	v_xad_u32 v1, v1, 28, 0
	s_barrier
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s3, s28, s7
	s_lshl_b32 s4, s7, 2
	s_add_i32 s3, s3, s6
	s_mul_i32 s8, s7, 12
	s_lshl_b32 s5, s7, 3
	s_lshl_b32 s9, s7, 4
	s_mul_i32 s10, s7, 20
	s_mul_i32 s6, s7, 24
	s_mul_i32 s7, s7, 28
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v13, v26
	v_fma_f32 v8, v8, v17, v27
	v_fma_f32 v11, v11, v23, v28
	v_fma_f32 v12, v12, v20, v29
	v_fma_f32 v10, v10, v18, v31
	v_fma_f32 v3, v3, v22, v33
	v_fma_f32 v6, v6, v21, v34
	v_fma_f32 v7, v7, v19, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v26, v5, s2
	v_cndmask_b32_e64 v8, v27, v8, s2
	v_cndmask_b32_e64 v11, v28, v11, s2
	v_cndmask_b32_e64 v12, v29, v12, s2
	v_cndmask_b32_e64 v10, v31, v10, s2
	v_cndmask_b32_e64 v3, v33, v3, s2
	v_cndmask_b32_e64 v6, v34, v6, s2
	v_cndmask_b32_e64 v7, v35, v7, s2
	ds_store_b32 v0, v5
	ds_store_b32 v16, v8
	ds_store_b32 v24, v11
	ds_store_b32 v30, v12
	ds_store_b32 v32, v10
	ds_store_b32 v36, v3
	ds_store_b32 v37, v6
	ds_store_b32 v1, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[0:1], v2 offset1:32
	ds_load_2addr_b32 v[2:3], v4 offset1:32
	ds_load_2addr_b32 v[4:5], v14 offset1:32
	ds_load_2addr_b32 v[6:7], v15 offset1:32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_add3_u32 v8, s3, v25, v9
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_mov_b32 s2, s18
	s_mov_b32 s3, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v9, 2, v8
	v_add_lshl_u32 v10, v8, s4, 2
	v_add_lshl_u32 v12, v8, s8, 2
	v_add_lshl_u32 v11, v8, s5, 2
	v_add_lshl_u32 v13, v8, s9, 2
	v_add_lshl_u32 v14, v8, s10, 2
	v_add_lshl_u32 v15, v8, s6, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v0, v9, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v2, v10, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v4, v11, s[0:3], 0 offen
	v_add_lshl_u32 v0, v8, s7, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v6, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v13, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v14, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v15, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v0, s[0:3], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 113
		.amdhsa_next_free_sgpr 35
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_vgpr, 113
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4192
; TotalNumSgprs: 37
; NumVgprs: 113
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 113
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     113
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
